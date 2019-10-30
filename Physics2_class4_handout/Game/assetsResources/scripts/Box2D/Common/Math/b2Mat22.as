package Box2D.Common.Math
{
   public class b2Mat22
   {
       
      
      public var col1:b2Vec2;
      
      public var col2:b2Vec2;
      
      public function b2Mat22(angle:Number = 0, c1:b2Vec2 = null, c2:b2Vec2 = null)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || angle)
         {
         }
         var c:* = NaN;
         var s:Number = NaN;
         if(!(_loc6_ && c1))
         {
            if(!(_loc6_ && c1))
            {
               if(!_loc6_)
               {
                  if(!_loc6_)
                  {
                     this.col1 = new b2Vec2();
                     if(!_loc6_)
                     {
                        if(!(_loc6_ && c2))
                        {
                           this.col2 = new b2Vec2();
                           if(_loc6_ && c2)
                           {
                           }
                           addr169:
                           s = Math.sin(angle);
                           addr195:
                           if(_loc6_ && c2)
                           {
                           }
                           addr227:
                           §§push(this.col2);
                           if(!(_loc6_ && angle))
                           {
                              §§push(s);
                              if(!_loc6_)
                              {
                                 §§push(-§§pop());
                                 if(_loc7_)
                                 {
                                    §§pop().x = §§pop();
                                    if(_loc6_)
                                    {
                                    }
                                    addr244:
                                    return;
                                 }
                              }
                              addr235:
                              §§pop().y = §§pop();
                              if(!(_loc6_ && this))
                              {
                                 addr243:
                              }
                              §§goto(addr244);
                           }
                           addr227:
                           §§goto(addr235);
                           §§push(c);
                        }
                        addr77:
                        if(!_loc6_)
                        {
                           §§push(c1 == null);
                           if(!(_loc6_ && c2))
                           {
                              §§push(!§§pop());
                              if(!_loc7_)
                              {
                              }
                              addr122:
                              if(!§§pop())
                              {
                                 §§push(this.col1);
                                 if(!(_loc6_ && c1))
                                 {
                                    §§pop().SetV(c1);
                                    addr136:
                                    §§push(this.col2);
                                    if(_loc7_)
                                    {
                                       §§pop().SetV(c2);
                                       if(!(_loc7_ || c1))
                                       {
                                          §§goto(addr243);
                                       }
                                    }
                                    §§goto(addr244);
                                 }
                                 else
                                 {
                                    addr186:
                                    §§push(c);
                                    addr224:
                                    if(!(_loc6_ && this))
                                    {
                                       §§pop().x = §§pop();
                                    }
                                    §§pop().y = §§pop();
                                 }
                                 §§goto(addr227);
                              }
                              else
                              {
                                 §§push(Number(Math.cos(angle)));
                                 if(!(_loc6_ && c1))
                                 {
                                    c = §§pop();
                                    if(!_loc6_)
                                    {
                                       §§goto(addr169);
                                    }
                                 }
                                 §§goto(addr169);
                              }
                              §§goto(addr195);
                           }
                           if(§§pop())
                           {
                              if(_loc7_ || angle)
                              {
                                 §§pop();
                                 if(!(_loc6_ && angle))
                                 {
                                    §§push(c2 == null);
                                    if(_loc7_)
                                    {
                                       §§goto(addr122);
                                    }
                                 }
                                 §§goto(addr136);
                              }
                           }
                           §§goto(addr122);
                        }
                     }
                     super();
                     §§goto(addr77);
                  }
                  §§push(this.col1);
                  if(!_loc6_)
                  {
                     §§goto(addr186);
                  }
                  addr223:
                  §§goto(addr224);
                  §§push(s);
               }
               addr221:
               §§goto(addr223);
               §§push(this.col1);
            }
            if(!(_loc6_ && this))
            {
               §§goto(addr221);
            }
            §§goto(addr243);
         }
         §§goto(addr227);
      }
      
      public function SetIdentity() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         §§push(this.col1);
         if(_loc2_)
         {
            §§pop().x = 1;
            §§push(this.col2);
            if(_loc2_)
            {
               §§pop().x = 0;
               if(!_loc1_)
               {
                  §§push(this.col1);
               }
               addr58:
               return;
            }
            addr54:
            §§pop().y = 1;
            if(!_loc1_)
            {
               §§goto(addr58);
            }
            §§goto(addr58);
         }
         §§pop().y = 0;
         §§goto(addr54);
      }
      
      public function SetVV(c1:b2Vec2, c2:b2Vec2) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc4_)
         {
         }
         if(!(_loc3_ && c1))
         {
            if(_loc4_)
            {
               this.col1.SetV(c1);
               if(!_loc4_)
               {
               }
               this.col2.SetV(c2);
            }
         }
      }
      
      public function Set(angle:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || angle)
         {
         }
         var c:* = NaN;
         if(_loc5_ || angle)
         {
            §§push(Number(Math.cos(angle)));
            if(_loc5_ || s)
            {
               c = §§pop();
               if(_loc4_ && c)
               {
               }
            }
            addr60:
            var s:* = §§pop();
            if(_loc5_)
            {
               §§push(this.col1);
               if(!(_loc4_ && c))
               {
                  §§push(c);
                  if(_loc5_)
                  {
                     §§pop().x = §§pop();
                     if(!(_loc4_ && angle))
                     {
                        §§push(this.col2);
                        if(_loc5_ || angle)
                        {
                           §§push(s);
                           if(!(_loc4_ && angle))
                           {
                              §§push(-§§pop());
                              if(!_loc4_)
                              {
                                 §§pop().x = §§pop();
                                 if(!_loc4_)
                                 {
                                    §§push(this.col1);
                                 }
                                 addr121:
                                 §§push(this.col2);
                              }
                           }
                           addr131:
                           §§pop().y = §§pop();
                           if(_loc5_ || c)
                           {
                              addr139:
                           }
                        }
                        §§goto(addr131);
                        §§push(c);
                     }
                  }
                  addr118:
                  §§pop().y = §§pop();
                  if(_loc5_)
                  {
                     §§goto(addr121);
                  }
                  §§goto(addr139);
               }
               §§goto(addr118);
               §§push(s);
            }
            return;
         }
         §§goto(addr60);
      }
      
      public function SetZero() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         §§push(this.col1);
         if(!_loc1_)
         {
            §§push(0);
            if(_loc2_ || _loc1_)
            {
               §§pop().x = §§pop();
               if(!(_loc1_ && _loc2_))
               {
                  §§push(this.col2);
                  if(!(_loc1_ && _loc1_))
                  {
                     §§push(0);
                     if(_loc2_ || _loc1_)
                     {
                        §§pop().x = §§pop();
                        if(_loc2_)
                        {
                           §§push(this.col1);
                        }
                        addr78:
                        §§push(this.col2);
                     }
                     addr81:
                     §§pop().y = §§pop();
                  }
                  §§goto(addr81);
                  §§push(0);
               }
               return;
            }
            addr77:
            §§pop().y = §§pop();
            §§goto(addr78);
         }
         §§goto(addr77);
      }
      
      public function SetM(m:b2Mat22) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_ && m)
         {
         }
         if(_loc3_ && this)
         {
         }
         this.col1.SetV(m.col1);
         this.col2.SetV(m.col2);
         if(_loc3_)
         {
         }
      }
      
      public function AddM(m:b2Mat22) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc2_)
         {
         }
         if(!_loc3_)
         {
            §§push(this.col1);
            if(_loc2_)
            {
               §§push(this.col1);
               if(!(_loc3_ && _loc2_))
               {
                  §§push(§§pop().x);
                  if(_loc2_ || m)
                  {
                     §§push(m.col1);
                     if(!(_loc3_ && _loc3_))
                     {
                        §§push(§§pop().x);
                        if(_loc2_)
                        {
                           §§push(§§pop() + §§pop());
                           if(!_loc2_)
                           {
                           }
                           addr75:
                           §§push(m.col1);
                        }
                        addr85:
                        addr88:
                        §§pop().y = §§pop() + §§pop();
                        addr137:
                        §§push(this.col2);
                        if(!_loc3_)
                        {
                           §§push(this.col2);
                           if(!_loc3_)
                           {
                              §§push(§§pop().x);
                              if(_loc2_ || _loc2_)
                              {
                                 §§push(m.col2);
                                 if(_loc2_ || _loc3_)
                                 {
                                    §§push(§§pop().x);
                                    if(_loc2_ || this)
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(_loc3_)
                                       {
                                       }
                                       addr147:
                                       §§push(m.col2);
                                    }
                                    addr150:
                                    §§pop().y = §§pop() + §§pop();
                                    addr167:
                                    if(_loc3_ && _loc2_)
                                    {
                                    }
                                    return;
                                 }
                                 §§goto(addr150);
                                 §§push(§§pop().y);
                              }
                              §§pop().x = §§pop();
                              if(_loc3_ && _loc2_)
                              {
                              }
                              §§goto(addr167);
                           }
                           addr139:
                           §§push(§§pop().y);
                           if(!(_loc3_ && _loc3_))
                           {
                              §§goto(addr147);
                           }
                           §§goto(addr150);
                        }
                        §§goto(addr139);
                        §§push(this.col2);
                     }
                     §§goto(addr85);
                     §§push(§§pop().y);
                  }
                  §§pop().x = §§pop();
                  if(_loc2_)
                  {
                     if(_loc2_ || _loc2_)
                     {
                        §§push(this.col1);
                     }
                     §§goto(addr88);
                  }
                  §§goto(addr167);
               }
               addr72:
               §§push(§§pop().y);
               if(!_loc3_)
               {
                  §§goto(addr75);
               }
               §§goto(addr85);
            }
            §§goto(addr72);
            §§push(this.col1);
         }
         if(_loc2_)
         {
            §§goto(addr137);
            §§push(this.col2);
         }
         §§goto(addr167);
      }
      
      public function Abs() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
         }
         if(_loc1_ || _loc2_)
         {
            if(!_loc2_)
            {
               this.col1.Abs();
               if(_loc2_)
               {
               }
               addr59:
               this.col2.Abs();
               if(!_loc2_)
               {
                  addr64:
               }
            }
            return;
         }
         if(!(_loc2_ && _loc2_))
         {
            §§goto(addr59);
         }
         §§goto(addr64);
      }
      
      public function Copy() : b2Mat22
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
         if(!_loc1_)
         {
         }
         return new b2Mat22(0,this.col1,this.col2);
      }
      
      public function Invert(out:b2Mat22) : b2Mat22
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_ || this)
         {
         }
         var a:* = NaN;
         var c:* = NaN;
         var det:* = NaN;
         if(_loc7_ || this)
         {
            if(_loc7_)
            {
               if(_loc8_)
               {
               }
               addr62:
               §§push(this.col2.x);
               addr69:
               if(!_loc8_)
               {
                  addr68:
                  §§push(Number(§§pop()));
               }
               var b:* = §§pop();
               if(_loc7_)
               {
                  if(_loc7_ || out)
                  {
                     §§push(this.col1.y);
                     if(!_loc8_)
                     {
                        §§push(Number(§§pop()));
                        if(!(_loc8_ && out))
                        {
                           c = §§pop();
                           if(_loc7_ || a)
                           {
                           }
                        }
                     }
                     addr113:
                     var d:* = §§pop();
                     §§push(a);
                     if(_loc7_)
                     {
                        §§push(d);
                        if(!(_loc8_ && out))
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc7_ || a)
                           {
                              §§push(b);
                              if(!(_loc8_ && this))
                              {
                                 §§push(§§pop() * c);
                              }
                           }
                           addr171:
                           det = Number(§§pop());
                           if(_loc7_)
                           {
                              §§push(out.col1);
                              if(_loc7_)
                              {
                                 §§push(det);
                                 if(_loc7_)
                                 {
                                    §§push(d);
                                    if(_loc7_)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(_loc7_ || out)
                                       {
                                          §§pop().x = §§pop();
                                          §§push(out.col2);
                                          if(_loc7_ || b)
                                          {
                                             §§push(det);
                                             if(!_loc8_)
                                             {
                                                §§push(-§§pop());
                                                if(_loc7_)
                                                {
                                                   §§push(b);
                                                   if(!_loc8_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(!_loc8_)
                                                      {
                                                         §§pop().x = §§pop();
                                                         if(!_loc8_)
                                                         {
                                                            §§push(out.col1);
                                                         }
                                                      }
                                                      addr250:
                                                      §§pop().y = §§pop();
                                                      if(_loc7_)
                                                      {
                                                         addr253:
                                                      }
                                                   }
                                                   addr249:
                                                   §§goto(addr250);
                                                   §§push(§§pop() * §§pop());
                                                }
                                             }
                                             addr248:
                                             §§goto(addr249);
                                             §§push(a);
                                          }
                                          addr233:
                                          §§push(det);
                                          if(!(_loc8_ && b))
                                          {
                                             §§goto(addr248);
                                          }
                                          §§goto(addr250);
                                       }
                                       addr230:
                                       §§pop().y = §§pop();
                                       §§goto(addr233);
                                       §§push(out.col2);
                                    }
                                    addr229:
                                    §§goto(addr230);
                                    §§push(§§pop() * §§pop());
                                 }
                                 addr228:
                                 §§goto(addr229);
                                 §§push(c);
                              }
                              §§push(det);
                              if(_loc7_)
                              {
                                 §§push(-§§pop());
                                 if(!_loc8_)
                                 {
                                    §§goto(addr228);
                                 }
                              }
                              §§goto(addr230);
                           }
                           return out;
                        }
                        §§push(§§pop() - §§pop());
                        if(!_loc8_)
                        {
                           §§push(Number(§§pop()));
                           if(!_loc7_)
                           {
                           }
                           §§goto(addr171);
                        }
                     }
                     det = §§pop();
                     if(!_loc8_)
                     {
                        §§push(1 / det);
                        if(_loc7_ || a)
                        {
                           §§goto(addr171);
                        }
                        §§goto(addr171);
                     }
                     §§goto(addr253);
                  }
               }
               §§push(this.col2.y);
               if(!(_loc8_ && a))
               {
                  §§push(Number(§§pop()));
               }
               §§goto(addr113);
            }
            addr46:
            §§push(this.col1.x);
            if(!(_loc8_ && a))
            {
               §§push(Number(§§pop()));
               if(!_loc8_)
               {
                  a = §§pop();
                  if(_loc7_)
                  {
                     §§goto(addr62);
                  }
                  §§goto(addr62);
               }
               §§goto(addr69);
            }
            §§goto(addr68);
         }
         §§goto(addr46);
      }
      
      public function GetAngle() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         if(_loc2_)
         {
         }
         return Math.atan2(this.col1.y,this.col1.x);
      }
      
      public function Solve(out:b2Vec2, bX:Number, bY:Number) : b2Vec2
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         if(_loc10_ && bY)
         {
         }
         if(!(_loc10_ && bX))
         {
            if(_loc9_)
            {
               if(_loc10_)
               {
               }
               addr42:
               §§push(this.col1.x);
               if(_loc9_)
               {
                  §§push(Number(§§pop()));
               }
               var a11:* = §§pop();
               if(_loc10_)
               {
               }
               §§push(this.col2.x);
               if(_loc9_)
               {
                  §§push(Number(§§pop()));
               }
               var a12:* = §§pop();
               if(_loc9_ || this)
               {
               }
               §§push(this.col1.y);
               if(!_loc10_)
               {
                  §§push(Number(§§pop()));
               }
               var a21:* = §§pop();
               if(!_loc9_)
               {
               }
               §§push(this.col2.y);
               if(!_loc10_)
               {
                  §§push(Number(§§pop()));
               }
               var a22:* = §§pop();
               if(_loc10_ && out)
               {
               }
               §§push(a11);
               if(!(_loc10_ && out))
               {
                  §§push(a22);
                  if(!(_loc10_ && bX))
                  {
                     §§push(§§pop() * §§pop());
                     if(!(_loc10_ && bY))
                     {
                        §§push(a12);
                        if(_loc10_)
                        {
                        }
                        addr121:
                        §§push(§§pop() - §§pop());
                        if(_loc9_ || out)
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                  }
                  §§goto(addr121);
                  §§push(§§pop() * a21);
               }
               var det:* = §§pop();
               if(!(_loc10_ && out))
               {
                  §§push(1 / det);
                  if(_loc9_)
                  {
                     §§push(Number(§§pop()));
                  }
                  det = §§pop();
                  §§push(out);
                  §§push(det);
                  if(_loc9_)
                  {
                     §§push(a22);
                     if(_loc9_ || this)
                     {
                        §§push(bX);
                        if(!(_loc10_ && out))
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc9_ || bY)
                           {
                              §§push(a12);
                              if(!(_loc10_ && bY))
                              {
                                 §§push(§§pop() * bY);
                              }
                           }
                        }
                        §§push(§§pop() - §§pop());
                     }
                     §§push(§§pop() * §§pop());
                  }
                  §§pop().x = §§pop();
               }
               §§push(out);
               §§push(det);
               if(_loc9_ || bY)
               {
                  §§push(a11);
                  if(!(_loc10_ && bY))
                  {
                     §§push(bY);
                     if(!(_loc10_ && bY))
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc9_ || this)
                        {
                        }
                        addr240:
                        §§push(§§pop() * §§pop());
                     }
                     addr239:
                     §§goto(addr240);
                     §§push(§§pop() - §§pop());
                  }
                  §§push(a21);
                  if(_loc9_ || this)
                  {
                     §§push(§§pop() * bX);
                  }
                  §§goto(addr239);
               }
               §§pop().y = §§pop();
               if(_loc10_ && bX)
               {
               }
               return out;
            }
         }
         §§goto(addr42);
      }
   }
}
