# Flujo del alumno

Esta es la receta completa que debes seguir durante el curso.

La idea es que no trabajes directo en `main`. Primero haces fork, clonas tu copia, creas una rama, haces tu cambio Swift y lo propones con un Pull Request.

## 1. Hacer fork

En GitHub:

1. Entra al repo del instructor.
2. Haz clic en **Fork**.
3. Crea la copia en tu cuenta.

Tu fork se vera parecido a esto:

```text
https://github.com/TU-USUARIO/curso-git-bootcamp
```

## 2. Clonar tu fork

```bash
git clone https://github.com/TU-USUARIO/curso-git-bootcamp.git
cd curso-git-bootcamp
git status
git remote -v
swift run
```

Debes ver `origin` apuntando a tu usuario y el programa `iOS Launch Lab` ejecutandose.

## 3. Conectar el repo del instructor

```bash
git remote add upstream https://github.com/USUARIO-INSTRUCTOR/curso-git-bootcamp.git
git remote -v
```

Debes tener:

- `origin`: tu fork.
- `upstream`: repo principal del instructor.

## 4. Crear tu rama

```bash
git switch -c feat/nombre-apellido
git branch
```

Ejemplo:

```bash
git switch -c feat/ana-ramirez
```

Confirma que estas en tu rama:

```bash
git status
```

## 5. Editar Swift

Abre el proyecto en Xcode desde `Package.swift` o usa VS Code:

```bash
code .
```

Archivo a modificar:

```text
Sources/IOSLaunchLab/main.swift
```

Busca este comentario:

```swift
// ALUMNOS: agreguen su AppIdea debajo de este comentario.
```

Copia la plantilla de [plantilla-tarjeta.md](plantilla-tarjeta.md), pegala debajo del comentario y cambia los datos por los tuyos.

## 6. Probar y revisar cambios

Ejecuta el programa:

```bash
swift run
```

Luego revisa Git:

```bash
git status
git diff
```

Si ves archivos que no querias cambiar, avisa antes de hacer commit.

## 7. Crear commit

Usaremos un estandar de la industria llamado "Conventional Commits" o Commits Semanticos:

```bash
git add Sources/IOSLaunchLab/main.swift
git commit -m "feat: agrega idea iOS de Nombre Apellido"
git log --oneline
```

Ejemplo:

```bash
git commit -m "feat: agrega idea iOS de Ana Ramirez"
```

## 8. Subir tu rama

```bash
git push -u origin feat/nombre-apellido
```

Ejemplo:

```bash
git push -u origin feat/ana-ramirez
```

## 9. Abrir Pull Request

En GitHub:

1. Entra a tu fork.
2. Abre **Compare & pull request**.
3. Base repository: repo del instructor.
4. Base branch: `main`.
5. Compare branch: tu rama.
6. Llena la plantilla.
7. Crea el Pull Request.

## 10. Actualizar tu rama con cambios del instructor

Cuando el instructor lo indique:

```bash
git fetch upstream
git switch main
git pull upstream main
git switch feat/nombre-apellido
git merge main
```

Si no hay conflicto, Git terminara el merge solo.

Si hay conflicto, sigue [conflictos.md](conflictos.md).

## 11. Resolver y subir cambios finales

Despues de resolver un conflicto o ajustar tu idea:

```bash
git status
git add Sources/IOSLaunchLab/main.swift
git commit
swift run
git push
```

Si no hubo conflicto y solo hiciste un ajuste normal:

```bash
git status
git add Sources/IOSLaunchLab/main.swift
git commit -m "Ajusta idea iOS de Nombre Apellido"
swift run
git push
```

## 12. Flujo que debes recordar

```bash
git status
git switch main
git pull upstream main
git switch -c feat/mi-tarea
# editar
swift run
git diff
git add .
git commit -m "Mensaje claro"
git push -u origin feat/mi-tarea
```

Ese es el ciclo base para trabajar solo y tambien para colaborar con un equipo.
