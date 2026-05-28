# Verificacion del laboratorio

Usa esta guia antes de iniciar el curso o durante los primeros minutos.

## Verificacion del ponente

En una Mac del laboratorio:

```bash
git --version
swift --version
xcode-select -p
```

Clona el repo publicado:

```bash
git clone https://github.com/ALDOOGOAT/curso-git-bootcamp.git
cd curso-git-bootcamp
swift run
```

Resultado esperado:

- El proyecto compila.
- Se imprime `iOS Launch Lab`.
- Se muestra al menos la idea `LaunchBoard`.

## Verificacion en Xcode

1. Abre Xcode.
2. Selecciona **File > Open**.
3. Abre `Package.swift`.
4. Espera a que Xcode resuelva el paquete.
5. Ejecuta el scheme `IOSLaunchLab`.
6. Revisa la salida en la consola.

## Prueba de edicion segura

Agrega temporalmente una idea debajo del comentario:

```swift
ideas.append(
    AppIdea(
        owner: "Prueba Lab",
        semester: "Demo",
        appName: "TestFlightNotes",
        problem: "Validar que el paquete compila en esta Mac.",
        flagshipFeature: "Una ejecucion rapida antes del curso.",
        swiftConcept: "Top-level code"
    )
)
```

Ejecuta:

```bash
swift run
git diff
```

Luego descarta esa prueba:

```bash
git restore Sources/IOSLaunchLab/main.swift
git status
```

## Si algo falla

- Si `swift` no existe, abre Xcode una vez y acepta licencias/herramientas.
- Si Xcode no abre el paquete, confirma que estas abriendo `Package.swift`, no una carpeta vacia.
- Si `swift run` falla despues de editar, revisa comas, parentesis y comillas en el bloque `AppIdea`.
- Si GitHub no deja hacer push, revisa `gh auth status` y que `origin` apunte al fork del alumno.
