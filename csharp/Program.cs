using System.Linq;

namespace fizzbuzz {
    class Program {
        static void Main(string[] args) {
            IRange range = new IntRange(100);
            IValue[] values = range.Values();
            IFizzBuzzer fizzBuzzer = new TraditionalFizzBuzzer();
            IOutput output = new ConsoleOutput();
            
            var fizzBuzzedData = values.Select(
                fizzBuzzer.InterceptValue
            ).ToArray();
            output.Output(fizzBuzzedData);
        }
    }
}
