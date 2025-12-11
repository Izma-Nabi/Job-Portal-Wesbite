# 💼 Job Portal App

Get Started • Features • Screenshots • Documentation

### Find Jobs. Post Jobs. Connect Opportunities.

A modern and intuitive job hiring platform designed for students, recruiters, and organizations.
Search jobs, apply instantly, manage postings, and track applications in a clean, user-friendly interface.

**Get Started | View Demo**

---

## 🔍 Smart Job Search

Search jobs by title, skills, category, salary range, location, and experience level.

## 👤 Dual Role System

Separate dashboards for **Job Seekers** and **Employers** for personalized workflows.

## 🗄️ Centralized Database

Fully structured database for users, job listings, resumes, companies, and applications.

---

# 💼 Job Portal

Modern Recruitment & Hiring Management System
**On tecnologies  • React • Node.js • SQL • Express **

---

## 🚀 Overview

The **Job Portal App** is a complete employment management system built to streamline recruitment for both job seekers and employers.
It allows candidates to search and apply for jobs, while giving employers an efficient portal to post listings, manage applicants, and review resumes.

Clean UI, smooth navigation, and real-time updates make it ideal for academic projects, internships, and professional portfolios.

---

# 🖥️ Screenshots

![ER Diagram](https://github.com/Izma-Nabi/Job-Portal-Wesbite/blob/main/ER_Diagram.jpg?raw=true)
<img width="926" height="409" alt="image" src="https://github.com/user-attachments/assets/c6d64646-8d8c-44e2-a7a5-a4faa33eb389" />


### 🏠 Home Page

A clean landing page with search bar, featured jobs, and categories.

### 👤 Job Seeker Dashboard

Track applications, edit profiles, and view personalized job recommendations.

### 🏢 Employer Dashboard

Post jobs, manage applications, shortlist candidates, and view job analytics.

---

# ✨ Key Features

### 🎯 Job Search & Filtering

Search jobs by:

* Job title
* Skills
* Experience level
* Salary range
* Category
* Location

Fast filtering ensures users find the right opportunities instantly.

### 📄 Resume Upload & Profile Builder

Candidates can:

* Upload resumes
* Edit profiles
* Add skills & experience
* Track application status

### 🏢 Employer Job Posting Panel

Employers can:

* Create and edit job posts
* Add skill requirements
* Set salary ranges
* View all applicants in one place

### 👥 Application Tracking

Complete pipeline for:

* Applied
* Under Review
* Shortlisted
* Rejected

### 🔐 Secure Login System

Separate authentication for job seekers and employers with validation and session handling.

### 🔔 Notification System

Applicants receive application updates.
Employers receive new application alerts.

---

# 🛠️ Getting Started

## Prerequisites

*(Edit based on your stack)*

* Node.js / .NET / Python
* SQL / MongoDB
* VS Code / Visual Studio
* Git

## Installation

Clone the repository:

```bash
git clone https://github.com/yourusername/job-portal.git
cd job-portal
```

Install dependencies:

```bash
npm install
# or
dotnet restore
```

Configure environment variables (DB URL, JWT secret, file storage, etc.).

Run migrations (if applicable):

```bash
dotnet ef database update
```

Run the project:

```bash
npm start
# or
dotnet run
```

---

# 🏗️ Technology Stack

*(Replace with your actual technologies)*
**Frontend:** HTML • CSS • JS • React / Bootstrap
**Backend:** Node.js / Express
**Database:** SQL Server / MySQL
**Authentication:** JWT / Identity
**Architecture:** MVC + REST APIs

---

# 📊 Database Schema


### **Users**

UserId, Name, Email, PasswordHash, Role, Skills, ResumePath

### **Jobs**

JobId, Title, CompanyId, Description, SkillsRequired, SalaryRange, Location, Category, PostedDate

### **Applications**

ApplicationId, JobId, UserId, Status, AppliedDate

### **Companies**

CompanyId, CompanyName, Logo, Description

---

# 🤝 Contributing

1. Fork the repo
2. Create a branch
3. Commit your changes
4. Push the branch
5. Open a Pull Request

---


# 🙏 Acknowledgments

* UI inspiration from modern job platforms
* Academic project guidance and class resources
* Designed and developed with ❤️ by Izma Nabi

---

