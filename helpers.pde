interface nClass{
  int Int = 0,
  Float = 1,
  Long = 2,
  Double = 3,
  Byte = 4,
  Char = 5,
  Short = 6;
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
  }else if(n_ instanceof Short){
    c = nClass.Short;
  }
  
  return new number(n_, c);
}
int numClass(Object n_){
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
  }else if(n_ instanceof Short){
    c = nClass.Short;
  }
  
  return c;
}
//case nClass.Int:
//case nClass.Float:
//case nClass.Long:
//case nClass.Double:
//case nClass.Byte:
//case nClass.Char:
//case nClass.Short:
Object subNum(Object v1_, Object v2_){
  int var1 = numClass(v1_);
  int var2 = numClass(v2_);
  
  switch(var1){
    case nClass.Int:
      switch(var2){
        case nClass.Int:
          return (int)v1_ - (int)v2_;
        case nClass.Float:
          return (int)v1_ - (float)v2_;
        case nClass.Long:
          return (int)v1_ - (long)v2_;
        case nClass.Double:
          return (int)v1_ - (double)v2_;
        case nClass.Byte:
          return (int)v1_ - (byte)v2_;
        case nClass.Char:
          return (int)v1_ - (char)v2_;
        case nClass.Short:
          return (int)v1_ - (short)v2_;
      }
    case nClass.Float:
      switch(var2){
        case nClass.Int:
          return (float)v1_ - (int)v2_;
        case nClass.Float:
          return (float)v1_ - (float)v2_;
        case nClass.Long:
          return (float)v1_ - (long)v2_;
        case nClass.Double:
          return (float)v1_ - (double)v2_;
        case nClass.Byte:
          return (float)v1_ - (byte)v2_;
        case nClass.Char:
          return (float)v1_ - (char)v2_;
        case nClass.Short:
          return (float)v1_ - (short)v2_;
      }
    case nClass.Long:
      switch(var2){
        case nClass.Int:
          return (long)v1_ - (int)v2_;
        case nClass.Float:
          return (long)v1_ - (float)v2_;
        case nClass.Long:
          return (long)v1_ - (long)v2_;
        case nClass.Double:
          return (long)v1_ - (double)v2_;
        case nClass.Byte:
          return (long)v1_ - (byte)v2_;
        case nClass.Char:
          return (long)v1_ - (char)v2_;
        case nClass.Short:
          return (long)v1_ - (short)v2_;
      }
    case nClass.Double:
      switch(var2){
        case nClass.Int:
          return (double)v1_ - (int)v2_;
        case nClass.Float:
          return (double)v1_ - (float)v2_;
        case nClass.Long:
          return (double)v1_ - (long)v2_;
        case nClass.Double:
          return (double)v1_ - (double)v2_;
        case nClass.Byte:
          return (double)v1_ - (byte)v2_;
        case nClass.Char:
          return (double)v1_ - (char)v2_;
        case nClass.Short:
          return (double)v1_ - (short)v2_;
      }
    case nClass.Byte:
      switch(var2){
        case nClass.Int:
          return (byte)v1_ - (int)v2_;
        case nClass.Float:
          return (byte)v1_ - (float)v2_;
        case nClass.Long:
          return (byte)v1_ - (long)v2_;
        case nClass.Double:
          return (byte)v1_ - (double)v2_;
        case nClass.Byte:
          return (byte)v1_ - (byte)v2_;
        case nClass.Char:
          return (byte)v1_ - (char)v2_;
        case nClass.Short:
          return (byte)v1_ - (short)v2_;
      }
    case nClass.Char:
      switch(var2){
        case nClass.Int:
          return (char)v1_ - (int)v2_;
        case nClass.Float:
          return (char)v1_ - (float)v2_;
        case nClass.Long:
          return (char)v1_ - (long)v2_;
        case nClass.Double:
          return (char)v1_ - (double)v2_;
        case nClass.Byte:
          return (char)v1_ - (byte)v2_;
        case nClass.Char:
          return (char)v1_ - (char)v2_;
        case nClass.Short:
          return (char)v1_ - (short)v2_;
      }
    case nClass.Short:
      switch(var2){
        case nClass.Int:
          return (short)v1_ - (int)v2_;
        case nClass.Float:
          return (short)v1_ - (float)v2_;
        case nClass.Long:
          return (short)v1_ - (long)v2_;
        case nClass.Double:
          return (short)v1_ - (double)v2_;
        case nClass.Byte:
          return (short)v1_ - (byte)v2_;
        case nClass.Char:
          return (short)v1_ - (char)v2_;
        case nClass.Short:
          return (short)v1_ - (short)v2_;
      }
  }
  
  return "error";
}

