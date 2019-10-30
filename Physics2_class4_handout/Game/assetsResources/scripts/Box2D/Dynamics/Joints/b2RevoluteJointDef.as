package Box2D.Dynamics.Joints
{
   import Box2D.Common.Math.b2Vec2;
   import Box2D.Dynamics.b2Body;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var upperAngle:Number;
      
      public var enableMotor:Boolean;
      
      public var referenceAngle:Number;
      
      public var motorSpeed:Number;
      
      public var localAnchor1:b2Vec2;
      
      public var localAnchor2:b2Vec2;
      
      public var enableLimit:Boolean;
      
      public var lowerAngle:Number;
      
      public var maxMotorTorque:Number;
      
      public function b2RevoluteJointDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
         if(_loc1_)
         {
            if(_loc1_ || _loc1_)
            {
               this.localAnchor1 = new b2Vec2();
               if(_loc1_ || _loc1_)
               {
                  if(!_loc2_)
                  {
                     this.localAnchor2 = new b2Vec2();
                     if(_loc1_)
                     {
                        if(_loc1_ || this)
                        {
                        }
                        addr65:
                        this.localAnchor1.Set(0,0);
                        if(!(_loc2_ && this))
                        {
                           if(!(_loc2_ && this))
                           {
                              this.localAnchor2.Set(0,0);
                              this.referenceAngle = 0;
                              if(_loc1_ || _loc2_)
                              {
                              }
                           }
                        }
                        this.lowerAngle = 0;
                        addr152:
                        if(_loc1_ || this)
                        {
                        }
                        this.enableLimit = false;
                     }
                     addr168:
                     return;
                  }
                  super();
                  if(_loc2_)
                  {
                  }
               }
               type = b2Joint.e_revoluteJoint;
               §§goto(addr65);
            }
            addr162:
            this.enableMotor = false;
            if(!_loc2_)
            {
               §§goto(addr168);
            }
            §§goto(addr168);
         }
         this.upperAngle = 0;
         if(!_loc2_)
         {
            this.maxMotorTorque = 0;
            if(_loc1_ || _loc1_)
            {
            }
            §§goto(addr162);
         }
         if(_loc1_ || this)
         {
            this.motorSpeed = 0;
            if(!_loc2_)
            {
               if(_loc2_)
               {
               }
               §§goto(addr162);
            }
            §§goto(addr168);
         }
         §§goto(addr152);
      }
      
      public function Initialize(b1:b2Body, b2:b2Body, anchor:b2Vec2) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc4_ && b2)
         {
         }
         if(!_loc4_)
         {
            if(_loc4_ && this)
            {
            }
            body1 = b1;
            if(!_loc5_)
            {
            }
            addr90:
            return;
         }
         body2 = b2;
         if(_loc5_)
         {
            if(!_loc4_)
            {
               this.localAnchor1 = body1.GetLocalPoint(anchor);
            }
            addr83:
            this.referenceAngle = body2.GetAngle() - body1.GetAngle();
            §§goto(addr90);
         }
         if(!(_loc4_ && b2))
         {
            this.localAnchor2 = body2.GetLocalPoint(anchor);
         }
         §§goto(addr83);
      }
   }
}
