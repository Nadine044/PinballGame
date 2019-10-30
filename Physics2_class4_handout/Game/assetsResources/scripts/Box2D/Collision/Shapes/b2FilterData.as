package Box2D.Collision.Shapes
{
   public class b2FilterData
   {
       
      
      public var maskBits:uint = 65535;
      
      public var groupIndex:int = 0;
      
      public var categoryBits:uint = 1;
      
      public function b2FilterData()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && _loc2_)
         {
         }
         if(!_loc2_)
         {
            super();
            if(_loc2_ && _loc1_)
            {
            }
         }
      }
      
      public function Copy() : b2FilterData
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_ && _loc3_)
         {
         }
         if(!(_loc2_ && copy))
         {
            if(_loc2_ && _loc3_)
            {
            }
            addr46:
            var copy:b2FilterData = new b2FilterData();
            copy.categoryBits = this.categoryBits;
            copy.maskBits = this.maskBits;
            if(!(_loc2_ && _loc3_))
            {
               copy.groupIndex = this.groupIndex;
               if(!_loc3_)
               {
               }
            }
            return copy;
         }
         §§goto(addr46);
      }
   }
}
