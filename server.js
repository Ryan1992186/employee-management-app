const express = require('express')
const inquirer = require('inquirer')
const mysql = require('mysql')

const PORT = process.env.PORT || 3000;
const app = express()

app.use(express.json());
app.use(express.urlencoded({ extended: true }));

app.listen(PORT, () => console.log('Now listening'));

inquirer.prompt([{
    type: 'list',
    message: 'What would you like to do?',
    name: 'task',
    choices: [
        'View All Employees',
        'View Employees by Department',
        'View Employees by Manager',
        'Add Employee',
        'Delete Employee',
        'View All Roles',
        'Exit App'
    ]
}]).then((question) => {
    console.log(question.task)

    if (question.task === "View All Employees") {
        console.log("Success!")
        viewAllEmployees();
    } else if (question.task === "View Employees by Department") {
        viewEmployeesByDepartment();
    } else if (question.task === "View Employees by Manager") {
        viewEmployeesByManager();
    } else if (question.task === "Add Employee") {
        viewAddEmployee();
    }
    else if (question.task === "Delete Employee") {
        viewDeleteEmployee();
    }
})