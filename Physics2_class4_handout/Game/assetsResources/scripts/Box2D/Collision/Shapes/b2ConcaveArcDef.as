package Box2D.Collision.Shapes
{
   public class b2ConcaveArcDef extends b2PolygonDef
   {
       
      
      public var radius:Number;
      
      public function b2ConcaveArcDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
         }
         if(!_loc1_)
         {
            super();
            if(_loc2_ || _loc2_)
            {
            }
            type = b2Shape.e_concaveArcShape;
         }
         this.radius = 1;
      }
   }
}
