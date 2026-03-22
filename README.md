# Puente Guitarra

Entrenador de notas de guitarra en HTML, CSS y JavaScript, pensado para abrirse desde Safari, Chrome o cualquier navegador moderno por URL.

## Archivos principales

- `index.html`: entrada para GitHub Pages.
- `diapason-guitarra.html`: app principal.
- `iniciar-servidor-celular.bat`: servidor local rapido para probar en celular dentro de la misma red.

## Publicar en GitHub Pages

Este repo esta listo para publicarse como sitio estatico.

1. En GitHub, abre `Settings`.
2. En la barra lateral, abre `Pages`.
3. En `Build and deployment`, elige `Deploy from a branch`.
4. Selecciona la rama `main` y la carpeta `/(root)`.
5. Guarda los cambios.

La URL esperada sera:

`https://luisca66.github.io/diapason-guitarra/`

## Probar en celular sin publicar

Puedes levantar un servidor local con:

```powershell
.\iniciar-servidor-celular.bat
```

Luego abre la URL local que te muestre el script desde Safari en el iPhone.

## Nota importante

El visor previo de archivos del iPhone no ejecuta el JavaScript del HTML local. Por eso esta app debe abrirse por HTTP o HTTPS, por ejemplo con GitHub Pages o con el servidor local.
