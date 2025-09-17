using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

//namespace data_structrue_demo
//{
//    internal class student
//    {
//        public int id;
//        public string name;
//        public int age;
//        public student(int id, string name, int age)
//        {
//            id = id;
//            name = name;
//            age = age;
//        }
//    }
//}

//using System;
//using System.Collections.Generic;

public class student
{
    // Properties
    public string Name { get; set; }
    public int Age { get; set; }
    public string Course { get; set; }

    // Constructor to initialize a Student object
    public student(string name, int age, string course)
    {
        Name = name;
        Age = age;
        Course = course;
    }

    // Method to display Student details
    public void DisplayStudentInfo()
    {
        Console.WriteLine($"Name: {Name}, Age: {Age}, Course: {Course}");
    }
}

