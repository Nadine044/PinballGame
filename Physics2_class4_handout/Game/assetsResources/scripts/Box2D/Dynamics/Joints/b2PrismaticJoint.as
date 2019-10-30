package Box2D.Dynamics.Joints
{
   import Box2D.Common.Math.b2Mat22;
   import Box2D.Common.Math.b2Math;
   import Box2D.Common.Math.b2Vec2;
   import Box2D.Common.b2Settings;
   import Box2D.Dynamics.b2Body;
   import Box2D.Dynamics.b2TimeStep;
   
   public class b2PrismaticJoint extends b2Joint
   {
       
      
      public var m_limitForce:Number;
      
      public var m_lowerTranslation:Number;
      
      public var m_localXAxis1:b2Vec2;
      
      public var m_refAngle:Number;
      
      public var m_torque:Number;
      
      public var m_motorForce:Number;
      
      public var m_enableLimit:Boolean;
      
      public var m_angularMass:Number;
      
      public var m_maxMotorForce:Number;
      
      public var m_localYAxis1:b2Vec2;
      
      public var m_force:Number;
      
      public var m_motorMass:Number;
      
      public var m_upperTranslation:Number;
      
      public var m_localAnchor1:b2Vec2;
      
      public var m_localAnchor2:b2Vec2;
      
      public var m_limitState:int;
      
      public var m_linearMass:Number;
      
      public var m_motorJacobian:b2Jacobian;
      
      public var m_limitPositionImpulse:Number;
      
      public var m_motorSpeed:Number;
      
      public var m_enableMotor:Boolean;
      
      public var m_linearJacobian:b2Jacobian;
      
      public function b2PrismaticJoint(def:b2PrismaticJointDef)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc6_)
         {
         }
         var tMat:b2Mat22 = null;
         var tX:Number = NaN;
         var tY:Number = NaN;
         if(_loc6_ || def)
         {
            if(!_loc5_)
            {
               this.m_localAnchor1 = new b2Vec2();
               this.m_localAnchor2 = new b2Vec2();
               if(!(_loc5_ && tX))
               {
                  this.m_localXAxis1 = new b2Vec2();
                  if(_loc6_ || this)
                  {
                     this.m_localYAxis1 = new b2Vec2();
                     if(_loc6_ || tX)
                     {
                        this.m_linearJacobian = new b2Jacobian();
                     }
                     addr141:
                     this.m_localXAxis1.SetV(def.localAxis1);
                     if(_loc6_ || tX)
                     {
                        §§push(this.m_localYAxis1);
                        if(_loc6_ || this)
                        {
                           §§push(this.m_localXAxis1);
                           if(!(_loc5_ && tX))
                           {
                              §§push(§§pop().y);
                              if(_loc6_ || def)
                              {
                                 §§push(-§§pop());
                                 if(!_loc6_)
                                 {
                                 }
                                 addr198:
                                 §§pop().y = §§pop();
                                 this.m_refAngle = def.referenceAngle;
                                 addr340:
                                 addr344:
                                 if(!_loc5_)
                                 {
                                    if(_loc6_ || this)
                                    {
                                       this.m_linearJacobian.SetZero();
                                       this.m_linearMass = 0;
                                       addr221:
                                       if(_loc6_)
                                       {
                                          this.m_force = 0;
                                          if(_loc6_)
                                          {
                                             if(_loc6_ || def)
                                             {
                                                addr237:
                                                this.m_angularMass = 0;
                                                if(_loc6_ || tX)
                                                {
                                                }
                                             }
                                             addr380:
                                             return;
                                          }
                                          addr284:
                                          this.m_motorMass = 0;
                                          if(_loc5_ && tMat)
                                          {
                                          }
                                       }
                                       addr321:
                                       this.m_lowerTranslation = def.lowerTranslation;
                                       addr345:
                                       if(_loc6_ || tMat)
                                       {
                                          if(_loc6_ || tX)
                                          {
                                          }
                                          addr349:
                                          if(_loc6_)
                                          {
                                             this.m_motorSpeed = def.motorSpeed;
                                          }
                                          §§goto(addr380);
                                       }
                                       addr345:
                                       this.m_maxMotorForce = def.maxMotorForce;
                                       §§goto(addr349);
                                    }
                                 }
                                 this.m_upperTranslation = def.upperTranslation;
                                 §§goto(addr345);
                              }
                              §§pop().x = §§pop();
                              §§push(this.m_localYAxis1);
                           }
                           addr197:
                           §§goto(addr198);
                           §§push(§§pop().x);
                        }
                        §§goto(addr197);
                        §§push(this.m_localXAxis1);
                     }
                     addr295:
                     this.m_motorForce = 0;
                     this.m_limitForce = 0;
                     if(_loc6_ || def)
                     {
                        addr310:
                        this.m_limitPositionImpulse = 0;
                     }
                     addr376:
                     if(!(_loc5_ && tX))
                     {
                        §§goto(addr321);
                     }
                     addr376:
                     this.m_enableMotor = def.enableMotor;
                     §§goto(addr380);
                  }
                  if(!(_loc5_ && tX))
                  {
                     this.m_torque = 0;
                     if(_loc6_ || def)
                     {
                        this.m_motorJacobian.SetZero();
                        if(!(_loc5_ && def))
                        {
                           if(_loc6_ || tX)
                           {
                              §§goto(addr284);
                           }
                           addr357:
                           this.m_enableLimit = def.enableLimit;
                           addr361:
                           if(!(_loc5_ && tX))
                           {
                              §§goto(addr376);
                           }
                           §§goto(addr380);
                        }
                        §§goto(addr345);
                     }
                     §§goto(addr310);
                  }
                  §§goto(addr295);
               }
               this.m_motorJacobian = new b2Jacobian();
               if(!_loc5_)
               {
                  if(_loc6_)
                  {
                     if(_loc6_ || def)
                     {
                        super(def);
                        if(!(_loc5_ && def))
                        {
                           if(!_loc5_)
                           {
                              this.m_localAnchor1.SetV(def.localAnchor1);
                              if(!(_loc5_ && tX))
                              {
                                 if(!_loc6_)
                                 {
                                 }
                                 §§goto(addr221);
                              }
                              §§goto(addr376);
                           }
                           §§goto(addr141);
                        }
                        §§goto(addr340);
                     }
                     §§goto(addr237);
                  }
                  §§goto(addr361);
               }
               §§goto(addr344);
            }
            §§goto(addr357);
         }
         this.m_localAnchor2.SetV(def.localAnchor2);
         if(_loc6_ || this)
         {
            §§goto(addr141);
         }
         §§goto(addr349);
      }
      
      override public function SolveVelocityConstraints(step:b2TimeStep) : void
      {
         /*
          * Error de decompilación
          * Tiempo de espera (1 minuto) alcanzado
          * Instruction count: 1545
          */
         throw new flash.errors.IllegalOperationError("No decompilado debido al tiempo de espera");
      }
      
      override public function GetAnchor1() : b2Vec2
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
         if(_loc2_)
         {
         }
         return m_body1.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchor2() : b2Vec2
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(_loc1_)
         {
         }
         return m_body2.GetWorldPoint(this.m_localAnchor2);
      }
      
      public function GetUpperLimit() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         if(_loc1_ || this)
         {
         }
         return this.m_upperTranslation;
      }
      
      public function GetLowerLimit() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
         }
         if(_loc1_)
         {
         }
         return this.m_lowerTranslation;
      }
      
      public function EnableMotor(flag:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc3_)
         {
         }
         if(!_loc2_)
         {
            if(_loc2_ && _loc2_)
            {
            }
            addr56:
            return;
         }
         if(!_loc2_)
         {
            this.m_enableMotor = flag;
            if(_loc2_ && _loc3_)
            {
            }
            §§goto(addr56);
         }
         §§goto(addr56);
      }
      
      public function GetJointTranslation() : Number
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         if(_loc10_ && this)
         {
         }
         var tMat:b2Mat22 = null;
         if(!(_loc10_ && b2))
         {
            if(_loc11_ || b1)
            {
            }
            if(!(_loc10_ && b1))
            {
               if(!_loc11_)
               {
               }
               addr54:
            }
            §§goto(addr54);
         }
         if(_loc11_)
         {
            if(!_loc11_)
            {
            }
         }
         var b1:b2Body = m_body1;
         if(!_loc11_)
         {
         }
         var b2:b2Body = m_body2;
         if(_loc10_ && b2)
         {
         }
         var p1:b2Vec2 = b1.GetWorldPoint(this.m_localAnchor1);
         if(_loc10_)
         {
         }
         var p2:b2Vec2 = b2.GetWorldPoint(this.m_localAnchor2);
         if(_loc10_)
         {
         }
         §§push(p2.x);
         if(!_loc10_)
         {
            §§push(§§pop() - p1.x);
            if(_loc10_)
            {
            }
            addr115:
            var dX:* = §§pop();
            if(!_loc11_)
            {
            }
            §§push(p2.y);
            if(_loc11_)
            {
               §§push(§§pop() - p1.y);
               if(_loc11_ || b1)
               {
                  §§push(Number(§§pop()));
               }
            }
            var dY:* = §§pop();
            if(_loc10_ && tMat)
            {
            }
            var axis:b2Vec2 = b1.GetWorldVector(this.m_localXAxis1);
            if(!_loc11_)
            {
            }
            §§push(axis.x);
            if(_loc11_)
            {
               §§push(dX);
               if(_loc11_)
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc10_ && this))
                  {
                     §§push(axis.y);
                     if(_loc10_)
                     {
                     }
                     addr173:
                     §§push(§§pop() + §§pop());
                     addr177:
                     if(_loc10_)
                     {
                     }
                     var translation:* = §§pop();
                     if(_loc11_ || b2)
                     {
                     }
                     return translation;
                  }
               }
               §§goto(addr173);
               §§push(§§pop() * dY);
            }
            §§goto(addr177);
            §§push(Number(§§pop()));
         }
         §§goto(addr115);
      }
      
      public function GetMotorSpeed() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && _loc2_)
         {
         }
         if(!_loc1_)
         {
         }
         return this.m_motorSpeed;
      }
      
      override public function GetReactionForce() : b2Vec2
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc7_)
         {
         }
         if(_loc7_ || ax1Y)
         {
            if(!(_loc6_ && ax1Y))
            {
               if(_loc6_)
               {
               }
               addr40:
               var tMat:b2Mat22 = m_body1.m_xf.R;
               if(!_loc7_)
               {
               }
               §§push(this.m_limitForce);
               if(!_loc6_)
               {
                  §§push(tMat.col1.x);
                  if(_loc7_)
                  {
                     §§push(this.m_localXAxis1.x);
                     if(_loc7_ || ax1Y)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc7_ || ax1X)
                        {
                        }
                        addr90:
                        §§push(§§pop() * §§pop());
                        if(!(_loc6_ && ax1X))
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                     addr85:
                     §§goto(addr90);
                     §§push(§§pop() + §§pop() * this.m_localXAxis1.y);
                  }
                  §§push(tMat.col2.x);
                  if(!(_loc6_ && ax1X))
                  {
                     §§goto(addr85);
                  }
                  §§goto(addr85);
               }
               var ax1X:* = §§pop();
               if(_loc6_ && tMat)
               {
               }
               §§push(this.m_limitForce);
               if(_loc7_)
               {
                  §§push(tMat.col1.y);
                  if(_loc7_)
                  {
                     §§push(this.m_localXAxis1.x);
                     if(!(_loc6_ && ax1X))
                     {
                        §§push(§§pop() * §§pop());
                        if(!_loc6_)
                        {
                           §§push(tMat.col2.y);
                           if(!_loc7_)
                           {
                           }
                           addr139:
                           §§push(§§pop() + §§pop());
                        }
                     }
                     §§goto(addr139);
                     §§push(§§pop() * this.m_localXAxis1.y);
                  }
                  §§push(§§pop() * §§pop());
                  if(!_loc7_)
                  {
                  }
                  addr144:
                  var ax1Y:* = §§pop();
                  if(_loc6_)
                  {
                  }
                  §§push(this.m_force);
                  if(_loc7_)
                  {
                     §§push(tMat.col1.x);
                     if(_loc7_)
                     {
                        §§push(this.m_localYAxis1.x);
                        if(!(_loc6_ && this))
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc7_)
                           {
                              §§push(tMat.col2.x);
                              if(!_loc7_)
                              {
                              }
                              addr186:
                              §§push(§§pop() + §§pop());
                           }
                        }
                        §§goto(addr186);
                        §§push(§§pop() * this.m_localYAxis1.y);
                     }
                     §§push(§§pop() * §§pop());
                     if(!_loc7_)
                     {
                     }
                     addr191:
                     var ay1X:* = §§pop();
                     if(!_loc7_)
                     {
                     }
                     §§push(this.m_force);
                     if(_loc7_)
                     {
                        §§push(tMat.col1.y);
                        if(!_loc6_)
                        {
                           §§push(this.m_localYAxis1.x);
                           if(_loc7_)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc6_ && ax1Y)
                              {
                              }
                              addr232:
                              §§push(§§pop() * §§pop());
                              if(_loc7_)
                              {
                                 §§push(Number(§§pop()));
                              }
                           }
                           addr227:
                           §§goto(addr232);
                           §§push(§§pop() + §§pop() * this.m_localYAxis1.y);
                        }
                        §§push(tMat.col2.y);
                        if(_loc7_ || ax1X)
                        {
                           §§goto(addr227);
                        }
                        §§goto(addr227);
                     }
                     var ay1Y:* = §§pop();
                     if(_loc6_)
                     {
                     }
                     §§push();
                     §§push(this.m_limitForce);
                     if(_loc7_)
                     {
                        §§push(ax1X);
                        if(!(_loc6_ && tMat))
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc6_)
                           {
                           }
                           addr267:
                           §§push(this.m_limitForce);
                           if(!(_loc6_ && ax1Y))
                           {
                              addr276:
                              §§push(ax1Y);
                              if(_loc7_ || this)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(_loc6_ && tMat)
                                 {
                                 }
                              }
                              addr305:
                              §§push(§§pop() + §§pop());
                           }
                           return new §§pop().b2Vec2(§§pop(),§§pop());
                        }
                        §§push(this.m_force);
                        if(_loc7_)
                        {
                           §§push(§§pop() * ay1Y);
                        }
                        §§goto(addr305);
                     }
                     §§push(this.m_force);
                     if(_loc7_)
                     {
                        §§push(ay1X);
                        if(_loc7_)
                        {
                           §§push(§§pop() * §§pop());
                           if(!_loc6_)
                           {
                              §§goto(addr267);
                              §§push(§§pop() + §§pop());
                           }
                        }
                        §§goto(addr305);
                     }
                     §§goto(addr276);
                  }
                  §§goto(addr191);
                  §§push(Number(§§pop()));
               }
               §§goto(addr144);
               §§push(Number(§§pop()));
            }
            addr39:
            §§goto(addr40);
         }
         §§goto(addr39);
      }
      
      override public function SolvePositionConstraints() : Boolean
      {
         /*
          * Error de decompilación
          * Tiempo de espera (1 minuto) alcanzado
          * Instruction count: 2689
          */
         throw new flash.errors.IllegalOperationError("No decompilado debido al tiempo de espera");
      }
      
      public function SetMotorSpeed(speed:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc2_)
         {
         }
         if(_loc2_)
         {
            if(_loc2_)
            {
               if(!_loc2_)
               {
               }
               addr44:
               return;
            }
         }
         this.m_motorSpeed = speed;
         if(!_loc3_)
         {
            §§goto(addr44);
         }
         §§goto(addr44);
      }
      
      public function GetJointSpeed() : Number
      {
         /*
          * Error de decompilación
          * Tiempo de espera (1 minuto) alcanzado
          * Instruction count: 714
          */
         throw new flash.errors.IllegalOperationError("No decompilado debido al tiempo de espera");
      }
      
      override public function InitVelocityConstraints(step:b2TimeStep) : void
      {
         /*
          * Error de decompilación
          * Tiempo de espera (1 minuto) alcanzado
          * Instruction count: 2173
          */
         throw new flash.errors.IllegalOperationError("No decompilado debido al tiempo de espera");
      }
      
      public function GetMotorForce() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
         }
         if(_loc2_ && _loc2_)
         {
         }
         return this.m_motorForce;
      }
      
      public function EnableLimit(flag:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || flag)
         {
         }
         if(_loc2_ || _loc3_)
         {
            if(_loc3_ && flag)
            {
            }
            addr65:
            return;
         }
         if(_loc2_ || this)
         {
            this.m_enableLimit = flag;
            if(_loc3_)
            {
            }
         }
         §§goto(addr65);
      }
      
      public function SetMaxMotorForce(force:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
         }
         if(_loc3_ || _loc3_)
         {
            if(_loc3_ || this)
            {
               if(!_loc3_)
               {
               }
               addr66:
               return;
            }
            this.m_maxMotorForce = force;
            if(_loc2_ && _loc3_)
            {
            }
            §§goto(addr66);
         }
         §§goto(addr66);
      }
      
      override public function GetReactionTorque() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
         if(_loc1_ || _loc1_)
         {
         }
         return this.m_torque;
      }
      
      public function IsLimitEnabled() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
         if(_loc2_ && _loc2_)
         {
         }
         return this.m_enableLimit;
      }
      
      public function IsMotorEnabled() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         if(_loc2_ && _loc2_)
         {
         }
         return this.m_enableMotor;
      }
      
      public function SetLimits(lower:Number, upper:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc3_)
         {
         }
         if(_loc3_ || _loc3_)
         {
            if(!(_loc4_ && lower))
            {
               this.m_lowerTranslation = lower;
               if(_loc4_)
               {
               }
            }
            addr54:
            this.m_upperTranslation = upper;
            return;
         }
         §§goto(addr54);
      }
   }
}