Object addNum(Object v1_, Object v2_){
  int var1 = numClass(v1_);
  int var2 = numClass(v2_);
  
  switch(var1){
    case nClass.Int:
      switch(var2){
        case nClass.Int:
          return (int)v1_ + (int)v2_;
        case nClass.Float:
          return (int)v1_ + (float)v2_;
        case nClass.Long:
          return (int)v1_ + (long)v2_;
        case nClass.Double:
          return (int)v1_ + (double)v2_;
        case nClass.Byte:
          return (int)v1_ + (byte)v2_;
        case nClass.Char:
          return (int)v1_ + (char)v2_;
        case nClass.Short:
          return (int)v1_ + (short)v2_;
      }
    case nClass.Float:
      switch(var2){
        case nClass.Int:
          return (float)v1_ + (int)v2_;
        case nClass.Float:
          return (float)v1_ + (float)v2_;
        case nClass.Long:
          return (float)v1_ + (long)v2_;
        case nClass.Double:
          return (float)v1_ + (double)v2_;
        case nClass.Byte:
          return (float)v1_ + (byte)v2_;
        case nClass.Char:
          return (float)v1_ + (char)v2_;
        case nClass.Short:
          return (float)v1_ + (short)v2_;
      }
    case nClass.Long:
      switch(var2){
        case nClass.Int:
          return (long)v1_ + (int)v2_;
        case nClass.Float:
          return (long)v1_ + (float)v2_;
        case nClass.Long:
          return (long)v1_ + (long)v2_;
        case nClass.Double:
          return (long)v1_ + (double)v2_;
        case nClass.Byte:
          return (long)v1_ + (byte)v2_;
        case nClass.Char:
          return (long)v1_ + (char)v2_;
        case nClass.Short:
          return (long)v1_ + (short)v2_;
      }
    case nClass.Double:
      switch(var2){
        case nClass.Int:
          return (double)v1_ + (int)v2_;
        case nClass.Float:
          return (double)v1_ + (float)v2_;
        case nClass.Long:
          return (double)v1_ + (long)v2_;
        case nClass.Double:
          return (double)v1_ + (double)v2_;
        case nClass.Byte:
          return (double)v1_ + (byte)v2_;
        case nClass.Char:
          return (double)v1_ + (char)v2_;
        case nClass.Short:
          return (double)v1_ + (short)v2_;
      }
    case nClass.Byte:
      switch(var2){
        case nClass.Int:
          return (byte)v1_ + (int)v2_;
        case nClass.Float:
          return (byte)v1_ + (float)v2_;
        case nClass.Long:
          return (byte)v1_ + (long)v2_;
        case nClass.Double:
          return (byte)v1_ + (double)v2_;
        case nClass.Byte:
          return (byte)v1_ + (byte)v2_;
        case nClass.Char:
          return (byte)v1_ + (char)v2_;
        case nClass.Short:
          return (byte)v1_ + (short)v2_;
      }
    case nClass.Char:
      switch(var2){
        case nClass.Int:
          return (char)v1_ + (int)v2_;
        case nClass.Float:
          return (char)v1_ + (float)v2_;
        case nClass.Long:
          return (char)v1_ + (long)v2_;
        case nClass.Double:
          return (char)v1_ + (double)v2_;
        case nClass.Byte:
          return (char)v1_ + (byte)v2_;
        case nClass.Char:
          return (char)v1_ + (char)v2_;
        case nClass.Short:
          return (char)v1_ + (short)v2_;
      }
    case nClass.Short:
      switch(var2){
        case nClass.Int:
          return (short)v1_ + (int)v2_;
        case nClass.Float:
          return (short)v1_ + (float)v2_;
        case nClass.Long:
          return (short)v1_ + (long)v2_;
        case nClass.Double:
          return (short)v1_ + (double)v2_;
        case nClass.Byte:
          return (short)v1_ + (byte)v2_;
        case nClass.Char:
          return (short)v1_ + (char)v2_;
        case nClass.Short:
          return (short)v1_ + (short)v2_;
      }
  }
  
  return "error";
}

