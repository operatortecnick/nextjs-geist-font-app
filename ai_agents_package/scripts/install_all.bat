@echo off
echo ========================================
echo   INSTALADOR DE AGENTES AI - WINDOWS
echo ========================================
echo.

REM Verificar se Python está instalado
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ ERRO: Python não encontrado!
    echo.
    echo Por favor, instale Python 3.8+ primeiro:
    echo https://www.python.org/downloads/
    echo.
    echo Certifique-se de marcar "Add Python to PATH" durante a instalação.
    pause
    exit /b 1
)

REM Verificar se Git está instalado
git --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ ERRO: Git não encontrado!
    echo.
    echo Por favor, instale Git primeiro:
    echo https://git-scm.com/download/win
    pause
    exit /b 1
)

echo ✅ Python e Git encontrados!
echo.

REM Criar diretório para ambientes virtuais
if not exist "venvs" mkdir venvs

echo 🚀 Iniciando instalação dos agentes...
echo.

REM Instalar Aider
echo ========================================
echo 📝 INSTALANDO AIDER
echo ========================================
call :install_agent aider "aider-chat"

REM Instalar GPT Engineer
echo ========================================
echo 🏗️ INSTALANDO GPT ENGINEER
echo ========================================
call :install_agent gpt-engineer "gpt-engineer"

REM Instalar MetaGPT
echo ========================================
echo 🤖 INSTALANDO METAGPT
echo ========================================
call :install_agent metagpt "metagpt"

REM Instalar AutoGPT
echo ========================================
echo 🔄 INSTALANDO AUTOGPT
echo ========================================
call :install_agent_git autogpt "https://github.com/Significant-Gravitas/AutoGPT.git"

echo.
echo ========================================
echo ✅ INSTALAÇÃO CONCLUÍDA!
echo ========================================
echo.
echo Agentes instalados:
echo - 📝 Aider (Editor de código com Git)
echo - 🏗️ GPT Engineer (Gerador de projetos)
echo - 🤖 MetaGPT (Framework multi-agente)
echo - 🔄 AutoGPT (Agente autônomo)
echo.
echo Para usar os agentes:
echo 1. Execute: launcher.bat
echo 2. Ou use os scripts individuais em scripts/
echo.
echo Para Devin AI (mais completo):
echo 1. Vá para pasta devin/
echo 2. Execute: devin_launcher.bat
echo.
pause
goto :eof

REM Função para instalar agente via pip
:install_agent
set agent_name=%1
set package_name=%2

echo Criando ambiente virtual para %agent_name%...
python -m venv venvs\%agent_name%

echo Ativando ambiente virtual...
call venvs\%agent_name%\Scripts\activate.bat

echo Atualizando pip...
python -m pip install --upgrade pip

echo Instalando %package_name%...
pip install %package_name%

echo Criando script de execução...
(
echo @echo off
echo echo Iniciando %agent_name%...
echo call "%~dp0..\venvs\%agent_name%\Scripts\activate.bat"
echo %agent_name% %%*
echo pause
) > run_%agent_name%.bat

echo ✅ %agent_name% instalado com sucesso!
echo.
call venvs\%agent_name%\Scripts\deactivate.bat
goto :eof

REM Função para instalar agente via git
:install_agent_git
set agent_name=%1
set repo_url=%2

echo Clonando repositório %agent_name%...
if exist "agents\%agent_name%" (
    echo Diretório já existe, atualizando...
    cd agents\%agent_name%
    git pull
    cd ..\..
) else (
    git clone %repo_url% agents\%agent_name%
)

echo Criando ambiente virtual para %agent_name%...
python -m venv venvs\%agent_name%

echo Ativando ambiente virtual...
call venvs\%agent_name%\Scripts\activate.bat

echo Atualizando pip...
python -m pip install --upgrade pip

echo Instalando dependências...
if exist "agents\%agent_name%\requirements.txt" (
    pip install -r agents\%agent_name%\requirements.txt
) else if exist "agents\%agent_name%\pyproject.toml" (
    pip install -e agents\%agent_name%
) else (
    echo ⚠️ Arquivo de dependências não encontrado para %agent_name%
)

echo Criando script de execução...
(
echo @echo off
echo echo Iniciando %agent_name%...
echo call "%~dp0..\venvs\%agent_name%\Scripts\activate.bat"
echo cd "%~dp0..\agents\%agent_name%"
echo python -m autogpt %%*
echo pause
) > run_%agent_name%.bat

echo ✅ %agent_name% instalado com sucesso!
echo.
call venvs\%agent_name%\Scripts\deactivate.bat
goto :eof
