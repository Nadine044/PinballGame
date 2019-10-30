package Box2D.Dynamics.Joints
{
   import Box2D.Common.Math.b2Vec2;
   import Box2D.Dynamics.b2Body;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var localAnchor1:b2Vec2;
      
      public var length:Number;
      
      public var dampingRatio:Number;
      
      public var localAnchor2:b2Vec2;
      
      public var frequencyHz:Number;
      
      public function b2DistanceJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(_loc2_)
         {
            this.localAnchor1 = new b2Vec2();
            if(_loc2_ || _loc2_)
            {
            }
            addr90:
            return;
         }
         this.localAnchor2 = new b2Vec2();
         super();
         if(_loc2_)
         {
            type = b2Joint.e_distanceJoint;
            if(_loc2_)
            {
               this.length = 1;
               if(_loc2_ || _loc1_)
               {
               }
            }
            this.frequencyHz = 0;
            if(!(_loc1_ && this))
            {
               this.dampingRatio = 0;
            }
         }
         §§goto(addr90);
      }
      
      public function Initialize(b1:b2Body, b2:b2Body, anchor1:b2Vec2, anchor2:b2Vec2) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_ || b2)
         {
         }
         if(!(_loc7_ && this))
         {
            if(!_loc7_)
            {
               if(_loc8_)
               {
                  if(_loc7_)
                  {
                  }
               }
               if(!_loc8_)
               {
               }
               addr50:
               body2 = b2;
               this.localAnchor1.SetV(body1.GetLocalPoint(anchor1));
               if(_loc8_ || anchor1)
               {
                  addr69:
                  this.localAnchor2.SetV(body2.GetLocalPoint(anchor2));
               }
            }
            body1 = b1;
            if(_loc8_)
            {
               §§goto(addr50);
            }
            §§goto(addr69);
         }
         §§push(anchor2.x);
         if(_loc8_ || this)
         {
            §§push(§§pop() - anchor1.x);
            if(_loc8_ || b1)
            {
               §§push(Number(§§pop()));
            }
         }
         var dX:* = §§pop();
         if(_loc7_ && anchor1)
         {
         }
         §§push(anchor2.y);
         if(!_loc7_)
         {
            §§push(§§pop() - anchor1.y);
            if(_loc7_ && b1)
            {
            }
            addr127:
            var dY:* = §§pop();
            this.length = Math.sqrt(dX * dX + dY * dY);
            if(!_loc8_)
            {
            }
            this.frequencyHz = 0;
            if(_loc8_ || this)
            {
               this.dampingRatio = 0;
               if(_loc8_ || anchor1)
               {
               }
               addr172:
               return;
            }
            §§goto(addr172);
         }
         §§goto(addr127);
      }
   }
}
