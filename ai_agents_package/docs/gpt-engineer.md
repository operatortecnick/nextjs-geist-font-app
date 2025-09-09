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
echo - Notificações push >> prompt.txt
echo - Interface moderna e responsiva >> prompt.txt
echo - Testes com Jest e React Native Testing Library >> prompt.txt

gpt-engineer .
```

## 🔧 Configurações Avançadas

### Arquivo de Configuração (.gpt-engineer.yml)
```yaml
# Configurações do GPT Engineer
model: "gpt-4"
temperature: 0.1
max_tokens: 4000

# Preferências de código
code_style:
  language: "python"
  framework: "fastapi"
  testing: "pytest"
  linting: "black"

# Estrutura de projeto
project_structure:
  include_tests: true
  include_docs: true
  include_docker: true
  include_ci_cd: false

# Comportamento
interactive_mode: false
auto_install_deps: true
create_git_repo: true
```

### Prompts Personalizados
```cmd
# Criar template de prompt
mkdir templates
echo # Template E-commerce > templates\ecommerce.txt
echo Crie uma aplicação de e-commerce com: >> templates\ecommerce.txt
echo - [FRONTEND_TECH] >> templates\ecommerce.txt
echo - [BACKEND_TECH] >> templates\ecommerce.txt
echo - [DATABASE] >> templates\ecommerce.txt

# Usar template
gpt-engineer projects\loja --template templates\ecommerce.txt
```

## 🎯 Melhores Práticas

### ✅ Prompts Eficazes

#### Seja Específico
```
❌ "Crie um site"
✅ "Crie um site de portfolio com React, Tailwind CSS, 
   seções sobre/projetos/contato, responsivo, deploy Vercel"
```

#### Defina Tecnologias
```
❌ "Use as melhores tecnologias"
✅ "Use React 18, TypeScript, Tailwind CSS, Prisma, PostgreSQL"
```

#### Especifique Funcionalidades
```
❌ "Com funcionalidades básicas"
✅ "Com autenticação JWT, CRUD completo, busca, paginação, 
   upload de arquivos, notificações em tempo real"
```

### ✅ Estrutura de Prompt Ideal
```
1. TIPO DE PROJETO: [Web app, API, Mobile, Desktop]
2. TECNOLOGIAS: [Lista específica]
3. FUNCIONALIDADES: [Lista detalhada]
4. REQUISITOS: [Performance, SEO, acessibilidade]
5. DEPLOY: [Plataforma específica]
6. EXTRAS: [Testes, docs, CI/CD]
```

## 🔍 Troubleshooting

### Problema: "gpt-engineer command not found"
```cmd
# Verificar ambiente virtual
gpt_engineer_env\Scripts\activate

# Reinstalar
pip install --upgrade gpt-engineer

# Verificar PATH
where gpt-engineer
```

### Problema: "API key not found"
```cmd
# Verificar variável
echo %OPENAI_API_KEY%

# Definir globalmente
setx OPENAI_API_KEY "sua_chave_aqui"

# Reiniciar terminal
```

### Problema: Código gerado não funciona
```cmd
# Usar modo interativo para correções
gpt-engineer . --interactive

# Especificar melhor o prompt
# Adicionar mais contexto e requisitos

# Usar modelo mais avançado
set GPT_ENGINEER_MODEL=gpt-4
```

### Problema: Projeto muito simples
```cmd
# Aumentar detalhamento do prompt
# Especificar arquitetura desejada
# Incluir requisitos não-funcionais
# Mencionar padrões de design específicos
```

## 📊 Comparação com Outras Ferramentas

| Recurso | GPT Engineer | Devin AI | Cursor AI | Aider |
|---------|--------------|----------|-----------|-------|
| Projeto Completo | ⭐⭐⭐⭐⭐ | ⭐⭐⭐⭐⭐ | ⭐⭐⭐ | ⭐⭐ |
| Velocidade | ⭐⭐⭐⭐ | ⭐⭐⭐⭐⭐ | ⭐⭐⭐ | ⭐⭐⭐ |
| Qualidade Código | ⭐⭐⭐⭐ | ⭐⭐⭐⭐⭐ | ⭐⭐⭐⭐ | ⭐⭐⭐⭐ |
| Facilidade Uso | ⭐⭐⭐⭐⭐ | ⭐⭐⭐ | ⭐⭐⭐⭐ | ⭐⭐⭐ |
| Custo | ⭐⭐⭐ | ⭐⭐ | ⭐⭐⭐ | ⭐⭐⭐ |

## 🚀 Casos de Uso Ideais

### ✅ Perfeito Para:
- **Protótipos rápidos** para validação de ideias
- **MVPs** (Minimum Viable Products)
- **Projetos pessoais** e de aprendizado
- **Estruturas base** para projetos maiores
- **Automação** de tarefas repetitivas

### ⚠️ Limitações:
- **Projetos muito complexos** podem precisar refinamento
- **Integrações específicas** podem requerer ajustes manuais
- **Código de produção** deve ser revisado e testado
- **Arquiteturas enterprise** podem precisar reestruturação

## 💰 Custos Estimados (OpenAI)

### Por Projeto
- **Projeto simples**: $0.50 - $2.00
- **Projeto médio**: $2.00 - $10.00
- **Projeto complexo**: $10.00 - $50.00

### Mensal (uso regular)
- **Desenvolvedor individual**: $20 - $100
- **Equipe pequena**: $100 - $500
- **Empresa**: $500+

## 🔗 Links Úteis

- **Repositório**: https://github.com/AntonOsika/gpt-engineer
- **Documentação**: https://gpt-engineer.readthedocs.io/
- **Exemplos**: https://github.com/AntonOsika/gpt-engineer/tree/main/example
- **Discord**: Comunidade de usuários
- **YouTube**: Tutoriais e demonstrações

## 🎓 Tutoriais Passo a Passo

### Tutorial 1: Primeiro Projeto
```cmd
# 1. Criar diretório
mkdir meu_primeiro_projeto
cd meu_primeiro_projeto

# 2. Criar prompt simples
echo Crie uma calculadora web com HTML, CSS e JavaScript > prompt.txt

# 3. Executar
gpt-engineer .

# 4. Testar resultado
# Abrir index.html no navegador
```

### Tutorial 2: Projeto com Backend
```cmd
# 1. Prompt mais complexo
echo Crie uma API de blog com: > prompt.txt
echo - Python FastAPI >> prompt.txt
echo - SQLite database >> prompt.txt
echo - CRUD para posts >> prompt.txt
echo - Autenticação básica >> prompt.txt

# 2. Executar
gpt-engineer .

# 3. Instalar dependências
pip install -r requirements.txt

# 4. Executar servidor
python main.py
```

---

**🎯 Conclusão**: GPT Engineer é ideal para criar projetos completos rapidamente, especialmente útil para protótipos, MVPs e como ponto de partida para projetos maiores.
