package Box2D.Dynamics.Joints
{
   import Box2D.Common.Math.b2Vec2;
   
   public class b2MouseJointDef extends b2JointDef
   {
       
      
      public var timeStep:Number;
      
      public var target:b2Vec2;
      
      public var maxForce:Number;
      
      public var dampingRatio:Number;
      
      public var frequencyHz:Number;
      
      public function b2MouseJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
         }
         this.target = new b2Vec2();
         if(!(_loc1_ && _loc2_))
         {
            super();
            type = b2Joint.e_mouseJoint;
            this.maxForce = 0;
            if(_loc2_)
            {
               if(_loc2_ || _loc1_)
               {
                  this.frequencyHz = 5;
               }
            }
            addr91:
            return;
         }
         if(!(_loc1_ && _loc1_))
         {
            this.dampingRatio = 0.7;
            this.timeStep = 1 / 60;
            §§goto(addr91);
         }
         §§goto(addr91);
      }
   }
}
