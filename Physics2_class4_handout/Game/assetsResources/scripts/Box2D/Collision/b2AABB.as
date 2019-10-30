package Box2D.Collision
{
   import Box2D.Common.Math.b2Vec2;
   
   public class b2AABB
   {
       
      
      public var upperBound:b2Vec2;
      
      public var lowerBound:b2Vec2;
      
      public function b2AABB()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
         if(!(_loc2_ && _loc2_))
         {
            this.lowerBound = new b2Vec2();
            this.upperBound = new b2Vec2();
            super();
            if(!_loc1_)
            {
            }
            addr53:
            return;
         }
         §§goto(addr53);
      }
      
      public function IsValid() : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc5_)
         {
         }
         if(!_loc4_)
         {
            if(!(_loc4_ && dX))
            {
               if(_loc4_)
               {
               }
               addr40:
               §§push(this.upperBound.x);
               if(_loc5_ || valid)
               {
                  §§push(§§pop() - this.lowerBound.x);
                  if(!(_loc4_ && valid))
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var dX:* = §§pop();
               if(_loc5_ || this)
               {
               }
               §§push(this.upperBound.y);
               if(!_loc4_)
               {
                  §§push(§§pop() - this.lowerBound.y);
                  if(_loc4_)
                  {
                  }
                  addr83:
                  var dY:* = §§pop();
                  if(_loc5_)
                  {
                     if(!_loc4_)
                     {
                        §§push(dX);
                        if(!_loc4_)
                        {
                           §§push(0);
                           if(_loc5_)
                           {
                              §§push(§§pop() >= §§pop());
                              if(!_loc4_)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc4_ && this)
                                    {
                                    }
                                    addr126:
                                    var valid:* = §§pop();
                                    if(!(_loc4_ && this))
                                    {
                                       if(_loc5_ || valid)
                                       {
                                          §§push(Boolean(valid));
                                          §§push(Boolean(valid));
                                          if(!_loc4_)
                                          {
                                             if(§§pop())
                                             {
                                                §§pop();
                                                if(!(_loc4_ && dX))
                                                {
                                                   §§push(Boolean(this.lowerBound.IsValid()));
                                                }
                                                addr167:
                                                valid = Boolean(Boolean(this.upperBound.IsValid()));
                                                if(_loc5_ || dY)
                                                {
                                                   addr187:
                                                }
                                             }
                                             §§push(§§pop());
                                          }
                                          if(§§pop())
                                          {
                                             if(_loc5_)
                                             {
                                                §§pop();
                                                if(!_loc4_)
                                                {
                                                   §§goto(addr167);
                                                }
                                                §§goto(addr187);
                                             }
                                             §§goto(addr167);
                                          }
                                          §§goto(addr167);
                                       }
                                    }
                                    return valid;
                                 }
                                 addr125:
                                 §§goto(addr126);
                                 §§push(Boolean(§§pop()));
                              }
                              §§pop();
                           }
                           addr117:
                           §§push(§§pop() >= §§pop());
                           if(_loc5_ || this)
                           {
                              §§goto(addr125);
                           }
                           §§goto(addr126);
                        }
                        addr116:
                        §§goto(addr117);
                        §§push(0);
                     }
                  }
                  §§goto(addr116);
                  §§push(dY);
               }
               §§goto(addr83);
               §§push(Number(§§pop()));
            }
         }
         if(_loc4_ && dY)
         {
         }
         §§goto(addr40);
      }
   }
}
