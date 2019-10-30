package Box2D.Dynamics.Contacts
{
   import Box2D.Common.Math.b2Vec2;
   
   public class b2ContactConstraintPoint
   {
       
      
      public var r2:b2Vec2;
      
      public var separation:Number;
      
      public var positionImpulse:Number;
      
      public var normalImpulse:Number;
      
      public var tangentMass:Number;
      
      public var equalizedMass:Number;
      
      public var tangentImpulse:Number;
      
      public var localAnchor1:b2Vec2;
      
      public var localAnchor2:b2Vec2;
      
      public var normalMass:Number;
      
      public var velocityBias:Number;
      
      public var r1:b2Vec2;
      
      public function b2ContactConstraintPoint()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && this)
         {
         }
         this.localAnchor1 = new b2Vec2();
         this.localAnchor2 = new b2Vec2();
         if(_loc1_)
         {
            if(!_loc2_)
            {
               this.r1 = new b2Vec2();
               if(_loc2_ && _loc2_)
               {
               }
               addr71:
               return;
            }
            if(_loc1_)
            {
               this.r2 = new b2Vec2();
            }
         }
         super();
         §§goto(addr71);
      }
   }
}
