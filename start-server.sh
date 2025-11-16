#!/bin/bash

# Script para iniciar o servidor local do projeto NexLink

PORT=8000

echo "🚀 Iniciando servidor local para NexLink Website..."
echo ""

# Verifica se PHP está disponível
if command -v php &> /dev/null; then
    echo "✅ PHP encontrado! Usando servidor PHP embutido..."
    echo "📡 Servidor rodando em: http://localhost:$PORT"
    echo "📄 Página principal: http://localhost:$PORT/index.html"
    echo ""
    echo "Pressione Ctrl+C para parar o servidor"
    echo ""
    php -S localhost:$PORT
# Se não tiver PHP, tenta Python
elif command -v python3 &> /dev/null; then
    echo "✅ Python 3 encontrado! Usando servidor HTTP do Python..."
    echo "⚠️  Nota: O formulário de contato PHP não funcionará com este servidor"
    echo "📡 Servidor rodando em: http://localhost:$PORT"
    echo "📄 Página principal: http://localhost:$PORT/index.html"
    echo ""
    echo "Pressione Ctrl+C para parar o servidor"
    echo ""
    python3 -m http.server $PORT
elif command -v python &> /dev/null; then
    echo "✅ Python encontrado! Usando servidor HTTP do Python..."
    echo "⚠️  Nota: O formulário de contato PHP não funcionará com este servidor"
    echo "📡 Servidor rodando em: http://localhost:$PORT"
    echo "📄 Página principal: http://localhost:$PORT/index.html"
    echo ""
    echo "Pressione Ctrl+C para parar o servidor"
    echo ""
    python -m SimpleHTTPServer $PORT
else
    echo "❌ Erro: PHP ou Python não encontrado!"
    echo ""
    echo "Por favor, instale uma das seguintes opções:"
    echo "  - PHP: brew install php (no macOS)"
    echo "  - Python: geralmente já vem instalado no macOS"
    exit 1
fi

