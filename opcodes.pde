class opcode{
  String name;
  int instruction;
  
  opcode(String n_, int i_){
    name = n_;
    instruction = i_;
  }
}

opcode[] opcodes =
{
  new opcode("hello", op.Hello),
  new opcode("push", op.Push),
  new opcode("+", op.Add),
  new opcode(".", op.Print),
  new opcode("-", op.Sub),
  new opcode("if", op.If),
  new opcode("dup", op.Dup),
  new opcode("end", op.End),
  new opcode("swap", op.Swap),
  new opcode("else", op.Else),
  new opcode("*", op.Mul),
  new opcode("/", op.Div),
  new opcode("do", op.Do),
  new opcode("while", op.While),
  new opcode("<", op.Less),
  new opcode(">", op.Greater),
  new opcode("==", op.Equal),
  new opcode("!=", op.NotEqual),
  new opcode("<=", op.LessEqual),
  new opcode(">=", op.GreaterEqual),
};

interface op{
  int Hello = 0,
  Push = 1,
  Add = 2,
  Print = 3,
  Sub = 4,
  If = 5,
  Dup = 6,
  End = 7,
  Swap = 8,
  Else = 9,
  Mul = 10,
  Div = 11,
  Do = 12,
  While = 13,
  Less = 14,
  Greater = 15,
  Equal = 16,
  NotEqual = 17,
  LessEqual = 18,
  GreaterEqual = 19;
}