# E-Commerce Website

This is a fully-featured E-Commerce website built with **Ruby on Rails**, incorporating **Devise** for authentication, **PostgreSQL** for database management, and **Stripe** for payment integration. The application allows users to browse products, add items to their cart, leave comments and ratings, and even upload their own products once authenticated. 

## Features

### 1. **User Authentication**
   - **Devise** is used for secure authentication (sign up, login, logout, password reset, and email confirmation).
   - Only **authenticated users** can upload products.
   - No admin role is implemented — all logged-in users can upload products.

### 2. **Product Management**
   - Users can **add products** with essential details such as name, description, price, and image upload.
   - Products are listed on the homepage, where they can be **searched** and **filtered** by price.
   
### 3. **Search Functionality**
   - Search for products by their **name** or **description** using the search bar.

### 4. **Filter Products by Price**
   - Users can **filter products** by price in two ways:
     - **Lower to Higher** price.
     - **Higher to Lower** price.

### 5. **Single Product Page**
   - Each product has its own **dedicated page** that displays detailed information such as the product name, description, price, and image.
   - Users can leave **comments** and provide **ratings** on the product.
   
### 6. **Comments & Ratings**
   - Authenticated users can **comment** on and **rate** products.
   - Ratings are displayed alongside each product for other users to see.

### 7. **Add to Cart Functionality**
   - Users can add products to their **shopping cart**.
   - Manage cart items by increasing or decreasing quantities or removing items.
   - Cart is linked to the user session and will persist across login sessions.

### 8. **Checkout & Payments**
   - Users can review their cart before proceeding to checkout.
   - **Stripe** is integrated for seamless payment processing.

### 9. **Responsive Design**
   - The website is fully responsive, ensuring an optimal experience on both desktop and mobile devices.

## Getting Started

### Prerequisites
Ensure that you have the following installed on your system:
- Ruby (version 3.3.4)
- Rails (version 7.2.1)
- PostgreSQL (version 12.20)

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/MuhammadSajid368/rails-ecommerce-postgrsql.git
   cd ecommerce-rails
