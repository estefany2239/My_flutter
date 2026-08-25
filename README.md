# 📱 Flutter User App

Aplicación desarrollada con Flutter como ejercicio práctico de desarrollo de interfaces y navegación.

El proyecto implementa un flujo básico de autenticación y gestión de usuario, utilizando una estructura organizada por funcionalidades.

---

## ✨ Funcionalidades

- 🔐 Inicio de sesión
- 📝 Registro de usuario
- 🔑 Recuperación de contraseña
- 🏠 Dashboard
- 👤 Perfil de usuario
- 🚪 Cierre de sesión
- 🧭 Navegación entre pantallas
- 🧩 Widgets reutilizables
- 🎨 Gestión centralizada de colores

---

## 📱 Pantallas

### 🔐 Login

Permite al usuario ingresar a la aplicación mediante sus datos de acceso.

### 📝 Registro

Permite crear una nueva cuenta proporcionando los datos básicos del usuario.

### 🔑 Recuperar contraseña

Permite ingresar un correo electrónico para solicitar la recuperación de la contraseña.

### 🏠 Dashboard

Incluye:

- Mensaje de bienvenida.
- Actividades recientes.
- Cinco tarjetas de información.
- Barra de navegación inferior.

### 👤 Perfil

Muestra:

- Avatar del usuario.
- Nombre.
- Correo electrónico.
- Información básica.
- Botón para cerrar sesión.

---

## 🗂️ Estructura del proyecto

```text
lib/
│
├── core/
│   ├── theme/
│   │   └── app_colors.dart
│   │
│   └── routes/
│       └── app_routes.dart
│
├── features/
│   │
│   ├── auth/
│   │   └── presentation/
│   │       ├── pages/
│   │       │   ├── login_page.dart
│   │       │   ├── register_page.dart
│   │       │   └── forgot_password_page.dart
│   │       │
│   │       └── widgets/
│   │           ├── custom_text_field.dart
│   │           └── primary_button.dart
│   │
│   ├── dashboard/
│   │   └── presentation/
│   │       └── pages/
│   │           └── dashboard_page.dart
│   │
│   ├── profile/
│   │   └── presentation/
│   │       └── pages/
│   │           └── profile_page.dart
│   │
│   └── splash/
│       └── presentation/
│           └── pages/
│               └── splash_page.dart
│
└── main.dart