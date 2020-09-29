using System;
using System.Text;

namespace fizzbuzz {
    interface IFizzBuzzer {
        string InterceptValue(IValue value);
    }

    class TraditionalFizzBuzzer : IFizzBuzzer {
        public string InterceptValue(IValue value) {
            int val = 0;

            if(!int.TryParse(value.ToString(), out val)) {
                throw new Exception(
                    "Cannot pass non-int IValue into traditional fizz-buzzer"
                );
            }

            var ret = new StringBuilder();            
            if(val % 3 == 0) {
                ret.Append("Fizz");
            }
            if(val % 5 == 0) {
                ret.Append("Buzz");
            }
            if(ret.ToString() == "") {
                ret.Append(value.ToString());
            }
            return ret.ToString();
        }
    }
}
