# Task Tracking Dashboard (SQL Project)

## Overview
This project is a Task Tracking Dashboard implemented in MySQL.  
It allows project managers and team members to manage projects, tasks, and statuses efficiently.

## Features
- Manage Users, Projects, Tasks, and Statuses
- Assign tasks to team members
- Track task status (Not Started, In Progress, Completed, On Hold)
- Store creation timestamps for auditing

## Database Structure
- users: Stores team member details
- projects: Stores project information
- status: Stores task status options
- tasks: Stores tasks with relationships to users, projects, and statuses

## SQL Highlights
- Relational Database with Foreign Keys
- Sample data provided for testing
- Timestamp tracking for record creation

## How to Use
1. Create a MySQL database using the provided script
2. Load the sample data
3. Run queries to manage and track tasks

## Files Included
- `task_tracking_dashboard.sql` → Database creation script with sample data
- `README.md` → Project documentation

---
Author: Amoolya Navale 
