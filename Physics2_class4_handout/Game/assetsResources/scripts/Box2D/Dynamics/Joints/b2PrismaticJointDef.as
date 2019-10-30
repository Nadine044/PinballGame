package Box2D.Dynamics.Joints
{
   import Box2D.Common.Math.b2Vec2;
   import Box2D.Dynamics.b2Body;
   
   public class b2PrismaticJointDef extends b2JointDef
   {
       
      
      public var motorSpeed:Number;
      
      public var localAxis1:b2Vec2;
      
      public var referenceAngle:Number;
      
      public var upperTranslation:Number;
      
      public var localAnchor1:b2Vec2;
      
      public var localAnchor2:b2Vec2;
      
      public var enableLimit:Boolean;
      
      public var enableMotor:Boolean;
      
      public var maxMotorForce:Number;
      
      public var lowerTranslation:Number;
      
      public function b2PrismaticJointDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         if(!(_loc2_ && _loc1_))
         {
            this.localAnchor1 = new b2Vec2();
            this.localAnchor2 = new b2Vec2();
            this.localAxis1 = new b2Vec2();
            super();
            type = b2Joint.e_prismaticJoint;
         }
         this.localAxis1.Set(1,0);
         if(!(_loc2_ && this))
         {
            this.referenceAngle = 0;
            if(_loc1_)
            {
               this.enableLimit = false;
               if(_loc1_ || this)
               {
                  this.lowerTranslation = 0;
                  if(_loc1_ || _loc1_)
                  {
                     if(_loc1_ || _loc2_)
                     {
                        this.upperTranslation = 0;
                        if(_loc2_ && this)
                        {
                        }
                     }
                     addr118:
                     this.maxMotorForce = 0;
                  }
                  this.enableMotor = false;
               }
               §§goto(addr118);
            }
            this.motorSpeed = 0;
            if(!_loc1_)
            {
            }
            addr135:
            return;
         }
         §§goto(addr135);
      }
      
      public function Initialize(b1:b2Body, b2:b2Body, anchor:b2Vec2, axis:b2Vec2) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc6_)
         {
         }
         if(!(_loc6_ && b2))
         {
            if(!(_loc6_ && anchor))
            {
               if(!(_loc6_ && b2))
               {
                  body1 = b1;
                  body2 = b2;
                  if(!_loc6_)
                  {
                     this.localAnchor1 = body1.GetLocalPoint(anchor);
                     this.localAnchor2 = body2.GetLocalPoint(anchor);
                     if(!(_loc6_ && anchor))
                     {
                        if(_loc6_ && b1)
                        {
                        }
                     }
                  }
                  this.localAxis1 = body1.GetLocalVector(axis);
                  if(!_loc5_)
                  {
                  }
                  addr113:
                  return;
               }
               addr96:
               this.referenceAngle = body2.GetAngle() - body1.GetAngle();
               if(!_loc5_)
               {
               }
               §§goto(addr113);
            }
            addr112:
            §§goto(addr113);
         }
         if(!_loc6_)
         {
            §§goto(addr96);
         }
         §§goto(addr112);
      }
   }
}
