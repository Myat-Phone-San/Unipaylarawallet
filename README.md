# 💸 UniPay - Online Wallet System

**UniPay** is a secure and user-friendly online wallet system designed for university students and staff to make digital payments conveniently. The system supports user registration, QR-based payments, phone number transfers, and full admin management.

---

## 🚀 Features

### 🧑‍💻 User Panel
- 📱 **Phone Number Login/Register**
- 👛 **Wallet**: View balance, recharge, and pay
- 🔁 **Transactions**: Filter and view transaction history
- 🔍 **Scan & Pay**: QR code-based transfer with SHA-256 hash verification
- 🔐 **Secure Transfer**: Each payment is confirmed via a hashed payload
- 👤 **Profile Management** and logout

### 🛠 Admin Panel
- 👥 **Admin User Management** (add/edit/delete admins)
- 👨‍🎓 **User Management** (view, create, update, delete)
- 💰 **Wallet Control** (add/reduce balance manually)
- 📊 **Dashboard Statistics** (total users, wallets, admins)
- 🔔 **Notification System** per user
- 📋 **DataTables** for dynamic filtering and searching

---

## 🏗 Technologies Used

| Layer       | Technology                         |
|-------------|------------------------------------|
| Backend     | Laravel 7 (MVC)                    |
| Frontend    | HTML, CSS, JavaScript, Bootstrap 4 |
| Interactivity | jQuery, AJAX                     |
| Security    | SHA-256 Hashing, SSL               |
| Database    | MySQL                              |
| Authentication | Laravel Auth|

---

## 📁 Project Structure

```

UniPay/
├── app/
│   ├── Http/Controllers/
│   │   ├── Auth/
│   │   ├── Frontend/
│   │   └── Backend/
├── routes/
│   ├── web.php
│   └── admin\_web.php
├── database/
│   ├── migrations/
│   └── seeders/
├── public/
│   ├── css/
│   ├── js/
│   └── qr/
├── resources/views/
│   ├── frontend/
│   └── backend/
└── README.md

````

---

## 🛡 Security

- ✅ SHA-256 hash validation during transactions
- ✅ Laravel CSRF protection
- ✅ SSL for localhost and deployment

---

## 📦 Installation Instructions

### 1. Clone the Repository
```bash
git clone https://github.com/yourusername/unipay-wallet.git
cd unipay-wallet
````

### 2. Setup Environment

```bash
cp .env.example .env
php artisan key:generate
```

### 3. Configure Database

Set your DB credentials in `.env`, then run:

```bash
php artisan migrate
php artisan db:seed
```

### 4. Serve the Application

```bash
php artisan serve
```

Access via: [http://localhost:8000]

---

## 🎓 Use Case

Designed for university ecosystems to enable students and staff to:

* Buy food on campus using QR code
* Transfer money between peers via phone number
* View their financial history securely

---
