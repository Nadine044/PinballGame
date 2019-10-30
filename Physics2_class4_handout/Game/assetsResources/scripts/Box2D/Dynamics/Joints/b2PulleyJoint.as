package Box2D.Dynamics.Joints
{
   import Box2D.Common.Math.b2Mat22;
   import Box2D.Common.Math.b2Math;
   import Box2D.Common.Math.b2Vec2;
   import Box2D.Common.b2Settings;
   import Box2D.Dynamics.b2Body;
   import Box2D.Dynamics.b2TimeStep;
   
   public class b2PulleyJoint extends b2Joint
   {
      
      public static const b2_minPulleyLength:Number = 2.0;
      
      {
         var b2_minPulleyLength:Boolean = false;
         var _loc2_:Boolean = true;
         if(!b2_minPulleyLength)
         {
            if(_loc2_)
            {
               b2_minPulleyLength = 2;
            }
         }
      }
      
      public var m_limitState1:int;
      
      public var m_limitState2:int;
      
      public var m_ground:b2Body;
      
      public var m_maxLength2:Number;
      
      public var m_maxLength1:Number;
      
      public var m_limitPositionImpulse1:Number;
      
      public var m_limitPositionImpulse2:Number;
      
      public var m_force:Number;
      
      public var m_constant:Number;
      
      public var m_positionImpulse:Number;
      
      public var m_state:int;
      
      public var m_ratio:Number;
      
      public var m_groundAnchor1:b2Vec2;
      
      public var m_groundAnchor2:b2Vec2;
      
      public var m_localAnchor1:b2Vec2;
      
      public var m_localAnchor2:b2Vec2;
      
      public var m_limitMass1:Number;
      
      public var m_limitMass2:Number;
      
      public var m_pulleyMass:Number;
      
      public var m_u1:b2Vec2;
      
      public var m_limitForce1:Number;
      
      public var m_limitForce2:Number;
      
      public var m_u2:b2Vec2;
      
      public function b2PulleyJoint(def:b2PulleyJointDef)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || def)
         {
         }
         var tMat:b2Mat22 = null;
         var tX:Number = NaN;
         var tY:Number = NaN;
         if(_loc6_ || this)
         {
            this.m_groundAnchor1 = new b2Vec2();
            if(_loc6_ || def)
            {
               this.m_groundAnchor2 = new b2Vec2();
               if(!_loc5_)
               {
                  this.m_localAnchor1 = new b2Vec2();
                  this.m_localAnchor2 = new b2Vec2();
               }
               addr84:
               if(!(_loc5_ && tMat))
               {
                  super(def);
                  addr98:
                  this.m_ground = m_body1.m_world.m_groundBody;
                  if(!_loc5_)
                  {
                     if(_loc6_ || tX)
                     {
                        §§push(this.m_groundAnchor1);
                        if(!_loc5_)
                        {
                           §§push(def.groundAnchor1);
                           if(_loc6_)
                           {
                              §§push(§§pop().x);
                              if(_loc6_ || tMat)
                              {
                                 §§push(this.m_ground);
                                 if(!_loc5_)
                                 {
                                    §§push(§§pop().m_xf);
                                    if(_loc6_)
                                    {
                                       §§push(§§pop().position);
                                       if(_loc6_)
                                       {
                                          §§push(§§pop().x);
                                          if(_loc6_)
                                          {
                                             §§push(§§pop() - §§pop());
                                             if(!(_loc5_ && def))
                                             {
                                                §§pop().x = §§pop();
                                                if(!_loc6_)
                                                {
                                                }
                                                addr348:
                                                §§push(this);
                                                §§push(b2Math);
                                                §§push(def.maxLength2);
                                                §§push(this.m_constant);
                                                if(!_loc5_)
                                                {
                                                   §§push(b2_minPulleyLength);
                                                   if(!(_loc5_ && def))
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                      if(!(_loc5_ && tX))
                                                      {
                                                         §§push(this.m_ratio);
                                                      }
                                                   }
                                                   §§push(§§pop() / §§pop());
                                                }
                                                addr377:
                                                §§pop().m_maxLength2 = §§pop().b2Min(§§pop(),§§pop());
                                                if(_loc6_)
                                                {
                                                   this.m_force = 0;
                                                   addr384:
                                                   this.m_limitForce1 = 0;
                                                   if(!_loc5_)
                                                   {
                                                      addr397:
                                                      this.m_limitForce2 = 0;
                                                   }
                                                }
                                                return;
                                             }
                                             addr173:
                                             §§pop().y = §§pop();
                                             addr277:
                                             if(!_loc6_)
                                             {
                                             }
                                             this.m_ratio = def.ratio;
                                             if(!(_loc5_ && tMat))
                                             {
                                                if(_loc6_ || def)
                                                {
                                                   addr296:
                                                   §§push(this);
                                                   §§push(def.length1);
                                                   if(_loc6_ || def)
                                                   {
                                                      §§push(this.m_ratio);
                                                      if(!(_loc5_ && tX))
                                                      {
                                                         §§push(§§pop() * def.length2);
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                   }
                                                   §§pop().m_constant = §§pop();
                                                   if(_loc6_ || this)
                                                   {
                                                      §§push(this);
                                                      §§push(b2Math);
                                                      §§push(def.maxLength1);
                                                      §§push(this.m_constant);
                                                      if(!_loc5_)
                                                      {
                                                         §§push(this.m_ratio);
                                                         if(!_loc5_)
                                                         {
                                                            §§push(§§pop() * b2_minPulleyLength);
                                                         }
                                                         §§push(§§pop() - §§pop());
                                                      }
                                                      §§pop().m_maxLength1 = §§pop().b2Min(§§pop(),§§pop());
                                                      addr345:
                                                      if(!_loc5_)
                                                      {
                                                         §§goto(addr348);
                                                      }
                                                   }
                                                   §§goto(addr384);
                                                }
                                                §§goto(addr377);
                                             }
                                             §§goto(addr397);
                                          }
                                          addr172:
                                          §§goto(addr173);
                                          §§push(§§pop() - §§pop());
                                       }
                                       addr171:
                                       §§goto(addr172);
                                       §§push(§§pop().y);
                                    }
                                    addr170:
                                    §§goto(addr171);
                                    §§push(§§pop().position);
                                 }
                                 addr169:
                                 §§goto(addr170);
                                 §§push(§§pop().m_xf);
                              }
                              addr167:
                              §§goto(addr169);
                              §§push(this.m_ground);
                           }
                           addr159:
                           §§push(§§pop().y);
                           if(!(_loc5_ && def))
                           {
                              §§goto(addr167);
                           }
                           §§goto(addr173);
                        }
                        addr157:
                        §§goto(addr159);
                        §§push(def.groundAnchor1);
                     }
                  }
                  §§push(this.m_groundAnchor2);
                  addr232:
                  if(_loc6_)
                  {
                     §§push(def.groundAnchor2);
                     if(!(_loc5_ && tMat))
                     {
                        §§push(§§pop().x);
                        if(_loc6_ || this)
                        {
                           §§push(this.m_ground);
                           if(_loc6_)
                           {
                              §§push(§§pop().m_xf);
                              if(!_loc5_)
                              {
                                 §§push(§§pop().position);
                                 if(_loc6_)
                                 {
                                    §§push(§§pop().x);
                                    if(!_loc5_)
                                    {
                                       §§push(§§pop() - §§pop());
                                       if(!_loc6_)
                                       {
                                       }
                                       addr242:
                                       §§push(this.m_ground);
                                    }
                                    addr247:
                                    §§pop().y = §§pop() - §§pop();
                                    if(!_loc5_)
                                    {
                                       if(!_loc5_)
                                       {
                                          this.m_localAnchor1.SetV(def.localAnchor1);
                                          if(_loc6_ || tX)
                                          {
                                             if(_loc5_)
                                             {
                                             }
                                             §§goto(addr296);
                                          }
                                          addr269:
                                          this.m_localAnchor2.SetV(def.localAnchor2);
                                          if(!_loc5_)
                                          {
                                             §§goto(addr277);
                                          }
                                          §§goto(addr345);
                                       }
                                    }
                                    §§goto(addr384);
                                 }
                                 addr246:
                                 §§goto(addr247);
                                 §§push(§§pop().y);
                              }
                              addr245:
                              §§goto(addr246);
                              §§push(§§pop().position);
                           }
                           §§goto(addr245);
                           §§push(§§pop().m_xf);
                        }
                        §§pop().x = §§pop();
                        if(_loc6_ || tX)
                        {
                        }
                        §§goto(addr269);
                     }
                     addr234:
                     §§push(§§pop().y);
                     if(_loc6_ || def)
                     {
                        §§goto(addr242);
                     }
                     §§goto(addr247);
                  }
                  §§goto(addr234);
                  §§push(def.groundAnchor2);
               }
               §§goto(addr157);
               §§push(this.m_groundAnchor1);
            }
            this.m_u1 = new b2Vec2();
            if(!(_loc5_ && this))
            {
               this.m_u2 = new b2Vec2();
               §§goto(addr84);
            }
            §§goto(addr98);
         }
         §§goto(addr232);
      }
      
      public function GetGroundAnchor2() : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc3_)
         {
         }
         if(!(_loc2_ && _loc2_))
         {
            if(!_loc3_)
            {
            }
         }
         var a:b2Vec2 = this.m_ground.m_xf.position.Copy();
         if(_loc3_ || this)
         {
            if(_loc3_)
            {
               a.Add(this.m_groundAnchor2);
               if(_loc2_ && _loc2_)
               {
               }
            }
            addr72:
            return a;
         }
         §§goto(addr72);
      }
      
      override public function GetAnchor1() : b2Vec2
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(_loc1_ && _loc1_)
         {
         }
         return m_body1.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchor2() : b2Vec2
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
         }
         if(!_loc1_)
         {
         }
         return m_body2.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce() : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
         }
         if(_loc2_)
         {
            if(_loc3_ && this)
            {
            }
            addr40:
            var F:b2Vec2 = this.m_u2.Copy();
            if(_loc2_)
            {
               if(!_loc3_)
               {
                  F.Multiply(this.m_force);
                  if(_loc3_ && F)
                  {
                  }
               }
            }
            return F;
         }
         §§goto(addr40);
      }
      
      override public function SolvePositionConstraints() : Boolean
      {
         /*
          * Error de decompilación
          * Tiempo de espera (1 minuto) alcanzado
          * Instruction count: 2815
          */
         throw new flash.errors.IllegalOperationError("No decompilado debido al tiempo de espera");
      }
      
      override public function InitVelocityConstraints(step:b2TimeStep) : void
      {
         /*
          * Error de decompilación
          * Tiempo de espera (1 minuto) alcanzado
          * Instruction count: 1612
          */
         throw new flash.errors.IllegalOperationError("No decompilado debido al tiempo de espera");
      }
      
      override public function GetReactionTorque() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && this)
         {
         }
         if(!_loc2_)
         {
         }
         return 0;
      }
      
      public function GetRatio() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(_loc1_ && this)
         {
         }
         return this.m_ratio;
      }
      
      override public function SolveVelocityConstraints(step:b2TimeStep) : void
      {
         /*
          * Error de decompilación
          * Tiempo de espera (1 minuto) alcanzado
          * Instruction count: 1873
          */
         throw new flash.errors.IllegalOperationError("No decompilado debido al tiempo de espera");
      }
      
      public function GetLength1() : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc7_)
         {
         }
         if(_loc7_ || this)
         {
            if(!_loc6_)
            {
               if(_loc6_ && p)
               {
               }
            }
         }
         var p:b2Vec2 = m_body1.GetWorldPoint(this.m_localAnchor1);
         if(_loc6_ && sX)
         {
         }
         §§push(this.m_ground.m_xf.position.x);
         if(!_loc6_)
         {
            §§push(§§pop() + this.m_groundAnchor1.x);
            if(_loc7_ || this)
            {
               §§push(Number(§§pop()));
            }
         }
         var sX:* = §§pop();
         if(!_loc7_)
         {
         }
         §§push(this.m_ground.m_xf.position.y);
         if(!(_loc6_ && p))
         {
            §§push(§§pop() + this.m_groundAnchor1.y);
            if(!_loc7_)
            {
            }
            addr103:
            var sY:* = §§pop();
            if(_loc7_ || sX)
            {
            }
            §§push(p.x);
            if(_loc7_ || sY)
            {
               §§push(§§pop() - sX);
               if(_loc7_ || this)
               {
                  §§push(Number(§§pop()));
               }
            }
            var dX:* = §§pop();
            if(_loc6_)
            {
            }
            §§push(p.y);
            if(_loc7_)
            {
               §§push(§§pop() - sY);
               if(_loc7_ || this)
               {
               }
               addr149:
               var dY:* = §§pop();
               if(_loc6_)
               {
               }
               return Math.sqrt(dX * dX + dY * dY);
            }
            §§goto(addr149);
            §§push(Number(§§pop()));
         }
         §§goto(addr103);
      }
      
      public function GetLength2() : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc7_)
         {
         }
         if(!(_loc7_ && sY))
         {
            if(_loc6_ || p)
            {
               if(_loc7_)
               {
               }
               addr45:
            }
            if(!(_loc7_ && sX))
            {
               §§goto(addr45);
            }
         }
         var p:b2Vec2 = m_body2.GetWorldPoint(this.m_localAnchor2);
         if(_loc7_ && sY)
         {
         }
         §§push(this.m_ground.m_xf.position.x);
         if(_loc6_)
         {
            §§push(§§pop() + this.m_groundAnchor2.x);
            if(_loc7_ && sX)
            {
            }
            addr79:
            var sX:* = §§pop();
            if(_loc7_)
            {
            }
            §§push(this.m_ground.m_xf.position.y);
            if(!_loc7_)
            {
               §§push(§§pop() + this.m_groundAnchor2.y);
               if(_loc7_ && sY)
               {
               }
               addr109:
               var sY:* = §§pop();
               if(!_loc6_)
               {
               }
               §§push(p.x);
               if(_loc6_)
               {
                  §§push(§§pop() - sX);
                  if(_loc6_ || sX)
                  {
                  }
                  addr127:
                  var dX:* = §§pop();
                  if(_loc7_)
                  {
                  }
                  §§push(p.y);
                  if(_loc6_ || sX)
                  {
                     §§push(§§pop() - sY);
                     if(!(_loc7_ && sY))
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  var dY:* = §§pop();
                  if(_loc7_ && this)
                  {
                  }
                  return Math.sqrt(dX * dX + dY * dY);
               }
               §§goto(addr127);
               §§push(Number(§§pop()));
            }
            §§goto(addr109);
            §§push(Number(§§pop()));
         }
         §§goto(addr79);
      }
      
      public function GetGroundAnchor1() : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_)
         {
         }
         if(_loc2_)
         {
            if(_loc3_ && _loc3_)
            {
            }
         }
         var a:b2Vec2 = this.m_ground.m_xf.position.Copy();
         if(_loc2_ || a)
         {
            if(_loc2_ || _loc3_)
            {
               a.Add(this.m_groundAnchor1);
               if(!_loc2_)
               {
               }
            }
         }
         return a;
      }
   }
}
