package Box2D.Dynamics
{
   import Box2D.Collision.Shapes.b2FilterData;
   import Box2D.Collision.Shapes.b2Shape;
   
   public class b2ContactFilter
   {
      
      public static var b2_defaultFilter:b2ContactFilter = new b2ContactFilter();
      
      {
         var b2_defaultFilter:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(b2_defaultFilter || _loc2_)
            {
            }
            addr34:
            return;
         }
         §§goto(addr34);
      }
      
      public function b2ContactFilter()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(_loc2_)
         {
            super();
            if(_loc1_)
            {
            }
         }
      }
      
      public function ShouldCollide(shape1:b2Shape, shape2:b2Shape) : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc7_ && filter1)
         {
         }
         if(_loc6_ || this)
         {
            if(_loc7_ && shape1)
            {
            }
         }
         if(!(_loc7_ && this))
         {
            if(_loc7_)
            {
            }
         }
         var filter1:b2FilterData = shape1.GetFilterData();
         if(_loc7_ && shape1)
         {
         }
         var filter2:b2FilterData = shape2.GetFilterData();
         §§push(filter1.groupIndex);
         if(!(_loc7_ && this))
         {
            §§push(filter2.groupIndex);
            if(_loc6_)
            {
               §§push(§§pop() == §§pop());
               §§push(§§pop() == §§pop());
               if(!_loc7_)
               {
                  if(§§pop())
                  {
                     §§pop();
                     §§push(filter1.groupIndex);
                     if(!(_loc7_ && shape1))
                     {
                        §§push(0);
                        if(_loc6_ || shape2)
                        {
                           §§push(§§pop() != §§pop());
                        }
                        addr184:
                        §§push(§§pop() == §§pop());
                        addr189:
                        if(_loc6_)
                        {
                           addr188:
                           §§push(Boolean(!§§pop()));
                        }
                        var collide:* = §§pop();
                        if(_loc6_ || this)
                        {
                        }
                        return collide;
                     }
                     addr183:
                     §§goto(addr184);
                     §§push(0);
                  }
                  if(§§pop())
                  {
                     §§push(filter1.groupIndex);
                     if(!(_loc7_ && shape2))
                     {
                        §§push(0);
                        if(!(_loc7_ && this))
                        {
                           return §§pop() > §§pop();
                        }
                     }
                     §§goto(addr183);
                  }
                  else
                  {
                     §§push(filter1.maskBits);
                     if(_loc6_ || filter1)
                     {
                        §§push(filter2.categoryBits);
                        if(!_loc7_)
                        {
                           §§push(§§pop() & §§pop());
                           if(_loc6_ || filter1)
                           {
                           }
                           §§goto(addr183);
                        }
                        addr182:
                        §§goto(addr183);
                        §§push(§§pop() & §§pop());
                     }
                  }
                  addr180:
                  §§goto(addr182);
                  §§push(filter2.maskBits);
               }
               addr174:
               if(§§pop())
               {
                  if(_loc6_)
                  {
                     §§pop();
                     §§goto(addr180);
                     §§push(filter1.categoryBits);
                  }
                  §§goto(addr189);
               }
               §§goto(addr188);
            }
            addr164:
            §§push(§§pop() != §§pop());
            if(_loc6_ || filter1)
            {
               §§goto(addr174);
               §§push(§§pop());
            }
            §§goto(addr188);
         }
         §§push(0);
         if(_loc6_ || shape1)
         {
            §§goto(addr164);
         }
         §§goto(addr184);
      }
   }
}
