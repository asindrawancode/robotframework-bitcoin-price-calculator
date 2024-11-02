# Bitcoin Price Calculator Automated Testing

This project contains automated web tests for the Bitcoin Price Calculator application using Robot Framework. The tests are designed to verify the functionality of the application available at [https://github.com/angloeastern/qa-test-challenge](https://github.com/angloeastern/qa-test-challenge).

## Prerequisites

Before you begin, ensure you have met the following requirements:

- Node.js and npm installed on your local machine. You can download them from [nodejs.org](https://nodejs.org/).
- Python installed, along with pip.
- Robot Framework installed. You can install it via pip:
  ```bash
  pip install robotframework
  ```

## Setup and Run the Application

1. **Clone the Repository**:

   Clone the Bitcoin Price Calculator repository from GitHub:
   ```bash
   git clone https://github.com/angloeastern/qa-test-challenge.git
   cd qa-test-challenge
   ```

2. **Install Dependencies**:

   Inside the project directory, run the following commands to install the necessary dependencies:
   ```bash
   npm install
   ```

3. **Start the Application**:

   Run the application in development mode:
   ```bash
   npm run dev
   ```

4. **Access the Application**:

   Once the application is running, navigate to the local server URL printed on your terminal (usually `http://localhost:3000`).

## Running the Automated Tests

1. **Navigate to the Tests Directory**:

   Make sure you are in the root directory of the repository.

2. **Run the Tests**:

   Execute the automated tests using Robot Framework:
   ```bash
   robot tests/home_tests.robot
   ```

## Structure of Tests

- **tests/home_tests.robot**: Contains test cases for validating the home page and functionalities of the Bitcoin Price Calculator.

## Contributing

Contributions are welcome! Please feel free to fork the repository and submit a pull request.

## License

This project does not specify a license. Please check with the repository owner for more information.

---

Happy testing!