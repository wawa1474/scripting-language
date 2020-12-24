class interpreter{
  int regPC;
  ArrayList<Object> stack;
  int ifDepth;
  boolean[] lastIfTrue;
  interpreter topLevel;
  
  interpreter(){
    regPC = 0;
    stack = new ArrayList<Object>();
    ifDepth = 0;
    lastIfTrue = new boolean[numIf];
    topLevel = null;
  }
  
  interpreter(interpreter p_){
    regPC = 0;
    //stack = new ArrayList<Object>();//use parent stack
    ifDepth = 0;
    lastIfTrue = new boolean[numIf];
    topLevel = p_;
  }
  
  int interpret(){
    while(regPC < codeToRun.size()){
      Object ins = codeToRun.get(regPC);
      //if(ins instanceof Integer){
      //  println("op:" + opcodes[(int)ins].name);
      //}else{
      //  println("data:" + ins);
      //}
      regPC++;
      instructions((int)ins);
    }
    return 1;
  }
  
  void instructions(int ins_){
    int var1, var2;
    Object o1, o2;
    switch(ins_){
      case op.Hello://first ever instruction
        println("Hello World!");
        return;
      
      case op.Push://push
        push(codeToRun.get(regPC));
        regPC++;
        return;
      
      case op.Add://add int
        //var2 = popInt();
        //var1 = popInt();
        //push(var1 + var2);
        o2 = pop();
        o1 = pop();
        push(addNum(o1, o2));
        return;
      
      case op.Print://print
        println(pop());
        return;
      
      case op.Sub://sub int
        //var2 = popInt();
        //var1 = popInt();
        //push(var1 - var2);
        //number num1 = popNum();
        //number num2 = popNum();
        //push(num1.numClass.cast(num1.number) - num2.numClass.cast(num2.number));
        //push((int)(num1.number) - (int)(num2.number));
        o2 = pop();
        o1 = pop();
        push(subNum(o1, o2));
        return;
      
      case op.If://if
        if(popInt() != valFalse){
          lastIfTrue[ifDepth] = true;
        }else{
          regPC = elses.get(ifDepth);
          lastIfTrue[ifDepth] = false;
        }
        ifDepth++;
        return;
      
      case op.Dup://dup
        o1 = pop();
        push(o1);
        push(o1);
        return;
        
      case op.End://end
        //println("end");
        ifDepth--;
        return;
      
      case op.Swap://swap
        o1 = pop();
        o2 = pop();
        push(o1);
        push(o2);
        return;
        
      case op.Else://else
        //println("else");
        if(lastIfTrue[ifDepth] == true){
          regPC = ends.get(ifDepth);
        }
        return;
      
      case op.Mul://multiply int
        //var2 = popInt();
        //var1 = popInt();
        //push(var1 * var2);
        o2 = pop();
        o1 = pop();
        push(mulNum(o1, o2));
        return;
      
      case op.Div://divide int
        //var2 = popInt();
        //var1 = popInt();
        //push(var1 / var2);
        o2 = pop();
        o1 = pop();
        push(divNum(o1, o2));
        return;
    }
    
    //conditionCheck(opcodes[ins_].name);
    push(conditionCheck(pop(), pop(), opcodes[ins_].name));
  }

  String getToken(){
    regPC++;
    return (String)codeToRun.get(regPC - 1);
  }
  
  //void conditionCheck(String con_){
  //  int var1= popInt();
  //  int var2= popInt();

  //  switch(con_){
  //    case "<":
  //      if(var2 < var1){
  //        push(1);
  //        return;
  //      }
  //      break;
        
  //    case ">":
  //      if(var2 > var1){
  //        push(1);
  //        return;
  //      }
  //      break;
        
  //    case "==":
  //      if(var2 == var1){
  //        push(1);
  //        return;
  //      }
  //      break;
        
  //    case "!=":
  //      if(var2 != var1){
  //        push(1);
  //        return;
  //      }
  //      break;
        
  //    case "<=":
  //      if(var2 <= var1){
  //        push(1);
  //        return;
  //      }
  //      break;
        
  //    case ">=":
  //      if(var2 >= var1){
  //        push(1);
  //        return;
  //      }
  //      break;
  //  }
  //  push(0);
  //}
  
  //void conditionCheck(String con_){
  //  //Object var1 = pop();
  //  //Object var2 = pop();
  //  Object tmp = subNum(pop(), pop());
  //  int var1 = numClass(tmp);
    
  //  switch(con_){
  //    case "<":
  //      switch(var1){
  //        case nClass.Int:
  //          push((int)tmp > 0 ? 1 : 0);
  //          break;
  //        case nClass.Float:
  //          push((float)tmp > 0 ? 1 : 0);
  //          break;
  //        case nClass.Long:
  //          push((long)tmp > 0 ? 1 : 0);
  //          break;
  //        case nClass.Double:
  //          push((double)tmp > 0 ? 1 : 0);
  //          break;
  //        case nClass.Byte:
  //          push((byte)tmp > 0 ? 1 : 0);
  //          break;
  //        case nClass.Char:
  //          push((char)tmp > 0 ? 1 : 0);
  //          break;
  //        case nClass.Short:
  //          push((short)tmp > 0 ? 1 : 0);
  //          break;
  //      }
  //      return;
        
  //    case ">":
  //      switch(var1){
  //        case nClass.Int:
  //          push((int)tmp < 0 ? 1 : 0);
  //          break;
  //        case nClass.Float:
  //          push((float)tmp < 0 ? 1 : 0);
  //          break;
  //        case nClass.Long:
  //          push((long)tmp < 0 ? 1 : 0);
  //          break;
  //        case nClass.Double:
  //          push((double)tmp < 0 ? 1 : 0);
  //          break;
  //        case nClass.Byte:
  //          push((byte)tmp < 0 ? 1 : 0);
  //          break;
  //        case nClass.Char:
  //          push((char)tmp < 0 ? 1 : 0);
  //          break;
  //        case nClass.Short:
  //          push((short)tmp < 0 ? 1 : 0);
  //          break;
  //      }
  //      return;
        
  //    case "==":
  //      switch(var1){
  //        case nClass.Int:
  //          push((int)tmp == 0 ? 1 : 0);
  //          break;
  //        case nClass.Float:
  //          push((float)tmp == 0 ? 1 : 0);
  //          break;
  //        case nClass.Long:
  //          push((long)tmp == 0 ? 1 : 0);
  //          break;
  //        case nClass.Double:
  //          push((double)tmp == 0 ? 1 : 0);
  //          break;
  //        case nClass.Byte:
  //          push((byte)tmp == 0 ? 1 : 0);
  //          break;
  //        case nClass.Char:
  //          push((char)tmp == 0 ? 1 : 0);
  //          break;
  //        case nClass.Short:
  //          push((short)tmp == 0 ? 1 : 0);
  //          break;
  //      }
  //      return;
        
  //    case "!=":
  //      switch(var1){
  //        case nClass.Int:
  //          push((int)tmp != 0 ? 1 : 0);
  //          break;
  //        case nClass.Float:
  //          push((float)tmp != 0 ? 1 : 0);
  //          break;
  //        case nClass.Long:
  //          push((long)tmp != 0 ? 1 : 0);
  //          break;
  //        case nClass.Double:
  //          push((double)tmp != 0 ? 1 : 0);
  //          break;
  //        case nClass.Byte:
  //          push((byte)tmp != 0 ? 1 : 0);
  //          break;
  //        case nClass.Char:
  //          push((char)tmp != 0 ? 1 : 0);
  //          break;
  //        case nClass.Short:
  //          push((short)tmp != 0 ? 1 : 0);
  //          break;
  //      }
  //      return;
        
  //    case "<=":
  //      switch(var1){
  //        case nClass.Int:
  //          push((int)tmp >= 0 ? 1 : 0);
  //          break;
  //        case nClass.Float:
  //          push((float)tmp >= 0 ? 1 : 0);
  //          break;
  //        case nClass.Long:
  //          push((long)tmp >= 0 ? 1 : 0);
  //          break;
  //        case nClass.Double:
  //          push((double)tmp >= 0 ? 1 : 0);
  //          break;
  //        case nClass.Byte:
  //          push((byte)tmp >= 0 ? 1 : 0);
  //          break;
  //        case nClass.Char:
  //          push((char)tmp >= 0 ? 1 : 0);
  //          break;
  //        case nClass.Short:
  //          push((short)tmp >= 0 ? 1 : 0);
  //          break;
  //      }
  //      return;
        
  //    case ">=":
  //      switch(var1){
  //        case nClass.Int:
  //          push((int)tmp <= 0 ? 1 : 0);
  //          break;
  //        case nClass.Float:
  //          push((float)tmp <= 0 ? 1 : 0);
  //          break;
  //        case nClass.Long:
  //          push((long)tmp <= 0 ? 1 : 0);
  //          break;
  //        case nClass.Double:
  //          push((double)tmp <= 0 ? 1 : 0);
  //          break;
  //        case nClass.Byte:
  //          push((byte)tmp <= 0 ? 1 : 0);
  //          break;
  //        case nClass.Char:
  //          push((char)tmp <= 0 ? 1 : 0);
  //          break;
  //        case nClass.Short:
  //          push((short)tmp <= 0 ? 1 : 0);
  //          break;
  //      }
  //      return;
  //  }
  //}
  
  void push(Object o_){
    //println("push: " + o_);
    stack.add(o_);
  }
  
  Object pop(){
    int s = stack.size() - 1;
    Object o = stack.get(s);
    stack.remove(s);
    //println("pop:" + o);
    return o;
  }
  
  int popInt(){
    return (int)pop();
  }
  
  //number popNum(){
  //  Object tmp = pop();
  //  return new number(tmp, tmp.getClass());
  //}
  
  String popString(){
    return (String)pop();
  }
}