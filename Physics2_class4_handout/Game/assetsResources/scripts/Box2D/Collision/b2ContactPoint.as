package Box2D.Collision
{
   import Box2D.Collision.Shapes.b2Shape;
   import Box2D.Common.Math.b2Vec2;
   
   public class b2ContactPoint
   {
       
      
      public var friction:Number;
      
      public var separation:Number;
      
      public var normal:b2Vec2;
      
      public var position:b2Vec2;
      
      public var restitution:Number;
      
      public var shape1:b2Shape;
      
      public var shape2:b2Shape;
      
      public var id:b2ContactID;
      
      public var velocity:b2Vec2;
      
      public function b2ContactPoint()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(!_loc1_)
         {
            this.position = new b2Vec2();
         }
         if(!_loc1_)
         {
            this.velocity = new b2Vec2();
         }
         this.normal = new b2Vec2();
         if(_loc2_ || _loc1_)
         {
            this.id = new b2ContactID();
            super();
         }
      }
   }
}
