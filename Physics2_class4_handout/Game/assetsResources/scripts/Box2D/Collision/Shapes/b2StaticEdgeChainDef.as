package Box2D.Collision.Shapes
{
   public class b2StaticEdgeChainDef extends b2ShapeDef
   {
       
      
      public var vertices:Array;
      
      public var vertexCount:int;
      
      public var isALoop:Boolean;
      
      public function b2StaticEdgeChainDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && _loc2_)
         {
         }
         if(!_loc2_)
         {
            this.vertices = new Array();
            super();
            if(!(_loc2_ && this))
            {
               type = b2Shape.e_staticEdgeShape;
               if(!_loc1_)
               {
               }
            }
            addr65:
            this.vertexCount = 0;
            addr83:
            if(_loc1_ || _loc2_)
            {
            }
            return;
         }
         this.isALoop = true;
         if(_loc1_ || _loc2_)
         {
            §§goto(addr65);
         }
         §§goto(addr83);
      }
   }
}
