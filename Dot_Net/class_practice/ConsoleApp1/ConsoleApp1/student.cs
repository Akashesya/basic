using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp1
{
    internal class student
    {
        private int id;
       public string firstName;
        int age;
        string contactNumber;
        string email;

        public void initialize()
        {
            id = 10;
            firstName = "John";
            age = 20;
            contactNumber = "1234567890";
            email = "wertyui@gmail.com";

        }
        public void display()
        {
            Console.WriteLine("ID: " + id);
            Console.WriteLine("First Name: " + firstName);
            Console.WriteLine("Age: " + age);
            Console.WriteLine("Contact Number: " + contactNumber);
            Console.WriteLine("Email: " + email);
        }
       
        //public student(int id , string std_name,int age,string contactno,string email)
        //{
        //    id = id;
        //    std_name = firstName;
        //}
        public void setFirstName(string std_name)
        {
            firstName = std_name;
        }
        public string getFirstName()
        {
            return firstName;
        }
       
    }
}
