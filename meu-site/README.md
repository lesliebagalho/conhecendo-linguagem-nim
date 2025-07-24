Vamos montar um **projeto web simples usando Nim**, com apenas duas rotas: **Home** e **Contato**, usando o microframework web **Jester**, que é como um “Flask” do Nim.

---

## 🌐 Projeto: Site Simples com Nim + Jester

### 📁 Estrutura do projeto:

```
meu_site/
├── site.nim         # Arquivo principal
└── views/
    ├── home.html
    └── contato.html
```

---

## 📦 1. Instalar o Jester

Abra o terminal e execute:

```bash
nimble install jester
```

---

## 📝 2. Código do site (`site.nim`)

```nim
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
```

---

## 📄 3. HTML das páginas (em `views/`)

### `views/home.html`

```html
<!DOCTYPE html>
<html lang="pt-BR">
<head>
  <meta charset="UTF-8">
  <title>Home</title>
</head>
<body>
  <h1>Bem-vindo à Página Inicial</h1>
  <p>Esta é a home do nosso site simples em Nim.</p>
  <a href="/contato">Ir para Contato</a>
</body>
</html>
```

---

### `views/contato.html`

```html
<!DOCTYPE html>
<html lang="pt-BR">
<head>
  <meta charset="UTF-8">
  <title>Contato</title>
</head>
<body>
  <h1>Página de Contato</h1>
  <p>Entre em contato pelo e-mail: contato@exemplo.com</p>
  <a href="/">Voltar para Home</a>
</body>
</html>
```

---

## 🚀 4. Rodando o site

No terminal (dentro da pasta do projeto), execute:

```bash
nim js -d:release site.nim    # (opcionalmente: nim r site.nim)
```

Se você usou `nimble install jester`, você pode apenas fazer:

```bash
nim r site.nim
```

> O servidor será iniciado em `http://localhost:5000`

---


