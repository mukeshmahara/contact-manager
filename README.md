# Introduction
This is a Basic Contact Management System built using Ruby on Rails. It includes features like adding, editing, and deleting contacts, with searching and pagination implemented using the will_paginate gem. The frontend is styled using Bootstrap 5.3.2 for a modern and responsive UI.

## Features
- Add, edit, show, delete contacts.
- Search functionality by name, phone number, or email.
- Pagination for large datasets.
- Frontend styled with Bootstrap 5.3.2.
- Responsive UI.
- Toast notifications for success and error messages.
  
## Technologies Used
- Ruby on Rails: Backend framework.
- Bootstrap 5.3.2: Frontend styling and responsive design.
- will_paginate: Pagination for contacts.
- PostgreSQL: Database for data storage.

## Prerequisites
- Ruby 3.2.2
- Rails 7.0.8
- PostgreSQL
  
## Installation
  Follow the steps below to get the project running on your local machine.

### Steps
1. Clone the repository:

       git clone https://github.com/mukeshmahara/contact-manager.git
  
       cd contact-manager
  
2. Install dependencies:
    **Note:** Make sure to run `bundle install` first before running `yarn install`.

       bundle install
  
4. Set up the database:

    Update config/database.yml to match your PostgreSQL settings, then run:

       rails db:create db:migrate
  
5. Start the Rails server:

        rails s


### Contributing
  > **Note:**   If you'd like to contribute, feel free to fork the repository and submit a pull request.


  