Object mulNum(Object v1_, Object v2_){
  int var1 = numClass(v1_);
  int var2 = numClass(v2_);
  
  switch(var1){
    case nClass.Int:
      switch(var2){
        case nClass.Int:
          return (int)v1_ * (int)v2_;
        case nClass.Float:
          return (int)v1_ * (float)v2_;
        case nClass.Long:
          return (int)v1_ * (long)v2_;
        case nClass.Double:
          return (int)v1_ * (double)v2_;
        case nClass.Byte:
          return (int)v1_ * (byte)v2_;
        case nClass.Char:
          return (int)v1_ * (char)v2_;
        case nClass.Short:
          return (int)v1_ * (short)v2_;
      }
    case nClass.Float:
      switch(var2){
        case nClass.Int:
          return (float)v1_ * (int)v2_;
        case nClass.Float:
          return (float)v1_ * (float)v2_;
        case nClass.Long:
          return (float)v1_ * (long)v2_;
        case nClass.Double:
          return (float)v1_ * (double)v2_;
        case nClass.Byte:
          return (float)v1_ * (byte)v2_;
        case nClass.Char:
          return (float)v1_ * (char)v2_;
        case nClass.Short:
          return (float)v1_ * (short)v2_;
      }
    case nClass.Long:
      switch(var2){
        case nClass.Int:
          return (long)v1_ * (int)v2_;
        case nClass.Float:
          return (long)v1_ * (float)v2_;
        case nClass.Long:
          return (long)v1_ * (long)v2_;
        case nClass.Double:
          return (long)v1_ * (double)v2_;
        case nClass.Byte:
          return (long)v1_ * (byte)v2_;
        case nClass.Char:
          return (long)v1_ * (char)v2_;
        case nClass.Short:
          return (long)v1_ * (short)v2_;
      }
    case nClass.Double:
      switch(var2){
        case nClass.Int:
          return (double)v1_ * (int)v2_;
        case nClass.Float:
          return (double)v1_ * (float)v2_;
        case nClass.Long:
          return (double)v1_ * (long)v2_;
        case nClass.Double:
          return (double)v1_ * (double)v2_;
        case nClass.Byte:
          return (double)v1_ * (byte)v2_;
        case nClass.Char:
          return (double)v1_ * (char)v2_;
        case nClass.Short:
          return (double)v1_ * (short)v2_;
      }
    case nClass.Byte:
      switch(var2){
        case nClass.Int:
          return (byte)v1_ * (int)v2_;
        case nClass.Float:
          return (byte)v1_ * (float)v2_;
        case nClass.Long:
          return (byte)v1_ * (long)v2_;
        case nClass.Double:
          return (byte)v1_ * (double)v2_;
        case nClass.Byte:
          return (byte)v1_ * (byte)v2_;
        case nClass.Char:
          return (byte)v1_ * (char)v2_;
        case nClass.Short:
          return (byte)v1_ * (short)v2_;
      }
    case nClass.Char:
      switch(var2){
        case nClass.Int:
          return (char)v1_ * (int)v2_;
        case nClass.Float:
          return (char)v1_ * (float)v2_;
        case nClass.Long:
          return (char)v1_ * (long)v2_;
        case nClass.Double:
          return (char)v1_ * (double)v2_;
        case nClass.Byte:
          return (char)v1_ * (byte)v2_;
        case nClass.Char:
          return (char)v1_ * (char)v2_;
        case nClass.Short:
          return (char)v1_ * (short)v2_;
      }
    case nClass.Short:
      switch(var2){
        case nClass.Int:
          return (short)v1_ * (int)v2_;
        case nClass.Float:
          return (short)v1_ * (float)v2_;
        case nClass.Long:
          return (short)v1_ * (long)v2_;
        case nClass.Double:
          return (short)v1_ * (double)v2_;
        case nClass.Byte:
          return (short)v1_ * (byte)v2_;
        case nClass.Char:
          return (short)v1_ * (char)v2_;
        case nClass.Short:
          return (short)v1_ * (short)v2_;
      }
  }
  
  return "error";
}

