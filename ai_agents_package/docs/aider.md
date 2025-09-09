# 📝 Aider - Editor de Código AI com Git (Windows)

## 🎯 O que é o Aider?

Aider é um assistente de programação AI que trabalha diretamente com seus repositórios Git, permitindo edição de código através de conversas naturais.

## 🚀 Principais Recursos

### ✅ Integração Git Nativa
- Commits automáticos das mudanças
- Histórico completo de alterações
- Trabalha com qualquer repositório Git

### ✅ Edição Inteligente
- Edita múltiplos arquivos simultaneamente
- Entende contexto do projeto completo
- Refatoração automática segura

### ✅ Suporte Multi-linguagem
- Python, JavaScript, TypeScript, Java, C++, Go
- HTML, CSS, SQL, Markdown
- Frameworks: React, Vue, Django, Flask, etc.

## 💻 Instalação no Windows

### Pré-requisitos
```cmd
# Verificar Python (3.8+)
python --version

# Verificar Git
git --version

# Verificar pip
pip --version
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
python -m venv aider_env

# Ativar ambiente
aider_env\Scripts\activate

# Instalar Aider
pip install aider-chat

# Verificar instalação
aider --version
```

## 🔑 Configuração de API

### OpenAI (Recomendado)
```cmd
# Definir chave da API
set OPENAI_API_KEY=sua_chave_aqui

# Ou criar arquivo .env
echo OPENAI_API_KEY=sua_chave_aqui > .env
```

### Alternativas Gratuitas
```cmd
# Usar Ollama (local)
set AIDER_MODEL=ollama/codellama

# Usar Anthropic Claude
set ANTHROPIC_API_KEY=sua_chave_aqui
aider --model claude-3-sonnet-20240229
```

## 🎮 Como Usar

### Iniciando o Aider
```cmd
# No diretório do seu projeto
cd C:\meus_projetos\meu_app
aider

# Ou especificar arquivos
aider src\main.py src\utils.py

# Com modelo específico
aider --model gpt-4
```

### Comandos Básicos no Chat

#### Gerenciamento de Arquivos
```
/add arquivo.py          # Adicionar arquivo ao contexto
/drop arquivo.py         # Remover arquivo do contexto
/ls                      # Listar arquivos no contexto
/clear                   # Limpar contexto
```

#### Controle Git
```
/commit                  # Fazer commit das mudanças
/diff                    # Ver diferenças não commitadas
/undo                    # Desfazer último commit do aider
/git status              # Status do repositório
```

#### Utilitários
```
/help                    # Ver todos os comandos
/exit                    # Sair do aider
/voice                   # Ativar entrada por voz
/run comando             # Executar comando do sistema
```

## 💡 Exemplos Práticos

### Exemplo 1: Criar Nova Funcionalidade
```
Você: "Adicione uma função de login com autenticação JWT ao meu app Flask"

Aider irá:
1. Analisar estrutura atual
2. Criar rotas de login/logout
3. Implementar middleware de autenticação
4. Atualizar templates se necessário
5. Fazer commit das mudanças
```

### Exemplo 2: Corrigir Bug
```
Você: "Há um erro na função calculate_total() no arquivo utils.py. 
      Ela não está tratando valores None corretamente."

Aider irá:
1. Examinar a função
2. Identificar o problema
3. Implementar tratamento de None
4. Adicionar testes se necessário
5. Fazer commit da correção
```

### Exemplo 3: Refatoração
```
Você: "Refatore o código em models.py para usar dataclasses 
      em vez de classes normais"

Aider irá:
1. Converter classes para dataclasses
2. Atualizar imports necessários
3. Ajustar código dependente
4. Manter funcionalidade idêntica
5. Fazer commit da refatoração
```

## 🔧 Configurações Avançadas

### Arquivo .aider.conf.yml
```yaml
# Configurações do projeto
model: gpt-4
auto-commits: true
pretty: true
stream: true

# Arquivos a ignorar
ignore:
  - "*.log"
  - "node_modules/"
  - "__pycache__/"
  - ".env"

# Configurações Git
git-diffs: true
commit-prompt: "feat: "
```

### Variáveis de Ambiente
```cmd
# Modelo padrão
set AIDER_MODEL=gpt-4

# Auto-commits
set AIDER_AUTO_COMMITS=true

# Formato de saída
set AIDER_PRETTY=true

# Streaming de respostas
set AIDER_STREAM=true
```

## 🎯 Melhores Práticas

### ✅ Faça
- **Seja específico** nas instruções
- **Adicione contexto** relevante com /add
- **Revise mudanças** antes de aceitar
- **Use commits frequentes** para histórico limpo
- **Teste funcionalidade** após mudanças

### ❌ Evite
- **Instruções vagas** como "melhore o código"
- **Muitos arquivos** no contexto simultaneamente
- **Mudanças sem testes** em código crítico
- **Commits automáticos** sem revisão
- **Chaves de API** em repositórios públicos

## 🔍 Troubleshooting

### Problema: "Command not found: aider"
```cmd
# Verificar se está no ambiente virtual correto
aider_env\Scripts\activate

# Reinstalar se necessário
pip install --upgrade aider-chat
```

### Problema: "API key not found"
```cmd
# Verificar variável de ambiente
echo %OPENAI_API_KEY%

# Definir temporariamente
set OPENAI_API_KEY=sua_chave_aqui

# Ou usar arquivo .env
echo OPENAI_API_KEY=sua_chave_aqui > .env
```

### Problema: "Git repository not found"
```cmd
# Inicializar repositório Git
git init
git add .
git commit -m "Initial commit"

# Ou navegar para diretório correto
cd C:\caminho\para\seu\projeto
```

### Problema: Performance lenta
```cmd
# Usar modelo mais rápido
aider --model gpt-3.5-turbo

# Reduzir arquivos no contexto
/clear
/add apenas_arquivos_necessarios.py

# Usar streaming
aider --stream
```

## 📊 Comparação com Outros Editores AI

| Recurso | Aider | GitHub Copilot | Cursor AI |
|---------|-------|----------------|-----------|
| Git Integration | ⭐⭐⭐⭐⭐ | ⭐⭐ | ⭐⭐⭐ |
| Multi-file Editing | ⭐⭐⭐⭐⭐ | ⭐⭐ | ⭐⭐⭐⭐ |
| Conversational | ⭐⭐⭐⭐⭐ | ⭐⭐ | ⭐⭐⭐⭐ |
| Local Models | ⭐⭐⭐⭐ | ❌ | ⭐⭐ |
| CLI Interface | ⭐⭐⭐⭐⭐ | ❌ | ❌ |

## 🔗 Links Úteis

- **Repositório**: https://github.com/paul-gauthier/aider
- **Documentação**: https://aider.chat/docs/
- **Exemplos**: https://aider.chat/examples/
- **Discord**: https://discord.gg/Tv2uQnR4jN
- **YouTube**: Canal oficial com tutoriais

## 💰 Custos Estimados

### OpenAI GPT-4
- **Pequenos projetos**: $1-5/mês
- **Projetos médios**: $10-30/mês
- **Projetos grandes**: $50-100/mês

### Alternativas Gratuitas
- **Ollama** (local): Gratuito, requer GPU
- **Claude** (Anthropic): Plano gratuito disponível
- **Gemini** (Google): Plano gratuito disponível

---

**🎯 Conclusão**: Aider é ideal para desenvolvedores que querem um assistente AI integrado ao Git, especialmente útil para refatorações e edições multi-arquivo complexas.
