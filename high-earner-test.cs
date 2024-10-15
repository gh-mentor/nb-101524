using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using System.Collections.Generic;
using System.Linq;

namespace EmployeeTests
{
    [TestClass]
    public class EmployeesTests
    {
        [TestMethod]
        public void TestHighEarners()
        {
            // Arrange
            var employees = new Employees();
            var employeeSalaries = new List<double> { 30000, 50000, 70000, 90000, 110000 };
            Func<double, bool> filter = salary => salary > 80000;

            // Act
            var highEarners = employees.HighEarners(employeeSalaries, filter);

            // Assert
            var expectedHighEarners = new List<double> { 90000, 110000 };
            CollectionAssert.AreEqual(expectedHighEarners, highEarners);
        }
    }

    public class Employees
    {
        public List<double> HighEarners(List<double> salaries, Func<double, bool> filter)
        {
            return salaries.Where(filter).ToList();
        }
    }
}