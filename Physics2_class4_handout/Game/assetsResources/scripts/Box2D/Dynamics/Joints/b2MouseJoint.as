package Box2D.Dynamics.Joints
{
   import Box2D.Common.Math.b2Mat22;
   import Box2D.Common.Math.b2Vec2;
   import Box2D.Common.b2Settings;
   import Box2D.Dynamics.b2Body;
   import Box2D.Dynamics.b2TimeStep;
   
   public class b2MouseJoint extends b2Joint
   {
       
      
      private var K1:b2Mat22;
      
      private var K:b2Mat22;
      
      public var m_beta:Number;
      
      public var m_mass:b2Mat22;
      
      private var K2:b2Mat22;
      
      public var m_target:b2Vec2;
      
      public var m_gamma:Number;
      
      public var m_impulse:b2Vec2;
      
      public var m_C:b2Vec2;
      
      public var m_localAnchor:b2Vec2;
      
      public var m_maxForce:Number;
      
      public function b2MouseJoint(def:b2MouseJointDef)
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         if(!_loc10_)
         {
         }
         var tY:* = NaN;
         if(!_loc9_)
         {
            this.K = new b2Mat22();
            if(_loc10_ || tY)
            {
               this.K1 = new b2Mat22();
            }
            this.K2 = new b2Mat22();
            if(!(_loc9_ && tY))
            {
               this.m_localAnchor = new b2Vec2();
               if(_loc10_)
               {
                  if(!(_loc9_ && tX))
                  {
                     this.m_target = new b2Vec2();
                     if(_loc9_)
                     {
                     }
                     addr127:
                  }
                  addr96:
                  if(_loc9_ && this)
                  {
                  }
                  §§goto(addr127);
               }
               addr130:
               §§push(this.m_target.x);
               if(!(_loc9_ && this))
               {
                  §§push(§§pop() - m_body2.m_xf.position.x);
                  if(!_loc10_)
                  {
                  }
                  addr146:
                  var tX:* = §§pop();
                  if(!(_loc9_ && this))
                  {
                     if(!_loc9_)
                     {
                        §§push(this.m_target.y);
                        if(_loc10_)
                        {
                           §§push(§§pop() - m_body2.m_xf.position.y);
                           if(_loc10_)
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                        tY = §§pop();
                        if(!_loc10_)
                        {
                        }
                     }
                  }
                  var tMat:b2Mat22 = m_body2.m_xf.R;
                  if(!(_loc9_ && this))
                  {
                     §§push(this.m_localAnchor);
                     if(_loc10_)
                     {
                        §§push(tX);
                        if(_loc10_)
                        {
                           §§push(tMat.col1.x);
                           if(_loc10_)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc10_)
                              {
                                 §§push(tY);
                                 if(!(_loc9_ && def))
                                 {
                                    §§push(tMat.col1.y);
                                    if(!(_loc9_ && this))
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(!_loc10_)
                                       {
                                       }
                                       addr282:
                                       §§pop().y = §§pop() + §§pop();
                                       this.m_maxForce = def.maxForce;
                                    }
                                    addr281:
                                    §§goto(addr282);
                                    §§push(§§pop() * §§pop());
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(!(_loc9_ && tY))
                                 {
                                    §§pop().x = §§pop();
                                    if(_loc10_ || tY)
                                    {
                                       §§push(this.m_localAnchor);
                                    }
                                    addr300:
                                    var mass:Number = m_body2.m_mass;
                                    if(_loc10_ || tY)
                                    {
                                    }
                                    §§push(2 * b2Settings.b2_pi);
                                    if(!_loc9_)
                                    {
                                       §§push(§§pop() * def.frequencyHz);
                                       if(_loc9_ && this)
                                       {
                                       }
                                       addr330:
                                       var omega:* = §§pop();
                                       if(_loc9_ && this)
                                       {
                                       }
                                       §§push(2 * mass);
                                       if(_loc10_)
                                       {
                                          §§push(def.dampingRatio);
                                          if(!_loc9_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(_loc10_ || tY)
                                             {
                                                §§push(omega);
                                             }
                                             addr366:
                                             var d:* = §§pop();
                                             if(_loc9_)
                                             {
                                             }
                                             §§push(def.timeStep);
                                             if(!(_loc9_ && this))
                                             {
                                                §§push(mass);
                                                if(_loc10_ || this)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc10_ || tY)
                                                   {
                                                   }
                                                   addr414:
                                                   var k:* = §§pop();
                                                   if(!_loc9_)
                                                   {
                                                      if(!_loc9_)
                                                      {
                                                         §§push(this);
                                                         §§push(1);
                                                         §§push(d);
                                                         if(!_loc9_)
                                                         {
                                                            §§push(§§pop() + k);
                                                         }
                                                         §§pop().m_gamma = §§pop() / §§pop();
                                                         if(_loc9_)
                                                         {
                                                         }
                                                         addr470:
                                                         return;
                                                      }
                                                      addr469:
                                                      §§goto(addr470);
                                                   }
                                                   if(!(_loc9_ && def))
                                                   {
                                                      §§push(this);
                                                      §§push(k);
                                                      if(_loc10_ || tY)
                                                      {
                                                         §§push(d);
                                                         if(_loc10_ || def)
                                                         {
                                                            §§push(§§pop() + k);
                                                         }
                                                         §§push(§§pop() / §§pop());
                                                      }
                                                      §§pop().m_beta = §§pop();
                                                      if(_loc10_)
                                                      {
                                                         §§goto(addr469);
                                                      }
                                                   }
                                                   §§goto(addr470);
                                                }
                                                addr403:
                                                §§push(§§pop() * (§§pop() * omega));
                                                if(!(_loc9_ && this))
                                                {
                                                   §§push(Number(§§pop()));
                                                }
                                                §§goto(addr414);
                                             }
                                             §§push(omega);
                                             if(!(_loc9_ && tY))
                                             {
                                                §§goto(addr403);
                                             }
                                             §§goto(addr403);
                                          }
                                          §§push(§§pop() * §§pop());
                                          if(_loc10_ || tX)
                                          {
                                          }
                                          §§goto(addr366);
                                       }
                                       §§goto(addr366);
                                       §§push(Number(§§pop()));
                                    }
                                    §§goto(addr330);
                                    §§push(Number(§§pop()));
                                 }
                              }
                              addr257:
                              §§push(tMat.col2.x);
                              if(_loc10_ || tX)
                              {
                              }
                              addr278:
                              §§goto(addr281);
                              §§push(tMat.col2.y);
                           }
                           §§push(§§pop() * §§pop());
                           if(_loc10_ || this)
                           {
                           }
                           §§goto(addr282);
                        }
                        §§push(tY);
                        if(_loc10_)
                        {
                           §§goto(addr278);
                        }
                        §§goto(addr282);
                     }
                     §§push(tX);
                     if(!(_loc9_ && this))
                     {
                        §§goto(addr257);
                     }
                     §§goto(addr282);
                  }
                  if(!(_loc9_ && tY))
                  {
                     this.m_impulse.SetZero();
                  }
                  §§goto(addr300);
               }
               §§goto(addr146);
               §§push(Number(§§pop()));
            }
            this.m_impulse = new b2Vec2();
            this.m_mass = new b2Mat22();
            this.m_C = new b2Vec2();
            if(_loc10_ || def)
            {
               §§goto(addr96);
            }
            addr111:
            if(_loc10_)
            {
               addr116:
               super(def);
               §§push(this.m_target);
               if(!_loc9_)
               {
                  §§pop().SetV(def.target);
               }
               §§goto(addr130);
            }
            §§goto(addr127);
         }
         if(!_loc9_)
         {
            if(_loc9_)
            {
            }
            §§goto(addr116);
         }
         §§goto(addr111);
      }
      
      public function SetTarget(target:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_ && _loc2_)
         {
         }
         if(_loc2_ || target)
         {
            if(_loc2_)
            {
               if(!m_body2.IsSleeping())
               {
               }
               addr56:
               this.m_target = target;
               addr62:
               if(!_loc2_)
               {
               }
               addr62:
               return;
            }
            §§goto(addr62);
         }
         m_body2.WakeUp();
         if(!_loc3_)
         {
            §§goto(addr56);
         }
         §§goto(addr62);
      }
      
      override public function GetAnchor2() : b2Vec2
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
         }
         if(_loc1_)
         {
         }
         return m_body2.GetWorldPoint(this.m_localAnchor);
      }
      
      override public function InitVelocityConstraints(step:b2TimeStep) : void
      {
         /*
          * Error de decompilación
          * Tiempo de espera (1 minuto) alcanzado
          * Instruction count: 856
          */
         throw new flash.errors.IllegalOperationError("No decompilado debido al tiempo de espera");
      }
      
      override public function GetAnchor1() : b2Vec2
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
         }
         if(_loc2_ && _loc2_)
         {
         }
         return this.m_target;
      }
      
      override public function GetReactionTorque() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
         }
         if(_loc1_ && this)
         {
         }
         return 0;
      }
      
      override public function GetReactionForce() : b2Vec2
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && this)
         {
         }
         if(_loc1_)
         {
         }
         return this.m_impulse;
      }
      
      override public function SolvePositionConstraints() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && this)
         {
         }
         if(_loc2_)
         {
         }
         return true;
      }
      
      override public function SolveVelocityConstraints(step:b2TimeStep) : void
      {
         /*
          * Error de decompilación
          * Tiempo de espera (1 minuto) alcanzado
          * Instruction count: 831
          */
         throw new flash.errors.IllegalOperationError("No decompilado debido al tiempo de espera");
      }
   }
}
