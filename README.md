# README

# Friend List Rails Application

Welcome to the Friend List Rails Application! This application allows users to manage their list of friends, add new friends, edit existing friend details, and delete friends from the list. It's a simple yet effective tool for organizing and keeping track of your social connections.

## Features

- User Authentication: Users can sign up, log in, and log out securely.
- CRUD Operations: Users can create, read, update, and delete friend entries.
- Responsive Design: The application is built with responsive design principles, ensuring a seamless experience across devices.
- Bootstrap Integration: Bootstrap is used for styling, providing a clean and modern user interface.
- Simple and Intuitive Interface: The user interface is designed to be user-friendly and easy to navigate.

## Technologies Used

- **Ruby**: The programming language used for backend development.
- **Rails**: The web application framework used for building the application.
- **Bootstrap**: The front-end framework used for styling and layout.
- **SQLite**: The default database used for development.
- **RSpec**: The testing framework used for writing tests.

## Setup Instructions

To set up the Friend List Rails Application on your local machine, follow these steps:

1. Clone the repository to your local machine:

   ```bash
   git clone https://github.com/devprashad/friend_list_rails.git
   ```

2. **Install dependencies:**

   ```sh
   bundle install
   ```

3. **Set up the database:**

   ```sh
   rails db:create
   rails db:migrate
   ```

4. **Start the Rails server:**

   ```sh
   rails server
   ```

5. **Visit the application:**
   Open your browser and navigate to `http://localhost:3000`

## Usage

### Adding a New Friend

- Sign up or log in to your account.
- Click on "New main" to add a new friend.
- Fill in the details and submit the form.

### Viewing a Friend

- On the friends list page, click the "Show" button next to a friend to view detailed information.
- On the show page, you will see the details along with buttons to edit or delete the friend.

### Editing or Deleting a Friend

- On the show page, use the "Edit" button to update a friend's details.
- Use the "Destroy" button to delete a friend from the list.

## Contributing

1. **Fork the repository:**

   ```sh
   git clone https://github.com/devprashad/friend_list_rails.git
   ```

2. **Create a new branch:**

   ```sh
   git checkout -b feature-branch
   ```

3. **Make your changes and commit them:**

   ```sh
   git add .
   git commit -m "Description of changes"
   ```

4. **Push to the branch:**

   ```sh
   git push origin feature-branch
   ```

5. **Create a pull request:**
   - Go to the repository on GitHub.
   - Click on "New Pull Request" and select your branch.
