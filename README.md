# NexLink Website

Site HTML estático do NexLink.

## Como rodar localmente

### Opção 1: Usando o script fornecido (Recomendado)

Execute o script `start-server.sh`:

```bash
./start-server.sh
```

O script detecta automaticamente se você tem PHP ou Python instalado e usa o servidor apropriado.

### Opção 2: Usando PHP diretamente

Se você tem PHP instalado (recomendado para suporte ao formulário de contato):

```bash
php -S localhost:8000
```

### Opção 3: Usando Python

Se você não tem PHP, pode usar Python:

```bash
# Python 3
python3 -m http.server 8000

# Python 2
python -m SimpleHTTPServer 8000
```

**Nota:** Com Python, o formulário de contato PHP não funcionará.

## Acessar o site

Após iniciar o servidor, acesse:

- **Página principal:** http://localhost:8000/index.html
- **Página inicial alternativa:** http://localhost:8000/index-2.html
- **Página inicial alternativa 2:** http://localhost:8000/index-3.html
- **Sobre:** http://localhost:8000/about.html
- **Contato:** http://localhost:8000/contact.html
- **Blog:** http://localhost:8000/blog.html
- **Serviços:** http://localhost:8000/service.html
- **Projetos:** http://localhost:8000/project.html
- **Equipe:** http://localhost:8000/team.html
- **Preços:** http://localhost:8000/pricing.html
- **FAQ:** http://localhost:8000/faq.html

## Formulário de contato

O formulário de contato requer um servidor PHP para funcionar. Se estiver usando o servidor PHP embutido, o formulário funcionará, mas você precisará configurar o email no arquivo `assets/mail/contact-form.php`.

## Requisitos

- PHP 7.0+ (para suporte completo ao formulário de contato)
- OU Python 2.7+ ou 3.x (apenas para visualização estática)

