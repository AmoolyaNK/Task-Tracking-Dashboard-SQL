
-- Task Tracking Dashboard Database Script

-- Create Database
CREATE DATABASE IF NOT EXISTS task_tracking_dashboard;
USE task_tracking_dashboard;

-- Create Users Table
CREATE TABLE users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    role VARCHAR(50) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create Projects Table
CREATE TABLE projects (
    project_id INT PRIMARY KEY AUTO_INCREMENT,
    project_name VARCHAR(100) NOT NULL,
    description TEXT,
    start_date DATE,
    end_date DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create Status Table
CREATE TABLE status (
    status_id INT PRIMARY KEY AUTO_INCREMENT,
    status_name VARCHAR(50) NOT NULL
);

-- Create Tasks Table
CREATE TABLE tasks (
    task_id INT PRIMARY KEY AUTO_INCREMENT,
    task_name VARCHAR(100) NOT NULL,
    description TEXT,
    project_id INT,
    assigned_to INT,
    status_id INT,
    due_date DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (project_id) REFERENCES projects(project_id),
    FOREIGN KEY (assigned_to) REFERENCES users(user_id),
    FOREIGN KEY (status_id) REFERENCES status(status_id)
);

-- Insert sample data into status
INSERT INTO status (status_name) VALUES ('Not Started'), ('In Progress'), ('Completed'), ('On Hold');

-- Insert sample data into users
INSERT INTO users (name, email, role) VALUES
('Alice Johnson', 'alice@example.com', 'Developer'),
('Bob Smith', 'bob@example.com', 'Project Manager');

-- Insert sample data into projects
INSERT INTO projects (project_name, description, start_date, end_date) VALUES
('Website Redesign', 'Revamp the company website with new UI/UX', '2025-08-01', '2025-10-30');

-- Insert sample tasks
INSERT INTO tasks (task_name, description, project_id, assigned_to, status_id, due_date) VALUES
('Design Homepage', 'Create mockups for homepage', 1, 1, 2, '2025-08-20'),
('Setup Hosting', 'Configure AWS hosting environment', 1, 2, 1, '2025-08-25');
