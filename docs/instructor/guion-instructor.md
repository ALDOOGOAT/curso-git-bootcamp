# Guion del instructor

Duracion total: 3 horas.

Formato recomendado: practica guiada. Proyecta tu terminal, Xcode y GitHub. Los alumnos hacen los pasos contigo.

## Antes de iniciar

Ten listo:

- Repo publico en GitHub.
- URL del repo en una diapositiva o pizarron.
- `Package.swift` abierto en Xcode.
- `Sources/IOSLaunchLab/main.swift` abierto.
- `docs/instructor/flujo-ponente.md` abierto como acordeon.
- GitHub abierto en navegador.
- Una rama de prueba para demostrar errores si hace falta.

## 0:00 - 0:10 | Pitch inicial

Di:

> "Levanten la mano si han tenido un proyecto de Xcode llamado `AppFinal`, `AppFinalBuena`, `AppFinalAhoraSi`, o si alguna vez copiaron una carpeta completa porque les daba miedo romper el proyecto."

Espera reaccion.

Di:

> "En iOS eso duele mas: un archivo del proyecto, una rama mal mezclada o una version enviada por AirDrop puede romperle el avance a todo el equipo. Git existe para que cada cambio tenga historia, responsable y forma de regresar."

Cierra el pitch:

> "Hoy vamos a aprender el flujo minimo que si van a usar: ramas, commits, GitHub, Pull Requests y conflictos. Lo haremos con Swift, no con teoria. Van a modificar un proyecto ejecutable y van a ver como se trabaja sin pisar el codigo de otros."

## 0:10 - 0:25 | Conceptos minimos

Explica con analogias cortas:

- Git: historial local del proyecto.
- GitHub: lugar donde compartimos ese historial.
- Commit: foto del proyecto con nombre y fecha.
- Rama: linea de trabajo separada.
- Pull Request: propuesta para integrar cambios.
- Conflicto: dos personas tocaron la misma parte y hay que decidir.

Proyecta:

```bash
git --version
swift --version
git config --global user.name "Tu Nombre"
git config --global user.email "tu-correo@example.com"
git config --global --list
```

Frase clave:

> "Git no es guardar por guardar. Git es poder explicar que cambio, cuando cambio y por que cambio. En un proyecto iOS eso salva demos, entregas y equipos."

## 0:25 - 1:05 | Primer flujo real

Objetivo: que clonen, prueben el Swift Package, conecten el repo principal, creen una rama, editen Swift y creen su primer commit sin trabajar directo en `main`.

Primero, pide que hagan fork del repo.

Luego:

```bash
git clone https://github.com/USUARIO-ALUMNO/curso-git-bootcamp.git
cd curso-git-bootcamp
git status
git remote -v
swift run
```

Di:

> "Primero comprobamos dos cosas: que Git sabe donde estamos y que el proyecto Swift corre antes de tocarlo. Si rompemos algo despues, ya sabemos que lo rompimos nosotros."

Conecta el repo principal:

```bash
git remote add upstream https://github.com/USUARIO-INSTRUCTOR/curso-git-bootcamp.git
git remote -v
```

Di:

> "`origin` es su copia. `upstream` es el repo principal del curso. Esa diferencia evita que intenten subir directo al repo del instructor."

Ahora crea la rama antes de editar:

```bash
git switch -c feat/nombre-apellido
git branch
```

Di:

> "Nunca arrancamos una tarea real directo en `main`. Primero creamos una rama. La rama es su mesa de trabajo."

Abren `Sources/IOSLaunchLab/main.swift`.

Pide:

> "No cambien todo. Solo vamos a agregar una idea de app iOS como un `AppIdea`. Un cambio pequeno, claro, ejecutable y facil de revisar."

Comandos:

```bash
swift run
git status
git diff
git add Sources/IOSLaunchLab/main.swift
git commit -m "Agrega idea iOS de Nombre Apellido"
git log --oneline
```

Explica staging:

> "`git add` no guarda todavia. Solo prepara lo que entrara en la foto. `git commit` toma la foto. `swift run` demuestra que nuestra foto no rompe el proyecto."

## 1:05 - 1:35 | Ramas e historial

Objetivo: reforzar que cada tarea vive en su propia rama y que el historial permite explicar el proyecto.

Muestra:

```bash
git branch
git log --oneline --decorate
git switch main
git status
git switch feat/nombre-apellido
```

Di:

> "Una rama es una mesa de trabajo. Puedes experimentar sin ensuciar la mesa principal. Si regreso a `main`, no estoy viendo exactamente lo mismo que en mi rama."

Haz que todos confirmen que estan en su rama:

```bash
git status
```

Si alguien hizo commits en `main`, no lo reganes. Usalo para explicar:

> "Esto pasa todo el tiempo al inicio. Lo importante es verlo rapido con `git status` y corregir antes de subir."

## 1:35 - 2:10 | GitHub y Pull Requests

Objetivo: subir ramas y abrir PRs.

Comandos:

```bash
git remote -v
git push -u origin feat/nombre-apellido
```

En GitHub, muestra:

- Donde aparece la rama subida.
- Como abrir el Pull Request.
- Como leer el diff de Swift.
- Como llenar la plantilla.

Di:

> "Un Pull Request no es burocracia. Es una conversacion sobre un cambio antes de meterlo a la version principal. En iOS, esto evita que un cambio pequeno rompa el demo de todos."

Revisa uno o dos PRs en vivo. Comenta algo pequeno para que vean que la revision es parte del flujo.

## 2:10 - 2:40 | Colaboracion y conflictos

Objetivo: que vivan un conflicto controlado y lo resuelvan.

Primero, haz un cambio en `main` del repo principal sobre la linea:

```swift
let sprintMission = "Mision del sprint: convertir ideas iOS en prototipos claros, colaborativos y listos para presentar."
```

Haz commit y push.

Pide a los alumnos que, en su rama, cambien esa misma linea con otro texto y hagan commit.

Luego:

```bash
git fetch upstream
git switch main
git pull upstream main
git switch feat/nombre-apellido
git merge main
```

Cuando aparezca el conflicto, di:

> "Esto no es un error fatal. Git se detuvo porque no quiere inventar una decision por nosotros. Dos personas tocaron la misma linea Swift y alguien debe decidir que queda."

Abre `Sources/IOSLaunchLab/main.swift` y explica:

- `<<<<<<< HEAD`: lo que trae mi rama.
- `=======`: separador.
- `>>>>>>> main`: lo que viene de la rama que estoy mezclando.

Pide que dejen una sola version final.

Cerrar:

```bash
git status
git add Sources/IOSLaunchLab/main.swift
git commit
swift run
git push
```

## 2:40 - 3:00 | Cierre

Repasa el flujo diario:

```bash
git status
git switch main
git pull upstream main
git switch -c feat/mi-tarea
swift run
git diff
git add .
git commit -m "Describe el cambio"
git push -u origin feat/mi-tarea
```

Frases finales:

> "No necesitan saber todo Git hoy. Necesitan dominar este flujo."

> "Si manana trabajan en una app iOS de equipo, ya no manden carpetas de Xcode. Creen ramas, prueben, hagan commits y abran Pull Requests."

## Manejo de problemas frecuentes

Usa [errores-comunes.md](../estudiante/errores-comunes.md) si alguien se atora con autenticacion, ramas, `swift run`, upstream o conflictos.

Para la version compacta del flujo en vivo, usa [flujo-ponente.md](flujo-ponente.md).
