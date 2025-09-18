namespace Data_structure_demo
{
    internal class Program
    {
        static void Main(string[] args)
        {

            //List Example
            List<Tuple<int ,string,int>> students = new List<Tuple<int, string, int>>();

            // Add Student objects to the list
            Tuple<int, string, int> first = new Tuple<int, string, int>(1, "Alice", 10);
            Tuple<int, string, int> second = new Tuple<int, string, int>(2, "Bob", 90);
            Tuple<int, string, int> third = new Tuple<int, string, int>(3, "Charlie", 78);
            students.Add(first);
            students.Add(second);
            students.Add(third);


            // Access and display each student using foreach
            Console.WriteLine("Student List:");
            foreach ( Tuple<int,string,int> s in students)
            {
                Console.WriteLine($"ID: {s.Item1}, Name: {s.Item2}, Marks: {s.Item3}");
            }

            // Access a specific object by index
            Console.WriteLine($"\nSecond student is: {students[1].Item2}");


            //Dictionay Example
            Dictionary<string, Tuple<int, string, int>> students_dict = new Dictionary<string, Tuple<int, string, int>>();
            students_dict.Add("firstStudent", first);
            students_dict.Add("secondStudent", second);
            students_dict.Add("thirdStudent", third);


            foreach (KeyValuePair<string, Tuple<int, string, int>> student in students_dict)
            {
                Console.WriteLine(student.Value.Item1);
            }


            //Hashset Example
            Console.WriteLine("Hashset demo");
            HashSet<Tuple<int, string, int>> students_hashset = new HashSet<Tuple<int, string, int>>();
            students_hashset.Add(first);
            students_hashset.Add(second);
            students_hashset.Add(first);
            students_hashset.Add(third);

            foreach (Tuple<int, string, int> student in students_hashset)
            {
                Console.WriteLine(student.Item1);
            }


            //StackDemo


            Stack<Tuple<int, string, int>> students_stack = new Stack<Tuple<int, string, int>>();
            students_stack.Push(first);
            students_stack.Push(second);
            students_stack.Push(third);

            Tuple<int, string, int> pop_stack = students_stack.Pop();
            Console.WriteLine(pop_stack.Item2);


            //Queue demo
            Console.WriteLine("Queue demo");
            Queue<Tuple<int, string, int>> students_queue = new Queue<Tuple<int, string, int>>();
            students_queue.Enqueue(first);
            students_queue.Enqueue(second);
            students_queue.Enqueue(third);

            Console.WriteLine(students_queue.Dequeue().Item2);




        }
    }
}
