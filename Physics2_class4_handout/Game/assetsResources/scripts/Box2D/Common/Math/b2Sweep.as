package Box2D.Common.Math
{
   public class b2Sweep
   {
       
      
      public var localCenter:b2Vec2;
      
      public var a:Number;
      
      public var c:b2Vec2;
      
      public var a0:Number;
      
      public var c0:b2Vec2;
      
      public var t0:Number;
      
      public function b2Sweep()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(!(_loc1_ && _loc2_))
         {
            this.localCenter = new b2Vec2();
            this.c0 = new b2Vec2();
            this.c = new b2Vec2();
            if(!_loc2_)
            {
            }
            addr59:
            return;
         }
         super();
         §§goto(addr59);
      }
      
      public function Advance(t:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc3_ && this)
         {
         }
         var alpha:* = NaN;
         §§push(this.t0);
         if(!_loc3_)
         {
            §§push(t);
            if(!(_loc3_ && t))
            {
               §§push(§§pop() < §§pop());
               if(!(_loc3_ && _loc3_))
               {
                  if(§§pop())
                  {
                     if(_loc3_ && t)
                     {
                     }
                  }
                  addr71:
                  if(§§pop())
                  {
                     if(_loc4_)
                     {
                        §§push(t);
                        if(_loc4_ || t)
                        {
                           §§push(this.t0);
                           if(!_loc4_)
                           {
                           }
                           addr95:
                           §§push(§§pop() / §§pop());
                           if(!(_loc3_ && alpha))
                           {
                              addr103:
                              §§push(Number(§§pop()));
                           }
                        }
                        alpha = §§pop();
                        if(!_loc3_)
                        {
                           if(_loc4_ || t)
                           {
                              §§push(this.c0);
                              if(!_loc3_)
                              {
                                 §§push(1);
                                 if(_loc4_ || _loc3_)
                                 {
                                    §§push(alpha);
                                    if(_loc4_)
                                    {
                                       §§push(§§pop() - §§pop());
                                       if(!(_loc3_ && alpha))
                                       {
                                          §§push(this.c0);
                                          if(_loc4_)
                                          {
                                             §§push(§§pop().x);
                                             if(_loc4_ || _loc3_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!_loc3_)
                                                {
                                                   §§push(alpha);
                                                   if(_loc3_ && this)
                                                   {
                                                   }
                                                   addr221:
                                                   §§pop().y = §§pop() + §§pop() * this.c.y;
                                                   addr256:
                                                   if(!_loc4_)
                                                   {
                                                   }
                                                   this.t0 = t;
                                                   if(_loc4_ || t)
                                                   {
                                                   }
                                                }
                                             }
                                             §§push(this.c);
                                             if(!_loc3_)
                                             {
                                                §§push(§§pop().x);
                                                if(!(_loc3_ && this))
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(!_loc3_)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc4_ || _loc3_)
                                                      {
                                                         §§pop().x = §§pop();
                                                      }
                                                   }
                                                   addr205:
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc3_)
                                                   {
                                                   }
                                                   §§goto(addr221);
                                                }
                                                §§goto(addr221);
                                             }
                                             §§goto(addr221);
                                          }
                                          addr202:
                                          §§push(§§pop().y);
                                          if(_loc4_)
                                          {
                                             §§goto(addr205);
                                          }
                                          §§goto(addr221);
                                       }
                                       addr208:
                                       §§push(alpha);
                                       if(_loc4_ || t)
                                       {
                                          §§goto(addr221);
                                       }
                                       §§goto(addr221);
                                    }
                                    addr197:
                                    §§push(§§pop() - §§pop());
                                    if(!_loc3_)
                                    {
                                       §§goto(addr202);
                                       §§push(this.c0);
                                    }
                                    §§goto(addr208);
                                 }
                                 addr196:
                                 §§goto(addr197);
                                 §§push(alpha);
                              }
                              addr195:
                              §§goto(addr196);
                              §§push(1);
                           }
                           §§goto(addr195);
                           §§push(this.c0);
                        }
                     }
                     §§push(this);
                     §§push(1 - alpha);
                     if(!_loc3_)
                     {
                        §§push(this.a0);
                        if(!(_loc3_ && _loc3_))
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc4_ || this)
                           {
                           }
                           addr255:
                           §§pop().a0 = §§pop();
                           §§goto(addr256);
                        }
                        addr251:
                        §§goto(addr255);
                        §§push(§§pop() + §§pop() * this.a);
                     }
                     §§push(alpha);
                     if(_loc4_)
                     {
                        §§goto(addr251);
                     }
                     §§goto(addr251);
                  }
                  return;
               }
               §§pop();
               §§push(1 - this.t0);
               if(!(_loc3_ && this))
               {
                  §§goto(addr71);
                  §§push(§§pop() > Number.MIN_VALUE);
               }
               §§goto(addr103);
            }
            §§push(§§pop() - §§pop());
            if(!_loc4_)
            {
            }
            §§goto(addr103);
         }
         §§goto(addr95);
      }
      
      public function GetXForm(xf:b2XForm, t:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc7_)
         {
         }
         var alpha:* = NaN;
         var angle:Number = NaN;
         if(_loc6_)
         {
            if(!(_loc7_ && xf))
            {
               if(!_loc7_)
               {
                  §§push(1);
                  if(!_loc7_)
                  {
                     §§push(this.t0);
                     if(_loc6_)
                     {
                        §§push(§§pop() - §§pop());
                        if(_loc6_)
                        {
                           if(§§pop() > Number.MIN_VALUE)
                           {
                              if(!_loc6_)
                              {
                              }
                              addr273:
                              §§push(xf.R);
                              addr291:
                              if(!_loc7_)
                              {
                                 addr280:
                                 §§pop().Set(this.a);
                                 addr289:
                                 if(_loc6_ || t)
                                 {
                                    addr288:
                                 }
                                 §§push(xf.R);
                              }
                              var tMat:b2Mat22 = §§pop();
                              if(!(_loc7_ && this))
                              {
                                 if(_loc6_ || tMat)
                                 {
                                    §§push(xf.position);
                                    if(_loc6_ || xf)
                                    {
                                       §§push(xf.position);
                                       if(_loc6_)
                                       {
                                          §§push(§§pop().x);
                                          if(!_loc7_)
                                          {
                                             §§push(tMat.col1);
                                             if(!_loc7_)
                                             {
                                                §§push(§§pop().x);
                                                if(!(_loc7_ && xf))
                                                {
                                                   §§push(this.localCenter);
                                                   if(_loc6_)
                                                   {
                                                      §§push(§§pop().x);
                                                      if(_loc6_ || tMat)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc6_ || this)
                                                         {
                                                         }
                                                         addr435:
                                                         §§push(tMat.col2.y);
                                                         addr445:
                                                         if(_loc6_)
                                                         {
                                                            addr440:
                                                            §§push(§§pop() * this.localCenter.y);
                                                         }
                                                         addr453:
                                                         §§pop().y = §§pop() - (§§pop() + §§pop());
                                                         if(_loc6_ || xf)
                                                         {
                                                            addr461:
                                                         }
                                                         return;
                                                      }
                                                      addr388:
                                                      §§push(§§pop() + §§pop());
                                                      addr422:
                                                      if(!(_loc7_ && this))
                                                      {
                                                         §§push(§§pop() - §§pop());
                                                         if(_loc7_)
                                                         {
                                                         }
                                                         §§goto(addr453);
                                                      }
                                                      §§push(this.localCenter);
                                                   }
                                                   §§push(§§pop().x);
                                                   if(_loc6_ || xf)
                                                   {
                                                      addr432:
                                                      §§push(§§pop() * §§pop());
                                                      if(!_loc7_)
                                                      {
                                                         §§goto(addr435);
                                                      }
                                                      §§goto(addr445);
                                                   }
                                                   §§goto(addr440);
                                                }
                                                §§push(tMat.col2);
                                                if(_loc6_ || t)
                                                {
                                                   §§push(§§pop().x);
                                                   if(_loc6_)
                                                   {
                                                      §§push(this.localCenter);
                                                      if(!(_loc7_ && tMat))
                                                      {
                                                         §§push(§§pop().y);
                                                         if(!(_loc7_ && t))
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(!_loc7_)
                                                            {
                                                               §§goto(addr388);
                                                            }
                                                            §§goto(addr432);
                                                         }
                                                         §§goto(addr440);
                                                      }
                                                      §§goto(addr440);
                                                   }
                                                   §§goto(addr440);
                                                }
                                                §§goto(addr435);
                                             }
                                             addr419:
                                             §§push(§§pop().y);
                                             if(!_loc7_)
                                             {
                                                §§goto(addr422);
                                             }
                                             §§goto(addr435);
                                          }
                                          §§pop().x = §§pop();
                                          if(_loc7_ && tMat)
                                          {
                                          }
                                          §§goto(addr461);
                                       }
                                       addr414:
                                       §§push(§§pop().y);
                                       if(_loc6_)
                                       {
                                          §§goto(addr419);
                                          §§push(tMat.col1);
                                       }
                                       §§goto(addr445);
                                    }
                                    addr412:
                                    §§goto(addr414);
                                    §§push(xf.position);
                                 }
                                 if(!_loc6_)
                                 {
                                 }
                                 §§goto(addr453);
                              }
                              §§goto(addr412);
                              §§push(xf.position);
                           }
                           else
                           {
                              §§push(xf.position);
                           }
                           addr270:
                           §§pop().SetV(this.c);
                           §§goto(addr273);
                        }
                        addr241:
                        angle = §§pop();
                        if(!(_loc7_ && t))
                        {
                           §§push(xf.R);
                           if(_loc6_ || t)
                           {
                              §§push(angle);
                              if(!_loc7_)
                              {
                                 §§pop().Set(§§pop());
                                 if(_loc7_)
                                 {
                                    §§goto(addr273);
                                 }
                              }
                              §§goto(addr280);
                           }
                           §§goto(addr291);
                        }
                        §§goto(addr289);
                     }
                     addr216:
                     §§push(§§pop() - §§pop());
                     §§push(this.a0);
                     if(!(_loc7_ && this))
                     {
                        addr233:
                        §§push(§§pop() * §§pop());
                        §§push(alpha);
                        if(!_loc7_)
                        {
                           addr237:
                           §§push(§§pop() * this.a);
                        }
                     }
                     §§goto(addr241);
                     §§push(§§pop() + §§pop());
                  }
                  addr215:
                  §§goto(addr216);
                  §§push(alpha);
               }
               if(!_loc7_)
               {
                  §§push(t);
                  if(_loc6_)
                  {
                     §§push(this.t0);
                     if(!_loc7_)
                     {
                        §§push(§§pop() - §§pop());
                        if(_loc7_)
                        {
                        }
                        §§goto(addr241);
                     }
                     §§goto(addr233);
                  }
                  §§push(1 - this.t0);
                  if(_loc6_ || xf)
                  {
                     §§push(Number(§§pop() / §§pop()));
                     if(!(_loc7_ && tMat))
                     {
                        alpha = §§pop();
                        if(!_loc7_)
                        {
                           if(_loc7_)
                           {
                           }
                           addr213:
                           §§goto(addr215);
                           §§push(1);
                        }
                        addr164:
                        if(!(_loc7_ && tMat))
                        {
                           §§push(xf.position);
                           if(!(_loc7_ && tMat))
                           {
                              addr183:
                              §§push(1 - alpha);
                              if(!(_loc7_ && t))
                              {
                                 addr191:
                                 §§push(this.c0.y);
                                 if(_loc6_)
                                 {
                                    addr196:
                                    §§push(§§pop() * §§pop());
                                    addr212:
                                    if(_loc7_ && xf)
                                    {
                                    }
                                    addr212:
                                    §§pop().y = §§pop();
                                    §§goto(addr213);
                                 }
                                 addr211:
                                 §§goto(addr212);
                                 §§push(§§pop() + §§pop());
                              }
                              addr204:
                              §§push(alpha);
                              if(_loc6_)
                              {
                                 addr210:
                                 §§push(§§pop() * this.c.y);
                              }
                              §§goto(addr211);
                           }
                           else
                           {
                              §§goto(addr270);
                           }
                           §§goto(addr273);
                        }
                        §§goto(addr273);
                     }
                     §§goto(addr241);
                  }
                  §§goto(addr237);
               }
               §§goto(addr288);
            }
         }
         §§push(xf.position);
         if(_loc6_)
         {
            §§push(1);
            if(_loc6_ || t)
            {
               §§push(alpha);
               if(_loc6_)
               {
                  §§push(§§pop() - §§pop());
                  if(!_loc7_)
                  {
                     §§push(this.c0);
                     if(!_loc7_)
                     {
                        §§push(§§pop().x);
                        if(_loc6_ || tMat)
                        {
                           §§push(§§pop() * §§pop());
                           if(!_loc7_)
                           {
                              §§push(alpha);
                              if(!(_loc7_ && xf))
                              {
                                 §§push(this.c);
                                 if(!_loc7_)
                                 {
                                    §§push(§§pop().x);
                                    if(_loc6_ || t)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(!_loc6_)
                                       {
                                       }
                                       §§goto(addr196);
                                    }
                                    §§goto(addr210);
                                 }
                                 §§goto(addr210);
                              }
                              §§goto(addr210);
                           }
                           §§goto(addr191);
                        }
                        §§push(§§pop() + §§pop());
                        if(_loc6_ || this)
                        {
                           §§pop().x = §§pop();
                           if(_loc6_ || t)
                           {
                              §§goto(addr164);
                           }
                           §§goto(addr273);
                        }
                        §§goto(addr204);
                     }
                     §§goto(addr191);
                  }
                  §§goto(addr212);
               }
               §§goto(addr183);
            }
            §§goto(addr183);
         }
         §§goto(addr270);
      }
   }
}
