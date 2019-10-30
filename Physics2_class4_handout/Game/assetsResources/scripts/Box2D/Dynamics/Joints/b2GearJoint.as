package Box2D.Dynamics.Joints
{
   import Box2D.Common.Math.b2Mat22;
   import Box2D.Common.Math.b2Vec2;
   import Box2D.Common.b2Settings;
   import Box2D.Dynamics.b2Body;
   import Box2D.Dynamics.b2TimeStep;
   
   public class b2GearJoint extends b2Joint
   {
       
      
      public var m_ground2:b2Body;
      
      public var m_groundAnchor1:b2Vec2;
      
      public var m_groundAnchor2:b2Vec2;
      
      public var m_localAnchor1:b2Vec2;
      
      public var m_localAnchor2:b2Vec2;
      
      public var m_ratio:Number;
      
      public var m_revolute2:b2RevoluteJoint;
      
      public var m_force:Number;
      
      public var m_mass:Number;
      
      public var m_prismatic2:b2PrismaticJoint;
      
      public var m_ground1:b2Body;
      
      public var m_revolute1:b2RevoluteJoint;
      
      public var m_prismatic1:b2PrismaticJoint;
      
      public var m_constant:Number;
      
      public var m_J:b2Jacobian;
      
      public function b2GearJoint(def:b2GearJointDef)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || type2)
         {
         }
         var coordinate1:* = NaN;
         var coordinate2:* = NaN;
         this.m_groundAnchor1 = new b2Vec2();
         this.m_groundAnchor2 = new b2Vec2();
         if(!(_loc7_ && this))
         {
            this.m_localAnchor1 = new b2Vec2();
            this.m_localAnchor2 = new b2Vec2();
            this.m_J = new b2Jacobian();
         }
         if(_loc6_ || type1)
         {
            if(_loc6_ || type1)
            {
            }
            super(def);
            if(_loc6_ || type2)
            {
            }
            addr89:
            §§push(def.joint1.m_type);
            if(_loc6_)
            {
               §§push(int(§§pop()));
            }
            var type1:* = §§pop();
            if(_loc7_)
            {
            }
            §§push(def.joint2.m_type);
            if(_loc6_ || def)
            {
               §§push(int(§§pop()));
            }
            var type2:* = §§pop();
            this.m_revolute1 = null;
            if(_loc6_ || type2)
            {
               if(_loc6_ || this)
               {
                  this.m_prismatic1 = null;
                  if(!_loc7_)
                  {
                     this.m_revolute2 = null;
                     if(_loc6_ || type2)
                     {
                        if(!(_loc7_ && type2))
                        {
                           this.m_prismatic2 = null;
                           this.m_ground1 = def.joint1.m_body1;
                           if(!(_loc7_ && type2))
                           {
                              m_body1 = def.joint1.m_body2;
                              §§push(type1);
                              if(_loc6_ || this)
                              {
                                 if(§§pop() == b2Joint.e_revoluteJoint)
                                 {
                                    if(_loc6_)
                                    {
                                       this.m_revolute1 = def.joint1 as b2RevoluteJoint;
                                    }
                                    addr437:
                                    return;
                                 }
                                 this.m_prismatic1 = def.joint1 as b2PrismaticJoint;
                                 §§push(this.m_groundAnchor1);
                                 addr248:
                                 §§pop().SetV(this.m_prismatic1.m_localAnchor1);
                                 if(_loc6_)
                                 {
                                    addr257:
                                    this.m_localAnchor1.SetV(this.m_prismatic1.m_localAnchor2);
                                 }
                              }
                              addr306:
                              if(§§pop() == b2Joint.e_revoluteJoint)
                              {
                                 addr309:
                                 addr316:
                                 this.m_revolute2 = def.joint2 as b2RevoluteJoint;
                              }
                              else
                              {
                                 this.m_prismatic2 = def.joint2 as b2PrismaticJoint;
                                 if(_loc6_ || type2)
                                 {
                                    addr370:
                                    addr377:
                                    this.m_groundAnchor2.SetV(this.m_prismatic2.m_localAnchor1);
                                    this.m_localAnchor2.SetV(this.m_prismatic2.m_localAnchor2);
                                    addr393:
                                    §§push(this.m_prismatic2.GetJointTranslation());
                                    if(!(_loc7_ && def))
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                    coordinate2 = §§pop();
                                    if(_loc6_ || this)
                                    {
                                       addr402:
                                       this.m_ratio = def.ratio;
                                    }
                                    addr431:
                                    this.m_force = 0;
                                    if(_loc6_)
                                    {
                                       §§goto(addr437);
                                    }
                                    §§goto(addr437);
                                 }
                              }
                              §§push(this);
                              §§push(coordinate1);
                              if(_loc6_ || type1)
                              {
                                 §§push(this.m_ratio);
                                 if(!_loc7_)
                                 {
                                    §§push(§§pop() * coordinate2);
                                 }
                                 §§push(§§pop() + §§pop());
                              }
                              §§pop().m_constant = §§pop();
                              §§goto(addr431);
                           }
                        }
                        §§push(this.m_groundAnchor2);
                        if(!(_loc7_ && def))
                        {
                           §§pop().SetV(this.m_revolute2.m_localAnchor1);
                           §§push(this.m_localAnchor2);
                           if(_loc6_)
                           {
                              §§pop().SetV(this.m_revolute2.m_localAnchor2);
                              addr344:
                              coordinate2 = Number(this.m_revolute2.GetJointAngle());
                              if(_loc6_ || type2)
                              {
                                 §§goto(addr402);
                              }
                              §§goto(addr437);
                           }
                           §§goto(addr431);
                        }
                        else
                        {
                           §§goto(addr370);
                        }
                        §§goto(addr377);
                     }
                     §§push(this.m_groundAnchor1);
                     if(_loc6_)
                     {
                        §§pop().SetV(this.m_revolute1.m_localAnchor1);
                        §§push(this.m_localAnchor1);
                        if(!(_loc7_ && type2))
                        {
                           §§pop().SetV(this.m_revolute1.m_localAnchor2);
                           if(!_loc7_)
                           {
                              coordinate1 = Number(this.m_revolute1.GetJointAngle());
                              if(_loc6_)
                              {
                                 addr279:
                                 this.m_ground2 = def.joint2.m_body1;
                              }
                              §§goto(addr402);
                           }
                        }
                        else
                        {
                           §§goto(addr257);
                        }
                        §§goto(addr344);
                     }
                     else
                     {
                        §§goto(addr248);
                     }
                  }
                  §§push(this.m_prismatic1.GetJointTranslation());
                  if(_loc6_)
                  {
                     §§push(Number(§§pop()));
                     if(!(_loc7_ && def))
                     {
                        coordinate1 = §§pop();
                        if(_loc6_)
                        {
                           §§goto(addr279);
                        }
                        §§goto(addr309);
                     }
                     §§goto(addr393);
                  }
                  §§goto(addr344);
               }
               addr305:
               §§goto(addr306);
               §§push(type2);
            }
            if(_loc6_ || this)
            {
               m_body2 = def.joint2.m_body2;
               if(!(_loc7_ && type1))
               {
                  §§goto(addr305);
               }
               §§goto(addr437);
            }
            §§goto(addr316);
         }
         §§goto(addr89);
      }
      
      override public function GetAnchor1() : b2Vec2
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
         }
         if(_loc1_ && _loc1_)
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
         if(_loc1_ && this)
         {
         }
         return m_body2.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function InitVelocityConstraints(step:b2TimeStep) : void
      {
         /*
          * Error de decompilación
          * Tiempo de espera (1 minuto) alcanzado
          * Instruction count: 1428
          */
         throw new flash.errors.IllegalOperationError("No decompilado debido al tiempo de espera");
      }
      
      override public function GetReactionTorque() : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc5_ && rX)
         {
         }
         if(!(_loc5_ && this))
         {
            if(!(_loc5_ && rY))
            {
               if(_loc6_)
               {
                  if(!_loc6_)
                  {
                  }
               }
               if(_loc6_ || this)
               {
               }
            }
         }
         var tMat:b2Mat22 = m_body2.m_xf.R;
         if(_loc6_ || rY)
         {
         }
         §§push(this.m_localAnchor1.x);
         if(!(_loc5_ && this))
         {
            §§push(§§pop() - m_body2.m_sweep.localCenter.x);
            if(_loc6_ || this)
            {
            }
            addr89:
            var rX:* = §§pop();
            if(_loc5_)
            {
            }
            §§push(this.m_localAnchor1.y);
            if(!(_loc5_ && rY))
            {
               §§push(§§pop() - m_body2.m_sweep.localCenter.y);
               if(_loc6_ || rY)
               {
                  §§push(Number(§§pop()));
               }
            }
            var rY:* = §§pop();
            if(_loc5_)
            {
            }
            §§push(tMat.col1.x);
            if(_loc6_)
            {
               §§push(rX);
               if(!(_loc5_ && this))
               {
                  §§push(§§pop() * §§pop());
                  if(_loc5_)
                  {
                  }
                  addr159:
                  var tX:* = §§pop();
                  if(!(_loc5_ && this))
                  {
                     §§push(tMat.col1.y);
                     if(!_loc5_)
                     {
                        §§push(rX);
                        if(_loc6_ || rX)
                        {
                           §§push(§§pop() * §§pop());
                           §§push(tMat.col2.y);
                           §§push(rY);
                           if(!(_loc5_ && rY))
                           {
                              rY = Number(§§pop() + §§pop() * §§pop());
                              if(_loc6_)
                              {
                                 if(_loc5_)
                                 {
                                 }
                                 addr209:
                              }
                              §§push(tX);
                              if(!_loc5_)
                              {
                                 §§push(Number(§§pop()));
                                 if(_loc6_)
                                 {
                                    rX = §§pop();
                                    §§goto(addr209);
                                 }
                                 addr280:
                                 tX = §§pop();
                                 if(!_loc6_)
                                 {
                                 }
                                 return tX;
                              }
                              addr223:
                              §§push(rX);
                              if(!(_loc5_ && rY))
                              {
                                 §§push(this.m_force);
                                 if(_loc6_)
                                 {
                                    §§push(this.m_J.linear2.y);
                                    if(_loc6_ || this)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(_loc5_ && rX)
                                       {
                                       }
                                       addr277:
                                       §§push(§§pop() - (§§pop() - §§pop()));
                                    }
                                    addr264:
                                    §§goto(addr277);
                                    §§push(§§pop() * (§§pop() * this.m_J.linear2.x));
                                 }
                              }
                           }
                           §§push(§§pop() * §§pop());
                           if(_loc5_)
                           {
                           }
                           §§goto(addr277);
                        }
                        §§push(rY);
                        if(!_loc5_)
                        {
                           §§push(this.m_force);
                           if(_loc6_)
                           {
                              §§goto(addr264);
                           }
                           §§goto(addr264);
                        }
                        §§goto(addr277);
                     }
                     §§goto(addr280);
                     §§push(Number(§§pop()));
                  }
                  §§push(this.m_force);
                  §§push(this.m_J.angular2);
                  if(!(_loc5_ && rY))
                  {
                     §§goto(addr223);
                     §§push(§§pop() * §§pop());
                  }
                  §§goto(addr277);
               }
               addr148:
               §§push(§§pop() + §§pop() * rY);
               if(!(_loc5_ && rY))
               {
                  §§push(Number(§§pop()));
               }
               §§goto(addr159);
            }
            §§push(tMat.col2.x);
            if(!_loc5_)
            {
               §§goto(addr148);
            }
            §§goto(addr148);
         }
         §§goto(addr89);
      }
      
      override public function GetReactionForce() : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc2_)
         {
         }
         if(_loc2_)
         {
            if(_loc3_ && _loc2_)
            {
            }
         }
         §§push();
         §§push(this.m_force);
         if(_loc2_ || this)
         {
            §§push(this.m_J.linear2.x);
            if(!(_loc3_ && this))
            {
               §§push(§§pop() * §§pop());
            }
            addr78:
            var F:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
            if(_loc3_)
            {
            }
            return F;
         }
         §§push(this.m_force);
         if(!(_loc3_ && F))
         {
            §§push(§§pop() * this.m_J.linear2.y);
         }
         §§goto(addr78);
      }
      
      override public function SolvePositionConstraints() : Boolean
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc9_ && linearError)
         {
         }
         var coordinate1:* = NaN;
         var coordinate2:* = NaN;
         if(_loc8_ || b2)
         {
         }
         if(_loc8_ || linearError)
         {
         }
         §§push(0);
         if(_loc8_ || this)
         {
            §§push(Number(§§pop()));
         }
         var linearError:* = §§pop();
         if(_loc8_ || linearError)
         {
         }
         var b1:b2Body = m_body1;
         if(_loc9_)
         {
         }
         var b2:b2Body = m_body2;
         §§push(this.m_revolute1);
         if(_loc8_ || linearError)
         {
            if(§§pop())
            {
               if(_loc8_)
               {
                  §§push(this.m_revolute1);
               }
               addr152:
               §§push(this.m_constant);
               §§push(coordinate1);
               if(!_loc9_)
               {
                  §§push(this.m_ratio);
                  if(_loc8_ || linearError)
                  {
                     §§push(§§pop() * coordinate2);
                  }
                  §§push(§§pop() + §§pop());
               }
               §§push(Number(§§pop() - §§pop()));
            }
            else
            {
               §§push(this.m_prismatic1.GetJointTranslation());
               if(!_loc9_)
               {
                  §§push(Number(§§pop()));
                  if(!(_loc9_ && linearError))
                  {
                     addr113:
                     coordinate1 = §§pop();
                     addr142:
                     if(_loc8_ || b2)
                     {
                        if(_loc8_ || linearError)
                        {
                           addr129:
                           §§push(this.m_revolute2);
                           if(!_loc9_)
                           {
                              §§push(!!§§pop()?this.m_revolute2:Number(this.m_prismatic2.GetJointTranslation()));
                           }
                           §§push(Number(§§pop().GetJointAngle()));
                           if(!_loc9_)
                           {
                              coordinate2 = §§pop();
                           }
                           §§goto(addr152);
                        }
                        §§goto(addr152);
                     }
                     §§goto(addr152);
                  }
                  coordinate2 = §§pop();
                  §§goto(addr152);
               }
            }
            var C:* = §§pop();
            if(_loc8_ || b1)
            {
            }
            §§push(this.m_mass);
            if(_loc8_)
            {
               §§push(-§§pop());
               if(!(_loc9_ && this))
               {
                  §§push(§§pop() * C);
                  if(!_loc9_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
            }
            var impulse:* = §§pop();
            if(_loc8_)
            {
               §§push(b1.m_sweep);
               if(!(_loc9_ && linearError))
               {
                  §§push(§§pop().c);
                  if(!(_loc9_ && linearError))
                  {
                     §§push(b1.m_sweep);
                     if(_loc8_)
                     {
                        §§push(§§pop().c);
                        if(_loc8_ || linearError)
                        {
                           §§push(§§pop().x);
                           if(!_loc9_)
                           {
                              §§push(b1.m_invMass);
                              §§push(impulse);
                              if(!_loc9_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(_loc8_)
                                 {
                                    §§push(this.m_J);
                                    if(_loc8_ || b1)
                                    {
                                       §§push(§§pop().linear1);
                                       if(_loc8_)
                                       {
                                          §§push(§§pop() * §§pop().x);
                                          if(_loc8_ || this)
                                          {
                                             §§push(§§pop() + §§pop());
                                             if(!(_loc9_ && linearError))
                                             {
                                                §§pop().x = §§pop();
                                                if(_loc8_)
                                                {
                                                   §§push(b1.m_sweep);
                                                   if(_loc8_)
                                                   {
                                                      §§push(§§pop().c);
                                                      if(_loc8_)
                                                      {
                                                         §§push(b1.m_sweep);
                                                         if(_loc8_ || linearError)
                                                         {
                                                            §§push(§§pop().c);
                                                            if(_loc8_ || b1)
                                                            {
                                                               §§push(§§pop().y);
                                                               if(_loc8_ || b2)
                                                               {
                                                               }
                                                            }
                                                         }
                                                         addr418:
                                                         §§push(§§pop().c);
                                                         if(_loc8_ || linearError)
                                                         {
                                                            §§push(§§pop().x);
                                                            if(!_loc9_)
                                                            {
                                                               addr432:
                                                               §§push(b2.m_invMass * impulse);
                                                               §§push(this.m_J);
                                                               addr500:
                                                               if(_loc8_ || b2)
                                                               {
                                                                  addr442:
                                                                  §§push(§§pop().linear2);
                                                                  if(!(_loc9_ && linearError))
                                                                  {
                                                                     §§push(§§pop() * §§pop().x);
                                                                     if(_loc8_ || b1)
                                                                     {
                                                                     }
                                                                     addr503:
                                                                     §§push(§§pop() + §§pop());
                                                                  }
                                                                  addr501:
                                                                  §§push(§§pop().y);
                                                               }
                                                               §§goto(addr501);
                                                               §§push(§§pop().linear2);
                                                            }
                                                            addr504:
                                                            §§pop().y = §§pop();
                                                            if(_loc8_ || linearError)
                                                            {
                                                               addr515:
                                                               §§push(b2.m_sweep);
                                                               §§push(b2.m_sweep.a);
                                                               addr550:
                                                               if(!(_loc9_ && this))
                                                               {
                                                                  §§push(b2.m_invI);
                                                                  if(_loc8_ || b1)
                                                                  {
                                                                     addr534:
                                                                     §§push(impulse);
                                                                     addr548:
                                                                     if(_loc8_)
                                                                     {
                                                                        addr537:
                                                                        §§push(§§pop() * §§pop());
                                                                        if(!(_loc9_ && linearError))
                                                                        {
                                                                           addr547:
                                                                           §§push(this.m_J.angular2);
                                                                        }
                                                                     }
                                                                     §§push(§§pop() * §§pop());
                                                                  }
                                                                  §§push(§§pop() + §§pop());
                                                               }
                                                               §§pop().a = §§pop();
                                                               if(_loc8_ || b1)
                                                               {
                                                                  addr558:
                                                                  b1.SynchronizeTransform();
                                                               }
                                                            }
                                                            addr571:
                                                            addr573:
                                                            b2.SynchronizeTransform();
                                                            return linearError < b2Settings.b2_linearSlop;
                                                         }
                                                      }
                                                   }
                                                }
                                                if(_loc8_)
                                                {
                                                   §§goto(addr571);
                                                }
                                                §§goto(addr573);
                                             }
                                             addr460:
                                             §§pop().x = §§pop();
                                             if(!_loc9_)
                                             {
                                                if(!_loc9_)
                                                {
                                                   §§push(b2.m_sweep);
                                                   if(_loc8_ || linearError)
                                                   {
                                                      addr475:
                                                      §§push(§§pop().c);
                                                   }
                                                   §§goto(addr515);
                                                }
                                                §§goto(addr558);
                                             }
                                             §§goto(addr573);
                                          }
                                          §§goto(addr460);
                                          §§push(§§pop() + §§pop());
                                       }
                                       addr334:
                                       §§pop().y = §§pop() + §§pop() * §§pop().y;
                                       if(_loc9_)
                                       {
                                       }
                                       §§goto(addr558);
                                    }
                                    addr333:
                                    §§goto(addr334);
                                    §§push(§§pop().linear1);
                                 }
                                 addr313:
                                 §§push(impulse);
                                 if(_loc8_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(_loc8_ || b2)
                                    {
                                       §§push(this.m_J);
                                       if(!(_loc9_ && linearError))
                                       {
                                          §§goto(addr333);
                                       }
                                       §§goto(addr442);
                                    }
                                    §§goto(addr503);
                                 }
                                 §§goto(addr432);
                              }
                              §§goto(addr503);
                              §§push(§§pop() * §§pop());
                           }
                           §§goto(addr313);
                           §§push(b1.m_invMass);
                        }
                        addr479:
                        §§push(§§pop().y);
                        if(_loc8_ || b2)
                        {
                           §§push(b2.m_invMass);
                           if(!(_loc9_ && this))
                           {
                              §§push(§§pop() * impulse);
                           }
                           §§goto(addr500);
                           §§push(this.m_J);
                        }
                        §§goto(addr504);
                     }
                     addr478:
                     §§goto(addr479);
                     §§push(§§pop().c);
                  }
                  addr476:
                  §§goto(addr478);
                  §§push(b2.m_sweep);
               }
               addr401:
               §§push(§§pop().c);
               if(_loc8_ || b1)
               {
                  §§push(b2.m_sweep);
                  if(!(_loc9_ && b1))
                  {
                     §§goto(addr418);
                  }
                  §§goto(addr478);
               }
               §§goto(addr476);
            }
            §§push(b1.m_sweep);
            if(_loc8_)
            {
               §§push(b1.m_sweep);
               if(_loc8_ || b2)
               {
                  §§push(§§pop().a);
                  if(_loc8_ || linearError)
                  {
                     §§push(b1.m_invI);
                     if(_loc8_)
                     {
                        §§push(impulse);
                        if(!_loc9_)
                        {
                           §§push(§§pop() * §§pop());
                           if(!_loc9_)
                           {
                              §§push(this.m_J);
                              if(_loc8_)
                              {
                                 §§push(§§pop().angular1);
                                 if(!_loc9_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(_loc8_ || this)
                                    {
                                    }
                                    §§goto(addr534);
                                 }
                                 §§goto(addr548);
                              }
                              §§goto(addr547);
                           }
                           §§push(§§pop() + §§pop());
                           if(_loc8_)
                           {
                              §§pop().a = §§pop();
                              §§push(b2.m_sweep);
                              if(!(_loc9_ && linearError))
                              {
                                 §§goto(addr401);
                              }
                              §§goto(addr475);
                           }
                        }
                        §§goto(addr537);
                     }
                     §§goto(addr547);
                  }
                  §§goto(addr550);
               }
               §§goto(addr515);
            }
            §§goto(addr515);
         }
         §§push(Number(§§pop().GetJointAngle()));
         if(!_loc9_)
         {
            coordinate1 = §§pop();
            if(_loc8_)
            {
               §§goto(addr129);
            }
            §§goto(addr152);
         }
         else
         {
            §§goto(addr113);
         }
         §§goto(addr142);
      }
      
      public function GetRatio() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
         }
         if(!_loc2_)
         {
         }
         return this.m_ratio;
      }
      
      override public function SolveVelocityConstraints(step:b2TimeStep) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc8_ && step)
         {
         }
         if(!(_loc8_ && b1))
         {
            if(!_loc7_)
            {
            }
            addr44:
            var b1:b2Body = m_body1;
            if(_loc8_ && b2)
            {
            }
            var b2:b2Body = m_body2;
            if(_loc7_ || this)
            {
            }
            §§push(this.m_J);
            if(_loc8_)
            {
            }
            §§push(b1.m_linearVelocity);
            §§push(b1.m_angularVelocity);
            if(_loc7_ || b1)
            {
            }
            §§push(§§pop().Compute(§§pop(),§§pop(),b2.m_linearVelocity,b2.m_angularVelocity));
            if(_loc7_)
            {
               §§push(Number(§§pop()));
            }
            var Cdot:* = §§pop();
            if(!_loc7_)
            {
            }
            §§push(step.inv_dt);
            if(_loc7_ || b1)
            {
               §§push(-§§pop());
               if(!_loc8_)
               {
                  §§push(this.m_mass);
                  if(_loc7_)
                  {
                     §§push(§§pop() * §§pop());
                     if(!_loc8_)
                     {
                        §§push(Cdot);
                     }
                     addr119:
                     §§push(Number(§§pop()));
                  }
                  §§push(§§pop() * §§pop());
                  if(!_loc8_)
                  {
                     §§goto(addr119);
                  }
               }
            }
            var force:* = §§pop();
            if(!_loc8_)
            {
               if(_loc7_)
               {
                  §§push(this);
                  §§push(this.m_force);
                  if(_loc7_ || step)
                  {
                     §§push(§§pop() + force);
                  }
                  §§pop().m_force = §§pop();
                  if(!_loc7_)
                  {
                  }
                  addr142:
                  §§push(step.dt);
                  if(_loc7_)
                  {
                     §§push(§§pop() * force);
                     if(!(_loc8_ && step))
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  var P:* = §§pop();
                  if(!_loc8_)
                  {
                     if(!_loc8_)
                     {
                        §§push(b1.m_linearVelocity);
                        if(_loc7_ || b2)
                        {
                           §§push(b1.m_linearVelocity);
                           if(_loc7_ || b2)
                           {
                              §§push(§§pop().x);
                              if(!_loc8_)
                              {
                                 §§push(b1.m_invMass * P);
                                 §§push(this.m_J);
                                 if(_loc7_ || this)
                                 {
                                    §§push(§§pop().linear1);
                                    if(!(_loc8_ && this))
                                    {
                                       §§push(§§pop().x);
                                       if(!(_loc8_ && step))
                                       {
                                          §§push(§§pop() + §§pop() * §§pop());
                                          if(!(_loc8_ && b2))
                                          {
                                             §§pop().x = §§pop();
                                          }
                                          addr370:
                                          §§push(b2.m_invMass);
                                          §§push(P);
                                          addr387:
                                          if(_loc7_ || b2)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(_loc7_)
                                             {
                                                addr386:
                                                §§push(this.m_J.linear2.y);
                                             }
                                             addr388:
                                             §§pop().y = §§pop() + §§pop();
                                             addr398:
                                             if(_loc8_ && this)
                                             {
                                             }
                                             §§push(b2);
                                             §§push(b2.m_angularVelocity);
                                             addr427:
                                             if(_loc7_)
                                             {
                                                §§push(b2.m_invI);
                                                if(!_loc8_)
                                                {
                                                   §§push(P);
                                                   if(_loc7_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(!_loc8_)
                                                      {
                                                         §§push(this.m_J.angular2);
                                                      }
                                                   }
                                                   §§push(§§pop() * §§pop());
                                                }
                                                §§push(§§pop() + §§pop());
                                             }
                                             §§pop().m_angularVelocity = §§pop();
                                             return;
                                          }
                                          §§goto(addr388);
                                          §§push(§§pop() * §§pop());
                                       }
                                       addr259:
                                       §§push(§§pop() * §§pop());
                                       if(!(_loc8_ && step))
                                       {
                                          §§push(this.m_J);
                                          if(_loc7_ || b1)
                                          {
                                          }
                                          addr346:
                                          §§push(§§pop().linear2);
                                          if(!(_loc8_ && b2))
                                          {
                                             addr356:
                                             §§push(§§pop() + §§pop() * §§pop().x);
                                             if(!_loc8_)
                                             {
                                                §§pop().x = §§pop();
                                                if(!_loc8_)
                                                {
                                                   if(!_loc8_)
                                                   {
                                                      addr369:
                                                      §§goto(addr370);
                                                      §§push(b2.m_linearVelocity);
                                                      §§push(b2.m_linearVelocity.y);
                                                   }
                                                   §§goto(addr398);
                                                }
                                                §§goto(addr427);
                                             }
                                             §§goto(addr388);
                                          }
                                          §§goto(addr386);
                                       }
                                       addr288:
                                       §§pop().y = §§pop() + §§pop();
                                       §§push(b1);
                                       §§push(b1.m_angularVelocity);
                                       if(!_loc8_)
                                       {
                                          §§push(b1.m_invI);
                                          if(_loc7_)
                                          {
                                             §§push(P);
                                             if(_loc7_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!_loc7_)
                                                {
                                                }
                                                addr310:
                                                §§push(§§pop() + §§pop());
                                             }
                                             addr309:
                                             §§goto(addr310);
                                             §§push(§§pop() * §§pop());
                                          }
                                          §§goto(addr309);
                                          §§push(this.m_J.angular1);
                                       }
                                       §§pop().m_angularVelocity = §§pop();
                                       if(!_loc8_)
                                       {
                                          §§push(b2.m_linearVelocity);
                                          if(!(_loc8_ && step))
                                          {
                                             §§push(b2.m_linearVelocity);
                                             if(_loc8_)
                                             {
                                             }
                                             §§goto(addr369);
                                          }
                                          §§goto(addr369);
                                       }
                                       §§goto(addr369);
                                    }
                                    addr277:
                                    §§push(§§pop().y);
                                    addr339:
                                    if(_loc7_ || this)
                                    {
                                       addr285:
                                       §§push(§§pop() * §§pop());
                                       if(_loc7_)
                                       {
                                          §§goto(addr288);
                                       }
                                       §§goto(addr356);
                                    }
                                    §§push(§§pop() * §§pop());
                                    if(!_loc8_)
                                    {
                                       §§push(this.m_J);
                                       if(_loc7_)
                                       {
                                          §§goto(addr346);
                                       }
                                       §§goto(addr386);
                                    }
                                    §§goto(addr356);
                                 }
                                 §§goto(addr277);
                                 §§push(§§pop().linear1);
                              }
                              addr329:
                              §§push(b2.m_invMass);
                              §§push(P);
                              if(!(_loc8_ && b1))
                              {
                                 §§goto(addr339);
                              }
                              §§goto(addr387);
                           }
                           §§goto(addr329);
                           §§push(§§pop().x);
                        }
                        addr239:
                        §§push(b1.m_linearVelocity);
                        if(_loc7_ || b1)
                        {
                           §§push(§§pop().y);
                           §§push(b1.m_invMass);
                           §§push(P);
                           if(_loc7_ || b1)
                           {
                              §§goto(addr259);
                           }
                           §§goto(addr285);
                        }
                        §§goto(addr369);
                     }
                     addr230:
                     §§push(b1.m_linearVelocity);
                     if(_loc7_ || this)
                     {
                        §§goto(addr239);
                     }
                     §§goto(addr369);
                  }
                  §§goto(addr230);
               }
            }
            §§goto(addr142);
         }
         if(_loc8_ && b2)
         {
         }
         §§goto(addr44);
      }
   }
}
