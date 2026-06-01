# 📊 CRM Database Project

## 📌 Project Overview

This is a **Customer Relationship Management (CRM) Database System** designed using MySQL.
The system manages customers, employees, sales, orders, support tickets, campaigns, and customer interactions in a structured relational database.
It helps businesses track customer data, improve sales performance, manage marketing campaigns, and handle customer support efficiently.

## 🎯 Objectives

* Manage customer and employee information
* Track leads, opportunities, and sales activities
* Handle orders, payments, and product details
* Manage customer support tickets and feedback
* Track marketing campaigns and responses
* Maintain region and city-based customer segmentation

## 🛠️ Technologies Used

* MySQL (Database Management System)
* SQL (DDL & DML)
* Relational Database Design

## 🗂️ Database Schema

This project contains **20 interconnected tables**:

### 👤 Customer & Location

* Customers
* Cities
* Regions
* UserLogins

### 👨‍💼 Employees & Departments

* Employees
* Departments

### 📈 Sales & Orders

* Sales
* Orders
* OrderDetails
* Payments

### 🎯 Leads & Opportunities

* Leads
* LeadSources
* Opportunities

### 🎫 Support System

* SupportTickets
* TicketCategories

### 📣 Marketing

* Campaigns
* CampaignResponses

### 💬 Customer Engagement

* CustomerInteractions
* Feedback

### 🛍️ Products

* Products


## ⚙️ Key Features

* Customer data management with city & region mapping
* Lead tracking and sales pipeline management
* Order and payment processing system
* Product-based order details tracking
* Customer support ticket management
* Campaign performance tracking
* Customer feedback and interaction history

## 🧠 Database Design Highlights

* 20 normalized tables
* Primary keys in all tables
* Logical separation of modules (Sales, Support, Marketing)
* Scalable relational structure
* Supports analytical reporting and BI dashboards

## 🚀 How to Run This Project

1. Open MySQL Workbench / SQL Server
2. Run the script:

   ```sql
   CREATE DATABASE CRM_Project;
   USE CRM_Project;
   ```
3. Execute the full table creation script
4. Insert sample data (if available)
5. Run SQL queries for analysis

## 📊 Example Use Cases

* Find total sales per employee
* Track customers by city or region
* Identify open support tickets
* Analyze campaign response rates
* Calculate total revenue from orders


👨‍💻 Author
Name: SAI DEEPTHI K
Project: CRM Database System
Purpose: Academic / Portfolio Project

## 📄 License

This project is for educational purposes only.


