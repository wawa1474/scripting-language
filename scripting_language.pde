interpreter interpreter;
ArrayList<Object> codeToRun;

void setup(){
  codeToRun = new ArrayList<Object>();
  //assemble(new Object[]{"hello","push",5,"push",100,"swap","-","dup","if","<0","push",20,"+","dup","if","<0","push",20,"+","end","else","push",20,"-","end","print","push","Hi.","print"});
  codeToRun = assemble(new Object[]{5,100,"-","dup","<0","if",20,"+","dup","<0","if",20,"+","end","else",20,"-","end",".","push","Hi!","."});
  //assemble(new Object[]{20,20,"if","<0",20,"end",20});
  //assemble(new Object[]{10,2,"*",4,"/","."});
  interpreter = new interpreter();
  interpreter.interpret();
  exit();
}

void draw(){
  
}