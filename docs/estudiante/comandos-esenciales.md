# Comandos esenciales de Git

Esta es la chuleta del curso. No intenta cubrir todo Git, solo lo que vas a usar todos los dias.

## Verificar el proyecto Swift

```bash
swift --version
swift run
```

`swift run` compila y ejecuta el Swift Package. Usalo antes de hacer commit para confirmar que tu cambio no rompio el ejercicio.

## Estado del repositorio

```bash
git status
```

El comando mas importante. Usalo antes y despues de cada paso.

```bash
git diff
```

Muestra que cambiaste antes de guardar el commit.

```bash
git log --oneline
```

Muestra el historial resumido.

## Guardar cambios

```bash
git add Sources/IOSLaunchLab/main.swift
```

Prepara el archivo Swift del ejercicio.

```bash
git add .
```

Prepara todos los cambios de la carpeta actual.

```bash
git commit -m "Agrega idea iOS de Maria Lopez"
```

Guarda una version del proyecto.

Buenos mensajes:

- `Agrega idea iOS de Maria Lopez`
- `Corrige mision del sprint iOS`
- `Ajusta descripcion de LaunchBoard`

Malos mensajes:

- `cambios`
- `asdasd`
- `final ahora si`

## Ramas

```bash
git branch
```

Lista ramas locales.

```bash
git switch -c feat/nombre-apellido
```

Crea una rama y te mueve a ella.

```bash
git switch main
```

Regresa a `main`.

## GitHub y remotos

```bash
git remote -v
```

Muestra a que repositorio remoto esta conectado tu proyecto.

```bash
git push -u origin feat/nombre-apellido
```

Sube tu rama por primera vez.

```bash
git push
```

Sube commits nuevos de una rama que ya conoce GitHub.

## Mantenerte actualizado

```bash
git fetch upstream
```

Trae informacion del repo principal sin mezclar cambios todavia.

```bash
git pull upstream main
```

Trae y mezcla cambios de `main` del repo principal.

```bash
git merge main
```

Mezcla la rama `main` local dentro de tu rama actual.

## Deshacer sin destruir

```bash
git restore Sources/IOSLaunchLab/main.swift
```

Descarta cambios no guardados en el archivo Swift.

```bash
git restore --staged Sources/IOSLaunchLab/main.swift
```

Saca el archivo Swift del area de preparacion, pero conserva su contenido.

## Comandos que no se usan a ciegas

Evita estos comandos mientras aprendes, salvo que entiendas exactamente que hacen:

```bash
git reset --hard
git push --force
```

Pueden borrar cambios o sobrescribir trabajo remoto.
