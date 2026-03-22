# Puente Guitarra

Base del entrenador de notas de guitarra con dos modos de uso:

- `diapason-guitarra.html`: version web/local original.
- `android-app/`: app Android minima con `WebView` que empaqueta el HTML localmente.

## Repo

Este proyecto ya quedo inicializado como repositorio Git local. Falta crear el remoto en GitHub y conectarlo.

Comandos sugeridos cuando tengas GitHub listo:

```powershell
git add .
git commit -m "Base web y app Android WebView"
git remote add origin https://github.com/TU_USUARIO/puente-guitarra.git
git push -u origin main
```

## Servir la version web al celular

Puedes levantar un servidor local con:

```powershell
.\iniciar-servidor-celular.bat
```

## Android

La app Android esta pensada para abrirse en Android Studio.

### Estructura

- `android-app/app/src/main/assets/diapason-guitarra.html`
- `android-app/app/src/main/java/com/puenteguitarra/app/MainActivity.kt`

### Sincronizar el HTML hacia Android

Cada vez que edites `diapason-guitarra.html`, corre:

```powershell
.\sync-android-assets.ps1
```

### Compilar

1. Instala Android Studio.
2. Abre la carpeta `android-app`.
3. Deja que Android Studio descargue SDK/Gradle.
4. Ejecuta la app en un telefono Android o emulador.

## Nota importante

El visor previo de archivos del iPhone no ejecuta el JavaScript del HTML local, por eso la version web debe abrirse en Safari/Chrome por URL o usarse dentro de la app Android.
