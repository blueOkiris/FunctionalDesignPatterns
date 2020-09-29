using System;

namespace fizzbuzz {
    interface IOutput {
        void Output(string[] vals);
    }

    class ConsoleOutput : IOutput {
        public void Output(string[] vals) {
            foreach(var val in vals) {
                Console.WriteLine(val);
            }
        }
    }
}