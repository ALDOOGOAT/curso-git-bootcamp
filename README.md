# Curso Git y GitHub Bootcamp

Repositorio base para un curso practico de 3 horas sobre Git y GitHub.

El objetivo no es memorizar todos los comandos de Git. El objetivo es que cada alumno salga sabiendo trabajar con historial, ramas, GitHub, Pull Requests y conflictos basicos sin depender de pasar archivos por WhatsApp, USB o carpetas llamadas `Proyecto_Final_Ahora_Si`.

## Para quien es

Estudiantes de ingenieria entre 3er y 8vo semestre que ya programan o estan por trabajar en proyectos de equipo, residencias, hackathons o materias integradoras.

## Resultado esperado

Al final del curso, cada alumno habra hecho el flujo completo:

1. Hacer fork del repositorio.
2. Clonar su fork.
3. Crear una rama de trabajo.
4. Modificar un proyecto HTML real.
5. Revisar cambios con Git.
6. Crear commits claros.
7. Subir su rama a GitHub.
8. Abrir un Pull Request.
9. Actualizarse desde el repo principal.
10. Resolver un conflicto controlado.

## Proyecto practico

El proyecto es una landing page sencilla llamada **Expo Ingenieria**.

Cada alumno agregara una tarjeta personal en `index.html` con:

- Nombre
- Semestre
- Area de interes
- Lenguaje o herramienta favorita
- Idea de proyecto final

No hay dependencias, build, servidor ni instalacion de frameworks. Solo HTML, CSS, Git y GitHub.

## Material incluido

- [Checklist previa](docs/checklist-previa.md): lo que deben tener instalado antes del curso.
- [Configurar Git](docs/configurar-git.md): instalacion y configuracion para Windows, Linux y macOS.
- [Guion del instructor](docs/guion-instructor.md): estructura minuto a minuto y frases sugeridas.
- [Comandos esenciales](docs/comandos-esenciales.md): acordeon de comandos que si van a usar.
- [Flujo Fork + Pull Request](docs/flujo-fork-pr.md): practica principal del curso.
- [Conflictos](docs/conflictos.md): laboratorio de conflicto controlado.
- [Buenas practicas](docs/buenas-practicas.md): reglas para trabajar bien desde el inicio.
- [Plantilla de tarjeta](docs/plantilla-tarjeta.md): snippet que los alumnos pueden adaptar.

## Cronograma de 3 horas

| Tiempo | Bloque | Enfoque |
| --- | --- | --- |
| 0:00 - 0:10 | Pitch | Por que Git importa en proyectos reales |
| 0:10 - 0:25 | Conceptos minimos | Git, GitHub, commit, rama, Pull Request |
| 0:25 - 1:05 | Uso individual | clone, status, diff, add, commit, log |
| 1:05 - 1:35 | Ramas | branch, switch, flujo por tarea |
| 1:35 - 2:10 | GitHub | remote, push, fork, Pull Request |
| 2:10 - 2:40 | Colaboracion | upstream, fetch, pull/merge, conflicto |
| 2:40 - 3:00 | Cierre | buenas practicas, dudas y flujo diario |

## Comandos para publicar este repo en GitHub

Desde esta carpeta, despues de revisar el contenido:

```bash
git init
git add .
git commit -m "Prepara curso practico de Git y GitHub"
git branch -M main
```

Si usas GitHub CLI:

```bash
gh repo create curso-git-bootcamp --public --source=. --remote=origin --push
```

Si prefieres crear el repo manualmente en GitHub:

```bash
git remote add origin https://github.com/TU-USUARIO/curso-git-bootcamp.git
git push -u origin main
```

## Como se usa en clase

El instructor comparte la URL publica del repo. Los alumnos hacen fork desde GitHub y luego clonan su fork:

```bash
git clone https://github.com/USUARIO-ALUMNO/curso-git-bootcamp.git
cd curso-git-bootcamp
```

Despues siguen [docs/flujo-fork-pr.md](docs/flujo-fork-pr.md).

## Frase clave del curso

Ante la duda:

```bash
git status
```

`git status` es el radar. Les dice donde estan parados antes de tocar algo.
