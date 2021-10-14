
![](https://img.shields.io/badge/Microverse-blueviolet)

# Final Capstone Project API

This is part the API part of the Final capstone project for the microverse course, where i have to create the back-end and the front-end of a web page, work with the better pratices learn along the course, a complete web API for users to make appointments with a boxing trainer.

## About

The project's goal was to create a book of appointment. The back-end should be a REST API done with Ruby on Rails. The front-end should be done with React and Redux. This README will be focused on the API. For more details about the project visit the front-end's repository.

## Data in the user table

- name
- email
- password_digest

## Data in trainers table

- name
- fightingStyle
- description
- trainerImg

## Data in fly_classes table

- appointmentTime
- trainer_id
- user_id

## How to use it
Base URL:

### End points

/trainers

-   GET - to recieve a list of avaible trainers

/trainers/id

-   GET - to receive a specific instructor's data

/users/:id

-   GET - to receive a specific user's data

/login

-   GET - to check login parameters - with parameters:
-       email
-       password

/users/:user_id/appointments

-   GET - to receive an object with all the user appointments
-   POST - to create a new appointment - with parameters:
-       trainer_id
-       user_id
-       appointmentTime

## Getting Started

To get a local copy up and running follow these simple example steps.

- Clone this project by typing git `clone git@github.com:Oxford-G/boxing-coaches-database.git`
- cd into the root directory
- `npm install` 

## Run locally

- Now you are ready to run a local server
- Go to your command line and put npm start
- Go to https://localhost:3000/
- Try it!!

## Run tests

- Go to your terminal
- Run npm test to run all the tests.


## Technologies used

- Ruby on Rails
- bcrypt gem
- Heroku
- Postgresql
- rspec

## Author

👤 **Enekwechi Chinonso Gerald**

- GitHub: [@Oxford-G](https://github.com/Oxford-G)
- Twitter: [@OXFORD2](https://twitter.com/OXFOXD2)
- Linkedin: [Enekwechi Chinonso G](https://www.linkedin.com/in/chinonso-enekwechi)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Microverse

## 📝 License

MIT License Copyright (c) 2021 Andres Ortegon Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions: The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software. THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE