import jester, asyncdispatch

routes:
    get "/":
        let html = readFile("views/home.html")
        resp html

    get "/contato":
        let html = readFile("views/contato.html")
        resp html

# Iniciar o servidor
runForever()