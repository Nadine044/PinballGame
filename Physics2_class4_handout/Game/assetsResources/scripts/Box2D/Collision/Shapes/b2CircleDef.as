package Box2D.Collision.Shapes
{
   import Box2D.Common.Math.b2Vec2;
   
   public class b2CircleDef extends b2ShapeDef
   {
       
      
      public var radius:Number;
      
      public var localPosition:b2Vec2;
      
      public function b2CircleDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         this.localPosition = new b2Vec2(0,0);
         if(_loc1_ || _loc2_)
         {
            if(_loc1_)
            {
               super();
            }
            addr64:
            addr70:
            if(_loc1_)
            {
               this.radius = 1;
            }
            return;
         }
         if(!(_loc2_ && this))
         {
            type = b2Shape.e_circleShape;
            if(!_loc2_)
            {
               §§goto(addr64);
            }
         }
         §§goto(addr70);
      }
   }
}