Object divNum(Object v1_, Object v2_){
  int var1 = numClass(v1_);
  int var2 = numClass(v2_);
  
  switch(var1){
    case nClass.Int:
      switch(var2){
        case nClass.Int:
          return (int)v1_ / (int)v2_;
        case nClass.Float:
          return (int)v1_ / (float)v2_;
        case nClass.Long:
          return (int)v1_ / (long)v2_;
        case nClass.Double:
          return (int)v1_ / (double)v2_;
        case nClass.Byte:
          return (int)v1_ / (byte)v2_;
        case nClass.Char:
          return (int)v1_ / (char)v2_;
        case nClass.Short:
          return (int)v1_ / (short)v2_;
      }
    case nClass.Float:
      switch(var2){
        case nClass.Int:
          return (float)v1_ / (int)v2_;
        case nClass.Float:
          return (float)v1_ / (float)v2_;
        case nClass.Long:
          return (float)v1_ / (long)v2_;
        case nClass.Double:
          return (float)v1_ / (double)v2_;
        case nClass.Byte:
          return (float)v1_ / (byte)v2_;
        case nClass.Char:
          return (float)v1_ / (char)v2_;
        case nClass.Short:
          return (float)v1_ / (short)v2_;
      }
    case nClass.Long:
      switch(var2){
        case nClass.Int:
          return (long)v1_ / (int)v2_;
        case nClass.Float:
          return (long)v1_ / (float)v2_;
        case nClass.Long:
          return (long)v1_ / (long)v2_;
        case nClass.Double:
          return (long)v1_ / (double)v2_;
        case nClass.Byte:
          return (long)v1_ / (byte)v2_;
        case nClass.Char:
          return (long)v1_ / (char)v2_;
        case nClass.Short:
          return (long)v1_ / (short)v2_;
      }
    case nClass.Double:
      switch(var2){
        case nClass.Int:
          return (double)v1_ / (int)v2_;
        case nClass.Float:
          return (double)v1_ / (float)v2_;
        case nClass.Long:
          return (double)v1_ / (long)v2_;
        case nClass.Double:
          return (double)v1_ / (double)v2_;
        case nClass.Byte:
          return (double)v1_ / (byte)v2_;
        case nClass.Char:
          return (double)v1_ / (char)v2_;
        case nClass.Short:
          return (double)v1_ / (short)v2_;
      }
    case nClass.Byte:
      switch(var2){
        case nClass.Int:
          return (byte)v1_ / (int)v2_;
        case nClass.Float:
          return (byte)v1_ / (float)v2_;
        case nClass.Long:
          return (byte)v1_ / (long)v2_;
        case nClass.Double:
          return (byte)v1_ / (double)v2_;
        case nClass.Byte:
          return (byte)v1_ / (byte)v2_;
        case nClass.Char:
          return (byte)v1_ / (char)v2_;
        case nClass.Short:
          return (byte)v1_ / (short)v2_;
      }
    case nClass.Char:
      switch(var2){
        case nClass.Int:
          return (char)v1_ / (int)v2_;
        case nClass.Float:
          return (char)v1_ / (float)v2_;
        case nClass.Long:
          return (char)v1_ / (long)v2_;
        case nClass.Double:
          return (char)v1_ / (double)v2_;
        case nClass.Byte:
          return (char)v1_ / (byte)v2_;
        case nClass.Char:
          return (char)v1_ / (char)v2_;
        case nClass.Short:
          return (char)v1_ / (short)v2_;
      }
    case nClass.Short:
      switch(var2){
        case nClass.Int:
          return (short)v1_ / (int)v2_;
        case nClass.Float:
          return (short)v1_ / (float)v2_;
        case nClass.Long:
          return (short)v1_ / (long)v2_;
        case nClass.Double:
          return (short)v1_ / (double)v2_;
        case nClass.Byte:
          return (short)v1_ / (byte)v2_;
        case nClass.Char:
          return (short)v1_ / (char)v2_;
        case nClass.Short:
          return (short)v1_ / (short)v2_;
      }
  }
  
  return "error";
}

