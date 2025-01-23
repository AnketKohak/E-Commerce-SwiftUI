# E-Commerce-SwiftUI

This is an E-Commerce application built using SwiftUI. The app fetches product data from the [Fake Store API](https://github.com/keikaavousi/fake-store-api) and displays it in a user-friendly interface.

## Features

- Display a list of products
- View product details
- Asynchronous image loading
- Currency formatting
- Navigation between product list and details

## Screenshots

<img width="298" alt="Screenshot 2025-01-23 at 9 19 00 PM" src="https://github.com/user-attachments/assets/64634dbf-e2cf-4a6b-aa45-6f0f69dd7dde" />
<img width="298" alt="Screenshot 2025-01-23 at 9 19 14 PM" src="https://github.com/user-attachments/assets/061356c0-8ea7-4173-ace0-b3fb1775a25a" />

## Walkthrough Demo Video
https://www.youtube.com/shorts/tUStvAnAx64


Check out the demo video below:

[![Demo Video](https://img.youtube.com/vi/tUStvAnAx64/0.jpg)](https://www.youtube.com/shorts/tUStvAnAx64)


## Requirements

- iOS 14.0+
- Xcode 12.0+
- Swift 5.0+

## Installation

1. Clone the repository:
    ```sh
    git clone https://github.com/yourusername/E-Commerce-SwiftUI.git
    ```
2. Open the project in Xcode:
    ```sh
    cd E-Commerce-SwiftUI
    open E-Commerce-SwiftUI.xcodeproj
    ```
3. Build and run the project on your simulator or device.

## Usage

1. Launch the app.
2. Browse the list of products.
3. Tap on a product to view its details.
4. Use the "Buy Now" button to simulate a purchase.

## Code Overview

### Models

- [`Product`](E-Commerce-SwiftUI/Product.swift): Represents a product with properties like `id`, `title`, `description`, `category`, `image`, `price`, and `rating`.
- [`Rate`](E-Commerce-SwiftUI/Product.swift): Represents the rating of a product with properties `rate` and `count`.

### ViewModels

- [`ProductViewModel`](E-Commerce-SwiftUI/ProductViewModel.swift): Fetches products from the API and stores them in the `products` array.

### Views

- [`ProductView`](E-Commerce-SwiftUI/ProductView.swift): Displays a list of products.
- [`ProductDetailsView`](E-Commerce-SwiftUI/ProductDetailsView.swift): Displays the details of a selected product.
- [`ProductRowView`](E-Commerce-SwiftUI/ProductRowView.swift): Displays a single product in the list.
- [`AsyncImageView`](E-Commerce-SwiftUI/AsyncImageView.swift): Loads and displays an image asynchronously.

### Extensions

- [`Double+Extension`](E-Commerce-SwiftUI/Preview%20Content/Double+Extension.swift): Provides utility methods for formatting `Double` values as strings and currency.

### API Manager

- [`APIManager`](E-Commerce-SwiftUI/APIManager.swift): Handles network requests to fetch product data from the Fake Store API.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Acknowledgements

- [Fake Store API](https://github.com/keikaavousi/fake-store-api) for providing the product data.

## Contact

For any questions or feedback, please contact [yourname](mailto:youremail@example.com).
