# Curso Git y GitHub Bootcamp para iOS Lab

Repositorio base para un curso practico de 3 horas sobre Git y GitHub usando Swift.

El objetivo no es memorizar todos los comandos de Git. El objetivo es que cada alumno salga sabiendo trabajar con historial, ramas, GitHub, Pull Requests y conflictos basicos mientras modifica un proyecto Swift familiar para un laboratorio iOS.

## Para quien es

Estudiantes de ingenieria entre 3er y 8vo semestre que ya tienen Xcode configurado y quieren aprender el flujo real de trabajo con Git y GitHub.

## Resultado esperado

Al final del curso, cada alumno habra hecho el flujo completo:

1. Hacer fork del repositorio.
2. Clonar su fork.
3. Conectar el repo principal como `upstream`.
4. Crear una rama de trabajo.
5. Modificar un proyecto Swift ejecutable.
6. Probar el cambio con `swift run` o desde Xcode.
7. Revisar cambios con Git.
8. Crear commits claros.
9. Subir su rama a GitHub.
10. Abrir un Pull Request.
11. Actualizarse desde el repo principal.
12. Resolver un conflicto controlado.

## Proyecto practico

El proyecto se llama **iOS Launch Lab**.

Es un Swift Package ejecutable. Los alumnos agregan una idea de app iOS al archivo:

```text
Sources/IOSLaunchLab/main.swift
```

Cada aporte incluye:

- Nombre del alumno.
- Semestre.
- Nombre de la app.
- Problema que resuelve.
- Feature estrella.
- Concepto Swift que quiere practicar.

El programa imprime un tablero de ideas en terminal. Se puede abrir en Xcode desde `Package.swift` o ejecutar con:

```bash
swift run
```

Se usa Swift Package, no una app iOS completa, para evitar ruido de firmas, simuladores, assets o archivos `project.pbxproj`. La clase se enfoca en Git, GitHub y Swift editado desde Xcode.

## Material incluido

- [Checklist previa](docs/checklist-previa.md): lo que deben tener instalado antes del curso.
- [Configurar Git](docs/configurar-git.md): instalacion y configuracion para Windows, Linux y macOS.
- [Guion del instructor](docs/guion-instructor.md): estructura minuto a minuto y frases sugeridas.
- [Flujo del ponente](docs/flujo-ponente.md): version compacta para explicar el curso en vivo.
- [Comandos esenciales](docs/comandos-esenciales.md): acordeon de comandos que si van a usar.
- [Flujo del alumno](docs/flujo-alumno.md): pasos exactos que cada alumno debe seguir de inicio a fin.
- [Flujo Fork + Pull Request](docs/flujo-fork-pr.md): practica principal del curso.
- [Conflictos](docs/conflictos.md): laboratorio de conflicto controlado.
- [Errores comunes](docs/errores-comunes.md): problemas esperados y como resolverlos rapido.
- [Checkpoints del instructor](docs/checkpoints-instructor.md): puntos de control por minuto para no perder el ritmo.
- [Verificacion del laboratorio](docs/verificacion-lab.md): prueba rapida en una Mac con Xcode antes del curso.
- [Buenas practicas](docs/buenas-practicas.md): reglas para trabajar bien desde el inicio.
- [Plantilla Swift](docs/plantilla-tarjeta.md): snippet `AppIdea` que los alumnos pueden adaptar.

## Cronograma de 3 horas

| Tiempo | Bloque | Enfoque |
| --- | --- | --- |
| 0:00 - 0:10 | Pitch | Por que Git importa en proyectos iOS reales |
| 0:10 - 0:25 | Conceptos minimos | Git, GitHub, commit, rama, Pull Request |
| 0:25 - 1:05 | Primer flujo real | fork, clone, upstream, branch, edit, run, add, commit |
| 1:05 - 1:35 | Ramas e historial | branch, switch, log, flujo por tarea |
| 1:35 - 2:10 | GitHub | remote, push, fork, Pull Request |
| 2:10 - 2:40 | Colaboracion | upstream, fetch, pull/merge, conflicto |
| 2:40 - 3:00 | Cierre | buenas practicas, dudas y flujo diario |

## Como se usa en clase

El instructor comparte la URL publica del repo. Los alumnos hacen fork desde GitHub y luego clonan su fork:

```bash
git clone https://github.com/USUARIO-ALUMNO/curso-git-bootcamp.git
cd curso-git-bootcamp
swift run
```

Despues siguen [docs/flujo-alumno.md](docs/flujo-alumno.md).

## Frase clave del curso

Ante la duda:

```bash
git status
```

`git status` es el radar. Les dice donde estan parados antes de tocar algo.
