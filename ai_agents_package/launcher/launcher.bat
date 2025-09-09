@echo off
chcp 65001 >nul
cls

:main_menu
echo.
echo ╔══════════════════════════════════════════════════════════════╗
echo ║                🤖 AGENTES AI AUTÔNOMOS - WINDOWS             ║
echo ╚══════════════════════════════════════════════════════════════╝
echo.
echo ┌──────────────────────────────────────────────────────────────┐
echo │                    🔥 AGENTE MAIS COMPLETO                   │
echo └──────────────────────────────────────────────────────────────┘
echo.
echo   1. 🔥 Devin AI          - Desenvolvedor AI completo (Web)
echo.
echo ┌──────────────────────────────────────────────────────────────┐
echo │                   💻 AGENTES OPEN SOURCE                     │
echo └──────────────────────────────────────────────────────────────┘
echo.
echo   2. 📝 Aider             - Editor de código + Git
echo   3. 🏗️  GPT Engineer      - Gerador de projetos completos
echo   4. 🤖 MetaGPT           - Framework multi-agente
echo   5. 🔄 AutoGPT           - Agente autônomo geral
echo.
echo ┌──────────────────────────────────────────────────────────────┐
echo │                  🌐 AGENTES COMERCIAIS                       │
echo └──────────────────────────────────────────────────────────────┘
echo.
echo   6. 🐙 GitHub Copilot    - Integração GitHub nativa
echo   7. 🎯 Cursor AI         - Editor avançado com AI
echo   8. ☁️  Replit Agent      - Desenvolvimento na nuvem
echo   9. 🧪 Codium AI         - Qualidade e testes de código
echo.
echo ┌──────────────────────────────────────────────────────────────┐
echo │                      ⚙️ UTILITÁRIOS                          │
echo └──────────────────────────────────────────────────────────────┘
echo.
echo   i. 📦 Instalar agentes open source
echo   h. 📚 Ajuda e documentação
echo   q. 🚪 Sair
echo.
echo ══════════════════════════════════════════════════════════════
set /p choice="Escolha uma opção (1-9, i, h, q): "

if "%choice%"=="1" goto devin_ai
if "%choice%"=="2" goto aider
if "%choice%"=="3" goto gpt_engineer
if "%choice%"=="4" goto metagpt
if "%choice%"=="5" goto autogpt
if "%choice%"=="6" goto github_copilot
if "%choice%"=="7" goto cursor_ai
if "%choice%"=="8" goto replit_agent
if "%choice%"=="9" goto codium_ai
if "%choice%"=="i" goto install
if "%choice%"=="h" goto help
if "%choice%"=="q" goto exit

echo.
echo ❌ Opção inválida! Tente novamente.
timeout /t 2 >nul
goto main_menu

:devin_ai
cls
echo ╔══════════════════════════════════════════════════════════════╗
echo ║                    🔥 DEVIN AI - MAIS COMPLETO               ║
echo ╚══════════════════════════════════════════════════════════════╝
echo.
echo 🚀 Devin AI é o agente mais completo disponível!
echo.
echo Capacidades únicas:
echo ✅ Desenvolvimento end-to-end completo
echo ✅ Resolução autônoma de issues do GitHub  
echo ✅ Deploy automático em produção
echo ✅ Debugging em tempo real
echo ✅ Aprendizado e pesquisa independente
echo.
echo Abrindo Devin AI no navegador...
echo.
cd /d "%~dp0..\devin"
call devin_launcher.bat
goto main_menu

:aider
cls
echo ╔══════════════════════════════════════════════════════════════╗
echo ║                      📝 AIDER - GIT + AI                     ║
echo ╚══════════════════════════════════════════════════════════════╝
echo.
if not exist "%~dp0..\venvs\aider" (
    echo ❌ Aider não está instalado!
    echo Execute a opção 'i' para instalar primeiro.
    pause
    goto main_menu
)
echo 🚀 Iniciando Aider...
echo.
echo Aider é um editor de código AI com integração Git.
echo.
echo Comandos úteis:
echo - /add arquivo.py    - Adicionar arquivo ao contexto
echo - /commit            - Fazer commit das mudanças
echo - /diff              - Ver diferenças
echo - /help              - Ver todos os comandos
echo.
cd /d "%~dp0..\scripts"
call run_aider.bat
goto main_menu

