interface nClass{
  int Int = 0,
  Float = 1,
  Long = 2,
  Double = 3,
  Byte = 4,
  Char = 5,
  Short = 6;
}

//class number{
//  Object number;
//  int nClass;
//  Class numClass;
  
//  number(Object n_, Class c_){
//    number = n_;
//    numClass = c_;
//  }
  
//  number(Object n_, int c_){
//    number = n_;
//    nClass = c_;
//  }
//}

//number getNumClass(Object n_){
//  int c = -1;
  
//  if(n_ instanceof Integer){
//    c = nClass.Int;
//  }else if(n_ instanceof Float){
//    c = nClass.Float;
//  }else if(n_ instanceof Long){
//    c = nClass.Long;
//  }else if(n_ instanceof Double){
//    c = nClass.Double;
//  }else if(n_ instanceof Byte){
//    c = nClass.Byte;
//  }else if(n_ instanceof Short){
//    c = nClass.Short;
//  }
  
//  return new number(n_, c);
//}
int numClass(Object n_){
  if(n_ instanceof Integer){
    return nClass.Int;
  }
  
  if(n_ instanceof Float){
    return nClass.Float;
  }
  
  if(n_ instanceof Long){
    return nClass.Long;
  }
  
  if(n_ instanceof Double){
    return nClass.Double;
  }
  
  if(n_ instanceof Byte){
    return nClass.Byte;
  }
  
  if(n_ instanceof Short){
    return nClass.Short;
  }
  
  return -1;//not a number?
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
          return (int)v1_ & Float.floatToRawIntBits((float)v2_);//return "error";//return (int)v1_ & (float)v2_;
        case nClass.Long:
          return (int)v1_ & (long)v2_;
        case nClass.Double:
          return (int)v1_ & Double.doubleToRawLongBits((double)v2_);//return "error";//return (int)v1_ & (double)v2_;
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
          return Float.floatToRawIntBits((float)v1_) & (int)v2_;//return "error";//return (float)v1_ & (int)v2_;
        case nClass.Float:
          return Float.floatToRawIntBits((float)v1_) & Float.floatToRawIntBits((float)v2_);//return "error";//return (float)v1_ & (float)v2_;
        case nClass.Long:
          return Float.floatToRawIntBits((float)v1_) & (long)v2_;//return "error";//return (float)v1_ & (long)v2_;
        case nClass.Double:
          return Float.floatToRawIntBits((float)v1_) & Double.doubleToRawLongBits((double)v2_);//return "error";//return (float)v1_ & (double)v2_;
        case nClass.Byte:
          return Float.floatToRawIntBits((float)v1_) & (byte)v2_;//return "error";//return (float)v1_ & (byte)v2_;
        case nClass.Char:
          return Float.floatToRawIntBits((float)v1_) & (char)v2_;//return "error";//return (float)v1_ & (char)v2_;
        case nClass.Short:
          return Float.floatToRawIntBits((float)v1_) & (short)v2_;//return "error";//return (float)v1_ & (short)v2_;
      }
    case nClass.Long:
      switch(var2){
        case nClass.Int:
          return (long)v1_ & (int)v2_;
        case nClass.Float:
          return (long)v1_ & Float.floatToRawIntBits((float)v2_);//return "error";//return (long)v1_ & (float)v2_;
        case nClass.Long:
          return (long)v1_ & (long)v2_;
        case nClass.Double:
          return (long)v1_ & Double.doubleToRawLongBits((double)v2_);//return "error";//return (long)v1_ & (double)v2_;
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
          return Double.doubleToRawLongBits((double)v1_) & (int)v2_;//return "error";//return (double)v1_ & (int)v2_;
        case nClass.Float:
          return Double.doubleToRawLongBits((double)v1_) & Float.floatToRawIntBits((float)v2_);//return "error";//return (double)v1_ & (float)v2_;
        case nClass.Long:
          return Double.doubleToRawLongBits((double)v1_) & (long)v2_;//return "error";//return (double)v1_ & (long)v2_;
        case nClass.Double:
          return Double.doubleToRawLongBits((double)v1_) & Double.doubleToRawLongBits((double)v2_);//return "error";//return (double)v1_ & (double)v2_;
        case nClass.Byte:
          return Double.doubleToRawLongBits((double)v1_) & (byte)v2_;//return "error";//return (double)v1_ & (byte)v2_;
        case nClass.Char:
          return Double.doubleToRawLongBits((double)v1_) & (char)v2_;//return "error";//return (double)v1_ & (char)v2_;
        case nClass.Short:
          return Double.doubleToRawLongBits((double)v1_) & (short)v2_;//return "error";//return (double)v1_ & (short)v2_;
      }
    case nClass.Byte:
      switch(var2){
        case nClass.Int:
          return (byte)v1_ & (int)v2_;
        case nClass.Float:
          return (byte)v1_ & Float.floatToRawIntBits((float)v2_);//return "error";//return (byte)v1_ & (float)v2_;
        case nClass.Long:
          return (byte)v1_ & (long)v2_;
        case nClass.Double:
          return (byte)v1_ & Double.doubleToRawLongBits((double)v2_);//return "error";//return (byte)v1_ & (double)v2_;
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
          return (char)v1_ & Float.floatToRawIntBits((float)v2_);//return "error";//return (char)v1_ & (float)v2_;
        case nClass.Long:
          return (char)v1_ & (long)v2_;
        case nClass.Double:
          return (char)v1_ & Double.doubleToRawLongBits((double)v2_);//return "error";//return (char)v1_ & (double)v2_;
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
          return (short)v1_ & Float.floatToRawIntBits((float)v2_);//return "error";//return (short)v1_ & (float)v2_;
        case nClass.Long:
          return (short)v1_ & (long)v2_;
        case nClass.Double:
          return (short)v1_ & Double.doubleToRawLongBits((double)v2_);//return "error";//return (short)v1_ & (double)v2_;
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
          return (int)v1_ & Float.floatToRawIntBits((float)v2_);//return "error";//return (int)v1_ ^ (float)v2_;
        case nClass.Long:
          return (int)v1_ ^ (long)v2_;
        case nClass.Double:
          return (int)v1_ & Double.doubleToRawLongBits((double)v2_);//return "error";//return (int)v1_ ^ (double)v2_;
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
          return Float.floatToRawIntBits((float)v1_) ^ (int)v2_;//return "error";//return (float)v1_ ^ (int)v2_;
        case nClass.Float:
          return Float.floatToRawIntBits((float)v1_) ^ Float.floatToRawIntBits((float)v2_);//return "error";//return (float)v1_ ^ (float)v2_;
        case nClass.Long:
          return Float.floatToRawIntBits((float)v1_) ^ (long)v2_;//return "error";//return (float)v1_ ^ (long)v2_;
        case nClass.Double:
          return Float.floatToRawIntBits((float)v1_) ^ Double.doubleToRawLongBits((double)v2_);//return "error";//return (float)v1_ ^ (double)v2_;
        case nClass.Byte:
          return Float.floatToRawIntBits((float)v1_) ^ (byte)v2_;//return "error";//return (float)v1_ ^ (byte)v2_;
        case nClass.Char:
          return Float.floatToRawIntBits((float)v1_) ^ (char)v2_;//return "error";//return (float)v1_ ^ (char)v2_;
        case nClass.Short:
          return Float.floatToRawIntBits((float)v1_) ^ (short)v2_;//return "error";//return (float)v1_ ^ (short)v2_;
      }
    case nClass.Long:
      switch(var2){
        case nClass.Int:
          return (long)v1_ ^ (int)v2_;
        case nClass.Float:
          return (long)v1_ & Float.floatToRawIntBits((float)v2_);//return "error";//return (long)v1_ ^ (float)v2_;
        case nClass.Long:
          return (long)v1_ ^ (long)v2_;
        case nClass.Double:
          return (long)v1_ & Double.doubleToRawLongBits((double)v2_);//return "error";//return (long)v1_ ^ (double)v2_;
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
          return Double.doubleToRawLongBits((double)v1_) ^ (int)v2_;//return "error";//return (double)v1_ ^ (int)v2_;
        case nClass.Float:
          return Double.doubleToRawLongBits((double)v1_) ^ Float.floatToRawIntBits((float)v2_);//return "error";//return (double)v1_ ^ (float)v2_;
        case nClass.Long:
          return Double.doubleToRawLongBits((double)v1_) ^ (long)v2_;//return "error";//return (double)v1_ ^ (long)v2_;
        case nClass.Double:
          return Double.doubleToRawLongBits((double)v1_) ^ Double.doubleToRawLongBits((double)v2_);//return "error";//return (double)v1_ ^ (double)v2_;
        case nClass.Byte:
          return Double.doubleToRawLongBits((double)v1_) ^ (byte)v2_;//return "error";//return (double)v1_ ^ (byte)v2_;
        case nClass.Char:
          return Double.doubleToRawLongBits((double)v1_) ^ (char)v2_;//return "error";//return (double)v1_ ^ (char)v2_;
        case nClass.Short:
          return Double.doubleToRawLongBits((double)v1_) ^ (short)v2_;//return "error";//return (double)v1_ ^ (short)v2_;
      }
    case nClass.Byte:
      switch(var2){
        case nClass.Int:
          return (byte)v1_ ^ (int)v2_;
        case nClass.Float:
          return (byte)v1_ & Float.floatToRawIntBits((float)v2_);//return "error";//return (byte)v1_ ^ (float)v2_;
        case nClass.Long:
          return (byte)v1_ ^ (long)v2_;
        case nClass.Double:
          return (byte)v1_ & Double.doubleToRawLongBits((double)v2_);//return "error";//return (byte)v1_ ^ (double)v2_;
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
          return (char)v1_ & Float.floatToRawIntBits((float)v2_);//return "error";//return (char)v1_ ^ (float)v2_;
        case nClass.Long:
          return (char)v1_ ^ (long)v2_;
        case nClass.Double:
          return (char)v1_ & Double.doubleToRawLongBits((double)v2_);//return "error";//return (char)v1_ ^ (double)v2_;
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
          return (short)v1_ & Float.floatToRawIntBits((float)v2_);//return "error";//return (short)v1_ ^ (float)v2_;
        case nClass.Long:
          return (short)v1_ ^ (long)v2_;
        case nClass.Double:
          return (short)v1_ & Double.doubleToRawLongBits((double)v2_);//return "error";//return (short)v1_ ^ (double)v2_;
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
          return (int)v1_ & Float.floatToRawIntBits((float)v2_);//return "error";//return (int)v1_ | (float)v2_;
        case nClass.Long:
          return (int)v1_ | (long)v2_;
        case nClass.Double:
          return (int)v1_ & Double.doubleToRawLongBits((double)v2_);//return "error";//return (int)v1_ | (double)v2_;
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
          return Float.floatToRawIntBits((float)v1_) | (int)v2_;//return "error";//return (float)v1_ | (int)v2_;
        case nClass.Float:
          return Float.floatToRawIntBits((float)v1_) | Float.floatToRawIntBits((float)v2_);//return "error";//return (float)v1_ | (float)v2_;
        case nClass.Long:
          return Float.floatToRawIntBits((float)v1_) | (long)v2_;//return "error";//return (float)v1_ | (long)v2_;
        case nClass.Double:
          return Float.floatToRawIntBits((float)v1_) | Double.doubleToRawLongBits((double)v2_);//return "error";//return (float)v1_ | (double)v2_;
        case nClass.Byte:
          return Float.floatToRawIntBits((float)v1_) | (byte)v2_;//return "error";//return (float)v1_ | (byte)v2_;
        case nClass.Char:
          return Float.floatToRawIntBits((float)v1_) | (char)v2_;//return "error";//return (float)v1_ | (char)v2_;
        case nClass.Short:
          return Float.floatToRawIntBits((float)v1_) | (short)v2_;//return "error";//return (float)v1_ | (short)v2_;
      }
    case nClass.Long:
      switch(var2){
        case nClass.Int:
          return (long)v1_ | (int)v2_;
        case nClass.Float:
          return (long)v1_ & Float.floatToRawIntBits((float)v2_);//return "error";//return (long)v1_ | (float)v2_;
        case nClass.Long:
          return (long)v1_ | (long)v2_;
        case nClass.Double:
          return (long)v1_ & Double.doubleToRawLongBits((double)v2_);//return "error";//return (long)v1_ | (double)v2_;
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
          return Double.doubleToRawLongBits((double)v1_) | (int)v2_;//return "error";//return (double)v1_ | (int)v2_;
        case nClass.Float:
          return Double.doubleToRawLongBits((double)v1_) | Float.floatToRawIntBits((float)v2_);//return "error";//return (double)v1_ | (float)v2_;
        case nClass.Long:
          return Double.doubleToRawLongBits((double)v1_) | (long)v2_;//return "error";//return (double)v1_ | (long)v2_;
        case nClass.Double:
          return Double.doubleToRawLongBits((double)v1_) | Double.doubleToRawLongBits((double)v2_);//return "error";//return (double)v1_ | (double)v2_;
        case nClass.Byte:
          return Double.doubleToRawLongBits((double)v1_) | (byte)v2_;//return "error";//return (double)v1_ | (byte)v2_;
        case nClass.Char:
          return Double.doubleToRawLongBits((double)v1_) | (char)v2_;//return "error";//return (double)v1_ | (char)v2_;
        case nClass.Short:
          return Double.doubleToRawLongBits((double)v1_) | (short)v2_;//return "error";//return (double)v1_ | (short)v2_;
      }
    case nClass.Byte:
      switch(var2){
        case nClass.Int:
          return (byte)v1_ | (int)v2_;
        case nClass.Float:
          return (byte)v1_ & Float.floatToRawIntBits((float)v2_);//return "error";//return (byte)v1_ | (float)v2_;
        case nClass.Long:
          return (byte)v1_ | (long)v2_;
        case nClass.Double:
          return (byte)v1_ & Double.doubleToRawLongBits((double)v2_);//return "error";//return (byte)v1_ | (double)v2_;
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
          return (char)v1_ & Float.floatToRawIntBits((float)v2_);//return "error";//return (char)v1_ | (float)v2_;
        case nClass.Long:
          return (char)v1_ | (long)v2_;
        case nClass.Double:
          return (char)v1_ & Double.doubleToRawLongBits((double)v2_);//return "error";//return (char)v1_ | (double)v2_;
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
          return (short)v1_ & Float.floatToRawIntBits((float)v2_);//return "error";//return (short)v1_ | (float)v2_;
        case nClass.Long:
          return (short)v1_ | (long)v2_;
        case nClass.Double:
          return (short)v1_ & Double.doubleToRawLongBits((double)v2_);//return "error";//return (short)v1_ | (double)v2_;
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

Object invertNum(Object v1_){
  int var1 = numClass(v1_);
  
  switch(var1){
    case nClass.Int:
          return ~(int)v1_;
    case nClass.Float:
          return ~Float.floatToRawIntBits((float)v1_);
    case nClass.Long:
          return ~(long)v1_;
    case nClass.Double:
          return ~Double.doubleToRawLongBits((double)v1_);
    case nClass.Byte:
          return ~(byte)v1_;
    case nClass.Char:
          return ~(char)v1_;
    case nClass.Short:
          return ~(short)v1_;
  }
  
  return "error";
}

Object negateNum(Object v1_){
  int var1 = numClass(v1_);
  
  switch(var1){
    case nClass.Int:
          return 0 - (int)v1_;
    case nClass.Float:
          return 0 - (float)v1_;
    case nClass.Long:
          return 0 - (long)v1_;
    case nClass.Double:
          return 0 - (double)v1_;
    case nClass.Byte:
          return 0 - (byte)v1_;
    case nClass.Char:
          return 0 - (char)v1_;
    case nClass.Short:
          return 0 - (short)v1_;
  }
  
  return "error";
}

Object changeNum(Object v1_, int type_){
  switch(type_){
    case nClass.Int:
          return (int)v1_;
    case nClass.Float:
          return (float)v1_;
    case nClass.Long:
          return (long)v1_;
    case nClass.Double:
          return (double)v1_;
    case nClass.Byte:
          return (byte)v1_;
    case nClass.Char:
          return (char)v1_;
    case nClass.Short:
          return (short)v1_;
  }
  
  return "error";
}