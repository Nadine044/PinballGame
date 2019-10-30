package Box2D.Dynamics.Joints
{
   import Box2D.Common.Math.b2Mat22;
   import Box2D.Common.Math.b2Math;
   import Box2D.Common.Math.b2Vec2;
   import Box2D.Common.b2Settings;
   import Box2D.Dynamics.b2Body;
   import Box2D.Dynamics.b2TimeStep;
   
   public class b2RevoluteJoint extends b2Joint
   {
      
      public static var tImpulse:b2Vec2;
      
      {
         var tImpulse:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(!(tImpulse && _loc2_))
            {
               tImpulse = new b2Vec2();
            }
         }
      }
      
      public var m_limitForce:Number;
      
      public var m_pivotMass:b2Mat22;
      
      public var m_motorForce:Number;
      
      public var m_enableLimit:Boolean;
      
      public var m_limitState:int;
      
      public var m_motorMass:Number;
      
      public var m_localAnchor1:b2Vec2;
      
      public var m_localAnchor2:b2Vec2;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var K3:b2Mat22;
      
      private var K:b2Mat22;
      
      public var m_pivotForce:b2Vec2;
      
      public var m_enableMotor:Boolean;
      
      public var m_referenceAngle:Number;
      
      public var m_limitPositionImpulse:Number;
      
      public var m_motorSpeed:Number;
      
      public var m_upperAngle:Number;
      
      public var m_lowerAngle:Number;
      
      public var m_maxMotorTorque:Number;
      
      public function b2RevoluteJoint(def:b2RevoluteJointDef)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
         }
         this.K = new b2Mat22();
         if(!(_loc2_ && def))
         {
            this.K1 = new b2Mat22();
            this.K2 = new b2Mat22();
            if(!_loc2_)
            {
               this.K3 = new b2Mat22();
               if(_loc3_ || def)
               {
                  this.m_localAnchor1 = new b2Vec2();
                  if(_loc3_)
                  {
                     this.m_localAnchor2 = new b2Vec2();
                     if(!(_loc2_ && this))
                     {
                        if(!(_loc2_ && _loc3_))
                        {
                           this.m_pivotForce = new b2Vec2();
                           if(!_loc3_)
                           {
                           }
                           addr195:
                           this.m_enableLimit = def.enableLimit;
                           addr218:
                           if(_loc3_ || this)
                           {
                              addr214:
                              this.m_enableMotor = def.enableMotor;
                           }
                           return;
                        }
                        this.m_pivotMass = new b2Mat22();
                        super(def);
                     }
                  }
                  addr157:
                  addr161:
                  this.m_limitPositionImpulse = 0;
                  addr175:
                  this.m_lowerAngle = def.lowerAngle;
                  addr180:
                  if(_loc2_)
                  {
                  }
                  this.m_maxMotorTorque = def.maxMotorTorque;
                  if(_loc3_)
                  {
                     this.m_motorSpeed = def.motorSpeed;
                     if(_loc3_ || this)
                     {
                        §§goto(addr195);
                     }
                  }
                  §§goto(addr214);
               }
               this.m_localAnchor1.SetV(def.localAnchor1);
            }
            this.m_localAnchor2.SetV(def.localAnchor2);
            if(_loc3_ || _loc2_)
            {
               if(!_loc2_)
               {
                  this.m_referenceAngle = def.referenceAngle;
                  if(_loc3_)
                  {
                     this.m_pivotForce.Set(0,0);
                     if(_loc3_)
                     {
                        if(_loc3_)
                        {
                           this.m_motorForce = 0;
                           if(!_loc2_)
                           {
                              this.m_limitForce = 0;
                              §§goto(addr157);
                           }
                        }
                        §§goto(addr161);
                     }
                     §§goto(addr180);
                  }
                  §§goto(addr218);
               }
               addr171:
               this.m_upperAngle = def.upperAngle;
               §§goto(addr175);
            }
            §§goto(addr161);
         }
         if(_loc3_)
         {
            §§goto(addr171);
         }
         §§goto(addr195);
      }
      
      override public function SolveVelocityConstraints(step:b2TimeStep) : void
      {
         /*
          * Error de decompilación
          * Tiempo de espera (1 minuto) alcanzado
          * Instruction count: 1493
          */
         throw new flash.errors.IllegalOperationError("No decompilado debido al tiempo de espera");
      }
      
      override public function GetAnchor1() : b2Vec2
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
         }
         if(_loc1_ || _loc1_)
         {
         }
         return m_body1.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchor2() : b2Vec2
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(_loc1_ && _loc1_)
         {
         }
         return m_body2.GetWorldPoint(this.m_localAnchor2);
      }
      
      public function GetUpperLimit() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(_loc1_ && this)
         {
         }
         return this.m_upperAngle;
      }
      
      public function GetLowerLimit() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
         }
         if(_loc2_)
         {
         }
         return this.m_lowerAngle;
      }
      
      public function EnableMotor(flag:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_)
         {
         }
         if(_loc3_)
         {
            if(!(_loc2_ && _loc3_))
            {
               if(!_loc2_)
               {
                  this.m_enableMotor = flag;
                  if(_loc2_)
                  {
                  }
               }
            }
         }
      }
      
      public function GetMotorSpeed() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
         }
         if(!_loc2_)
         {
         }
         return this.m_motorSpeed;
      }
      
      override public function GetReactionForce() : b2Vec2
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(!_loc2_)
         {
         }
         return this.m_pivotForce;
      }
      
      override public function SolvePositionConstraints() : Boolean
      {
         /*
          * Error de decompilación
          * Tiempo de espera (1 minuto) alcanzado
          * Instruction count: 1954
          */
         throw new flash.errors.IllegalOperationError("No decompilado debido al tiempo de espera");
      }
      
      public function SetMotorSpeed(speed:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_)
         {
         }
         if(!_loc2_)
         {
            if(!(_loc2_ && _loc3_))
            {
               if(_loc2_ && _loc2_)
               {
               }
               addr61:
               return;
            }
            addr60:
            §§goto(addr61);
         }
         this.m_motorSpeed = speed;
         if(_loc3_ || _loc2_)
         {
            §§goto(addr60);
         }
         §§goto(addr61);
      }
      
      public function GetJointSpeed() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         if(_loc2_ && _loc2_)
         {
         }
         return m_body2.m_angularVelocity - m_body1.m_angularVelocity;
      }
      
      public function SetMaxMotorTorque(torque:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
         }
         if(_loc3_)
         {
            if(!_loc3_)
            {
            }
            addr56:
            return;
         }
         if(!(_loc2_ && this))
         {
            this.m_maxMotorTorque = torque;
            if(_loc2_)
            {
            }
            §§goto(addr56);
         }
         §§goto(addr56);
      }
      
      public function GetJointAngle() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && this)
         {
         }
         if(_loc2_ && this)
         {
         }
         §§push(m_body2.m_sweep.a - m_body1.m_sweep.a);
         if(_loc1_ || this)
         {
            §§push(§§pop() - this.m_referenceAngle);
         }
         return §§pop();
      }
      
      public function GetMotorTorque() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
         if(_loc2_)
         {
         }
         return this.m_motorForce;
      }
      
      override public function InitVelocityConstraints(step:b2TimeStep) : void
      {
         /*
          * Error de decompilación
          * Tiempo de espera (1 minuto) alcanzado
          * Instruction count: 1398
          */
         throw new flash.errors.IllegalOperationError("No decompilado debido al tiempo de espera");
      }
      
      public function EnableLimit(flag:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc3_)
         {
         }
         if(_loc3_)
         {
            if(_loc3_)
            {
               if(_loc2_)
               {
               }
               addr46:
               return;
            }
         }
         this.m_enableLimit = flag;
         if(_loc2_)
         {
         }
         §§goto(addr46);
      }
      
      override public function GetReactionTorque() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && _loc1_)
         {
         }
         if(_loc1_ && _loc2_)
         {
         }
         return this.m_limitForce;
      }
      
      public function IsLimitEnabled() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         if(_loc1_ || _loc1_)
         {
         }
         return this.m_enableLimit;
      }
      
      public function IsMotorEnabled() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(!_loc2_)
         {
         }
         return this.m_enableMotor;
      }
      
      public function SetLimits(lower:Number, upper:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
         }
         this.m_lowerAngle = lower;
         if(!(_loc4_ && upper))
         {
            this.m_upperAngle = upper;
            if(_loc3_ || this)
            {
            }
         }
      }
   }
}
