IntList ends = new IntList();
IntList elses = new IntList();
int numIf = 0;
class function{
  ArrayList<Object> codeToRun;
  IntList ends = new IntList();
  IntList elses = new IntList();
  int numIf = 0;
  
  function(Object[] code_){
    codeToRun = assemble(code_);
  }
}

ArrayList<Object> assemble(Object[] code_){
  ArrayList<Object> output = new ArrayList<Object>();

  for(int i = 0; i < code_.length; i++){
    if(code_[i] instanceof String){
      String tmp = (String)code_[i];
      boolean found = false;
      for(int j = 0; j < opcodes.length && found == false; j++){
        int zeroIndex = tmp.indexOf("0");
        if(zeroIndex != -1){
          tmp = tmp.substring(0,zeroIndex);
          output.add(op.Push);
          output.add(0);
        }
        if(tmp.equals(opcodes[j].name)){
          output.add(opcodes[j].instruction);
          found = true;
        }
      }
      if(found == false){
        output.add(tmp);
      }
    }else{
      if(code_[i] instanceof Integer){
        output.add(op.Push);
      }
      output.add(code_[i]);
    }
  }
  
  int ifDepth = 0;
  boolean lastIf = false;
  for(int i = 0; i < output.size(); i++){
    if(output.get(i) instanceof Integer){
      int opcode = (int)output.get(i);
      if(opcode == op.If && (int)output.get(i - 1) != op.Push){
        ifDepth++;
        lastIf = true;
        numIf++;
      }else{
        if(lastIf == true){
          if(opcode == op.End){
            ifDepth--;
            ends.append(i);
            elses.append(i);
          }else if(opcode == op.Else){
            lastIf = false;
            elses.append(i);
          }
        }else{
          if(opcode == op.End){
            ifDepth--;
            ends.append(i);
          }
        }
        
      }
    }
  }
  if(ifDepth != 0){
    println("Too many 'ifs' - " + ifDepth);
  }
  
  println("code: " + output);
  println("ends: " + ends);
  println("elses: " + elses);
  return output;
}