package Box2D.Collision
{
   import Box2D.Common.Math.b2Vec2;
   
   public class b2ManifoldPoint
   {
       
      
      public var separation:Number;
      
      public var localPoint2:b2Vec2;
      
      public var normalImpulse:Number;
      
      public var tangentImpulse:Number;
      
      public var localPoint1:b2Vec2;
      
      public var id:b2ContactID;
      
      public function b2ManifoldPoint()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
         }
         this.localPoint1 = new b2Vec2();
         if(_loc1_ || _loc2_)
         {
            this.localPoint2 = new b2Vec2();
         }
         this.id = new b2ContactID();
         super();
      }
      
      public function Set(m:b2ManifoldPoint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_)
         {
         }
         this.localPoint1.SetV(m.localPoint1);
         if(_loc2_)
         {
            this.localPoint2.SetV(m.localPoint2);
            this.separation = m.separation;
         }
         this.normalImpulse = m.normalImpulse;
         this.tangentImpulse = m.tangentImpulse;
         if(!(_loc3_ && m))
         {
            if(_loc2_ || _loc2_)
            {
               this.id.key = m.id.key;
            }
         }
      }
      
      public function Reset() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && _loc2_)
         {
         }
         this.localPoint1.SetZero();
         this.localPoint2.SetZero();
         if(!_loc1_)
         {
         }
         this.separation = 0;
         this.normalImpulse = 0;
         this.tangentImpulse = 0;
         this.id.key = 0;
      }
   }
}