Object modNum(Object v1_, Object v2_){
  int var1 = numClass(v1_);
  int var2 = numClass(v2_);
  
  switch(var1){
    case nClass.Int:
      switch(var2){
        case nClass.Int:
          return (int)v1_ % (int)v2_;
        case nClass.Float:
          return (int)v1_ % (float)v2_;
        case nClass.Long:
          return (int)v1_ % (long)v2_;
        case nClass.Double:
          return (int)v1_ % (double)v2_;
        case nClass.Byte:
          return (int)v1_ % (byte)v2_;
        case nClass.Char:
          return (int)v1_ % (char)v2_;
        case nClass.Short:
          return (int)v1_ % (short)v2_;
      }
    case nClass.Float:
      switch(var2){
        case nClass.Int:
          return (float)v1_ % (int)v2_;
        case nClass.Float:
          return (float)v1_ % (float)v2_;
        case nClass.Long:
          return (float)v1_ % (long)v2_;
        case nClass.Double:
          return (float)v1_ % (double)v2_;
        case nClass.Byte:
          return (float)v1_ % (byte)v2_;
        case nClass.Char:
          return (float)v1_ % (char)v2_;
        case nClass.Short:
          return (float)v1_ % (short)v2_;
      }
    case nClass.Long:
      switch(var2){
        case nClass.Int:
          return (long)v1_ % (int)v2_;
        case nClass.Float:
          return (long)v1_ % (float)v2_;
        case nClass.Long:
          return (long)v1_ % (long)v2_;
        case nClass.Double:
          return (long)v1_ % (double)v2_;
        case nClass.Byte:
          return (long)v1_ % (byte)v2_;
        case nClass.Char:
          return (long)v1_ % (char)v2_;
        case nClass.Short:
          return (long)v1_ % (short)v2_;
      }
    case nClass.Double:
      switch(var2){
        case nClass.Int:
          return (double)v1_ % (int)v2_;
        case nClass.Float:
          return (double)v1_ % (float)v2_;
        case nClass.Long:
          return (double)v1_ % (long)v2_;
        case nClass.Double:
          return (double)v1_ % (double)v2_;
        case nClass.Byte:
          return (double)v1_ % (byte)v2_;
        case nClass.Char:
          return (double)v1_ % (char)v2_;
        case nClass.Short:
          return (double)v1_ % (short)v2_;
      }
    case nClass.Byte:
      switch(var2){
        case nClass.Int:
          return (byte)v1_ % (int)v2_;
        case nClass.Float:
          return (byte)v1_ % (float)v2_;
        case nClass.Long:
          return (byte)v1_ % (long)v2_;
        case nClass.Double:
          return (byte)v1_ % (double)v2_;
        case nClass.Byte:
          return (byte)v1_ % (byte)v2_;
        case nClass.Char:
          return (byte)v1_ % (char)v2_;
        case nClass.Short:
          return (byte)v1_ % (short)v2_;
      }
    case nClass.Char:
      switch(var2){
        case nClass.Int:
          return (char)v1_ % (int)v2_;
        case nClass.Float:
          return (char)v1_ % (float)v2_;
        case nClass.Long:
          return (char)v1_ % (long)v2_;
        case nClass.Double:
          return (char)v1_ % (double)v2_;
        case nClass.Byte:
          return (char)v1_ % (byte)v2_;
        case nClass.Char:
          return (char)v1_ % (char)v2_;
        case nClass.Short:
          return (char)v1_ % (short)v2_;
      }
    case nClass.Short:
      switch(var2){
        case nClass.Int:
          return (short)v1_ % (int)v2_;
        case nClass.Float:
          return (short)v1_ % (float)v2_;
        case nClass.Long:
          return (short)v1_ % (long)v2_;
        case nClass.Double:
          return (short)v1_ % (double)v2_;
        case nClass.Byte:
          return (short)v1_ % (byte)v2_;
        case nClass.Char:
          return (short)v1_ % (char)v2_;
        case nClass.Short:
          return (short)v1_ % (short)v2_;
      }
  }
  
  return "error";
}

