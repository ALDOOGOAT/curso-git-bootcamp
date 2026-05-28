# Flujo del ponente

Esta es la version compacta para dar el curso sin perder el hilo.

## Pitch de apertura

Di:

> "Levanten la mano si han tenido un proyecto de Xcode llamado `AppFinal`, `AppFinalBuena`, `AppFinalAhoraSi`, o si han copiado una carpeta completa por miedo a romper el proyecto."

Luego:

> "En iOS eso duele mas: un cambio pequeno puede romper el demo, un archivo enviado por AirDrop puede pisar el avance de otro, y una carpeta duplicada no te dice quien cambio que. Git nos da historial, ramas y una forma profesional de revisar antes de mezclar."

Cierre:

> "Hoy no vamos a aprender Git como manual. Vamos a practicar el flujo que si se usa: crear rama, modificar Swift, ejecutar, hacer commit, subir a GitHub, abrir Pull Request y resolver un conflicto."

## Idea pedagogica

El ejercicio usa un Swift Package en vez de una app iOS completa para evitar ruido de `project.pbxproj`, assets, firmas o simuladores. Sigue siendo Swift, abre en Xcode y corre con `swift run`, pero deja la atencion en Git.

## Flujo en vivo

1. Los alumnos hacen fork del repo.
2. Clonan su fork:

```bash
git clone https://github.com/USUARIO-ALUMNO/curso-git-bootcamp.git
cd curso-git-bootcamp
swift run
```

3. Configuran `upstream`:

```bash
git remote add upstream https://github.com/USUARIO-INSTRUCTOR/curso-git-bootcamp.git
git remote -v
```

4. Crean rama:

```bash
git switch -c feat/nombre-apellido
```

5. Editan:

```text
Sources/IOSLaunchLab/main.swift
```

6. Agregan un `AppIdea` debajo del comentario de alumnos.
7. Ejecutan:

```bash
swift run
git status
git diff
```

8. Guardan:

```bash
git add Sources/IOSLaunchLab/main.swift
git commit -m "Agrega idea iOS de Nombre Apellido"
```

9. Suben rama:

```bash
git push -u origin feat/nombre-apellido
```

10. Abren Pull Request hacia `main` del repo del instructor.

## Conflicto controlado

Tu cambio en `main`:

```swift
let sprintMission = "Mision del sprint: preparar ideas iOS que puedan defenderse como pitch de App Store."
```

Cambio que pides a alumnos en su rama:

```swift
let sprintMission = "Mision del sprint: aprender Git colaborando sobre un proyecto Swift ejecutable."
```

Luego todos sincronizan:

```bash
git fetch upstream
git switch main
git pull upstream main
git switch feat/nombre-apellido
git merge main
```

Resuelven el conflicto dejando una sola version final, despues:

```bash
git status
git add Sources/IOSLaunchLab/main.swift
git commit
swift run
git push
```

## Cierre

Pide que repitan este flujo:

```bash
git status
git switch main
git pull upstream main
git switch -c feat/mi-tarea
swift run
git diff
git add .
git commit -m "Mensaje claro"
git push -u origin feat/mi-tarea
```

Frase final:

> "No necesitan saber todo Git hoy. Necesitan dominar este flujo y repetirlo bien cada vez que trabajen en una app con mas personas."
