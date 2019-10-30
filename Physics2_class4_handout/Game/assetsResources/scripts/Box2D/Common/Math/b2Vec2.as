package Box2D.Common.Math
{
   public class b2Vec2
   {
       
      
      public var y:Number;
      
      public var x:Number;
      
      public function b2Vec2(x_:Number = 0, y_:Number = 0)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc3_ && x_)
         {
         }
         if(_loc4_ || y_)
         {
            if(_loc4_ || y_)
            {
               if(!_loc3_)
               {
                  super();
               }
            }
            this.x = x_;
            if(!(_loc3_ && x_))
            {
               this.y = y_;
            }
         }
      }
      
      public static function Make(x_:Number, y_:Number) : b2Vec2
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc4_)
         {
         }
         if(!(_loc4_ && _loc3_))
         {
            if(!_loc4_)
            {
               if(_loc4_)
               {
               }
               addr45:
               return new b2Vec2(x_,y_);
            }
         }
         §§goto(addr45);
      }
      
      public function Add(v:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc3_)
         {
         }
         if(!_loc2_)
         {
            if(_loc3_ || _loc2_)
            {
               if(_loc3_ || _loc3_)
               {
               }
               addr83:
               return;
            }
            §§push(this);
            §§push(this.x);
            if(_loc3_)
            {
               §§push(§§pop() + v.x);
            }
            §§pop().x = §§pop();
            if(!(_loc2_ && this))
            {
               §§push(this);
               §§push(this.y);
               if(!(_loc2_ && _loc2_))
               {
                  §§push(§§pop() + v.y);
               }
               §§pop().y = §§pop();
               if(!_loc3_)
               {
               }
            }
            §§goto(addr83);
         }
         §§goto(addr83);
      }
      
      public function Set(x_:Number = 0, y_:Number = 0) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc4_)
         {
         }
         if(_loc3_)
         {
            if(!_loc3_)
            {
            }
            addr52:
            return;
         }
         if(!_loc4_)
         {
            this.x = x_;
            if(_loc4_ && this)
            {
            }
            §§goto(addr52);
         }
         this.y = y_;
         §§goto(addr52);
      }
      
      public function Multiply(a:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_ && this)
         {
         }
         if(_loc3_)
         {
            if(_loc3_)
            {
               if(!(_loc2_ && _loc3_))
               {
                  §§push(this);
                  §§push(this.x);
                  if(_loc3_ || _loc3_)
                  {
                     §§push(§§pop() * a);
                  }
                  §§pop().x = §§pop();
                  if(!_loc3_)
                  {
                  }
               }
            }
            §§push(this);
            §§push(this.y);
            if(!_loc2_)
            {
               §§push(§§pop() * a);
            }
            §§pop().y = §§pop();
            if(_loc3_ || a)
            {
            }
         }
      }
      
      public function Length() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
         }
         if(_loc1_)
         {
         }
         return Math.sqrt(this.x * this.x + this.y * this.y);
      }
      
      public function LengthSquared() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
         }
         if(_loc2_ && _loc2_)
         {
         }
         §§push(this.x);
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.x);
            if(_loc1_ || this)
            {
               §§push(§§pop() * §§pop());
               if(_loc2_ && _loc2_)
               {
               }
               addr83:
               return §§pop();
            }
            addr79:
            §§goto(addr83);
            §§push(§§pop() + §§pop() * this.y);
         }
         §§push(this.y);
         if(_loc1_ || this)
         {
            §§goto(addr79);
         }
         §§goto(addr79);
      }
      
      public function MulM(A:b2Mat22) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
         }
         if(!_loc4_)
         {
            if(_loc4_ && A)
            {
            }
            addr40:
            §§push(this.x);
            if(_loc3_)
            {
               §§push(Number(§§pop()));
            }
            var tX:* = §§pop();
            if(!_loc4_)
            {
               if(_loc3_)
               {
                  §§push(this);
                  §§push(A.col1.x);
                  if(_loc3_ || this)
                  {
                     §§push(tX);
                     if(!(_loc4_ && tX))
                     {
                        §§push(§§pop() * §§pop());
                        if(!(_loc4_ && _loc3_))
                        {
                           §§push(A.col2.x);
                           if(!_loc4_)
                           {
                              §§push(§§pop() * this.y);
                           }
                        }
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§pop().x = §§pop();
                  if(!(_loc4_ && A))
                  {
                     if(!_loc3_)
                     {
                     }
                     addr147:
                  }
               }
               addr148:
               return;
            }
            §§push(this);
            §§push(A.col1.y);
            if(!_loc4_)
            {
               §§push(tX);
               if(!(_loc4_ && _loc3_))
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc4_)
                  {
                     §§push(A.col2.y);
                     if(_loc3_ || tX)
                     {
                     }
                     addr143:
                     §§push(§§pop() + §§pop());
                  }
               }
               §§goto(addr143);
               §§push(§§pop() * this.y);
            }
            §§pop().y = §§pop();
            if(!_loc4_)
            {
               §§goto(addr147);
            }
            §§goto(addr148);
         }
         if(!(_loc4_ && this))
         {
            §§goto(addr40);
         }
         §§goto(addr40);
      }
      
      public function SetZero() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(!(_loc1_ && _loc1_))
         {
            this.x = 0;
            if(_loc1_ && this)
            {
            }
            addr52:
            return;
         }
         this.y = 0;
         §§goto(addr52);
      }
      
      public function MinV(b:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc3_)
         {
         }
         if(_loc2_ && _loc2_)
         {
         }
         §§push(this);
         if(!_loc2_)
         {
            §§push(this.x);
            if(_loc3_)
            {
               if(§§pop() >= b.x)
               {
                  §§push(b.x);
                  if(!(_loc2_ && b))
                  {
                     §§push(Number(§§pop()));
                  }
               }
            }
            addr68:
            §§pop().x = §§pop();
            §§push(this);
            if(!(_loc2_ && b))
            {
               §§push(this.y);
               if(!_loc2_)
               {
                  if(§§pop() >= b.y)
                  {
                     §§push(b.y);
                     if(_loc3_ || this)
                     {
                     }
                  }
                  addr116:
                  §§pop().y = §§pop();
                  if(_loc3_ || this)
                  {
                  }
                  return;
               }
               addr108:
               §§goto(addr116);
               §§push(Number(§§pop()));
            }
            §§push(this.y);
            if(_loc3_)
            {
               §§push(Number(§§pop()));
               if(!(_loc3_ || this))
               {
                  §§goto(addr108);
               }
               §§goto(addr116);
            }
            §§goto(addr116);
         }
         §§push(this.x);
         if(!_loc2_)
         {
            §§push(Number(§§pop()));
            if(_loc2_ && this)
            {
            }
         }
         §§goto(addr68);
      }
      
      public function Normalize() : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc3_ && length)
         {
         }
         if(!(_loc3_ && invLength))
         {
            if(_loc3_ && length)
            {
            }
            addr46:
            var length:Number = Math.sqrt(this.x * this.x + this.y * this.y);
            §§push(length);
            if(!(_loc3_ && invLength))
            {
               if(§§pop() < Number.MIN_VALUE)
               {
                  if(_loc3_ && invLength)
                  {
                  }
                  §§push(0);
                  if(!_loc3_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  §§push(1 / length);
                  if(_loc3_ && this)
                  {
                  }
               }
               addr105:
               var invLength:* = §§pop();
               if(!_loc3_)
               {
                  if(!_loc3_)
                  {
                     §§push(this);
                     §§push(this.x);
                     if(_loc4_ || _loc3_)
                     {
                        §§push(§§pop() * invLength);
                     }
                     §§pop().x = §§pop();
                     if(_loc4_)
                     {
                        if(_loc4_ || _loc3_)
                        {
                        }
                     }
                  }
                  §§push(this);
                  §§push(this.y);
                  if(_loc4_)
                  {
                     §§push(§§pop() * invLength);
                  }
                  §§pop().y = §§pop();
                  if(!_loc4_)
                  {
                  }
                  addr152:
                  return length;
               }
               §§goto(addr152);
            }
            §§goto(addr105);
            §§push(Number(§§pop()));
         }
         if(_loc4_ || this)
         {
            §§goto(addr46);
         }
         §§goto(addr46);
      }
      
      public function CrossVF(s:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc3_)
         {
         }
         if(_loc3_)
         {
            if(_loc4_ && _loc3_)
            {
            }
            addr31:
            §§push(this.x);
            if(_loc3_)
            {
               §§push(Number(§§pop()));
            }
            var tX:* = §§pop();
            if(!(_loc4_ && _loc3_))
            {
               if(_loc3_ || _loc3_)
               {
                  §§push(this);
                  §§push(s);
                  if(!_loc4_)
                  {
                     §§push(§§pop() * this.y);
                  }
                  §§pop().x = §§pop();
                  if(_loc4_ && tX)
                  {
                  }
                  addr112:
                  return;
               }
               addr77:
               §§push(this);
               §§push(s);
               if(!(_loc4_ && _loc3_))
               {
                  §§push(-§§pop());
                  if(_loc3_ || _loc3_)
                  {
                     §§push(§§pop() * tX);
                  }
               }
               §§pop().y = §§pop();
               if(_loc3_ || s)
               {
               }
               §§goto(addr112);
            }
            if(!_loc4_)
            {
               §§goto(addr77);
            }
            §§goto(addr112);
         }
         if(!_loc3_)
         {
         }
         §§goto(addr31);
      }
      
      public function MaxV(b:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_ && b)
         {
         }
         if(_loc3_ || b)
         {
            if(_loc3_)
            {
               if(_loc3_ || _loc2_)
               {
               }
               addr88:
               §§push(this);
               if(!(_loc2_ && _loc3_))
               {
                  §§push(this.y);
                  if(!(_loc2_ && _loc2_))
                  {
                     if(§§pop() <= b.y)
                     {
                        §§push(b.y);
                        if(!(_loc2_ && this))
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                  }
                  addr140:
                  §§pop().y = §§pop();
               }
               §§push(this.y);
               if(_loc3_ || _loc3_)
               {
                  §§push(Number(§§pop()));
                  if(_loc2_)
                  {
                  }
               }
               §§goto(addr140);
            }
            §§push(this);
            if(_loc3_ || this)
            {
               §§push(this.x);
               if(_loc3_)
               {
                  if(§§pop() <= b.x)
                  {
                     §§push(b.x);
                     if(!(_loc2_ && _loc3_))
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  addr87:
                  §§pop().x = §§pop();
                  §§goto(addr88);
               }
               addr73:
               §§push(Number(§§pop()));
               if(!_loc2_)
               {
                  addr76:
               }
               §§goto(addr87);
            }
            §§push(this.x);
            if(_loc3_ || this)
            {
               §§goto(addr73);
            }
            §§goto(addr76);
         }
      }
      
      public function SetV(v:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_ && _loc2_)
         {
         }
         if(!_loc3_)
         {
            if(!(_loc3_ && _loc3_))
            {
               this.x = v.x;
               if(_loc2_)
               {
                  this.y = v.y;
               }
            }
         }
      }
      
      public function Negative() : b2Vec2
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && this)
         {
         }
         §§push();
         §§push(this.x);
         if(_loc1_)
         {
            §§push(-§§pop());
         }
         §§push(this.y);
         if(!_loc2_)
         {
            §§push(-§§pop());
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      public function CrossFV(s:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc3_)
         {
         }
         if(!(_loc3_ && s))
         {
            if(!_loc4_)
            {
            }
            addr37:
            §§push(this.x);
            if(_loc4_)
            {
               §§push(Number(§§pop()));
            }
            var tX:* = §§pop();
            if(!_loc3_)
            {
               if(_loc3_ && this)
               {
               }
               addr86:
               §§push(this);
               §§push(s);
               if(_loc4_ || _loc3_)
               {
                  §§push(§§pop() * tX);
               }
               §§pop().y = §§pop();
               addr108:
               if(_loc3_)
               {
               }
               return;
            }
            §§push(this);
            §§push(s);
            if(_loc4_ || s)
            {
               §§push(-§§pop());
               if(!_loc3_)
               {
                  §§push(§§pop() * this.y);
               }
            }
            §§pop().x = §§pop();
            if(!(_loc3_ && tX))
            {
               if(!_loc3_)
               {
                  §§goto(addr86);
               }
            }
            §§goto(addr108);
         }
         if(_loc4_ || this)
         {
         }
         §§goto(addr37);
      }
      
      public function Abs() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
         }
         §§push(this.x);
         if(_loc2_ || _loc1_)
         {
            §§push(0);
            if(_loc2_)
            {
               if(§§pop() < §§pop())
               {
                  if(!(_loc1_ && _loc1_))
                  {
                     §§push(this);
                     §§push(this.x);
                     if(_loc2_)
                     {
                        §§push(-§§pop());
                     }
                     §§pop().x = §§pop();
                     if(_loc1_)
                     {
                     }
                  }
                  addr79:
                  §§push(this);
                  §§push(this.y);
                  if(!_loc1_)
                  {
                     §§push(-§§pop());
                  }
                  addr87:
                  §§pop().y = §§pop();
                  return;
               }
               §§push(this.y);
            }
            addr64:
            if(§§pop() < §§pop())
            {
               if(_loc2_ || _loc2_)
               {
                  §§goto(addr79);
               }
            }
            §§goto(addr87);
         }
         §§goto(addr64);
      }
      
      public function Subtract(v:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
         }
         if(!_loc2_)
         {
            if(_loc2_ && _loc2_)
            {
            }
            addr48:
            §§push(this);
            §§push(this.x);
            if(_loc3_)
            {
               §§push(§§pop() - v.x);
            }
            §§pop().x = §§pop();
            if(!(_loc2_ && _loc3_))
            {
               addr64:
               §§push(this);
               §§push(this.y);
               if(!_loc2_)
               {
                  §§push(§§pop() - v.y);
               }
               §§pop().y = §§pop();
               if(!_loc3_)
               {
               }
            }
            return;
         }
         if(!(_loc2_ && _loc3_))
         {
            §§goto(addr48);
         }
         §§goto(addr64);
      }
      
      public function Copy() : b2Vec2
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(_loc1_)
         {
         }
         return new b2Vec2(this.x,this.y);
      }
      
      public function MulTM(A:b2Mat22) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc3_ && this)
         {
         }
         if(_loc4_)
         {
            if(_loc4_)
            {
               if(_loc4_ || A)
               {
               }
            }
            addr37:
            §§push(b2Math.b2Dot(this,A.col1));
            if(_loc4_)
            {
               §§push(Number(§§pop()));
            }
            var tX:* = §§pop();
            if(!_loc3_)
            {
               if(!_loc3_)
               {
                  this.y = b2Math.b2Dot(this,A.col2);
                  if(_loc4_ || _loc3_)
                  {
                     if(_loc4_ || this)
                     {
                     }
                  }
                  addr93:
                  return;
               }
               addr92:
               §§goto(addr93);
            }
            this.x = tX;
            if(!_loc3_)
            {
               §§goto(addr92);
            }
            §§goto(addr93);
         }
         §§goto(addr37);
      }
      
      public function IsValid() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && this)
         {
         }
         if(!(_loc2_ && this))
         {
            if(!(_loc2_ && _loc2_))
            {
               §§push(b2Math.b2IsValid(this.x));
               if(!_loc2_)
               {
                  §§push(Boolean(§§pop()));
                  if(_loc1_ || this)
                  {
                  }
                  addr82:
                  return §§pop();
               }
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     §§pop();
                  }
                  addr81:
                  §§push(Boolean(§§pop()));
               }
               §§goto(addr82);
            }
         }
         §§push(b2Math.b2IsValid(this.y));
         if(_loc1_ || this)
         {
            §§goto(addr81);
         }
         §§goto(addr82);
      }
   }
}