Object andNum(Object v1_, Object v2_){
  int var1 = numClass(v1_);
  int var2 = numClass(v2_);
  
  switch(var1){
    case nClass.Int:
      switch(var2){
        case nClass.Int:
          return (int)v1_ & (int)v2_;
        case nClass.Float:
          return "error";//return (int)v1_ & (float)v2_;
        case nClass.Long:
          return (int)v1_ & (long)v2_;
        case nClass.Double:
          return "error";//return (int)v1_ & (double)v2_;
        case nClass.Byte:
          return (int)v1_ & (byte)v2_;
        case nClass.Char:
          return (int)v1_ & (char)v2_;
        case nClass.Short:
          return (int)v1_ & (short)v2_;
      }
    case nClass.Float:
      switch(var2){
        case nClass.Int:
          return "error";//return (float)v1_ & (int)v2_;
        case nClass.Float:
          return "error";//return (float)v1_ & (float)v2_;
        case nClass.Long:
          return "error";//return (float)v1_ & (long)v2_;
        case nClass.Double:
          return "error";//return (float)v1_ & (double)v2_;
        case nClass.Byte:
          return "error";//return (float)v1_ & (byte)v2_;
        case nClass.Char:
          return "error";//return (float)v1_ & (char)v2_;
        case nClass.Short:
          return "error";//return (float)v1_ & (short)v2_;
      }
    case nClass.Long:
      switch(var2){
        case nClass.Int:
          return (long)v1_ & (int)v2_;
        case nClass.Float:
          return "error";//return (long)v1_ & (float)v2_;
        case nClass.Long:
          return (long)v1_ & (long)v2_;
        case nClass.Double:
          return "error";//return (long)v1_ & (double)v2_;
        case nClass.Byte:
          return (long)v1_ & (byte)v2_;
        case nClass.Char:
          return (long)v1_ & (char)v2_;
        case nClass.Short:
          return (long)v1_ & (short)v2_;
      }
    case nClass.Double:
      switch(var2){
        case nClass.Int:
          return "error";//return (double)v1_ & (int)v2_;
        case nClass.Float:
          return "error";//return (double)v1_ & (float)v2_;
        case nClass.Long:
          return "error";//return (double)v1_ & (long)v2_;
        case nClass.Double:
          return "error";//return (double)v1_ & (double)v2_;
        case nClass.Byte:
          return "error";//return (double)v1_ & (byte)v2_;
        case nClass.Char:
          return "error";//return (double)v1_ & (char)v2_;
        case nClass.Short:
          return "error";//return (double)v1_ & (short)v2_;
      }
    case nClass.Byte:
      switch(var2){
        case nClass.Int:
          return (byte)v1_ & (int)v2_;
        case nClass.Float:
          return "error";//return (byte)v1_ & (float)v2_;
        case nClass.Long:
          return (byte)v1_ & (long)v2_;
        case nClass.Double:
          return "error";//return (byte)v1_ & (double)v2_;
        case nClass.Byte:
          return (byte)v1_ & (byte)v2_;
        case nClass.Char:
          return (byte)v1_ & (char)v2_;
        case nClass.Short:
          return (byte)v1_ & (short)v2_;
      }
    case nClass.Char:
      switch(var2){
        case nClass.Int:
          return (char)v1_ & (int)v2_;
        case nClass.Float:
          return "error";//return (char)v1_ & (float)v2_;
        case nClass.Long:
          return (char)v1_ & (long)v2_;
        case nClass.Double:
          return "error";//return (char)v1_ & (double)v2_;
        case nClass.Byte:
          return (char)v1_ & (byte)v2_;
        case nClass.Char:
          return (char)v1_ & (char)v2_;
        case nClass.Short:
          return (char)v1_ & (short)v2_;
      }
    case nClass.Short:
      switch(var2){
        case nClass.Int:
          return (short)v1_ & (int)v2_;
        case nClass.Float:
          return "error";//return (short)v1_ & (float)v2_;
        case nClass.Long:
          return (short)v1_ & (long)v2_;
        case nClass.Double:
          return "error";//return (short)v1_ & (double)v2_;
        case nClass.Byte:
          return (short)v1_ & (byte)v2_;
        case nClass.Char:
          return (short)v1_ & (char)v2_;
        case nClass.Short:
          return (short)v1_ & (short)v2_;
      }
  }
  
  return "error";
}

