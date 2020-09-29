using System;
using System.Collections.Generic;

namespace fizzbuzz {
    interface IRange {
        IValue[] Values();
    }

    class IntRange : IRange {
        private int len;

        public IntRange(int len) {
            this.len = len;
        }

        public IValue[] Values() {
            var values = new IntValue[len];
            for(int count = 1; count <= len; count++) {
                values[count - 1] = new IntValue(count);
            }
            return values;
        }
    }
}
