# Laboratorio de conflictos

Un conflicto no significa que Git se rompio. Significa que dos cambios tocaron la misma parte del archivo y Git necesita que una persona decida que version queda.

## Objetivo

Provocar un conflicto controlado en Swift, resolverlo y subir la solucion.

## Preparacion del instructor

En el repo principal, modifica esta linea de `Sources/IOSLaunchLab/main.swift` en `main`:

```swift
let sprintMission = "Mision del sprint: convertir ideas iOS en prototipos claros, colaborativos y listos para presentar."
```

Cambia solo el texto interno. Por ejemplo:

```swift
let sprintMission = "Mision del sprint: preparar ideas iOS que puedan defenderse como pitch de App Store."
```

Haz commit y push directo a `main` del repo principal.

## Paso de los alumnos

En su rama de trabajo, cada alumno modifica la misma linea, pero con otro texto:

```swift
let sprintMission = "Mision del sprint: aprender Git colaborando sobre un proyecto Swift ejecutable."
```

Luego guarda su cambio:

```bash
git status
git add Sources/IOSLaunchLab/main.swift
git commit -m "Actualiza mision del sprint iOS"
```

## Traer cambios del repo principal

```bash
git fetch upstream
git switch main
git pull upstream main
git switch feat/nombre-apellido
git merge main
```

Debe aparecer un conflicto en `Sources/IOSLaunchLab/main.swift`.

## Como se ve un conflicto

Git marcara una zona similar a esta:

```swift
<<<<<<< HEAD
let sprintMission = "Mision del sprint: aprender Git colaborando sobre un proyecto Swift ejecutable."
=======
let sprintMission = "Mision del sprint: preparar ideas iOS que puedan defenderse como pitch de App Store."
>>>>>>> main
```

Interpretacion:

- `HEAD`: tu version actual.
- La parte despues de `=======`: version que viene de `main`.
- Tu trabajo es dejar una sola version final.

## Resolver

Edita el archivo y deja una version final, por ejemplo:

```swift
let sprintMission = "Mision del sprint: aprender Git creando ideas iOS colaborativas y listas para presentar."
```

Despues:

```bash
git status
git add Sources/IOSLaunchLab/main.swift
git commit
swift run
git push
```

Si Git abre un editor para el commit del merge, guarda y cierra. En Xcode o VS Code puedes guardar el mensaje y cerrar la pestana.

## Mensaje para recordar

Un conflicto no se arregla presionando botones al azar. Se arregla leyendo:

1. Que queria mi rama.
2. Que trae `main`.
3. Que version final tiene sentido.
