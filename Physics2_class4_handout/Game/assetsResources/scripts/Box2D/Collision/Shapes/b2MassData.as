package Box2D.Collision.Shapes
{
   import Box2D.Common.Math.b2Math;
   import Box2D.Common.Math.b2Vec2;
   
   public class b2MassData
   {
       
      
      public var mass:Number = 0.0;
      
      public var center:b2Vec2;
      
      public var I:Number = 0.0;
      
      public function b2MassData()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         if(_loc1_)
         {
            if(_loc1_ || this)
            {
            }
            addr59:
            return;
         }
         this.center = new b2Vec2(0,0);
         if(_loc1_)
         {
            super();
            if(_loc2_ && _loc2_)
            {
            }
            §§goto(addr59);
         }
         §§goto(addr59);
      }
      
      public static function Add(... masses) : b2MassData
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!_loc7_)
         {
         }
         var massData:b2MassData = null;
         var r:b2Vec2 = null;
         if(_loc7_)
         {
            if(!_loc8_)
            {
               if(!(_loc8_ && finalMass))
               {
                  if(_loc8_ && b2MassData)
                  {
                  }
               }
            }
            addr45:
            var finalMass:b2MassData = new b2MassData();
            if(_loc8_ && masses)
            {
            }
            loop0:
            while(true)
            {
               §§push(§§hasnext(masses,_loc5_));
               if(_loc7_)
               {
                  if(!§§pop())
                  {
                     if(!(_loc8_ && finalMass))
                     {
                        if(_loc7_)
                        {
                           if(!(_loc8_ && b2MassData))
                           {
                              if(!(_loc8_ && masses))
                              {
                                 if(Math.abs(finalMass.mass) > Number.MIN_VALUE)
                                 {
                                    if(!(_loc8_ && masses))
                                    {
                                       §§push(0);
                                       if(_loc7_ || finalMass)
                                       {
                                          if(!(_loc8_ && finalMass))
                                          {
                                             §§push(masses);
                                             if(_loc7_)
                                             {
                                                while(true)
                                                {
                                                   §§push(§§hasnext(§§pop(),_loc5_));
                                                   if(_loc7_ || massData)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         if(_loc7_)
                                                         {
                                                            if(!(_loc8_ && b2MassData))
                                                            {
                                                               if(!_loc7_)
                                                               {
                                                               }
                                                               addr450:
                                                            }
                                                         }
                                                      }
                                                      else
                                                      {
                                                         massData = §§nextvalue(_loc5_,_loc6_);
                                                         if(!_loc8_)
                                                         {
                                                            if(!_loc8_)
                                                            {
                                                               §§push(finalMass.center);
                                                               if(_loc7_ || finalMass)
                                                               {
                                                                  §§push(finalMass.center);
                                                                  if(_loc7_ || b2MassData)
                                                                  {
                                                                     §§push(§§pop().x);
                                                                     if(_loc7_)
                                                                     {
                                                                        §§push(massData.mass);
                                                                        if(!_loc8_)
                                                                        {
                                                                           §§push(massData.center);
                                                                           if(_loc7_)
                                                                           {
                                                                              §§push(§§pop().x);
                                                                              if(_loc7_)
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(_loc7_ || b2MassData)
                                                                                 {
                                                                                 }
                                                                                 addr241:
                                                                                 §§push(massData.center);
                                                                              }
                                                                              addr244:
                                                                              §§push(§§pop() + §§pop() * §§pop());
                                                                           }
                                                                           §§goto(addr244);
                                                                           §§push(§§pop().y);
                                                                        }
                                                                        §§push(§§pop() + §§pop());
                                                                        if(_loc7_ || b2MassData)
                                                                        {
                                                                           §§pop().x = §§pop();
                                                                           if(!(_loc8_ && massData))
                                                                           {
                                                                              if(_loc8_)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                           }
                                                                        }
                                                                        addr237:
                                                                        §§push(massData.mass);
                                                                        if(_loc7_)
                                                                        {
                                                                           §§goto(addr241);
                                                                        }
                                                                        §§goto(addr244);
                                                                     }
                                                                     addr246:
                                                                     §§pop().y = §§pop();
                                                                     if(!(_loc7_ || massData))
                                                                     {
                                                                        continue;
                                                                     }
                                                                  }
                                                                  addr234:
                                                                  §§push(§§pop().y);
                                                                  if(!_loc8_)
                                                                  {
                                                                     §§goto(addr237);
                                                                  }
                                                                  §§goto(addr246);
                                                               }
                                                               addr232:
                                                               §§goto(addr234);
                                                               §§push(finalMass.center);
                                                            }
                                                            §§goto(addr232);
                                                            §§push(finalMass.center);
                                                         }
                                                         continue;
                                                      }
                                                   }
                                                   break loop0;
                                                }
                                             }
                                             addr346:
                                             addr432:
                                             while(true)
                                             {
                                                break loop0;
                                             }
                                          }
                                       }
                                       addr342:
                                       addr435:
                                       if(!_loc7_)
                                       {
                                       }
                                       if(_loc7_ || massData)
                                       {
                                          §§goto(addr450);
                                       }
                                    }
                                    addr319:
                                    addr341:
                                    if(_loc8_)
                                    {
                                    }
                                    §§goto(addr342);
                                    §§push(0);
                                 }
                                 addr451:
                                 return finalMass;
                              }
                              §§push(finalMass.center);
                              if(!_loc8_)
                              {
                                 §§push(finalMass.center);
                                 if(_loc7_ || massData)
                                 {
                                    §§push(§§pop().x);
                                    if(_loc7_ || finalMass)
                                    {
                                       §§push(finalMass.mass);
                                       if(_loc7_ || finalMass)
                                       {
                                          §§push(§§pop() / §§pop());
                                          if(_loc7_ || b2MassData)
                                          {
                                             §§pop().x = §§pop();
                                             if(!_loc8_)
                                             {
                                                §§goto(addr319);
                                             }
                                             §§goto(addr450);
                                          }
                                          addr329:
                                          §§push(finalMass.mass);
                                       }
                                       §§push(§§pop() / §§pop());
                                    }
                                    addr332:
                                    §§pop().y = §§pop();
                                    if(!(_loc8_ && massData))
                                    {
                                       §§goto(addr341);
                                    }
                                    §§goto(addr451);
                                 }
                                 addr326:
                                 §§push(§§pop().y);
                                 if(_loc7_)
                                 {
                                    §§goto(addr329);
                                 }
                                 §§goto(addr332);
                              }
                              addr324:
                              §§goto(addr326);
                              §§push(finalMass.center);
                           }
                           §§goto(addr324);
                           §§push(finalMass.center);
                        }
                        §§goto(addr346);
                        §§push(masses);
                     }
                     addr434:
                     §§goto(addr435);
                  }
                  else
                  {
                     massData = §§nextvalue(_loc5_,_loc6_);
                     if(_loc7_)
                     {
                        if(!_loc8_)
                        {
                           §§push(finalMass);
                           §§push(finalMass.mass);
                           if(_loc7_)
                           {
                              §§push(§§pop() + massData.mass);
                           }
                           §§pop().mass = §§pop();
                           if(!_loc7_)
                           {
                              continue;
                           }
                        }
                     }
                     continue;
                  }
               }
               break;
            }
            while(§§pop())
            {
               massData = §§nextvalue(_loc5_,_loc6_);
               if(!(_loc8_ && massData))
               {
                  if(_loc7_ || masses)
                  {
                     if(!_loc8_)
                     {
                        §§push(finalMass);
                        §§push(finalMass.I);
                        if(_loc7_ || finalMass)
                        {
                           §§push(§§pop() + massData.I);
                        }
                        §§pop().I = §§pop();
                        if(_loc8_)
                        {
                        }
                     }
                     addr390:
                     r = b2Math.SubtractVV(massData.center,finalMass.center);
                     if(_loc7_ || b2MassData)
                     {
                        if(!_loc7_)
                        {
                        }
                        addr431:
                        §§goto(addr432);
                     }
                     §§push(finalMass);
                     §§push(finalMass.I);
                     if(!(_loc8_ && masses))
                     {
                        §§push(massData.mass);
                        if(_loc7_)
                        {
                           §§push(§§pop() * b2Math.b2Dot(r,r));
                        }
                        §§push(§§pop() + §§pop());
                     }
                     §§pop().I = §§pop();
                     if(_loc7_)
                     {
                        §§goto(addr431);
                     }
                     §§goto(addr432);
                  }
               }
               §§goto(addr390);
            }
            §§goto(addr434);
         }
         §§goto(addr45);
      }
      
      public function Set(massData:b2MassData) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
         }
         if(!(_loc2_ && massData))
         {
            this.mass = massData.mass;
            §§push(this.center);
            if(_loc3_)
            {
               §§push(massData.center);
               if(_loc3_)
               {
                  §§push(§§pop().x);
                  if(_loc3_)
                  {
                     §§pop().x = §§pop();
                     if(!_loc3_)
                     {
                     }
                     addr65:
                     this.I = massData.I;
                     if(_loc3_ || massData)
                     {
                     }
                     return;
                  }
                  addr64:
                  §§pop().y = §§pop();
                  §§goto(addr65);
               }
               addr63:
               §§goto(addr64);
               §§push(§§pop().y);
            }
            addr61:
            §§goto(addr63);
            §§push(massData.center);
         }
         §§goto(addr61);
      }
   }
}
