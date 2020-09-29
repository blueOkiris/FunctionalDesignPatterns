using System;

namespace fizzbuzz {
    interface IValue {
        object Data();
    }

    class IntValue : IValue {
        private int data;

        public IntValue(int data) {
            this.data = data;
        }

        public object Data() {
            return data;
        }

        public override string ToString() {
            return data + "";
        }
    }
}