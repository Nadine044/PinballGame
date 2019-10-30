package Box2D.Collision.Shapes
{
   public class b2ShapeDef
   {
       
      
      public var friction:Number = 0.2;
      
      public var isSensor:Boolean = false;
      
      public var density:Number = 0.0;
      
      public var restitution:Number = 0.0;
      
      public var userData = null;
      
      public var filter:b2FilterData;
      
      public var type:int;
      
      public function b2ShapeDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && _loc1_)
         {
         }
         if(!_loc2_)
         {
            this.type = b2Shape.e_unknownShape;
            if(_loc1_ || _loc1_)
            {
               if(!(_loc2_ && _loc2_))
               {
                  this.filter = new b2FilterData();
                  if(_loc2_)
                  {
                  }
                  addr67:
               }
            }
            addr68:
            return;
         }
         super();
         if(_loc1_)
         {
            §§goto(addr67);
         }
         §§goto(addr68);
      }
   }
}
