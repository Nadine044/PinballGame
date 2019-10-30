package Box2D.Collision
{
   import Box2D.Common.Math.b2Vec2;
   
   public class b2Segment
   {
       
      
      public var p1:b2Vec2;
      
      public var p2:b2Vec2;
      
      public function b2Segment()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && this)
         {
         }
         if(_loc2_)
         {
            if(_loc2_ || this)
            {
               this.p1 = new b2Vec2();
            }
            addr59:
            return;
         }
         this.p2 = new b2Vec2();
         super();
         §§goto(addr59);
      }
      
      public function TestSegment(lambda:Array, normal:b2Vec2, segment:b2Segment, maxLambda:Number) : Boolean
      {
         var _loc19_:Boolean = false;
         var _loc20_:Boolean = true;
         if(!_loc20_)
         {
         }
         var bX:Number = NaN;
         var bY:Number = NaN;
         var a:* = NaN;
         var mu2:* = NaN;
         var nLen:* = NaN;
         if(!_loc19_)
         {
            if(_loc20_)
            {
               if(!_loc20_)
               {
               }
               addr45:
               var s:b2Vec2 = segment.p1;
               if(_loc19_ && segment)
               {
               }
               §§push(segment.p2.x);
               if(!_loc19_)
               {
                  §§push(§§pop() - s.x);
                  if(!(_loc19_ && segment))
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var rX:* = §§pop();
               if(_loc19_ && segment)
               {
               }
               §§push(segment.p2.y);
               if(_loc20_)
               {
                  §§push(§§pop() - s.y);
                  if(!(_loc19_ && lambda))
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var rY:* = §§pop();
               if(_loc19_)
               {
               }
               §§push(this.p2.x);
               if(!(_loc19_ && this))
               {
                  §§push(§§pop() - this.p1.x);
                  if(_loc20_ || lambda)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var dX:* = §§pop();
               if(_loc20_ || segment)
               {
               }
               §§push(this.p2.y);
               if(!_loc19_)
               {
                  §§push(§§pop() - this.p1.y);
                  if(!_loc19_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var dY:* = §§pop();
               if(_loc20_ || normal)
               {
               }
               §§push(dY);
               if(_loc20_)
               {
                  §§push(Number(§§pop()));
               }
               var nX:* = §§pop();
               if(!_loc20_)
               {
               }
               §§push(dX);
               if(!(_loc19_ && lambda))
               {
                  §§push(-§§pop());
                  if(!(_loc19_ && normal))
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var nY:* = §§pop();
               if(_loc19_)
               {
               }
               §§push(100 * Number.MIN_VALUE);
               if(!(_loc19_ && segment))
               {
                  §§push(Number(§§pop()));
               }
               var k_slop:* = §§pop();
               if(_loc19_ && lambda)
               {
               }
               §§push(rX);
               if(_loc20_ || this)
               {
                  §§push(nX);
                  if(!(_loc19_ && segment))
                  {
                     §§push(§§pop() * §§pop());
                     if(_loc20_)
                     {
                        §§push(rY);
                        if(!_loc19_)
                        {
                           §§push(§§pop() * nY);
                        }
                     }
                  }
                  §§push(§§pop() + §§pop());
                  if(!_loc20_)
                  {
                  }
                  addr239:
                  var denom:Number = §§pop();
                  if(_loc20_ || normal)
                  {
                     §§push(denom);
                     §§push(k_slop);
                     if(!(_loc19_ && this))
                     {
                        if(§§pop() > §§pop())
                        {
                           if(!(_loc19_ && normal))
                           {
                              §§push(s.x);
                              §§push(this.p1);
                              if(_loc20_ || lambda)
                              {
                                 §§push(§§pop().x);
                                 if(!_loc19_)
                                 {
                                    bX = §§pop() - §§pop();
                                    if(_loc19_)
                                    {
                                    }
                                    addr515:
                                    addr564:
                                    if(_loc20_ || normal)
                                    {
                                       addr523:
                                       §§push(nY);
                                       addr535:
                                       if(_loc20_)
                                       {
                                          addr526:
                                          §§push(§§pop() / nLen);
                                          addr536:
                                          if(_loc19_ && segment)
                                          {
                                          }
                                          addr536:
                                          nY = §§pop();
                                          if(_loc20_ || normal)
                                          {
                                             lambda[0] = a;
                                             if(!_loc19_)
                                             {
                                                normal.Set(nX,nY);
                                             }
                                          }
                                       }
                                       §§goto(addr536);
                                       §§push(Number(§§pop()));
                                    }
                                    addr565:
                                    return true;
                                 }
                                 addr466:
                                 if(§§pop() <= §§pop())
                                 {
                                    addr470:
                                    §§push(a);
                                    §§push(denom);
                                 }
                              }
                              addr308:
                              §§push(§§pop().y);
                              if(_loc20_)
                              {
                                 §§push(§§pop() - §§pop());
                                 if(_loc20_ || this)
                                 {
                                    bY = §§pop();
                                    §§push(bX * nX);
                                    §§push(bY);
                                    §§push(nY);
                                    if(_loc20_)
                                    {
                                       §§push(Number(§§pop() + §§pop() * §§pop()));
                                       if(_loc20_)
                                       {
                                          a = §§pop();
                                          if(_loc20_ || lambda)
                                          {
                                             §§push(0);
                                             if(!(_loc19_ && this))
                                             {
                                                §§push(§§pop() <= a);
                                                if(_loc20_)
                                                {
                                                   §§push(§§pop());
                                                   if(_loc20_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         §§pop();
                                                         §§push(a);
                                                         §§push(maxLambda);
                                                         §§push(denom);
                                                         if(!_loc19_)
                                                         {
                                                            §§push(§§pop() <= §§pop() * §§pop());
                                                            if(_loc19_ && lambda)
                                                            {
                                                            }
                                                            §§goto(addr565);
                                                         }
                                                         addr405:
                                                         §§push(§§pop() * §§pop());
                                                         if(!(_loc19_ && this))
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(!_loc20_)
                                                            {
                                                            }
                                                            §§goto(addr526);
                                                         }
                                                      }
                                                      if(§§pop())
                                                      {
                                                         if(!_loc20_)
                                                         {
                                                         }
                                                         addr420:
                                                         if(!_loc19_)
                                                         {
                                                            §§push(-k_slop);
                                                            if(_loc20_)
                                                            {
                                                               addr427:
                                                               §§push(denom);
                                                               if(!(_loc19_ && this))
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(!_loc19_)
                                                                  {
                                                                     §§push(mu2);
                                                                     if(_loc19_ && normal)
                                                                     {
                                                                     }
                                                                     §§goto(addr526);
                                                                  }
                                                                  §§goto(addr470);
                                                               }
                                                            }
                                                            addr473:
                                                            a = Number(§§pop());
                                                            if(_loc20_ || segment)
                                                            {
                                                               §§push(Number(Math.sqrt(nX * nX + nY * nY)));
                                                               if(!(_loc19_ && this))
                                                               {
                                                                  addr499:
                                                                  nLen = §§pop();
                                                                  §§push(nX);
                                                                  if(_loc20_ || this)
                                                                  {
                                                                     §§push(nLen);
                                                                     if(_loc20_)
                                                                     {
                                                                        §§push(§§pop() / §§pop());
                                                                     }
                                                                     §§goto(addr526);
                                                                  }
                                                               }
                                                               §§goto(addr536);
                                                            }
                                                            §§goto(addr523);
                                                         }
                                                         §§goto(addr536);
                                                      }
                                                   }
                                                   addr448:
                                                   if(§§pop())
                                                   {
                                                      §§pop();
                                                      §§push(mu2);
                                                      if(_loc19_ && segment)
                                                      {
                                                      }
                                                      §§goto(addr473);
                                                   }
                                                }
                                                §§goto(addr466);
                                             }
                                             addr459:
                                             §§push(denom);
                                             §§push(1 + k_slop);
                                          }
                                          §§goto(addr470);
                                       }
                                       nX = Number(§§pop());
                                       §§goto(addr515);
                                    }
                                    addr462:
                                    §§push(§§pop() * §§pop());
                                    if(!_loc19_)
                                    {
                                       §§goto(addr466);
                                    }
                                    §§goto(addr526);
                                 }
                                 §§push(Number(§§pop()));
                                 if(_loc20_)
                                 {
                                    mu2 = §§pop();
                                    §§goto(addr420);
                                 }
                                 §§goto(addr499);
                              }
                              §§goto(addr448);
                              §§push(§§pop() <= §§pop());
                              §§push(§§pop() <= §§pop());
                           }
                           §§push(rX);
                           if(_loc20_)
                           {
                              §§push(-§§pop());
                              if(_loc20_ || this)
                              {
                                 §§push(bY);
                                 if(_loc20_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(!(_loc19_ && lambda))
                                    {
                                       §§push(rY);
                                       §§push(bX);
                                       if(_loc20_)
                                       {
                                          §§goto(addr405);
                                       }
                                       §§goto(addr462);
                                    }
                                 }
                                 §§goto(addr459);
                              }
                              §§goto(addr427);
                           }
                           §§goto(addr535);
                        }
                        return false;
                     }
                     §§goto(addr473);
                     §§push(§§pop() / §§pop());
                  }
                  if(_loc20_ || this)
                  {
                     §§goto(addr308);
                     §§push(s.y);
                     §§push(this.p1);
                  }
                  §§goto(addr564);
               }
               §§push(-§§pop());
               if(!_loc19_)
               {
                  §§goto(addr239);
               }
               §§goto(addr239);
            }
         }
         if(_loc20_)
         {
            §§goto(addr45);
         }
         §§goto(addr45);
      }
   }
}
