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
        var2 = popInt();
        var1 = popInt();
        push(var1 + var2);
        return;
      
      case op.Print://print
        println(pop());
        return;
      
      case op.Sub://sub int
        var2 = popInt();
        var1 = popInt();
        push(var1 - var2);
        return;
      
      case op.If://if
        //switch(getToken()){
        //  case "<0":
        //    //println("if <0");
        //    if(popInt() >= 0){
        //      //goto next end
        //      regPC = elses.get(ifDepth);
        //      lastIfTrue[ifDepth] = false;
        //    }else{
        //      lastIfTrue[ifDepth] = true;
        //    }
        //    //regPC++;
        //    break;
        //}
        //if(conditionCheck() == true){
        if(popInt() == 1){
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
        var2 = popInt();
        var1 = popInt();
        push(var1 * var2);
        return;
      
      case op.Div://divide int
        var2 = popInt();
        var1 = popInt();
        push(var1 / var2);
        return;
      
      //case op.Less://less than
      //  conditionCheck("<");
      //  break;
      
      //case op.Greater://greater than
      //  conditionCheck(">");
      //  break;
      
      //case op.Equal://equal
      //  conditionCheck("==");
      //  break;
      
      //case op.NotEqual://not equal
      //  conditionCheck("!=");
      //  break;
      
      //case op.LessEqual://less than or equal
      //  conditionCheck("<=");
      //  break;
      
      //case op.GreaterEqual://greater than or equal
      //  conditionCheck(">=");
      //  break;
    }
    
    conditionCheck(opcodes[ins_].name);
  }
  //),
  //new opcode(">", ),
  //new opcode("==", ),
  //new opcode("!=", ),
  //new opcode("<=", ),
  //new opcode(">=", 
  String getToken(){
    regPC++;
    return (String)codeToRun.get(regPC - 1);
  }
  
  //boolean conditionCheck(){
  //  String token = getToken();
  //  int var1;
  //  int var2;
    
  //  int zeroIndex = token.indexOf("0");
  //  if(zeroIndex != -1){
  //    var1 = 0;
  //    token = token.substring(0,zeroIndex);
  //  }else{
  //    var1 = popInt();
  //  }
  //  //var1 = popInt();
  //  //switch(token){
  //  //  case "<0":
  //  //    if(var1 < 0){
  //  //      return true;
  //  //    }
  //  //    break;
        
  //  //  case ">0":
  //  //    if(var1 > 0){
  //  //      return true;
  //  //    }
  //  //    break;
        
  //  //  case "==0":
  //  //    if(var1 == 0){
  //  //      return true;
  //  //    }
  //  //    break;
        
  //  //  case "!=0":
  //  //    if(var1 != 0){
  //  //      return true;
  //  //    }
  //  //    break;
        
  //  //  case "<=0":
  //  //    if(var1 <= 0){
  //  //      return true;
  //  //    }
  //  //    break;
        
  //  //  case ">=0":
  //  //    if(var1 >= 0){
  //  //      return true;
  //  //    }
  //  //    break;
  //  //}
  //  var2 = popInt();
  //  switch(token){
  //    case "<":
  //      if(var2 < var1){
  //        return true;
  //      }
  //      break;
        
  //    case ">":
  //      if(var2 > var1){
  //        return true;
  //      }
  //      break;
        
  //    case "==":
  //      if(var2 == var1){
  //        return true;
  //      }
  //      break;
        
  //    case "!=":
  //      if(var2 != var1){
  //        return true;
  //      }
  //      break;
        
  //    case "<=":
  //      if(var2 <= var1){
  //        return true;
  //      }
  //      break;
        
  //    case ">=":
  //      if(var2 >= var1){
  //        return true;
  //      }
  //      break;
  //  }
  //  return false;
  //}
  
  //void conditionCheck(){
  //  String token = getToken();
  //  int var1;
  //  int var2;
    
  //  int zeroIndex = token.indexOf("0");
  //  if(zeroIndex != -1){
  //    var1 = 0;
  //    token = token.substring(0,zeroIndex);
  //  }else{
  //    var1 = popInt();
  //  }
  //  var2 = popInt();
  //  switch(token){
  //    case "<":
  //      if(var2 < var1){
  //        push(1);
  //      }
  //      break;
        
  //    case ">":
  //      if(var2 > var1){
  //        push(1);
  //      }
  //      break;
        
  //    case "==":
  //      if(var2 == var1){
  //        push(1);
  //      }
  //      break;
        
  //    case "!=":
  //      if(var2 != var1){
  //        push(1);
  //      }
  //      break;
        
  //    case "<=":
  //      if(var2 <= var1){
  //        push(1);
  //      }
  //      break;
        
  //    case ">=":
  //      if(var2 >= var1){
  //        push(1);
  //      }
  //      break;
  //  }
  //  push(0);
  //}
  
  void conditionCheck(String con_){
    int var1= popInt();
    int var2= popInt();

    switch(con_){
      case "<":
        if(var2 < var1){
          push(1);
          return;
        }
        break;
        
      case ">":
        if(var2 > var1){
          push(1);
          return;
        }
        break;
        
      case "==":
        if(var2 == var1){
          push(1);
          return;
        }
        break;
        
      case "!=":
        if(var2 != var1){
          push(1);
          return;
        }
        break;
        
      case "<=":
        if(var2 <= var1){
          push(1);
          return;
        }
        break;
        
      case ">=":
        if(var2 >= var1){
          push(1);
          return;
        }
        break;
    }
    push(0);
  }
  
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
  
  String popString(){
    return (String)pop();
  }
}