Object xorNum(Object v1_, Object v2_){
  int var1 = numClass(v1_);
  int var2 = numClass(v2_);
  
  switch(var1){
    case nClass.Int:
      switch(var2){
        case nClass.Int:
          return (int)v1_ ^ (int)v2_;
        case nClass.Float:
          return "error";//return (int)v1_ ^ (float)v2_;
        case nClass.Long:
          return (int)v1_ ^ (long)v2_;
        case nClass.Double:
          return "error";//return (int)v1_ ^ (double)v2_;
        case nClass.Byte:
          return (int)v1_ ^ (byte)v2_;
        case nClass.Char:
          return (int)v1_ ^ (char)v2_;
        case nClass.Short:
          return (int)v1_ ^ (short)v2_;
      }
    case nClass.Float:
      switch(var2){
        case nClass.Int:
          return "error";//return (float)v1_ ^ (int)v2_;
        case nClass.Float:
          return "error";//return (float)v1_ ^ (float)v2_;
        case nClass.Long:
          return "error";//return (float)v1_ ^ (long)v2_;
        case nClass.Double:
          return "error";//return (float)v1_ ^ (double)v2_;
        case nClass.Byte:
          return "error";//return (float)v1_ ^ (byte)v2_;
        case nClass.Char:
          return "error";//return (float)v1_ ^ (char)v2_;
        case nClass.Short:
          return "error";//return (float)v1_ ^ (short)v2_;
      }
    case nClass.Long:
      switch(var2){
        case nClass.Int:
          return (long)v1_ ^ (int)v2_;
        case nClass.Float:
          return "error";//return (long)v1_ ^ (float)v2_;
        case nClass.Long:
          return (long)v1_ ^ (long)v2_;
        case nClass.Double:
          return "error";//return (long)v1_ ^ (double)v2_;
        case nClass.Byte:
          return (long)v1_ ^ (byte)v2_;
        case nClass.Char:
          return (long)v1_ ^ (char)v2_;
        case nClass.Short:
          return (long)v1_ ^ (short)v2_;
      }
    case nClass.Double:
      switch(var2){
        case nClass.Int:
          return "error";//return (double)v1_ ^ (int)v2_;
        case nClass.Float:
          return "error";//return (double)v1_ ^ (float)v2_;
        case nClass.Long:
          return "error";//return (double)v1_ ^ (long)v2_;
        case nClass.Double:
          return "error";//return (double)v1_ ^ (double)v2_;
        case nClass.Byte:
          return "error";//return (double)v1_ ^ (byte)v2_;
        case nClass.Char:
          return "error";//return (double)v1_ ^ (char)v2_;
        case nClass.Short:
          return "error";//return (double)v1_ ^ (short)v2_;
      }
    case nClass.Byte:
      switch(var2){
        case nClass.Int:
          return (byte)v1_ ^ (int)v2_;
        case nClass.Float:
          return "error";//return (byte)v1_ ^ (float)v2_;
        case nClass.Long:
          return (byte)v1_ ^ (long)v2_;
        case nClass.Double:
          return "error";//return (byte)v1_ ^ (double)v2_;
        case nClass.Byte:
          return (byte)v1_ ^ (byte)v2_;
        case nClass.Char:
          return (byte)v1_ ^ (char)v2_;
        case nClass.Short:
          return (byte)v1_ ^ (short)v2_;
      }
    case nClass.Char:
      switch(var2){
        case nClass.Int:
          return (char)v1_ ^ (int)v2_;
        case nClass.Float:
          return "error";//return (char)v1_ ^ (float)v2_;
        case nClass.Long:
          return (char)v1_ ^ (long)v2_;
        case nClass.Double:
          return "error";//return (char)v1_ ^ (double)v2_;
        case nClass.Byte:
          return (char)v1_ ^ (byte)v2_;
        case nClass.Char:
          return (char)v1_ ^ (char)v2_;
        case nClass.Short:
          return (char)v1_ ^ (short)v2_;
      }
    case nClass.Short:
      switch(var2){
        case nClass.Int:
          return (short)v1_ ^ (int)v2_;
        case nClass.Float:
          return "error";//return (short)v1_ ^ (float)v2_;
        case nClass.Long:
          return (short)v1_ ^ (long)v2_;
        case nClass.Double:
          return "error";//return (short)v1_ ^ (double)v2_;
        case nClass.Byte:
          return (short)v1_ ^ (byte)v2_;
        case nClass.Char:
          return (short)v1_ ^ (char)v2_;
        case nClass.Short:
          return (short)v1_ ^ (short)v2_;
      }
  }
  
  return "error";
}

