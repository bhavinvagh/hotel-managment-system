# Hotel Management System - PHP Web Application  

## 📌 Description  
The **Hotel Management System** is a PHP-based web application designed to automate hotel operations, making them more efficient and user-friendly. It enables hotel administrators to manage room bookings, guest check-ins and check-outs, staff, and billing seamlessly. The system provides real-time room availability tracking, secure authentication, and an easy-to-use dashboard for smooth hotel management.  

## 🚀 Features  
✅ **Room Booking Management** – Book, cancel, and update reservations with real-time availability.  
✅ **Guest Check-in & Check-out** – Track guest details and stay duration efficiently.  
✅ **User Authentication** – Secure login system for admin, staff, and guests.  
✅ **Billing & Invoicing** – Generate and manage bills for guest stays and services.  
✅ **Staff Management** – Assign roles and track employee activity.  
✅ **Reports & Analytics** – View business performance and generate reports.  

## ⚙️ Installation & Setup  
### Prerequisites  
- XAMPP/WAMP Server  
- PHP (≥7.4)  
- MySQL Database  
- Apache Server  

### Steps to Install  
```bash
# Clone the repository
git clone https://github.com/yourusername/hotel-management-system.git
cd hotel-management-system

# Move project to the server directory (e.g., htdocs for XAMPP)
mv hotel-management-system /xampp/htdocs/

# Start Apache & MySQL from XAMPP Control Panel

# Import the database
Open phpMyAdmin → Create a new database (e.g., "hotel_db")  
Import `hotel_db.sql` from the project directory

# Configure database connection
Edit `config.php` and update database credentials:
DB_HOST = 'localhost'
DB_USER = 'root'
DB_PASS = ''
DB_NAME = 'hotel_db'

# Run the application
Open a browser and go to: http://localhost/hotel-management-system/
```

## 🎯 Usage  
1. **Admin Login** – Manage bookings, guests, and staff.  
2. **Guest Portal** – Book rooms and manage reservations.  
3. **Billing System** – View and generate invoices.  
4. **Reports** – Track hotel performance and generate financial reports.  

## 📜 License  
This project is open-source and available under the **MIT License**.  

---

Let me know if you need modifications! 😊
