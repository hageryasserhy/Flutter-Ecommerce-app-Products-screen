# Flutter E-Commerce App Recycled Product Screen

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

![product_screen_1](https://github.com/user-attachments/assets/1f46d46d-bfb0-43ae-be07-d01700482bd4)
![product_screen_with_favorite](https://github.com/user-attachments/assets/38a89bb4-d321-4727-ad23-a8da1b3b49f9)


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
