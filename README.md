# maef

lib/
├── app/
│   ├── data/
│   │   ├── models/
│   │   │   ├── user_model.dart
│   │   │   ├── product_model.dart
│   │   │   ├── order_model.dart
│   │   │   ├── cart_model.dart
│   │   │   ├── story_model.dart
│   │   │   └── auth_model.dart
│   │   ├── providers/
│   │   │   ├── api_provider.dart
│   │   │   ├── auth_provider.dart
│   │   │   ├── product_provider.dart
│   │   │   ├── order_provider.dart
│   │   │   ├── story_provider.dart
│   │   │   └── local_storage_provider.dart
│   │   └── repositories/
│   │       ├── auth_repository.dart
│   │       ├── product_repository.dart
│   │       ├── order_repository.dart
│   │       ├── cart_repository.dart
│   │       └── story_repository.dart
│   ├── modules/
│   │   ├── auth/
│   │   │   ├── controllers/
│   │   │   │   ├── auth_controller.dart
│   │   │   │   ├── biometric_controller.dart
│   │   │   │   └── pin_controller.dart
│   │   │   ├── views/
│   │   │   │   ├── login_view.dart
│   │   │   │   ├── register_view.dart
│   │   │   │   ├── biometric_auth_view.dart
│   │   │   │   ├── pin_auth_view.dart
│   │   │   │   └── forgot_password_view.dart
│   │   │   └── bindings/
│   │   │       └── auth_binding.dart
│   │   ├── home/
│   │   │   ├── controllers/
│   │   │   │   ├── home_controller.dart
│   │   │   │   └── story_controller.dart
│   │   │   ├── views/
│   │   │   │   ├── home_view.dart
│   │   │   │   ├── stories_view.dart
│   │   │   │   └── widgets/
│   │   │   │       ├── story_widget.dart
│   │   │   │       ├── product_card.dart
│   │   │   │       └── banner_slider.dart
│   │   │   └── bindings/
│   │   │       └── home_binding.dart
│   │   ├── products/
│   │   │   ├── controllers/
│   │   │   │   ├── product_controller.dart
│   │   │   │   └── product_detail_controller.dart
│   │   │   ├── views/
│   │   │   │   ├── products_list_view.dart
│   │   │   │   ├── product_detail_view.dart
│   │   │   │   ├── search_view.dart
│   │   │   │   └── category_view.dart
│   │   │   └── bindings/
│   │   │       └── product_binding.dart
│   │   ├── cart/
│   │   │   ├── controllers/
│   │   │   │   └── cart_controller.dart
│   │   │   ├── views/
│   │   │   │   ├── cart_view.dart
│   │   │   │   └── checkout_view.dart
│   │   │   └── bindings/
│   │   │       └── cart_binding.dart
│   │   ├── orders/
│   │   │   ├── controllers/
│   │   │   │   └── order_controller.dart
│   │   │   ├── views/
│   │   │   │   ├── orders_list_view.dart
│   │   │   │   └── order_detail_view.dart
│   │   │   └── bindings/
│   │   │       └── order_binding.dart
│   │   └── profile/
│   │       ├── controllers/
│   │       │   └── profile_controller.dart
│   │       ├── views/
│   │       │   ├── profile_view.dart
│   │       │   ├── edit_profile_view.dart
│   │       │   └── settings_view.dart
│   │       └── bindings/
│   │           └── profile_binding.dart
│   ├── routes/
│   │   ├── app_pages.dart
│   │   └── app_routes.dart
│   ├── core/
│   │   ├── utils/
│   │   │   ├── constants.dart
│   │   │   ├── helpers.dart
│   │   │   ├── validators.dart
│   │   │   └── extensions.dart
│   │   ├── services/
│   │   │   ├── storage_service.dart
│   │   │   ├── biometric_service.dart
│   │   │   ├── notification_service.dart
│   │   │   ├── connectivity_service.dart
│   │   │   └── story_service.dart
│   │   ├── middleware/
│   │   │   ├── auth_middleware.dart
│   │   │   └── connectivity_middleware.dart
│   │   ├── theme/
│   │   │   ├── app_theme.dart
│   │   │   ├── colors.dart
│   │   │   └── text_styles.dart
│   │   └── widgets/
│   │       ├── custom_button.dart
│   │       ├── custom_text_field.dart
│   │       ├── loading_widget.dart
│   │       ├── error_widget.dart
│   │       └── custom_app_bar.dart
│   └── config/
│       ├── app_config.dart
│       └── environment.dart
└── main.dart

# Architecture Détaillée
## 1. Data Layer (Couche de Données)

### Models : Représentation des entités métier
Providers : Communication avec les APIs et services externes
Repositories : Abstraction des sources de données (API + Cache local)

## 2. Domain Layer (Logique Métier)
Intégrée dans les controllers GetX pour cette architecture
## 3. Presentation Layer (Interface Utilisateur)

### Controllers : Gestion d'état avec GetX
Views : Interfaces utilisateur
Bindings : Injection de dépendances GetX

## 4. Core Services

Storage Service : Gestion du stockage local (Hive/SharedPreferences)
Biometric Service : Authentification biométrique
Story Service : Récupération des stories Instagram/WhatsApp
Notification Service : Gestion des notifications

## Modules Principaux
Auth Module

Authentification biométrique (empreinte digitale)
Code PIN 4 chiffres
Connexion/inscription classique
Gestion des tokens JWT

## Home Module

Écran d'accueil avec stories
Affichage des produits populaires
Bannières promotionnelles
Stories Instagram/WhatsApp intégrées

## Products Module

Liste des produits avec filtres
Détails produit avec images
Recherche et catégories
Wishlist

## Cart & Orders

Panier avec calculs dynamiques
Processus de commande
Historique des commandes
Suivi des livraisons

## Profile Module

Profil utilisateur
Paramètres de l'application
Gestion des adresses
Support client

# 🔑 Fonctionnalités clés prévues :

Authentification biométrique + PIN 4 chiffres
Intégration des stories Instagram/WhatsApp
E-commerce complet (produits, panier, commandes)
Gestion d'état réactive avec GetX