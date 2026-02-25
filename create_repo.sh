#!/bin/bash

# Nombre del proyecto
PROJECT_NAME="."

# --- Verificación de seguridad ---
#if [ -d "$PROJECT_NAME" ]; then
#  echo "Error: El directorio '$PROJECT_NAME' ya existe. Por favor, elimínalo o elige otro nombre."
#  exit 1
#fi

echo "🚀 Creando la estructura de carpetas y archivos vacíos para: $PROJECT_NAME"

# --- Creación de la estructura de directorios ---
echo "-> Creando directorios..."
mkdir -p $PROJECT_NAME/lib/src/core/config
mkdir -p $PROJECT_NAME/lib/src/core/constants
mkdir -p $PROJECT_NAME/lib/src/core/errors
mkdir -p $PROJECT_NAME/lib/src/core/network
mkdir -p $PROJECT_NAME/lib/src/core/usecases
mkdir -p $PROJECT_NAME/lib/src/core/providers
mkdir -p $PROJECT_NAME/lib/src/core/widgets

mkdir -p $PROJECT_NAME/lib/src/features/products/data/datasources
mkdir -p $PROJECT_NAME/lib/src/features/products/data/models
mkdir -p $PROJECT_NAME/lib/src/features/products/data/repositories

mkdir -p $PROJECT_NAME/lib/src/features/products/domain/entities
mkdir -p $PROJECT_NAME/lib/src/features/products/domain/repositories
mkdir -p $PROJECT_NAME/lib/src/features/products/domain/usecases

mkdir -p $PROJECT_NAME/lib/src/features/products/presentation/providers
mkdir -p $PROJECT_NAME/lib/src/features/products/presentation/screens
mkdir -p $PROJECT_NAME/lib/src/features/products/presentation/widgets

mkdir -p $PROJECT_NAME/test

echo "-> Directorios creados con éxito."
echo ""
echo "-> Creando archivos vacíos..."

# --- Creación de archivos vacíos con 'touch' ---

# Archivos raíz
touch $PROJECT_NAME/lib/main.dart
touch $PROJECT_NAME/lib/app.dart

# Capa Core
touch $PROJECT_NAME/lib/src/core/config/router.dart
touch $PROJECT_NAME/lib/src/core/config/theme.dart
touch $PROJECT_NAME/lib/src/core/constants/.gitkeep
touch $PROJECT_NAME/lib/src/core/errors/exceptions.dart
touch $PROJECT_NAME/lib/src/core/errors/failures.dart
touch $PROJECT_NAME/lib/src/core/network/.gitkeep
touch $PROJECT_NAME/lib/src/core/usecases/usecase.dart
touch $PROJECT_NAME/lib/src/core/providers/.gitkeep
touch $PROJECT_NAME/lib/src/core/widgets/.gitkeep

# Feature: products -> data
touch $PROJECT_NAME/lib/src/features/products/data/datasources/product_remote_datasource.dart
touch $PROJECT_NAME/lib/src/features/products/data/datasources/product_local_datasource.dart
touch $PROJECT_NAME/lib/src/features/products/data/models/product_model.dart
touch $PROJECT_NAME/lib/src/features/products/data/repositories/product_repository_impl.dart

# Feature: products -> domain
touch $PROJECT_NAME/lib/src/features/products/domain/entities/product.dart
touch $PROJECT_NAME/lib/src/features/products/domain/repositories/product_repository.dart
touch $PROJECT_NAME/lib/src/features/products/domain/usecases/get_products.dart

# Feature: products -> presentation
touch $PROJECT_NAME/lib/src/features/products/presentation/providers/product_providers.dart
touch $PROJECT_NAME/lib/src/features/products/presentation/providers/product_state.dart
touch $PROJECT_NAME/lib/src/features/products/presentation/screens/products_screen.dart
touch $PROJECT_NAME/lib/src/features/products/presentation/widgets/product_list_item.dart

# Carpeta de Test
touch $PROJECT_NAME/test/.gitkeep

echo "-> Archivos vacíos creados con éxito."
echo ""
echo "✅ ¡Estructura del proyecto '$PROJECT_NAME' creada con éxito!"
echo ""
echo "Próximos pasos:"
echo "1. cd $PROJECT_NAME"
echo "2. Abre el proyecto en tu editor de código favorito (VS Code, Android Studio, etc.)."
echo "3. Comienza a añadir el código en los archivos correspondientes."
echo ""