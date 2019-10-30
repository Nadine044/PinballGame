package Box2D.Collision
{
   import Box2D.Common.Math.b2Vec2;
   import Box2D.Common.Math.b2XForm;
   
   public class b2Point
   {
       
      
      public var p:b2Vec2;
      
      public function b2Point()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
         }
         if(_loc2_ || this)
         {
            if(!_loc1_)
            {
               this.p = new b2Vec2();
               if(!_loc2_)
               {
               }
            }
            super();
            if(!_loc2_)
            {
            }
         }
      }
      
      public function GetFirstVertex(xf:b2XForm) : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
         }
         if(_loc3_ || _loc2_)
         {
            if(_loc2_ && this)
            {
            }
         }
         return this.p;
      }
      
      public function Support(xf:b2XForm, vX:Number, vY:Number) : b2Vec2
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc4_)
         {
         }
         if(_loc5_ || vX)
         {
            if(_loc5_)
            {
               if(_loc4_ && vX)
               {
               }
            }
            if(_loc4_)
            {
            }
            addr54:
            return this.p;
         }
         §§goto(addr54);
      }
   }
}
