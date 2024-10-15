Create a .NET C# project 'CompanyLibrary' that models a company. The project should include the following classes:

1. `Company` class:
   - Properties:
     - `name` (String)
     - `departments` (List<Department>)
   - Methods:
     - `constructor(name)`
     - `addDepartment(department)`
     - `getDetails()`
     - `getDepartments()`

2. `Department` class:
   - Properties:
     - `id` (Number)
     - `name` (String)
     - `employees` (List<Employee>)
   - Methods:
     - `constructor(id, name)`
     - `getId()`
     - `getName()`
     - `addEmployee(employee)`
     - `removeEmployee(employee)`
     - `getDetails()`
     - `getEmployees()`

3. `Employee` abstract class:
   - Properties:
     - `id` (Number)
     - `name` (String)
     - `salary` (Number)
   - Methods:
     - `constructor(id, name, salary)`
     - `getId()`
     - `getName()`
     - `getSalary()` abstract
     - `getDetails()`virtual

4. `Developer` class (extends `Employee`):
   - Properties:
     - `programmingLanguage` (String)
   - Methods:
     - `constructor(id, name, salary, programmingLanguage)`
     - `getDetails()` overrides `Employee.getDetails()`
     - `getSalary()` overrides `Employee.getSalary()`

5. `Manager` class (extends `Employee`):
   - Properties:
     - `department` (String)
   - Methods:
     - `constructor(id, name, salary, department)`
     - `getDetails()` overrides `Employee.getDetails()`
     - `getSalary()` overrides `Employee.getSalary()`

