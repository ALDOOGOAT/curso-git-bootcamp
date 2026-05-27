# Checklist previa para alumnos

Completa esto antes del curso. La meta es no gastar la clase instalando herramientas.

## 1. Cuenta de GitHub

Crea o confirma tu cuenta en:

<https://github.com>

Recomendacion: usa un usuario profesional. Ese perfil puede terminar en tu CV.

## 2. Git instalado

Si todavia no tienes Git, sigue primero la guia completa:

[Configurar Git en tu entorno](configurar-git.md)

En terminal:

```bash
git --version
```

Debe aparecer una version, por ejemplo:

```text
git version 2.43.0
```

## 3. Configuracion inicial

Configura tu nombre y correo. Usa el mismo correo que tengas en GitHub si quieres que tus commits aparezcan ligados a tu perfil.

```bash
git config --global user.name "Tu Nombre"
git config --global user.email "tu-correo@example.com"
```

Verifica:

```bash
git config --global --list
```

## 4. Editor recomendado

Instala Visual Studio Code:

<https://code.visualstudio.com>

Extensiones utiles, no obligatorias:

- GitLens
- GitHub Pull Requests

## 5. Prueba rapida

Crea una carpeta temporal y confirma que Git funciona:

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

Si el commit falla por nombre o correo, repite la configuracion del paso 3.

## 6. Lo que debes traer

- Laptop con bateria o cargador.
- Terminal abierta.
- GitHub abierto en el navegador.
- VS Code instalado.
- Internet funcionando.
