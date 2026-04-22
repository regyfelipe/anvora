import { createServerClient } from '@supabase/ssr'
import { NextResponse, type NextRequest } from 'next/server'

export async function middleware(request: NextRequest) {
  let supabaseResponse = NextResponse.next({
    request,
  })

  const supabase = createServerClient(
    process.env.NEXT_PUBLIC_SUPABASE_URL!,
    process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!,
    {
      cookies: {
        getAll() {
          return request.cookies.getAll()
        },
        setAll(cookiesToSet) {
          cookiesToSet.forEach(({ name, value, options }) => request.cookies.set(name, value))
          supabaseResponse = NextResponse.next({
            request,
          })
          cookiesToSet.forEach(({ name, value, options }) =>
            supabaseResponse.cookies.set(name, value, options)
          )
        },
      },
    }
  )

  // IMPORTANTE: Não use o método getUser() aqui para evitar chamadas de rede desnecessárias em cada requisição.
  // Use getSession() ou verifique apenas a existência do cookie de autenticação se quiser performance extrema.
  const {
    data: { user },
  } = await supabase.auth.getUser()

  // Se o usuário tentar acessar qualquer rota protegida sem estar logado
  const isProtectedRoute = request.nextUrl.pathname.startsWith('/dashboard') || 
                          request.nextUrl.pathname.startsWith('/aluno') ||
                          request.nextUrl.pathname.startsWith('/professor') ||
                          request.nextUrl.pathname.startsWith('/instituicao')

  if (!user && isProtectedRoute) {
    const url = request.nextUrl.clone()
    url.pathname = '/login'
    return NextResponse.redirect(url)
  }

  // Se o usuário já estiver logado e tentar acessar /login ou /signup, redireciona para o dashboard correto
  const isAuthRoute = request.nextUrl.pathname.startsWith('/login') || 
                      request.nextUrl.pathname.startsWith('/signup') ||
                      request.nextUrl.pathname === '/'

  if (user && isAuthRoute) {
    const role = user.user_metadata.role || 'student'
    const url = request.nextUrl.clone()
    
    if (role === 'institution') url.pathname = '/instituicao/professores'
    else if (role === 'teacher') url.pathname = '/professor/dashboard'
    else url.pathname = '/aluno/dashboard'
    
    return NextResponse.redirect(url)
  }

  return supabaseResponse
}

export const config = {
  matcher: [
    /*
     * Match all request paths except for the ones starting with:
     * - _next/static (static files)
     * - _next/image (image optimization files)
     * - favicon.ico (favicon file)
     * Feel free to modify this pattern to include more paths.
     */
    '/((?!_next/static|_next/image|favicon.ico|.*\\.(?:svg|png|jpg|jpeg|gif|webp)$).*)',
  ],
}
