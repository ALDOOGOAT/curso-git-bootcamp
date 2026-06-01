# Flujo Fork + Pull Request

Este sera el flujo principal del curso.

Si quieres la version de una sola pagina para seguir en clase, usa tambien [flujo-alumno.md](flujo-alumno.md).

## 1. Haz fork

En GitHub:

1. Abre el repo del instructor.
2. Haz clic en **Fork**.
3. Crea tu copia en tu cuenta.

Tu copia quedara como:

```text
https://github.com/TU-USUARIO/curso-git-bootcamp
```

## 2. Clona tu fork

```bash
git clone https://github.com/TU-USUARIO/curso-git-bootcamp.git
cd curso-git-bootcamp
swift run
```

Revisa donde estas:

```bash
git status
git remote -v
```

`origin` debe apuntar a tu fork.

## 3. Conecta el repo principal

Agrega el repo del instructor como `upstream`:

```bash
git remote add upstream https://github.com/USUARIO-INSTRUCTOR/curso-git-bootcamp.git
git remote -v
```

Debes ver dos remotos:

- `origin`: tu fork.
- `upstream`: repo principal del instructor.

## 4. Crea tu rama

Usa tu nombre en minusculas y sin espacios.

```bash
git switch -c feat/nombre-apellido
```

Ejemplo:

```bash
git switch -c feat/ana-ramirez
```

Desde este punto, todos tus cambios del ejercicio deben hacerse en esta rama, no en `main`.

## 5. Edita el proyecto Swift

Abre `Sources/IOSLaunchLab/main.swift`.

Busca este comentario:

```swift
// ALUMNOS: agreguen su AppIdea debajo de este comentario.
```

Agrega tu idea usando la plantilla de [plantilla-tarjeta.md](plantilla-tarjeta.md).

## 6. Prueba, revisa y guarda

```bash
swift run
git status
git diff
git add Sources/IOSLaunchLab/main.swift
git commit -m "Agrega idea iOS de Nombre Apellido"
```

## 7. Sube tu rama

```bash
git push -u origin feat/nombre-apellido
```

## 8. Abre tu Pull Request

En GitHub:

1. Entra a tu fork.
2. GitHub mostrara un boton para comparar y abrir Pull Request.
3. Base repository: repo del instructor.
4. Base branch: `main`.
5. Compare branch: tu rama.
6. Llena la plantilla.
7. Crea el Pull Request.

## 9. Si te piden cambios

No cierres el PR. Corrige en la misma rama:

```bash
swift run
git status
git add Sources/IOSLaunchLab/main.swift
git commit -m "Ajusta idea iOS de Nombre Apellido"
git push
```

El Pull Request se actualiza solo.

## 10. Flujo diario resumido

```bash
git status
git switch main
git pull upstream main
git switch -c feat/mi-tarea
# editar archivos
swift run
git diff
git add .
git commit -m "Describe el cambio"
git push -u origin feat/mi-tarea
```
