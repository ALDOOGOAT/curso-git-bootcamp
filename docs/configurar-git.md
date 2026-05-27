# Configurar Git para el curso

Esta guia deja tu computadora lista para usar Git y GitHub durante el curso.

Haz los pasos de tu sistema operativo y al final ejecuta la prueba completa.

## 1. Instalar Git

### Windows

Opcion recomendada con PowerShell:

```powershell
winget install --id Git.Git -e --source winget
```

Cierra y vuelve a abrir la terminal.

Verifica:

```powershell
git --version
```

Si no tienes `winget`, instala Git desde:

<https://git-scm.com/download/win>

Durante la instalacion puedes dejar las opciones por defecto.

### Linux Ubuntu o Debian

```bash
sudo apt update
sudo apt install -y git
git --version
```

### Linux Fedora

```bash
sudo dnf install -y git
git --version
```

### macOS

Opcion rapida con herramientas de Apple:

```bash
xcode-select --install
git --version
```

Si usas Homebrew:

```bash
brew install git
git --version
```

## 2. Configurar tu identidad

Git necesita saber quien esta haciendo los commits.

Cambia `Tu Nombre` y `tu-correo@example.com` por tus datos reales. Usa el correo que tienes en GitHub.

### Windows, Linux y macOS

```bash
git config --global user.name "Tu Nombre"
git config --global user.email "tu-correo@example.com"
```

Ejemplo:

```bash
git config --global user.name "Ana Ramirez"
git config --global user.email "ana.ramirez@example.com"
```

Verifica:

```bash
git config --global user.name
git config --global user.email
```

## 3. Configuracion recomendada

Estas opciones evitan problemas comunes en el curso.

### Todos los sistemas

```bash
git config --global init.defaultBranch main
git config --global core.editor "code --wait"
git config --global pull.rebase false
```

Que hace cada una:

- `init.defaultBranch main`: cuando crees repos nuevos, la rama inicial se llamara `main`.
- `core.editor "code --wait"`: si Git necesita abrir un editor, usara VS Code.
- `pull.rebase false`: durante el curso, `git pull` usara merge para que sea mas facil de explicar.

### Saltos de linea en Windows

```bash
git config --global core.autocrlf true
```

### Saltos de linea en Linux y macOS

```bash
git config --global core.autocrlf input
```

## 4. Instalar GitHub CLI

Git sirve para controlar versiones. GitHub CLI sirve para iniciar sesion y trabajar con GitHub desde la terminal.

Esto ayuda a que `git push` funcione sin pedir password manual.

### Windows

```powershell
winget install --id GitHub.cli -e --source winget
gh --version
```

### Linux Ubuntu o Debian

```bash
sudo apt update
type -p wget >/dev/null || sudo apt install -y wget
sudo mkdir -p -m 755 /etc/apt/keyrings
wget -nv -O /tmp/githubcli-archive-keyring.gpg https://cli.github.com/packages/githubcli-archive-keyring.gpg
cat /tmp/githubcli-archive-keyring.gpg | sudo tee /etc/apt/keyrings/githubcli-archive-keyring.gpg > /dev/null
sudo chmod go+r /etc/apt/keyrings/githubcli-archive-keyring.gpg
sudo mkdir -p -m 755 /etc/apt/sources.list.d
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
sudo apt update
sudo apt install -y gh
gh --version
```

### Linux Fedora

```bash
sudo dnf install -y gh
gh --version
```

### macOS

```bash
brew install gh
gh --version
```

## 5. Iniciar sesion en GitHub desde terminal

Ejecuta:

```bash
gh auth login --web --hostname github.com --git-protocol https
```

Selecciona estas opciones:

```text
GitHub.com
HTTPS
Yes, authenticate Git with GitHub credentials
Login with a web browser
```

Despues verifica:

```bash
gh auth status
```

## 6. Prueba completa de Git

Crea un repositorio local de prueba:

```bash
mkdir prueba-git
cd prueba-git
git init
echo "Hola Git" > nota.txt
git status
git add nota.txt
git commit -m "Agrega nota inicial"
git log --oneline
```

Resultado esperado:

- `git status` debe mostrar `nota.txt` como archivo nuevo antes del commit.
- `git commit` debe crear un commit sin error de nombre o correo.
- `git log --oneline` debe mostrar el commit `Agrega nota inicial`.

## 7. Prueba de GitHub

Verifica que estas autenticado:

```bash
gh auth status
```

Si quieres confirmar que puedes ver tu usuario:

```bash
gh api user --jq .login
```

## 8. Checklist final

Antes del curso debes poder ejecutar sin errores:

```bash
git --version
git config --global user.name
git config --global user.email
git config --global init.defaultBranch
gh --version
gh auth status
```

Si todo eso funciona, ya estas listo para clonar el repo, crear ramas, hacer commits, subir cambios y abrir Pull Requests.
