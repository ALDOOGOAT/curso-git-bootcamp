# Buenas practicas desde el dia uno

## Trabaja por tareas pequenas

Una rama debe representar una tarea clara:

```bash
feat/idea-ana
fix/mision-sprint
docs/comandos-basicos
```

Evita ramas como:

```bash
cambios
prueba
final
```

## No trabajes directo en main

`main` debe representar la version estable del proyecto.

Flujo recomendado:

```bash
git switch main
git pull upstream main
git switch -c feat/mi-tarea
```

## Prueba antes de guardar

En este curso el proyecto es Swift. Antes de cada commit ejecuta:

```bash
swift run
```

Si no compila, arregla eso antes de subir tu rama.

## Commits claros

Un buen commit responde: que cambio hice.

Ejemplos:

- `Agrega idea iOS de Ana Ramirez`
- `Corrige mision del sprint iOS`
- `Actualiza instrucciones de conflicto`

## Revisa antes de guardar

Antes de cada commit:

```bash
git status
git diff
```

Esto evita subir archivos que no querias tocar.

## Pull antes de empezar

Si trabajas en equipo, actualizate antes de crear una rama:

```bash
git switch main
git pull upstream main
```

## Pull Requests pequenos

Un Pull Request debe ser facil de revisar.

Mejor:

- Una idea iOS nueva.
- Un bug corregido.
- Una seccion de documentacion.

Peor:

- Cambiar todo el proyecto sin explicacion.
- Mezclar formato, funcionalidad y archivos temporales en un solo PR.

## No subas secretos

Nunca subas:

- Passwords.
- Tokens.
- Llaves privadas.
- Archivos `.env`.

Por eso existe `.gitignore`, pero la responsabilidad final sigue siendo tuya.

## Cuando algo se ve raro

No adivines. Primero:

```bash
git status
git log --oneline --decorate --graph --all
git remote -v
```

Con esos tres comandos normalmente puedes entender donde estas.
