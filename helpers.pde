interface nClass{
  int Int = 0,
  Float = 1,
  Long = 2,
  Double = 3,
  Byte = 4,
  Char = 5;
}

class number{
  Object number;
  int nClass;
  Class numClass;
  
  number(Object n_, Class c_){
    number = n_;
    numClass = c_;
  }
  
  number(Object n_, int c_){
    number = n_;
    nClass = c_;
  }
}

number getNumClass(Object n_){
  int c = -1;
  
  if(n_ instanceof Integer){
    c = nClass.Int;
  }else if(n_ instanceof Float){
    c = nClass.Float;
  }else if(n_ instanceof Long){
    c = nClass.Long;
  }else if(n_ instanceof Double){
    c = nClass.Double;
  }else if(n_ instanceof Byte){
    c = nClass.Byte;
  }
  
  return new number(n_, c);
}