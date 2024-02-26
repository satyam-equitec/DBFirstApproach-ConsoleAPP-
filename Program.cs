using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DBFirstApproach
{
    class Program
    {
        static void Main(string[] args)
        {
            using (StudentDataEntities studentDataEntities = new StudentDataEntities())
            {
                List<Student> students = studentDataEntities.Students.ToList();
                Console.WriteLine();
                foreach(Student item in students)
                {
                    Console.WriteLine($"Name of Student: {item.FirstName}");
                }
                Console.ReadKey();
            }


        }
    }
}
