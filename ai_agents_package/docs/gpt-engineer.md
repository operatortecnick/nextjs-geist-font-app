# 🏗️ GPT Engineer - Gerador de Projetos Completos (Windows)

## 🎯 O que é o GPT Engineer?

GPT Engineer é uma ferramenta AI que gera projetos de software completos a partir de descrições em linguagem natural. Ele cria toda a estrutura, código, testes e documentação necessária.

## 🚀 Principais Recursos

### ✅ Geração Completa de Projetos
- Cria estrutura completa de diretórios
- Gera código funcional em múltiplas linguagens
- Inclui testes automatizados
- Produz documentação detalhada

### ✅ Suporte Multi-tecnologia
- **Frontend**: React, Vue, Angular, HTML/CSS/JS
- **Backend**: Python, Node.js, Java, Go, C#
- **Mobile**: React Native, Flutter
- **Desktop**: Electron, Tkinter, WPF

### ✅ Iteração Inteligente
- Melhora o código baseado em feedback
- Adiciona funcionalidades incrementalmente
- Corrige bugs automaticamente
- Otimiza performance

## 💻 Instalação no Windows

### Pré-requisitos
```cmd
# Verificar Python (3.9+)
python --version

# Verificar Git
git --version

# Verificar Node.js (opcional, para projetos web)
node --version
```

### Instalação Automática
```cmd
# Use o instalador do pacote
cd ai_agents_package\scripts
install_all.bat
```

### Instalação Manual
```cmd
# Criar ambiente virtual
python -m venv gpt_engineer_env

# Ativar ambiente
gpt_engineer_env\Scripts\activate

# Instalar GPT Engineer
pip install gpt-engineer

# Verificar instalação
gpt-engineer --version
```

## 🔑 Configuração de API

### OpenAI (Recomendado)
```cmd
# Definir chave da API
set OPENAI_API_KEY=sua_chave_aqui

# Ou criar arquivo .env
echo OPENAI_API_KEY=sua_chave_aqui > .env
```

### Configuração Avançada
```cmd
# Modelo específico
set GPT_ENGINEER_MODEL=gpt-4

# Temperatura (criatividade)
set GPT_ENGINEER_TEMPERATURE=0.1

# Tokens máximos
set GPT_ENGINEER_MAX_TOKENS=4000
```

## 🎮 Como Usar

### Comando Básico
```cmd
# Criar novo projeto
gpt-engineer projects\meu_app

# Com prompt específico
gpt-engineer projects\meu_app --prompt "Crie um e-commerce em React"

# Modo interativo
gpt-engineer projects\meu_app --interactive
```

### Estrutura de Projeto
```
projects\meu_app\
├── prompt.txt          # Sua descrição do projeto
├── main.py            # Código principal gerado
├── requirements.txt   # Dependências
├── README.md          # Documentação
├── tests\             # Testes automatizados
└── .gitignore         # Configuração Git
```

## 💡 Exemplos Práticos

### Exemplo 1: Aplicação Web E-commerce
```cmd
# Criar diretório
mkdir projects\ecommerce
cd projects\ecommerce

# Criar arquivo de prompt
echo Crie uma aplicação de e-commerce completa com: > prompt.txt
echo - Frontend em React com TypeScript >> prompt.txt
echo - Backend em Node.js/Express >> prompt.txt
echo - Banco de dados SQLite >> prompt.txt
echo - Sistema de autenticação >> prompt.txt
echo - Carrinho de compras >> prompt.txt
echo - Processamento de pagamentos simulado >> prompt.txt
echo - Painel administrativo >> prompt.txt
echo - Testes automatizados >> prompt.txt

# Executar GPT Engineer
gpt-engineer .
```

### Exemplo 2: API REST com Python
```cmd
mkdir projects\api_rest
cd projects\api_rest

# Prompt detalhado
echo Desenvolva uma API REST completa em Python com: > prompt.txt
echo - FastAPI framework >> prompt.txt
echo - Banco de dados PostgreSQL com SQLAlchemy >> prompt.txt
echo - Sistema de autenticação JWT >> prompt.txt
echo - CRUD para usuários e produtos >> prompt.txt
echo - Documentação automática Swagger >> prompt.txt
echo - Testes com pytest >> prompt.txt
echo - Docker para containerização >> prompt.txt
echo - Validação de dados com Pydantic >> prompt.txt

gpt-engineer .
```

### Exemplo 3: App Mobile React Native
```cmd
mkdir projects\app_mobile
cd projects\app_mobile

echo Crie um aplicativo mobile de produtividade com: > prompt.txt
echo - React Native com TypeScript >> prompt.txt
echo - Navegação com React Navigation >> prompt.txt
echo - Estado global com Redux Toolkit >> prompt.txt
echo - Funcionalidades: tarefas, calendário, notas >> prompt.txt
echo - Armazenamento local com AsyncStorage >> prompt.txt
