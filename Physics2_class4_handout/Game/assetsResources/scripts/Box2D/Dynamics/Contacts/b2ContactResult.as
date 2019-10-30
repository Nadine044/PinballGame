package Box2D.Dynamics.Contacts
{
   import Box2D.Collision.Shapes.b2Shape;
   import Box2D.Collision.b2ContactID;
   import Box2D.Common.Math.b2Vec2;
   
   public class b2ContactResult
   {
       
      
      public var position:b2Vec2;
      
      public var shape1:b2Shape;
      
      public var shape2:b2Shape;
      
      public var normalImpulse:Number;
      
      public var normal:b2Vec2;
      
      public var tangentImpulse:Number;
      
      public var id:b2ContactID;
      
      public function b2ContactResult()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(!_loc1_)
         {
            if(_loc2_ || _loc2_)
            {
               this.position = new b2Vec2();
               if(!_loc2_)
               {
               }
               addr49:
               this.id = new b2ContactID();
               if(_loc2_ || this)
               {
                  super();
                  addr69:
               }
               return;
            }
            addr48:
            §§goto(addr49);
         }
         this.normal = new b2Vec2();
         if(!_loc1_)
         {
            §§goto(addr48);
         }
         §§goto(addr69);
      }
   }
}
