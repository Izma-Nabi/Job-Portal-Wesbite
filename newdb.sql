-- ======================================
-- Job Portal MSSQL Schema
-- ======================================

-- 1. Database
CREATE DATABASE JobPortalDB_F;
GO

USE JobPortalDB_F;
GO

-----------------------------------------------------
-- Admins
-----------------------------------------------------
CREATE TABLE Admins (
    AdminID INT IDENTITY(1,1) PRIMARY KEY,
    Username VARCHAR(100) NOT NULL UNIQUE,
    PasswordHash VARCHAR(255) NOT NULL,
    CreatedAt DATETIME DEFAULT GETDATE()
);
GO

-----------------------------------------------------
-- Companies
-----------------------------------------------------
CREATE TABLE Companies (
    CompanyID INT IDENTITY(1,1) PRIMARY KEY,
    CompanyName VARCHAR(150) NOT NULL,
    Email VARCHAR(150) NOT NULL UNIQUE,
    PasswordHash VARCHAR(255) NOT NULL,
    PhoneNumber VARCHAR(20),
    Industry VARCHAR(100),
    Location VARCHAR(150),
    Website VARCHAR(200),
    Description VARCHAR(1000),
    IsVerified BIT DEFAULT 0,
    IsActive BIT DEFAULT 1,
    CreatedAt DATETIME DEFAULT GETDATE()
);
GO

-----------------------------------------------------
-- Candidates
-----------------------------------------------------
CREATE TABLE Candidates (
    CandidateID INT IDENTITY(1,1) PRIMARY KEY,
    FullName VARCHAR(150) NOT NULL,
    Email VARCHAR(150) NOT NULL UNIQUE,
    PasswordHash VARCHAR(255) NOT NULL,
    PhoneNumber VARCHAR(20),
    Skills VARCHAR(500),
    ResumeLink VARCHAR(300),
    CoverLetter VARCHAR(1000),
    ExperienceYears INT DEFAULT 0,
    IsActive BIT DEFAULT 1,
    CreatedAt DATETIME DEFAULT GETDATE()
);
GO

-----------------------------------------------------
-- Jobs
-----------------------------------------------------
CREATE TABLE Jobs (
    JobID INT IDENTITY(1,1) PRIMARY KEY,
    CompanyID INT NOT NULL,
    Title VARCHAR(150) NOT NULL,
    Description VARCHAR(1000),
    Requirements VARCHAR(500),
    Location VARCHAR(150),
    SalaryRange VARCHAR(100),

    EmploymentType VARCHAR(20),
    CHECK (EmploymentType IN ('Full-time','Part-time','Internship','Contract')),

    Deadline DATE,
    PostedAt DATETIME DEFAULT GETDATE(),
    IsActive BIT DEFAULT 1,

    FOREIGN KEY (CompanyID) REFERENCES Companies(CompanyID) ON DELETE CASCADE
);
GO

-----------------------------------------------------
-- Applications
-----------------------------------------------------
CREATE TABLE Applications (
    ApplicationID INT IDENTITY(1,1) PRIMARY KEY,
    CandidateID INT NOT NULL,
    JobID INT NOT NULL,
    ResumeLink VARCHAR(300) NOT NULL,
    CoverLetter VARCHAR(1000),

    Status VARCHAR(20) DEFAULT 'Pending',
    CHECK (Status IN ('Pending','Reviewed','Accepted','Rejected')),

    AppliedAt DATETIME DEFAULT GETDATE(),

    FOREIGN KEY (CandidateID) REFERENCES Candidates(CandidateID) ON DELETE CASCADE,
    FOREIGN KEY (JobID) REFERENCES Jobs(JobID) ON DELETE CASCADE
);
GO

-----------------------------------------------------
-- Interviews
-----------------------------------------------------
CREATE TABLE Interviews (
    InterviewID INT IDENTITY(1,1) PRIMARY KEY,
    ApplicationID INT NOT NULL UNIQUE,
    ScheduledDate DATETIME NOT NULL,
    Location VARCHAR(150),

    Mode VARCHAR(20),
    CHECK (Mode IN ('Online','Onsite')),

    Status VARCHAR(20) DEFAULT 'Scheduled',
    CHECK (Status IN ('Scheduled','Completed','Cancelled')),

    FOREIGN KEY (ApplicationID) REFERENCES Applications(ApplicationID) ON DELETE CASCADE
);
GO

-----------------------------------------------------
-- Notifications
-----------------------------------------------------
CREATE TABLE Notifications (
    NotificationID INT IDENTITY(1,1) PRIMARY KEY,
    CandidateID INT NULL,
    CompanyID INT NULL,
    Message VARCHAR(1000) NOT NULL,
    CreatedAt DATETIME DEFAULT GETDATE(),
    IsRead BIT DEFAULT 0,

    FOREIGN KEY (CandidateID) REFERENCES Candidates(CandidateID) ON DELETE CASCADE,
    FOREIGN KEY (CompanyID) REFERENCES Companies(CompanyID) ON DELETE CASCADE
);
GO
