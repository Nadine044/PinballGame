package Box2D.Common.Math
{
   public class b2Math
   {
      
      public static const b2Mat22_identity:b2Mat22;
      
      public static const b2XForm_identity:b2XForm = new b2XForm(b2Vec2_zero,b2Mat22_identity);
      
      public static const b2Vec2_zero:b2Vec2 = new b2Vec2(0,0);
      
      {
         var b2Vec2_zero:Boolean = false;
         var b2Mat22_identity:Boolean = true;
         if(b2Mat22_identity || b2Math)
         {
            b2Mat22_identity = new b2Mat22(0,new b2Vec2(1,0),new b2Vec2(0,1));
            if(b2Vec2_zero && b2Vec2_zero)
            {
            }
            addr70:
            return;
         }
         §§goto(addr70);
      }
      
      public function b2Math()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && this)
         {
         }
         if(_loc1_)
         {
            super();
            if(_loc2_ && _loc1_)
            {
            }
            addr48:
            return;
         }
         §§goto(addr48);
      }
      
      public static function b2CrossVF(a:b2Vec2, s:Number) : b2Vec2
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc4_ && a)
         {
         }
         if(!(_loc4_ && s))
         {
            if(_loc5_ || b2Math)
            {
               if(!_loc5_)
               {
               }
            }
            addr52:
            §§push();
            §§push(s);
            if(!_loc4_)
            {
               §§push(a.y);
               if(!_loc4_)
               {
                  §§push(§§pop() * §§pop());
               }
               addr64:
               §§push(-§§pop());
               addr82:
               if(_loc5_ || a)
               {
                  §§push(§§pop() * a.x);
               }
               var v:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
               if(_loc4_)
               {
               }
               return v;
            }
            §§push(s);
            if(_loc5_)
            {
               §§goto(addr64);
            }
            §§goto(addr82);
         }
         if(!_loc5_)
         {
         }
         §§goto(addr52);
      }
      
      public static function AddVV(a:b2Vec2, b:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || b)
         {
         }
         if(_loc4_ || v)
         {
            if(_loc4_)
            {
               if(!(_loc5_ && v))
               {
                  if(_loc5_)
                  {
                  }
               }
            }
         }
         §§push();
         §§push(a.x);
         if(_loc4_)
         {
            §§push(b.x);
            if(!(_loc5_ && b))
            {
               §§push(§§pop() + §§pop());
            }
            addr73:
            var v:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
            if(_loc4_ || b)
            {
            }
            return v;
         }
         §§push(a.y);
         if(_loc4_)
         {
            §§push(§§pop() + b.y);
         }
         §§goto(addr73);
      }
      
      public static function b2IsValid(x:Number) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc2_)
         {
         }
         if(_loc2_)
         {
            if(_loc3_ && _loc3_)
            {
            }
            addr42:
            return isFinite(x);
         }
         §§goto(addr42);
      }
      
      public static function b2MinV(a:b2Vec2, b:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || a)
         {
         }
         if(!(_loc5_ && a))
         {
            if(!_loc5_)
            {
               if(_loc4_ || c)
               {
                  if(_loc5_)
                  {
                  }
               }
            }
         }
         var c:b2Vec2 = new b2Vec2(b2Min(a.x,b.x),b2Min(a.y,b.y));
         if(_loc4_ || a)
         {
         }
         return c;
      }
      
      public static function b2MulX(T:b2XForm, v:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc5_)
         {
         }
         var a:b2Vec2 = null;
         if(_loc4_ || v)
         {
            if(!(_loc5_ && b2Math))
            {
               if(_loc5_ && T)
               {
               }
            }
            if(_loc4_ || T)
            {
            }
            addr52:
            a = b2MulMV(T.R,v);
            if(!(_loc5_ && b2Math))
            {
               if(!(_loc5_ && a))
               {
                  §§push(a);
                  §§push(a.x);
                  if(!(_loc5_ && v))
                  {
                     §§push(§§pop() + T.position.x);
                  }
                  §§pop().x = §§pop();
                  if(_loc5_ && a)
                  {
                  }
                  addr111:
                  §§push(a);
                  §§push(a.y);
                  if(!(_loc5_ && v))
                  {
                     §§push(§§pop() + T.position.y);
                  }
                  §§pop().y = §§pop();
                  addr141:
                  if(_loc4_ || a)
                  {
                  }
                  addr141:
                  return a;
               }
               §§goto(addr141);
            }
            if(_loc4_ || v)
            {
               §§goto(addr111);
            }
            §§goto(addr141);
         }
         §§goto(addr52);
      }
      
      public static function b2DistanceSquared(a:b2Vec2, b:b2Vec2) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || b2Math)
         {
         }
         if(!(_loc5_ && b))
         {
            if(_loc6_ || b)
            {
               if(_loc6_)
               {
                  if(_loc6_)
                  {
                     if(_loc5_ && cX)
                     {
                     }
                  }
               }
               addr53:
               §§push(a.x);
               if(_loc6_)
               {
                  §§push(§§pop() - b.x);
                  if(_loc5_ && cX)
                  {
                  }
                  addr75:
                  var cX:* = §§pop();
                  if(_loc5_)
                  {
                  }
                  §§push(a.y);
                  if(!(_loc5_ && cX))
                  {
                     §§push(§§pop() - b.y);
                     if(!_loc5_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  var cY:* = §§pop();
                  if(_loc5_)
                  {
                  }
                  §§push(cX);
                  if(_loc6_ || b)
                  {
                     §§push(cX);
                     if(!_loc5_)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc6_ || cX)
                        {
                        }
                        addr130:
                        return §§pop();
                     }
                     addr129:
                     §§goto(addr130);
                     §§push(§§pop() + §§pop());
                  }
                  §§push(cY);
                  if(_loc6_)
                  {
                     §§push(§§pop() * cY);
                  }
                  §§goto(addr129);
               }
               §§goto(addr75);
               §§push(Number(§§pop()));
            }
         }
         §§goto(addr53);
      }
      
      public static function b2Swap(a:Array, b:Array) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc5_)
         {
         }
         if(_loc4_)
         {
            if(_loc4_)
            {
               if(_loc4_)
               {
                  if(_loc5_)
                  {
                  }
               }
            }
            addr29:
            var tmp:* = a[0];
            if(!_loc5_)
            {
               if(!(_loc5_ && tmp))
               {
                  §§push(a);
                  if(!(_loc5_ && tmp))
                  {
                     §§push(0);
                     if(!_loc5_)
                     {
                        §§pop()[§§pop()] = b[0];
                        if(_loc4_)
                        {
                           if(!_loc4_)
                           {
                           }
                           addr85:
                           return;
                        }
                     }
                     addr80:
                     §§pop()[§§pop()] = tmp;
                     if(_loc5_)
                     {
                     }
                     §§goto(addr85);
                  }
                  addr79:
                  §§goto(addr80);
                  §§push(0);
               }
            }
            §§goto(addr79);
            §§push(b);
         }
         §§goto(addr29);
      }
      
      public static function b2AbsM(A:b2Mat22) : b2Mat22
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc3_)
         {
         }
         if(!(_loc3_ && b2Math))
         {
            if(!_loc3_)
            {
               if(_loc3_)
               {
               }
               addr39:
               var B:b2Mat22 = new b2Mat22(0,b2AbsV(A.col1),b2AbsV(A.col2));
               if(_loc4_ || B)
               {
               }
               return B;
            }
         }
         §§goto(addr39);
      }
      
      public static function SubtractVV(a:b2Vec2, b:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc5_ && v)
         {
         }
         if(!(_loc5_ && b2Math))
         {
            if(!_loc5_)
            {
               if(_loc5_)
               {
               }
               addr39:
               §§push();
               §§push(a.x);
               if(_loc4_ || b2Math)
               {
                  §§push(b.x);
                  if(_loc4_ || a)
                  {
                     §§push(§§pop() - §§pop());
                  }
                  addr75:
                  var v:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop() - b.y);
                  if(_loc5_ && b)
                  {
                  }
                  return v;
               }
               §§push(a.y);
               if(!(_loc5_ && b2Math))
               {
                  §§goto(addr75);
               }
               §§goto(addr75);
            }
         }
         if(!_loc4_)
         {
         }
         §§goto(addr39);
      }
      
      public static function b2MulXT(T:b2XForm, v:b2Vec2) : b2Vec2
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc5_)
         {
         }
         var a:b2Vec2 = null;
         var tX:* = NaN;
         if(_loc5_ || T)
         {
            if(!(_loc6_ && v))
            {
               if(_loc5_ || v)
               {
               }
            }
            if(_loc5_ || v)
            {
            }
            addr62:
            a = SubtractVV(v,T.position);
            if(_loc5_ || a)
            {
               if(_loc5_ || T)
               {
                  §§push(a.x);
                  if(_loc5_)
                  {
                     §§push(T.R.col1.x);
                     if(_loc5_ || T)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc6_)
                        {
                        }
                        addr127:
                        tX = §§pop();
                        addr181:
                        if(_loc5_)
                        {
                           §§push(a);
                           §§push(a.x);
                           if(_loc5_)
                           {
                              §§push(T.R.col2.x);
                              if(!_loc6_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(!_loc5_)
                                 {
                                 }
                                 addr160:
                                 §§pop().y = §§pop();
                                 addr182:
                                 if(_loc5_ || v)
                                 {
                                 }
                                 return a;
                              }
                              addr159:
                              §§goto(addr160);
                              §§push(§§pop() + §§pop());
                           }
                           §§push(a.y);
                           if(!(_loc6_ && b2Math))
                           {
                              §§push(§§pop() * T.R.col2.y);
                           }
                           §§goto(addr159);
                        }
                        §§goto(addr182);
                     }
                     addr118:
                     §§push(§§pop() + §§pop() * T.R.col1.y);
                     if(!_loc6_)
                     {
                        §§push(Number(§§pop()));
                     }
                     §§goto(addr127);
                  }
                  §§push(a.y);
                  if(_loc5_ || a)
                  {
                     §§goto(addr118);
                  }
                  §§goto(addr118);
               }
            }
            a.x = tX;
            if(_loc5_)
            {
               §§goto(addr181);
            }
            §§goto(addr182);
         }
         if(_loc5_ || a)
         {
         }
         §§goto(addr62);
      }
      
      public static function b2Abs(a:Number) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_)
         {
         }
         if(_loc2_)
         {
            if(_loc2_)
            {
               if(!(_loc3_ && _loc3_))
               {
                  §§push(a);
                  if(!(_loc3_ && _loc3_))
                  {
                     if(§§pop() <= 0)
                     {
                        §§push(a);
                        if(!_loc3_)
                        {
                           §§push(-§§pop());
                           if(_loc2_ || _loc3_)
                           {
                           }
                           addr79:
                           return §§pop();
                        }
                     }
                  }
                  addr78:
                  §§goto(addr79);
                  §§push(Number(§§pop()));
               }
            }
         }
         §§push(a);
         if(_loc2_ || _loc2_)
         {
            §§push(Number(§§pop()));
            if(_loc3_)
            {
            }
            §§goto(addr79);
         }
         §§goto(addr78);
      }
      
      public static function b2Clamp(a:Number, low:Number, high:Number) : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc5_)
         {
         }
         if(!_loc5_)
         {
            if(_loc4_ || a)
            {
            }
            addr37:
            addr53:
            if(_loc5_ && low)
            {
            }
            return b2Max(low,b2Min(a,high));
         }
         if(!_loc5_)
         {
            §§goto(addr37);
         }
         §§goto(addr53);
      }
      
      public static function b2AbsV(a:b2Vec2) : b2Vec2
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc3_)
         {
         }
         if(_loc4_ || b)
         {
            if(_loc3_)
            {
            }
            addr43:
            var b:b2Vec2 = new b2Vec2(b2Abs(a.x),b2Abs(a.y));
            if(_loc3_)
            {
            }
            return b;
         }
         if(_loc4_ || b)
         {
            §§goto(addr43);
         }
         §§goto(addr43);
      }
      
      public static function MulFV(s:Number, a:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc5_)
         {
         }
         if(!(_loc4_ && s))
         {
            if(_loc4_)
            {
            }
            addr47:
            §§push();
            §§push(s);
            if(!(_loc4_ && v))
            {
               §§push(a.x);
               if(!_loc4_)
               {
                  §§push(§§pop() * §§pop());
               }
               addr64:
               var v:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop() * a.y);
               if(_loc5_ || v)
               {
               }
               return v;
            }
            §§push(s);
            if(_loc5_)
            {
               §§goto(addr64);
            }
            §§goto(addr64);
         }
         if(_loc5_)
         {
            if(_loc5_ || s)
            {
            }
            §§goto(addr47);
         }
         §§goto(addr47);
      }
      
      public static function b2CrossVV(a:b2Vec2, b:b2Vec2) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc3_)
         {
         }
         if(!(_loc4_ && b2Math))
         {
            if(_loc3_)
            {
               if(_loc3_ || _loc3_)
               {
               }
            }
         }
         §§push(a.x);
         if(!_loc4_)
         {
            §§push(b.y);
            if(_loc3_ || a)
            {
               §§push(§§pop() * §§pop());
               if(_loc4_ && b)
               {
               }
               addr79:
               return §§pop();
            }
            addr78:
            §§goto(addr79);
            §§push(§§pop() - §§pop());
         }
         §§push(a.y);
         if(!_loc4_)
         {
            §§push(§§pop() * b.x);
         }
         §§goto(addr78);
      }
      
      public static function b2Dot(a:b2Vec2, b:b2Vec2) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc3_)
         {
         }
         if(!_loc4_)
         {
            if(!(_loc4_ && _loc3_))
            {
               if(_loc3_ || _loc3_)
               {
               }
               addr43:
               §§push(a.x);
               if(_loc3_ || b)
               {
                  §§push(b.x);
                  if(!_loc4_)
                  {
                     §§push(§§pop() * §§pop());
                     if(_loc3_ || b)
                     {
                     }
                     addr79:
                     return §§pop();
                  }
                  addr78:
                  §§goto(addr79);
                  §§push(§§pop() + §§pop());
               }
               §§push(a.y);
               if(_loc3_)
               {
                  §§push(§§pop() * b.y);
               }
               §§goto(addr78);
            }
         }
         §§goto(addr43);
      }
      
      public static function b2CrossFV(s:Number, a:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc4_)
         {
         }
         if(!_loc5_)
         {
            if(_loc4_ || a)
            {
               if(_loc5_ && v)
               {
               }
               addr38:
               §§push();
               §§push(s);
               if(!(_loc5_ && b2Math))
               {
                  §§push(-§§pop());
                  if(_loc4_ || s)
                  {
                     §§push(a.y);
                     if(!(_loc5_ && a))
                     {
                        §§push(§§pop() * §§pop());
                     }
                     addr91:
                     var v:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
                     if(!_loc4_)
                     {
                     }
                     return v;
                  }
               }
               §§push(s);
               if(!(_loc5_ && a))
               {
                  §§push(§§pop() * a.x);
               }
               §§goto(addr91);
            }
         }
         if(!_loc5_)
         {
            §§goto(addr38);
         }
         §§goto(addr38);
      }
      
      public static function AddMM(A:b2Mat22, B:b2Mat22) : b2Mat22
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc4_ && C)
         {
         }
         if(_loc5_ || C)
         {
            if(!(_loc4_ && C))
            {
               if(_loc5_ || C)
               {
                  if(_loc5_ || B)
                  {
                  }
               }
               addr62:
               var C:b2Mat22 = new b2Mat22(0,AddVV(A.col1,B.col1),AddVV(A.col2,B.col2));
               if(_loc4_ && C)
               {
               }
               return C;
            }
         }
         §§goto(addr62);
      }
      
      public static function b2Distance(a:b2Vec2, b:b2Vec2) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || cX)
         {
         }
         if(_loc6_ || b2Math)
         {
            if(!_loc5_)
            {
               if(_loc6_ || b2Math)
               {
               }
               addr44:
               if(_loc6_ || a)
               {
               }
            }
            if(!_loc5_)
            {
               §§goto(addr44);
            }
         }
         §§push(a.x);
         if(!_loc5_)
         {
            §§push(§§pop() - b.x);
            if(!_loc5_)
            {
               §§push(Number(§§pop()));
            }
         }
         var cX:* = §§pop();
         if(_loc6_ || cX)
         {
         }
         §§push(a.y);
         if(!(_loc5_ && cX))
         {
            §§push(§§pop() - b.y);
            if(_loc6_)
            {
               §§push(Number(§§pop()));
            }
         }
         var cY:* = §§pop();
         if(_loc6_ || a)
         {
         }
         return Math.sqrt(cX * cX + cY * cY);
      }
      
      public static function b2MulTMM(A:b2Mat22, B:b2Mat22) : b2Mat22
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc6_)
         {
         }
         if(_loc7_)
         {
            if(!_loc6_)
            {
               if(_loc6_ && c1)
               {
               }
            }
            addr36:
            var c1:b2Vec2 = new b2Vec2(b2Dot(A.col1,B.col1),b2Dot(A.col2,B.col1));
            if(!_loc7_)
            {
            }
            var c2:b2Vec2 = new b2Vec2(b2Dot(A.col1,B.col2),b2Dot(A.col2,B.col2));
            if(_loc6_)
            {
            }
            var C:b2Mat22 = new b2Mat22(0,c1,c2);
            if(!_loc7_)
            {
            }
            return C;
         }
         if(_loc7_)
         {
            §§goto(addr36);
         }
         §§goto(addr36);
      }
      
      public static function b2MaxV(a:b2Vec2, b:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc4_)
         {
         }
         if(!_loc5_)
         {
            if(_loc4_ || b)
            {
               if(_loc4_ || a)
               {
                  if(_loc5_)
                  {
                  }
               }
            }
         }
         var c:b2Vec2 = new b2Vec2(b2Max(a.x,b.x),b2Max(a.y,b.y));
         if(_loc5_)
         {
         }
         return c;
      }
      
      public static function b2IsPowerOfTwo(x:uint) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc3_)
         {
         }
         if(!(_loc4_ && _loc3_))
         {
            if(!(_loc4_ && x))
            {
               if(!_loc3_)
               {
               }
               addr72:
               §§push((x & x - 1) == 0);
               addr88:
               if(_loc3_)
               {
                  addr87:
                  §§push(Boolean(§§pop()));
               }
               var result:* = §§pop();
               if(_loc4_)
               {
               }
               return result;
            }
            if(_loc4_ && x)
            {
            }
            §§goto(addr72);
         }
         §§push(x);
         if(_loc3_)
         {
            §§push(§§pop() > 0);
            if(!(_loc4_ && result))
            {
               if(§§pop())
               {
                  if(!(_loc4_ && result))
                  {
                     §§pop();
                     §§goto(addr72);
                  }
               }
               §§goto(addr87);
            }
            §§goto(addr88);
         }
         §§goto(addr72);
      }
      
      public static function b2ClampV(a:b2Vec2, low:b2Vec2, high:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc4_ && a)
         {
         }
         if(_loc5_ || high)
         {
            if(_loc5_)
            {
               if(_loc5_ || low)
               {
               }
            }
            if(_loc5_ || low)
            {
            }
            addr64:
            return b2MaxV(low,b2MinV(a,high));
         }
         §§goto(addr64);
      }
      
      public static function b2RandomRange(lo:Number, hi:Number) : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc4_)
         {
         }
         if(_loc4_ || lo)
         {
            if(!(_loc5_ && lo))
            {
               if(_loc4_)
               {
                  if(_loc5_ && lo)
                  {
                  }
               }
               addr44:
               var r:* = Number(Math.random());
               if(!_loc5_)
               {
                  if(!(_loc5_ && hi))
                  {
                     §§push(hi);
                     if(_loc4_)
                     {
                        §§push(lo);
                        if(!(_loc5_ && r))
                        {
                           §§push(§§pop() - §§pop());
                           if(_loc5_ && hi)
                           {
                           }
                           addr109:
                           r = §§pop();
                           addr113:
                           if(_loc5_)
                           {
                           }
                           addr114:
                           return r;
                        }
                        addr91:
                        §§push(§§pop() + §§pop());
                        if(!(_loc5_ && lo))
                        {
                           §§push(Number(§§pop()));
                           if(!_loc4_)
                           {
                           }
                           §§goto(addr114);
                        }
                        §§goto(addr109);
                     }
                     §§push(r);
                     if(_loc4_)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc4_)
                        {
                           §§push(lo);
                        }
                        §§goto(addr109);
                     }
                     §§goto(addr91);
                  }
               }
               §§goto(addr113);
            }
         }
         §§goto(addr44);
      }
      
      public static function b2MulTMV(A:b2Mat22, v:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc4_ && A)
         {
         }
         if(_loc5_)
         {
            if(!(_loc4_ && A))
            {
               if(!_loc4_)
               {
                  if(_loc4_ && b2Math)
                  {
                  }
               }
            }
         }
         var u:b2Vec2 = new b2Vec2(b2Dot(v,A.col1),b2Dot(v,A.col2));
         if(_loc4_ && v)
         {
         }
         return u;
      }
      
      public static function b2Min(a:Number, b:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc4_)
         {
         }
         if(!_loc4_)
         {
            if(!_loc4_)
            {
               if(_loc4_)
               {
               }
            }
            addr46:
            §§push(a);
            if(_loc3_ || b)
            {
               §§push(Number(§§pop()));
               if(!(_loc3_ || b2Math))
               {
                  addr73:
                  §§push(Number(§§pop()));
               }
               addr74:
               return §§pop();
            }
            addr69:
            §§goto(addr74);
         }
         if(!(_loc4_ && b2Math))
         {
            §§push(a);
            if(_loc3_)
            {
               if(§§pop() >= b)
               {
                  §§push(b);
                  if(_loc3_)
                  {
                     §§goto(addr73);
                  }
               }
               §§goto(addr74);
            }
            §§goto(addr69);
         }
         §§goto(addr46);
      }
      
      public static function b2Random() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         if(_loc2_ && _loc2_)
         {
         }
         §§push(Math.random() * 2);
         if(_loc1_)
         {
            §§push(§§pop() - 1);
         }
         return §§pop();
      }
      
      public static function b2MulMM(A:b2Mat22, B:b2Mat22) : b2Mat22
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc5_)
         {
         }
         if(!(_loc5_ && b2Math))
         {
            if(_loc4_ || C)
            {
            }
            addr56:
            var C:b2Mat22 = new b2Mat22(0,b2MulMV(A,B.col1),b2MulMV(A,B.col2));
            if(!_loc4_)
            {
            }
            return C;
         }
         if(_loc4_ || b2Math)
         {
            if(_loc4_ || A)
            {
            }
         }
         §§goto(addr56);
      }
      
      public static function b2NextPowerOfTwo(x:uint) : uint
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_)
         {
         }
         if(_loc2_)
         {
            §§push(x);
            §§push(x);
            if(!_loc3_)
            {
               §§push(1);
               if(_loc2_)
               {
                  §§push(§§pop() >> §§pop());
                  §§push(2147483647);
                  if(_loc2_)
                  {
                     §§push(§§pop() & §§pop());
                     if(_loc2_ || b2Math)
                     {
                        §§push(§§pop() | §§pop());
                        if(_loc2_ || _loc2_)
                        {
                           §§push(uint(§§pop()));
                           if(!(_loc3_ && _loc2_))
                           {
                              x = §§pop();
                              if(!(_loc3_ && _loc3_))
                              {
                                 if(_loc2_ || b2Math)
                                 {
                                    §§push(x);
                                    if(!(_loc3_ && x))
                                    {
                                       §§push(x);
                                       if(_loc2_ || _loc2_)
                                       {
                                          §§push(2);
                                          if(_loc2_ || x)
                                          {
                                             §§push(§§pop() >> §§pop());
                                             if(!_loc3_)
                                             {
                                                §§push(1073741823);
                                                if(!_loc3_)
                                                {
                                                   §§push(§§pop() & §§pop());
                                                   if(_loc2_)
                                                   {
                                                      §§push(§§pop() | §§pop());
                                                      if(_loc2_ || _loc2_)
                                                      {
                                                         §§push(uint(§§pop()));
                                                         if(_loc2_ || b2Math)
                                                         {
                                                            x = §§pop();
                                                            if(_loc2_)
                                                            {
                                                               if(!_loc2_)
                                                               {
                                                               }
                                                               addr169:
                                                               §§push(x);
                                                            }
                                                         }
                                                         §§push(x);
                                                         if(_loc2_ || x)
                                                         {
                                                         }
                                                         addr194:
                                                         §§push(16);
                                                      }
                                                      addr189:
                                                      x = uint(§§pop());
                                                   }
                                                   addr182:
                                                   §§push(16777215);
                                                   if(!_loc3_)
                                                   {
                                                      §§push(§§pop() | §§pop() & §§pop());
                                                      if(_loc2_)
                                                      {
                                                         §§goto(addr189);
                                                      }
                                                   }
                                                }
                                                addr155:
                                                §§push(§§pop() & §§pop());
                                                if(!(_loc3_ && b2Math))
                                                {
                                                   §§push(§§pop() | §§pop());
                                                   if(_loc2_)
                                                   {
                                                      §§push(uint(§§pop()));
                                                   }
                                                }
                                             }
                                             addr203:
                                             §§push(65535);
                                          }
                                          addr195:
                                          §§goto(addr203);
                                          §§push(§§pop() >> §§pop());
                                       }
                                       addr143:
                                       §§push(4);
                                       if(_loc2_ || x)
                                       {
                                       }
                                       §§goto(addr195);
                                    }
                                    addr210:
                                    §§push(1);
                                 }
                                 addr192:
                                 §§goto(addr194);
                                 §§push(x);
                                 §§push(x);
                              }
                              §§push(x);
                              §§push(x);
                              if(!(_loc3_ && b2Math))
                              {
                                 §§goto(addr143);
                              }
                           }
                           x = §§pop();
                           §§goto(addr169);
                        }
                        addr206:
                        x = uint(§§pop());
                        §§goto(addr210);
                        §§push(x);
                     }
                     return §§pop() + §§pop();
                  }
                  addr204:
                  §§goto(addr206);
                  §§push(§§pop() | §§pop() & §§pop());
               }
               §§push(§§pop() >> §§pop());
               §§push(268435455);
               if(!_loc3_)
               {
                  §§goto(addr155);
               }
               §§goto(addr204);
            }
            §§push(8);
            if(_loc2_)
            {
               §§goto(addr182);
               §§push(§§pop() >> §§pop());
            }
            §§goto(addr195);
         }
         §§goto(addr192);
      }
      
      public static function b2Max(a:Number, b:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc3_)
         {
         }
         if(_loc3_)
         {
            if(_loc3_ || b2Math)
            {
               if(!_loc3_)
               {
               }
               addr45:
               §§push(a);
               if(_loc3_ || b)
               {
                  if(§§pop() > b)
                  {
                     addr56:
                     §§push(a);
                     if(_loc4_ && a)
                     {
                     }
                     addr67:
                  }
                  else
                  {
                     §§push(b);
                     if(_loc3_ || a)
                     {
                        addr83:
                        §§push(Number(§§pop()));
                     }
                  }
                  addr84:
                  return §§pop();
               }
               §§push(Number(§§pop()));
               if(!_loc4_)
               {
                  §§goto(addr67);
               }
               else
               {
                  §§goto(addr83);
               }
               §§goto(addr84);
            }
         }
         if(_loc3_ || b2Math)
         {
            §§goto(addr45);
         }
         §§goto(addr56);
      }
      
      public static function b2MulMV(A:b2Mat22, v:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc5_ && u)
         {
         }
         if(_loc4_)
         {
            if(_loc4_)
            {
               if(!_loc4_)
               {
               }
            }
            addr33:
            §§push();
            §§push(A.col1.x);
            if(!_loc5_)
            {
               §§push(v.x);
               if(!_loc5_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc5_ && A)
                  {
                  }
                  addr82:
                  §§push(A.col1.y);
                  addr108:
                  if(!_loc5_)
                  {
                     §§push(v.x);
                     if(_loc4_ || b2Math)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc4_)
                        {
                           addr99:
                           §§push(A.col2.y);
                           if(!_loc4_)
                           {
                           }
                           addr107:
                           §§push(§§pop() + §§pop());
                        }
                     }
                     §§goto(addr107);
                     §§push(§§pop() * v.y);
                  }
                  var u:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
                  if(_loc4_ || u)
                  {
                  }
                  return u;
               }
               addr69:
               §§push(v.y);
               if(_loc4_ || u)
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc5_)
                  {
                     §§goto(addr82);
                     §§push(§§pop() + §§pop());
                  }
                  §§goto(addr108);
               }
               §§goto(addr107);
            }
            §§push(A.col2.x);
            if(_loc4_ || A)
            {
               §§goto(addr69);
            }
            §§goto(addr99);
         }
         if(!_loc5_)
         {
            §§goto(addr33);
         }
         §§goto(addr33);
      }
   }
}
