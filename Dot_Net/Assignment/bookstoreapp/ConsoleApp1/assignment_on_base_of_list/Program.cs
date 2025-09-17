

public class Program
{
    public static void Main(string[] args)
    {
        // Create a list to store Student objects
        List<student> student_list = new List<student>();

        // Initialize 3 Student objects using the constructor and add them to the list
        student_list.Add(new student("John Doe", 20, "Computer Science"));
        student_list.Add(new student("Jane Smith", 22, "Mathematics"));
        student_list.Add(new student("Alice Johnson", 19, "Physics"));

        // Display the details of all students in the list
        Console.WriteLine("Student Information:");
        foreach (student student in student_list)
        {
            student.DisplayStudentInfo();
        }
    }
}



//Create a Console application to store 3 Student Objects in a list called 'student_list' and display them. You need to use Constructors to initialize Student objects+-