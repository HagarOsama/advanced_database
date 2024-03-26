# Hospital Management System

Welcome to the Hospital Management System project! This project aims to create a robust database using MySQL, implement SQL indexes and triggers for efficient data retrieval and manipulation, and normalize the code to 5NF (Fifth Normal Form) to ensure data integrity. Additionally, a PHP-based API will be developed to facilitate communication between the database and a Flutter-based GUI, enabling the system to receive and add patient records.

## Features

1. **MySQL Database**: The core of the project, a MySQL database will be designed and implemented to store and manage hospital-related data.
2. **SQL Indexes**: Indexes will be utilized to improve the performance of queries by allowing faster data retrieval.
3. **Triggers**: Triggers will be employed to automate actions or enforce business rules whenever specific events occur in the database.
4. **Normalization**: The database will be normalized to the Fifth Normal Form (5NF) to eliminate data redundancy and ensure data integrity.
5. **ERD Model**: An Entity-Relationship Diagram (ERD) will be created to visualize the structure of the database and its relationships.
6. **PHP API**: A PHP-based API will be developed to serve as a bridge between the MySQL database and the Flutter GUI, allowing seamless communication.
7. **Flutter GUI**: A user-friendly graphical interface will be built using Flutter to interact with the hospital management system. Users will be able to retrieve patient records and add new patients.

## Prerequisites

To set up and run the Hospital Management System project, you will need the following:

- MySQL Server: Install and configure a MySQL server on your local machine or a remote server.
- PHP: Install PHP to enable the development of the PHP API.
- Flutter: Install Flutter to create the GUI for the hospital management system.

## Installation

1. Clone the repository:

   ````
   git clone https://github.com/your-username/hospital-management-system.git
   ```

2. Import the MySQL database:

   - Open a terminal and navigate to the project's root directory.
   - Execute the following command to import the database:

     ```
     mysql -u your-username -p your-database-name < database.sql
     ```

     Replace `your-username` with your MySQL username and `your-database-name` with the desired name for the database.

3. Set up the PHP API:

   - Navigate to the `php-api` directory.
   - Configure the MySQL connection settings in the `config.php` file.
   - Deploy the PHP files to your preferred web server or use a local development environment.

4. Set up the Flutter GUI:

   - Open a new terminal and navigate to the `flutter-gui` directory.
   - Run the following command to fetch the project's dependencies:

     ```
     flutter pub get
     ```

   - Connect your Flutter-compatible device or emulator.
   - Execute the following command to launch the GUI:

     ```
     flutter run
     ```

## Usage

1. Access the Flutter GUI and interact with the hospital management system's features.
2. Use the provided forms and buttons to retrieve patient records and add new patients.
3. The PHP API will handle the communication with the MySQL database to process the requested operations.
4. SQL indexes and triggers will enhance the performance and maintain data consistency in the database.
5. The normalized database structure ensures data integrity and minimizes redundancy.

## Contributing

Contributions are always welcome! If you'd like to contribute to the Hospital Management System project, please follow these steps:

1. Fork the repository.
2. Create a new branch for your feature or bug fix.
3. Make your changes and test thoroughly.
4. Commit your changes with descriptive commit messages.
5. Push your changes to your forked repository.
6. Open a pull request, providing a detailed description of your changes.

## Collaborators

1. [Mostafa](https://github.com/MOSTAFA-0-1) - Flutter GUI and PHP API development
2. Yasmin SQL, ERD model, relational schema, triggers and normalization.
3. [Hager](https://github.com/HagarOsama) - SQL, ERD model, relational schema, logical model, index and normalization.

## License

This project is licensed under the [MIT License](LICENSE).

## Acknowledgements

We would like to express our gratitude to the following resources and communities that contributed to the development of this project:

- MySQL: [https://www.mysql.com/](https://www.mysql.com/)
- PHP: [https://www.php.net/](https://www.php.net/)
- Flutter: [https://flutter.dev/](https://flutter.dev/)