:gpt_engineer
cls
echo ╔══════════════════════════════════════════════════════════════╗
echo ║                  🏗️ GPT ENGINEER - PROJETOS                  ║
echo ╚══════════════════════════════════════════════════════════════╝
echo.
if not exist "%~dp0..\venvs\gpt-engineer" (
    echo ❌ GPT Engineer não está instalado!
    echo Execute a opção 'i' para instalar primeiro.
    pause
    goto main_menu
)
echo 🚀 Iniciando GPT Engineer...
echo.
echo GPT Engineer gera projetos completos a partir de descrições.
echo.
echo Exemplo de uso:
echo gpt-engineer projects/meu-app
echo.
cd /d "%~dp0..\scripts"
call run_gpt-engineer.bat
goto main_menu

:metagpt
cls
echo ╔══════════════════════════════════════════════════════════════╗
echo ║                 🤖 METAGPT - MULTI-AGENTE                    ║
echo ╚══════════════════════════════════════════════════════════════╝
echo.
if not exist "%~dp0..\venvs\metagpt" (
    echo ❌ MetaGPT não está instalado!
    echo Execute a opção 'i' para instalar primeiro.
    pause
    goto main_menu
)
echo 🚀 Iniciando MetaGPT...
echo.
echo MetaGPT simula uma equipe completa de desenvolvimento.
echo Inclui: Product Manager, Architect, Engineer, QA Engineer.
echo.
cd /d "%~dp0..\scripts"
call run_metagpt.bat
goto main_menu

:autogpt
cls
echo ╔══════════════════════════════════════════════════════════════╗
echo ║                   🔄 AUTOGPT - AUTÔNOMO                      ║
echo ╚══════════════════════════════════════════════════════════════╝
echo.
if not exist "%~dp0..\venvs\autogpt" (
    echo ❌ AutoGPT não está instalado!
    echo Execute a opção 'i' para instalar primeiro.
    pause
    goto main_menu
)
echo 🚀 Iniciando AutoGPT...
echo.
echo AutoGPT é um agente autônomo geral que pode:
echo - Executar tarefas complexas independentemente
echo - Pesquisar informações na internet
echo - Escrever e executar código
echo - Gerenciar arquivos e projetos
echo.
cd /d "%~dp0..\scripts"
call run_autogpt.bat
goto main_menu

:github_copilot
cls
echo ╔══════════════════════════════════════════════════════════════╗
echo ║                🐙 GITHUB COPILOT WORKSPACE                   ║
echo ╚══════════════════════════════════════════════════════════════╝
echo.
echo 🌐 GitHub Copilot Workspace é uma ferramenta web integrada ao GitHub.
echo.
echo Recursos:
echo ✅ Planejamento completo de projetos
echo ✅ Geração de código contextual
echo ✅ Integração nativa com repositórios
echo ✅ Testes automatizados
echo.
echo 📋 Como acessar:
echo 1. Acesse: https://github.com/features/copilot
echo 2. Faça login com sua conta GitHub
echo 3. Ative o Copilot Workspace (beta público)
echo 4. Abra qualquer repositório e use Ctrl+Shift+P
echo.
echo Abrindo GitHub Copilot...
start https://github.com/features/copilot
pause
goto main_menu

:cursor_ai
cls
echo ╔══════════════════════════════════════════════════════════════╗
echo ║                    🎯 CURSOR AI - EDITOR                     ║
echo ╚══════════════════════════════════════════════════════════════╝
echo.
echo 💻 Cursor AI é um editor de código avançado baseado no VS Code.
echo.
echo Recursos:
echo ✅ Edição de múltiplos arquivos simultaneamente
echo ✅ Chat integrado com contexto do projeto
echo ✅ Refatoração automática inteligente
echo ✅ Debugging assistido por AI
echo.
echo 📥 Como instalar:
echo 1. Acesse: https://cursor.sh
echo 2. Baixe o instalador para Windows
echo 3. Execute o instalador
echo 4. Abra seus projetos no Cursor
echo.
echo Abrindo site do Cursor AI...
start https://cursor.sh
pause
goto main_menu