Object orNum(Object v1_, Object v2_){
  int var1 = numClass(v1_);
  int var2 = numClass(v2_);
  
  switch(var1){
    case nClass.Int:
      switch(var2){
        case nClass.Int:
          return (int)v1_ | (int)v2_;
        case nClass.Float:
          return "error";//return (int)v1_ | (float)v2_;
        case nClass.Long:
          return (int)v1_ | (long)v2_;
        case nClass.Double:
          return "error";//return (int)v1_ | (double)v2_;
        case nClass.Byte:
          return (int)v1_ | (byte)v2_;
        case nClass.Char:
          return (int)v1_ | (char)v2_;
        case nClass.Short:
          return (int)v1_ | (short)v2_;
      }
    case nClass.Float:
      switch(var2){
        case nClass.Int:
          return "error";//return (float)v1_ | (int)v2_;
        case nClass.Float:
          return "error";//return (float)v1_ | (float)v2_;
        case nClass.Long:
          return "error";//return (float)v1_ | (long)v2_;
        case nClass.Double:
          return "error";//return (float)v1_ | (double)v2_;
        case nClass.Byte:
          return "error";//return (float)v1_ | (byte)v2_;
        case nClass.Char:
          return "error";//return (float)v1_ | (char)v2_;
        case nClass.Short:
          return "error";//return (float)v1_ | (short)v2_;
      }
    case nClass.Long:
      switch(var2){
        case nClass.Int:
          return (long)v1_ | (int)v2_;
        case nClass.Float:
          return "error";//return (long)v1_ | (float)v2_;
        case nClass.Long:
          return (long)v1_ | (long)v2_;
        case nClass.Double:
          return "error";//return (long)v1_ | (double)v2_;
        case nClass.Byte:
          return (long)v1_ | (byte)v2_;
        case nClass.Char:
          return (long)v1_ | (char)v2_;
        case nClass.Short:
          return (long)v1_ | (short)v2_;
      }
    case nClass.Double:
      switch(var2){
        case nClass.Int:
          return "error";//return (double)v1_ | (int)v2_;
        case nClass.Float:
          return "error";//return (double)v1_ | (float)v2_;
        case nClass.Long:
          return "error";//return (double)v1_ | (long)v2_;
        case nClass.Double:
          return "error";//return (double)v1_ | (double)v2_;
        case nClass.Byte:
          return "error";//return (double)v1_ | (byte)v2_;
        case nClass.Char:
          return "error";//return (double)v1_ | (char)v2_;
        case nClass.Short:
          return "error";//return (double)v1_ | (short)v2_;
      }
    case nClass.Byte:
      switch(var2){
        case nClass.Int:
          return (byte)v1_ | (int)v2_;
        case nClass.Float:
          return "error";//return (byte)v1_ | (float)v2_;
        case nClass.Long:
          return (byte)v1_ | (long)v2_;
        case nClass.Double:
          return "error";//return (byte)v1_ | (double)v2_;
        case nClass.Byte:
          return (byte)v1_ | (byte)v2_;
        case nClass.Char:
          return (byte)v1_ | (char)v2_;
        case nClass.Short:
          return (byte)v1_ | (short)v2_;
      }
    case nClass.Char:
      switch(var2){
        case nClass.Int:
          return (char)v1_ | (int)v2_;
        case nClass.Float:
          return "error";//return (char)v1_ | (float)v2_;
        case nClass.Long:
          return (char)v1_ | (long)v2_;
        case nClass.Double:
          return "error";//return (char)v1_ | (double)v2_;
        case nClass.Byte:
          return (char)v1_ | (byte)v2_;
        case nClass.Char:
          return (char)v1_ | (char)v2_;
        case nClass.Short:
          return (char)v1_ | (short)v2_;
      }
    case nClass.Short:
      switch(var2){
        case nClass.Int:
          return (short)v1_ | (int)v2_;
        case nClass.Float:
          return "error";//return (short)v1_ | (float)v2_;
        case nClass.Long:
          return (short)v1_ | (long)v2_;
        case nClass.Double:
          return "error";//return (short)v1_ | (double)v2_;
        case nClass.Byte:
          return (short)v1_ | (byte)v2_;
        case nClass.Char:
          return (short)v1_ | (char)v2_;
        case nClass.Short:
          return (short)v1_ | (short)v2_;
      }
  }
  
  return "error";
}