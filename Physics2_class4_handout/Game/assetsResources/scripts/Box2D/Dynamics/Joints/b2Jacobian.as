package Box2D.Dynamics.Joints
{
   import Box2D.Common.Math.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var linear1:b2Vec2;
      
      public var linear2:b2Vec2;
      
      public var angular1:Number;
      
      public var angular2:Number;
      
      public function b2Jacobian()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && _loc1_)
         {
         }
         if(_loc1_ || this)
         {
            this.linear1 = new b2Vec2();
            this.linear2 = new b2Vec2();
            if(_loc1_)
            {
               super();
            }
         }
      }
      
      public function Set(x1:b2Vec2, a1:Number, x2:b2Vec2, a2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || x2)
         {
         }
         if(_loc6_)
         {
         }
         if(!(_loc6_ && this))
         {
            if(_loc6_ && this)
            {
            }
            addr67:
            this.linear2.SetV(x2);
            if(_loc5_ || x1)
            {
               addr85:
               this.angular2 = a2;
               if(_loc6_)
               {
               }
            }
            return;
         }
         this.linear1.SetV(x1);
         if(!(_loc6_ && a1))
         {
            this.angular1 = a1;
            if(!_loc5_)
            {
            }
            §§goto(addr85);
         }
         §§goto(addr67);
      }
      
      public function SetZero() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         this.linear1.SetZero();
         this.angular1 = 0;
         if(_loc1_)
         {
         }
         this.linear2.SetZero();
         this.angular2 = 0;
      }
      
      public function Compute(x1:b2Vec2, a1:Number, x2:b2Vec2, a2:Number) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc5_)
         {
         }
         if(!(_loc5_ && a1))
         {
            if(_loc6_ || x1)
            {
            }
            addr41:
            if(!(_loc5_ && x1))
            {
               addr49:
               if(!_loc6_)
               {
               }
            }
            §§push(this.linear1.x);
            if(!_loc5_)
            {
               §§push(§§pop() * x1.x);
               if(_loc6_ || this)
               {
                  §§push(this.linear1.y);
                  if(!_loc5_)
                  {
                     §§push(x1.y);
                     if(!(_loc5_ && x1))
                     {
                        §§push(§§pop() + §§pop() * §§pop());
                        if(_loc6_ || x1)
                        {
                        }
                        addr116:
                        §§push(this.linear2.x);
                        §§push(x2.x);
                        if(_loc6_ || x2)
                        {
                           addr129:
                           §§push(§§pop() * §§pop());
                           §§push(this.linear2.y);
                           if(_loc5_)
                           {
                           }
                        }
                        §§push(§§pop() * x2.y);
                        if(!_loc5_)
                        {
                           §§push(§§pop() + §§pop());
                           if(!(_loc5_ && this))
                           {
                              §§push(§§pop() + §§pop());
                              if(_loc6_ || x2)
                              {
                                 §§push(this.angular2);
                                 §§push(a2);
                              }
                           }
                           addr166:
                           §§push(§§pop() + §§pop());
                        }
                     }
                     addr165:
                     §§goto(addr166);
                     §§push(§§pop() * §§pop());
                  }
                  addr108:
                  §§push(§§pop() + §§pop());
                  if(!(_loc5_ && x2))
                  {
                     §§goto(addr116);
                  }
               }
               return §§pop();
            }
            §§push(this.angular1);
            if(!_loc5_)
            {
               §§push(a1);
               if(!_loc5_)
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc5_)
                  {
                     §§goto(addr108);
                  }
                  §§goto(addr129);
               }
               §§goto(addr165);
            }
            §§goto(addr116);
         }
         if(_loc6_ || x2)
         {
            §§goto(addr41);
         }
         §§goto(addr49);
      }
   }
}
