# Robot Framework Practice

This repository contains my Robot Framework practice programs and automation testing examples.

## About This Repository

I am using this repository to practice and improve my skills in:

* Robot Framework
* SeleniumLibrary
* API Testing
* Test Automation Framework Design
* Git and GitHub

## Project Structure

```text
robot-framework-practice/
│
├── 01_Login application using selenium library/
├── 02_Variables/
├── 03_Resource files/
├── 04_API_Automation/
├── 05_Custom_Python_Libraries/
├── 06_Test_Data/
├── resources/
├── results/
├── requirements.txt
└── README.md
```

## Topics Covered

### Robot Framework Basics

* Test cases
* Test suites
* Keywords
* Variables
* Tags
* Setup and Teardown
* Loops
* Conditions
* User-defined keywords
* Resource files

### Selenium Automation

* Open Browser
* Go To
* Input Text
* Click Element
* Get Text
* Element Should Be Visible
* Wait Until Element Is Visible
* Implicit Wait
* Explicit Wait
* Browser navigation

### API Testing

* GET request
* POST request
* PUT request
* DELETE request
* Status code validation
* Response validation
* JSON validation

### Python Integration

* Custom Python libraries
* User-defined Python keywords
* Reusable automation functions
* Python and Robot Framework integration

## Installation

Install Python and Robot Framework:

```bash
pip install robotframework
```

Install SeleniumLibrary:

```bash
pip install robotframework-seleniumlibrary
```

## How to Run Tests

Run a specific test file:

```bash
robot tests/login_test.robot
```

Run all tests:

```bash
robot tests/
```

Generate results in a specific folder:

```bash
robot -d results tests/
```

## Test Reports

Robot Framework automatically generates:

* `report.html`
* `log.html`
* `output.xml`

These reports help analyze test execution results.





