# 🛒 Supermarket Website

This repository contains the source code and specification for a simple **supermarket website**. The platform allows users to browse products by category, manage a shopping cart, and complete purchases with secure credit card payment.

---

## 📚 Table of Contents

- [Overview](#overview)
- [Features](#features)
- [Pages](#pages)
  - [Login Page](#1-login-page)
  - [Product Catalog Page](#2-product-catalog-page)
  - [Shopping Cart Page](#3-shopping-cart-page)
  - [Checkout & Payment](#4-checkout--credit-card-payment)


---

## 🧾 Overview

This project demonstrates a basic e-commerce flow tailored for a supermarket. It includes user authentication, categorized product browsing, a dynamic cart system, and payment integration.

---

## ✨ Features

- User authentication (login/register)
- Product catalog with category filtering and search
- Product detail popup
- Cart with quantity management
- Secure credit card checkout

---

## 📄 Pages

### 1. Login Page

**Purpose:**  
Allow users to log into their accounts.

**Components:**
- Email input
- Password input
- Login button
- "Forgot password?" link
- Register link
- Error handling for invalid credentials

---

### 2. Product Catalog Page

**Purpose:**  
Display all products grouped by category with a search bar.

**Components:**
- Search bar (filter by name/brand/keyword)
- Category navigation
- Product cards showing:
  - Image
  - Name
  - Price
  - ℹ️ Info button (opens modal with details)
  - ➖ / ➕ quantity buttons

---

### 3. Shopping Cart Page

**Purpose:**  
View and manage selected products before purchase.

**Components:**
- List of selected products:
  - Name, image, unit price, total price
  - Quantity control
  - Remove item button
- Summary box:
  - Subtotal, taxes, total
- Checkout button

---

### 4. Checkout & Credit Card Payment

**Purpose:**  
Collect customer and payment information to place the order.

**Components:**
- Customer form (name, email, address)
- Payment form (card number, expiry date, CVV)
- Pay Now button
- Input validation
- Secure handling of sensitive data
- Confirmation page with order summary

---
