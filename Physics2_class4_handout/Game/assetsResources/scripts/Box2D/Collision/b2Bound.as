package Box2D.Collision
{
   public class b2Bound
   {
       
      
      public var value:uint;
      
      public var proxyId:uint;
      
      public var stabbingCount:uint;
      
      public function b2Bound()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && _loc2_)
         {
         }
         if(!_loc2_)
         {
            super();
            if(_loc2_ && this)
            {
            }
         }
      }
      
      public function Swap(b:b2Bound) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc5_)
         {
         }
         if(!_loc5_)
         {
            if(!_loc5_)
            {
               if(!_loc5_)
               {
                  if(_loc6_ || tempValue)
                  {
                  }
                  addr42:
               }
               addr43:
               §§push(this.value);
               if(_loc6_ || b)
               {
                  §§push(uint(§§pop()));
               }
               var tempValue:* = §§pop();
               if(_loc5_)
               {
               }
               §§push(this.proxyId);
               if(!_loc5_)
               {
                  §§push(uint(§§pop()));
               }
               var tempProxyId:* = §§pop();
               if(_loc5_)
               {
               }
               §§push(this.stabbingCount);
               if(_loc6_)
               {
                  §§push(uint(§§pop()));
               }
               var tempStabbingCount:* = §§pop();
               this.value = b.value;
               if(_loc6_)
               {
                  this.proxyId = b.proxyId;
                  if(!_loc5_)
                  {
                     if(!(_loc5_ && this))
                     {
                        this.stabbingCount = b.stabbingCount;
                     }
                     addr140:
                     return;
                  }
                  addr123:
                  b.stabbingCount = tempStabbingCount;
                  if(!(_loc5_ && tempProxyId))
                  {
                     §§goto(addr140);
                  }
                  §§goto(addr140);
               }
               b.value = tempValue;
               if(!_loc5_)
               {
                  if(_loc6_ || this)
                  {
                     b.proxyId = tempProxyId;
                  }
               }
               §§goto(addr123);
            }
         }
         if(_loc6_ || this)
         {
            §§goto(addr42);
         }
         §§goto(addr43);
      }
      
      public function IsLower() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && _loc1_)
         {
         }
         return (this.value & 1) == 0;
      }
      
      public function IsUpper() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && _loc1_)
         {
         }
         return (this.value & 1) == 1;
      }
   }
}
