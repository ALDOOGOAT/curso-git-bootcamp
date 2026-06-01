# Checkpoints del instructor

Usa estos puntos de control para mantener el curso dentro de 3 horas.

## Antes de abrir la clase

Debes tener listo:

- Repo publico en GitHub.
- URL visible para todos.
- `Package.swift` abierto en Xcode.
- `Sources/IOSLaunchLab/main.swift` abierto.
- `docs/instructor/flujo-ponente.md` abierto.
- `docs/estudiante/flujo-alumno.md` abierto.
- GitHub autenticado en tu maquina.
- Una forma rapida de compartir el link del repo.

## Minuto 10

El pitch debe haber terminado.

Senal de avance:

- Los alumnos entienden el problema: carpetas de Xcode duplicadas, versiones manuales y codigo sobrescrito.

Si vas tarde:

- No extiendas la teoria.
- Pasa directo a conceptos minimos.

## Minuto 25

Conceptos minimos explicados.

Todos deben saber decir en una frase:

- Commit: foto del proyecto.
- Rama: linea de trabajo.
- Pull Request: propuesta de cambio.
- Conflicto: decision manual entre cambios.

Comando que deben recordar:

```bash
git status
```

## Minuto 40

Todos deberian tener:

- Fork creado.
- Repo clonado.
- Terminal dentro de `curso-git-bootcamp`.
- `swift run` ejecutado al menos una vez.

Verificacion:

```bash
git status
git remote -v
swift run
```

Si varios siguen atorados:

- Pide que trabajen en parejas.
- No expliques Git avanzado todavia.
- Resuelve Xcode o autenticacion solo en los equipos bloqueados.

## Minuto 55

Todos deberian tener:

- `upstream` configurado.
- Rama personal creada.

Verificacion:

```bash
git remote -v
git branch
```

Resultado esperado:

- `origin` apunta al fork del alumno.
- `upstream` apunta al repo del instructor.
- La rama activa es `feat/nombre-apellido`.

## Minuto 70

Todos deberian tener:

- `AppIdea` agregado en `Sources/IOSLaunchLab/main.swift`.
- `swift run` funcionando.
- Primer commit creado.

Verificacion:

```bash
swift run
git status
git log --oneline -3
```

Si alguien no tiene commit:

- Repite `git diff`, `git add Sources/IOSLaunchLab/main.swift`, `git commit -m "..."`
- No pases todavia a Pull Requests si la mitad del grupo no tiene commit.

## Minuto 110

Todos deberian tener:

- Rama subida.
- Pull Request abierto.

Verificacion:

```bash
git push -u origin feat/nombre-apellido
```

En GitHub:

- PR abierto hacia `main` del repo instructor.
- Diff Swift visible.
- Plantilla de PR llenada.

## Minuto 130

Inicia conflicto controlado.

Tu accion:

- Edita en `main` la linea `sprintMission`.
- Haz commit y push.

Accion de alumnos:

- Editan esa misma linea en su rama.
- Hacen commit.

No avances hasta que la mayoria tenga el commit local.

## Minuto 150

Todos deben intentar sincronizar:

```bash
git fetch upstream
git switch main
git pull upstream main
git switch feat/nombre-apellido
git merge main
```

Resultado esperado:

- Algunos tendran conflicto.
- Algunos tendran merge normal.

Ambos resultados sirven para explicar colaboracion real.

## Minuto 165

Conflictos resueltos o explicados.

Verificacion:

```bash
git status
git add Sources/IOSLaunchLab/main.swift
git commit
swift run
git push
```

Si falta tiempo:

- Resuelve un conflicto en pantalla.
- Deja `docs/conflictos.md` como guia para quienes no terminaron.

## Minuto 180

Cierre.

Pide que escriban el flujo final:

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

Mensaje final:

> "No necesitan saber todo Git hoy. Necesitan dominar este flujo y repetirlo bien."
