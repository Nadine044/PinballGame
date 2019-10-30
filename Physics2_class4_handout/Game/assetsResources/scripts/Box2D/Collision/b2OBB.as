package Box2D.Collision
{
   import Box2D.Common.Math.b2Mat22;
   import Box2D.Common.Math.b2Vec2;
   
   public class b2OBB
   {
       
      
      public var R:b2Mat22;
      
      public var center:b2Vec2;
      
      public var extents:b2Vec2;
      
      public function b2OBB()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         this.R = new b2Mat22();
         this.center = new b2Vec2();
         if(!_loc1_)
         {
            this.extents = new b2Vec2();
            if(!_loc2_)
            {
            }
            addr52:
            return;
         }
         super();
         §§goto(addr52);
      }
   }
}
