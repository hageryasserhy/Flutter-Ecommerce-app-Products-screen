# Flutter E-Commerce App Recycled Product Screen

---

<div align="center"> 
  <a href="mailto:hageryasser.hy@gmail.com" target="_blank">
    <img src="https://img.shields.io/badge/Gmail-333333?style=for-the-badge&logo=gmail&logoColor=red" />
  </a>
  <a href="https://linkedin.com/in/hager-mohamed-80b01522b" target="_blank">
    <img src="https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white" target="_blank" />
  </a>
  <a href="https://github.com/hageryasserhy" target="_blank">
     <img src="https://www7.lunapic.com/do-not-link-here-use-hosting-instead/172092972783664525?8605043881" target="_blank" /> <!-- sqlite, safari, google-chrome are other good icon options -->
  </a>
</div>

---

## Table of Contents

- [Introduction](#introduction)
- [Features](#features)
- [Screenshots](#Screenshots)
- [Architecture](#architecture)
- [Dependencies](#dependencies)
- [Installation](#installation)

---

## Introduction

Welcome to the **Flutter E-Commerce App Recycled Product Screen**! This screen demonstrates a Product screen built using Flutter that displays a list of products fetched from the DummyJSON API. It incorporates clean architecture principles and utilizes the MVVM (Model-View-ViewModel) pattern to ensure maintainability and scalability.

---

## Features

- **Product Listing**: Browse a variety of products from the DummyJSON API.
- **Search Functionality**: Search for products using the search bar.
- **Favorite Products**: Mark products as favorites.
- **Add to Cart**: Add products to your cart.
- **Responsive Design**: Adapts to different screen sizes.
- **Clean Architecture**: Follows MVVM pattern.

---
## Screenshots

![WhatsApp Image 2024-07-14 at 5 58 52 AM](https://github.com/user-attachments/assets/08934704-e9f8-4f88-8027-dcff069878b8)
![WhatsApp Image 2024-07-14 at 5 58 51 AM](https://github.com/user-attachments/assets/6a161d21-6c65-449a-9ca8-89cfc02a8c13)

---

## Architecture

The project follows the MVVM (Model-View-ViewModel) architecture pattern:

- **Model**: Represents the data layer. In this app, `ProductModel` is used to parse and hold the product data.
- **View**: Represents the UI layer. This includes the various widgets and screens used in the application.
- **ViewModel**: Contains the business logic and handles the interaction between the Model and View. `ProductsCubit` is used to manage the state and fetch data from the API.

---

## Dependencies

- Flutter SDK
- Dart SDK
- Flutter Bloc
- Google Fonts

---

## Installation

### Prerequisites

- Flutter SDK
- Dart SDK
  
### Steps

1. **Clone the repository**

```bash
git clone https://github.com/hageryasserhy/Flutter-Ecommerce-app-Products-screen