:replit_agent
cls
echo ╔══════════════════════════════════════════════════════════════╗
echo ║                  ☁️ REPLIT AGENT - NUVEM                     ║
echo ╚══════════════════════════════════════════════════════════════╝
echo.
echo 🌐 Replit Agent oferece desenvolvimento completo na nuvem.
echo.
echo Recursos:
echo ✅ Ambiente de desenvolvimento na nuvem
echo ✅ Deploy automático e hosting
echo ✅ Colaboração em tempo real
echo ✅ Suporte a múltiplas linguagens
echo.
echo 📋 Como usar:
echo 1. Acesse: https://replit.com
echo 2. Crie uma conta gratuita
echo 3. Crie um novo Repl
echo 4. Use o Replit Agent para desenvolvimento assistido
echo.
echo Abrindo Replit...
start https://replit.com
pause
goto main_menu

:codium_ai
cls
echo ╔══════════════════════════════════════════════════════════════╗
echo ║                🧪 CODIUM AI - QUALIDADE                      ║
echo ╚══════════════════════════════════════════════════════════════╝
echo.
echo 🔍 Codium AI foca em qualidade e testes de código.
echo.
echo Recursos:
echo ✅ Geração automática de testes
echo ✅ Análise de qualidade de código
echo ✅ Sugestões de melhorias
echo ✅ Integração com IDEs populares
echo.
echo 📥 Como instalar:
echo 1. Acesse: https://codium.ai
echo 2. Instale a extensão para VS Code/JetBrains
echo 3. Crie uma conta gratuita
echo 4. Configure a extensão
echo.
echo Abrindo Codium AI...
start https://codium.ai
pause
goto main_menu

:install
cls
echo ╔══════════════════════════════════════════════════════════════╗
echo ║                📦 INSTALAÇÃO DE AGENTES                      ║
echo ╚══════════════════════════════════════════════════════════════╝
echo.
echo 🚀 Iniciando instalação dos agentes open source...
echo.
echo Isso pode levar alguns minutos dependendo da sua conexão.
echo.
echo Agentes que serão instalados:
echo - 📝 Aider (Editor + Git)
echo - 🏗️ GPT Engineer (Gerador de projetos)
echo - 🤖 MetaGPT (Multi-agente)
echo - 🔄 AutoGPT (Agente autônomo)
echo.
set /p confirm="Continuar com a instalação? (s/n): "
if /i "%confirm%"=="s" (
    cd /d "%~dp0..\scripts"
    call install_all.bat
) else (
    echo Instalação cancelada.
    pause
)
goto main_menu

:help
cls
echo ╔══════════════════════════════════════════════════════════════╗
echo ║                    📚 AJUDA E DOCUMENTAÇÃO                   ║
echo ╚══════════════════════════════════════════════════════════════╝
echo.
echo 📖 Documentação disponível:
echo.
echo 🔥 DEVIN AI (Mais Completo):
echo    📁 devin/README.md - Guia completo
echo    📁 devin/access_guide.md - Como obter acesso
echo    📁 devin/examples/ - Exemplos de workflows
echo.
echo 💻 AGENTES OPEN SOURCE:
echo    📁 docs/aider.md - Documentação do Aider
echo    📁 docs/gpt-engineer.md - Documentação do GPT Engineer
echo    📁 docs/metagpt.md - Documentação do MetaGPT
echo    📁 docs/autogpt.md - Documentação do AutoGPT
echo.
echo 🌐 AGENTES COMERCIAIS:
echo    📁 commercial/ - Guias de acesso e instalação
echo.
echo 🔧 TROUBLESHOOTING:
echo    📁 docs/troubleshooting.md - Soluções para problemas comuns
echo.
echo 💡 DICAS:
echo - Para melhor experiência, comece com Devin AI
echo - Agentes open source requerem chaves de API (OpenAI, etc.)
echo - Mantenha Python e Git atualizados
echo.
pause
goto main_menu

:exit
cls
echo.
echo ╔══════════════════════════════════════════════════════════════╗
echo ║                         👋 ATÉ LOGO!                         ║
echo ╚══════════════════════════════════════════════════════════════╝
echo.
echo Obrigado por usar os Agentes AI Autônomos!
echo.
echo 🔥 Lembre-se: Devin AI é o mais completo para desenvolvimento!
echo.
echo Para suporte: consulte a documentação em docs/
echo.
timeout /t 3 >nul
exit /b 0
