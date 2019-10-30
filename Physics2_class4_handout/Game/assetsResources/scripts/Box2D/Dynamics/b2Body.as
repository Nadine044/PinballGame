package Box2D.Dynamics
{
   import Box2D.Collision.Shapes.b2MassData;
   import Box2D.Collision.Shapes.b2Shape;
   import Box2D.Collision.Shapes.b2ShapeDef;
   import Box2D.Common.Math.b2Mat22;
   import Box2D.Common.Math.b2Math;
   import Box2D.Common.Math.b2Sweep;
   import Box2D.Common.Math.b2Vec2;
   import Box2D.Common.Math.b2XForm;
   import Box2D.Dynamics.Contacts.b2ContactEdge;
   import Box2D.Dynamics.Joints.b2JointEdge;
   
   public class b2Body
   {
      
      public static var e_fixedRotationFlag:uint = 64;
      
      public static var e_frozenFlag:uint = 2;
      
      public static var e_maxTypes:uint = 3;
      
      public static var e_sleepFlag:uint = 8;
      
      private static var s_massData:b2MassData;
      
      public static var e_bulletFlag:uint = 32;
      
      public static var e_staticType:uint = 1;
      
      public static var e_islandFlag:uint = 4;
      
      public static var e_allowSleepFlag:uint = 16;
      
      private static var s_xf1:b2XForm;
      
      public static var e_dynamicType:uint = 2;
      
      {
         var s_massData:Boolean = false;
         var s_xf1:Boolean = true;
         if(!s_massData)
         {
            s_massData = new b2MassData();
            if(s_xf1)
            {
               if(s_xf1)
               {
                  s_xf1 = new b2XForm();
                  if(s_xf1)
                  {
                     e_frozenFlag = 2;
                     if(!s_massData)
                     {
                        e_islandFlag = 4;
                        if(!s_massData)
                        {
                           e_sleepFlag = 8;
                           if(s_xf1 || b2Body)
                           {
                           }
                           addr76:
                           if(s_xf1)
                           {
                              e_fixedRotationFlag = 64;
                              if(s_xf1)
                              {
                                 addr84:
                                 addr106:
                                 if(s_xf1 || s_xf1)
                                 {
                                 }
                              }
                           }
                           e_staticType = 1;
                        }
                        e_allowSleepFlag = 16;
                        if(!s_massData)
                        {
                           if(!s_massData)
                           {
                              e_bulletFlag = 32;
                              if(s_xf1)
                              {
                                 §§goto(addr76);
                              }
                           }
                        }
                        §§goto(addr84);
                     }
                  }
               }
            }
            e_dynamicType = 2;
            §§goto(addr106);
         }
      }
      
      public var m_next:b2Body;
      
      public var m_xf:b2XForm;
      
      public var m_contactList:b2ContactEdge;
      
      public var m_angularVelocity:Number;
      
      public var m_shapeList:b2Shape;
      
      public var m_force:b2Vec2;
      
      public var m_mass:Number;
      
      public var m_sweep:b2Sweep;
      
      public var m_torque:Number;
      
      public var m_userData;
      
      public var m_flags:uint;
      
      public var m_world:b2World;
      
      public var m_prev:b2Body;
      
      public var m_invMass:Number;
      
      public var m_type:int;
      
      public var m_linearDamping:Number;
      
      public var m_shapeCount:int;
      
      public var m_angularDamping:Number;
      
      public var m_invI:Number;
      
      public var m_linearVelocity:b2Vec2;
      
      public var m_sleepTime:Number;
      
      public var m_jointList:b2JointEdge;
      
      public var m_I:Number;
      
      public function b2Body(bd:b2BodyDef, world:b2World)
      {
         /*
          * Error de decompilación
          * Tiempo de espera (1 minuto) alcanzado
          * Instruction count: 784
          */
         throw new flash.errors.IllegalOperationError("No decompilado debido al tiempo de espera");
      }
      
      public function GetLinearVelocityFromWorldPoint(worldPoint:b2Vec2) : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_)
         {
         }
         if(_loc3_ || _loc3_)
         {
            if(!_loc3_)
            {
            }
         }
         §§push();
         if(_loc3_ || worldPoint)
         {
         }
         §§push(this.m_linearVelocity.x);
         if(!(_loc2_ && this))
         {
            §§push(this.m_angularVelocity);
            if(!(_loc2_ && _loc2_))
            {
               §§push(worldPoint.y);
               if(_loc3_ || worldPoint)
               {
                  §§push(this.m_sweep.c.y);
                  if(!(_loc2_ && worldPoint))
                  {
                     §§push(§§pop() - §§pop());
                     if(_loc2_)
                     {
                     }
                     addr125:
                     return new §§pop().b2Vec2(§§pop(),§§pop() - §§pop());
                  }
                  addr124:
                  §§goto(addr125);
                  §§push(§§pop() * §§pop());
               }
               §§push(§§pop() * §§pop());
               if(_loc3_)
               {
                  §§push(§§pop() + §§pop());
                  if(_loc2_ && worldPoint)
                  {
                  }
               }
               §§goto(addr125);
            }
            addr104:
            §§push(this.m_angularVelocity);
            if(!_loc2_)
            {
               §§push(worldPoint.x);
               if(!_loc2_)
               {
                  §§push(§§pop() - this.m_sweep.c.x);
               }
               §§goto(addr124);
            }
            §§goto(addr125);
         }
         §§push(this.m_linearVelocity.x);
         if(_loc3_)
         {
            §§goto(addr104);
         }
         §§goto(addr125);
      }
      
      public function SetLinearVelocity(v:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_ && v)
         {
         }
         if(!(_loc3_ && this))
         {
            if(_loc2_ || _loc3_)
            {
               if(_loc3_)
               {
               }
            }
            addr61:
            return;
         }
         this.m_linearVelocity.SetV(v);
         if(!_loc2_)
         {
         }
         §§goto(addr61);
      }
      
      public function WakeUp() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
         }
         if(!(_loc1_ && _loc2_))
         {
            if(_loc2_)
            {
               this.m_flags = this.m_flags & ~e_sleepFlag;
               if(_loc1_)
               {
               }
               addr64:
               this.m_sleepTime = 0;
               if(!_loc1_)
               {
                  addr69:
               }
            }
            return;
         }
         if(_loc2_ || _loc2_)
         {
            §§goto(addr64);
         }
         §§goto(addr69);
      }
      
      public function GetLocalCenter() : b2Vec2
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && _loc1_)
         {
         }
         if(_loc2_ && _loc2_)
         {
         }
         return this.m_sweep.localCenter;
      }
      
      public function ApplyTorque(torque:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_ && torque)
         {
         }
         if(this.IsSleeping())
         {
            if(_loc3_)
            {
               this.WakeUp();
            }
            addr56:
            return;
         }
         §§push(this);
         §§push(this.m_torque);
         if(!_loc2_)
         {
            §§push(§§pop() + torque);
         }
         §§pop().m_torque = §§pop();
         §§goto(addr56);
      }
      
      public function IsFrozen() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && _loc1_)
         {
         }
         if(_loc1_ && this)
         {
         }
         return (this.m_flags & e_frozenFlag) == e_frozenFlag;
      }
      
      public function IsDynamic() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(_loc1_ && this)
         {
         }
         return this.m_type == e_dynamicType;
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
         if(_loc1_ || _loc2_)
         {
         }
         return this.m_linearVelocity;
      }
      
      public function SynchronizeTransform() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc4_)
         {
         }
         if(!(_loc4_ && this))
         {
            if(_loc4_ && tMat)
            {
            }
            addr40:
            if(!(_loc4_ && tMat))
            {
               addr48:
               §§push(this.m_xf);
               if(_loc3_)
               {
                  §§push(§§pop().R);
                  if(_loc3_)
                  {
                     §§pop().Set(this.m_sweep.a);
                     if(!_loc3_)
                     {
                     }
                     addr62:
                     §§push(this.m_xf);
                  }
                  addr65:
                  var tMat:b2Mat22 = §§pop();
                  if(_loc4_)
                  {
                  }
                  var tVec:b2Vec2 = this.m_sweep.localCenter;
                  if(!(_loc4_ && tMat))
                  {
                     if(!_loc4_)
                     {
                        §§push(this.m_xf);
                        if(!(_loc4_ && tVec))
                        {
                           §§push(§§pop().position);
                           if(!(_loc4_ && tMat))
                           {
                              §§push(this.m_sweep);
                              if(!_loc4_)
                              {
                                 §§push(§§pop().c);
                                 if(!(_loc4_ && tVec))
                                 {
                                    §§push(§§pop().x);
                                    if(!(_loc4_ && this))
                                    {
                                       §§push(tMat.col1);
                                       if(_loc3_)
                                       {
                                          §§push(§§pop().x);
                                          if(!_loc4_)
                                          {
                                             §§push(tVec.x);
                                             if(!_loc4_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(_loc4_ && this)
                                                {
                                                }
                                                addr203:
                                                §§push(tVec.x);
                                                if(!_loc4_)
                                                {
                                                   addr207:
                                                   §§push(§§pop() * §§pop());
                                                   if(!_loc4_)
                                                   {
                                                      addr212:
                                                      §§push(tMat.col2.y);
                                                      if(_loc3_ || tMat)
                                                      {
                                                         addr220:
                                                         §§push(§§pop() * tVec.y);
                                                      }
                                                   }
                                                   addr224:
                                                   §§push(§§pop() - §§pop());
                                                }
                                                §§goto(addr224);
                                                §§push(§§pop() + §§pop());
                                             }
                                             addr155:
                                             §§push(tVec.y);
                                             if(!_loc4_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!_loc4_)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   if(_loc3_ || tVec)
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                      if(_loc3_)
                                                      {
                                                         §§pop().x = §§pop();
                                                         if(_loc4_)
                                                         {
                                                         }
                                                         addr240:
                                                         return;
                                                      }
                                                   }
                                                   §§goto(addr203);
                                                }
                                                §§goto(addr220);
                                             }
                                             §§goto(addr220);
                                          }
                                          §§push(tMat.col2);
                                          if(_loc3_)
                                          {
                                             §§push(§§pop().x);
                                             if(!_loc4_)
                                             {
                                                §§goto(addr155);
                                             }
                                             §§goto(addr207);
                                          }
                                          §§goto(addr212);
                                       }
                                       addr195:
                                       §§push(§§pop().y);
                                       if(_loc3_ || _loc3_)
                                       {
                                          §§goto(addr203);
                                       }
                                       §§goto(addr212);
                                    }
                                    addr232:
                                    §§pop().y = §§pop();
                                    if(_loc3_ || tMat)
                                    {
                                       §§goto(addr240);
                                    }
                                    §§goto(addr240);
                                 }
                                 addr190:
                                 §§push(§§pop().y);
                                 if(_loc3_)
                                 {
                                    §§goto(addr195);
                                    §§push(tMat.col1);
                                 }
                                 §§goto(addr232);
                              }
                              addr189:
                              §§goto(addr190);
                              §§push(§§pop().c);
                           }
                           addr187:
                           §§goto(addr189);
                           §§push(this.m_sweep);
                        }
                        addr186:
                        §§goto(addr187);
                        §§push(§§pop().position);
                     }
                     addr184:
                     §§goto(addr186);
                     §§push(this.m_xf);
                  }
                  if(_loc3_ || this)
                  {
                     §§goto(addr184);
                  }
                  §§goto(addr240);
               }
               §§goto(addr65);
               §§push(§§pop().R);
            }
            §§goto(addr62);
         }
         if(!(_loc4_ && tMat))
         {
            §§goto(addr40);
         }
         §§goto(addr48);
      }
      
      public function GetInertia() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
         if(_loc2_)
         {
         }
         return this.m_I;
      }
      
      public function IsSleeping() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
         if(_loc2_)
         {
         }
         return (this.m_flags & e_sleepFlag) == e_sleepFlag;
      }
      
      public function SetMassFromShapes() : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc8_ && centerX)
         {
         }
         var s:b2Shape = null;
         if(!_loc9_)
         {
         }
         if(_loc9_)
         {
            if(!_loc9_)
            {
            }
            addr74:
            addr79:
            this.m_invI = 0;
            addr78:
            §§push(0);
            if(!(_loc8_ && s))
            {
               §§push(Number(§§pop()));
            }
            var centerX:* = §§pop();
            if(_loc9_ || centerX)
            {
            }
            §§push(0);
            if(_loc9_)
            {
               §§push(Number(§§pop()));
            }
            var centerY:* = §§pop();
            if(!_loc9_)
            {
            }
            var massData:b2MassData = s_massData;
            if(_loc8_ && centerY)
            {
            }
            s = this.m_shapeList;
            while(true)
            {
               if(!s)
               {
                  if(!(_loc8_ && centerX))
                  {
                     §§push(this.m_mass);
                     if(_loc9_)
                     {
                        addr233:
                        if(§§pop() > 0)
                        {
                           this.m_invMass = 1 / this.m_mass;
                           if(!(_loc8_ && s))
                           {
                              break;
                           }
                           addr388:
                           this.m_sweep.localCenter.Set(centerX,centerY);
                           addr421:
                           if(_loc9_ || centerX)
                           {
                              addr420:
                           }
                           var tMat:b2Mat22 = this.m_xf.R;
                           if(_loc8_)
                           {
                           }
                           var tVec:b2Vec2 = this.m_sweep.localCenter;
                           if(_loc9_ || centerX)
                           {
                              §§push(this.m_sweep);
                              if(_loc9_)
                              {
                                 §§push(§§pop().c);
                                 if(!(_loc8_ && centerY))
                                 {
                                    §§push(tMat.col1);
                                    if(!(_loc8_ && s))
                                    {
                                       §§push(§§pop().x);
                                       if(!_loc8_)
                                       {
                                          §§push(tVec.x);
                                          if(!_loc8_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             §§push(tMat.col2);
                                             if(!(_loc8_ && centerY))
                                             {
                                                §§push(§§pop().x);
                                                §§push(tVec.y);
                                                if(!(_loc8_ && centerY))
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc9_)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc9_ || this)
                                                      {
                                                         §§pop().x = §§pop();
                                                         §§push(this.m_sweep);
                                                         if(!(_loc8_ && centerY))
                                                         {
                                                            §§push(§§pop().c);
                                                            if(!_loc8_)
                                                            {
                                                               §§push(tMat.col1);
                                                            }
                                                            addr549:
                                                            §§push(this.m_sweep);
                                                            addr589:
                                                            if(!_loc8_)
                                                            {
                                                               §§push(§§pop().c);
                                                               if(_loc9_)
                                                               {
                                                                  §§push(§§pop().x);
                                                                  if(_loc8_)
                                                                  {
                                                                  }
                                                                  addr603:
                                                                  §§pop().y = §§pop();
                                                                  §§push(this.m_sweep);
                                                               }
                                                               addr590:
                                                               §§push(§§pop().y);
                                                               if(!(_loc8_ && this))
                                                               {
                                                                  addr601:
                                                                  §§push(this.m_xf.position.y);
                                                               }
                                                               §§goto(addr603);
                                                            }
                                                            §§goto(addr590);
                                                            §§push(§§pop().c);
                                                         }
                                                         addr586:
                                                         §§push(§§pop().c);
                                                      }
                                                      addr528:
                                                      §§push(tMat.col2);
                                                   }
                                                   addr602:
                                                   §§goto(addr603);
                                                   §§push(§§pop() + §§pop());
                                                }
                                                addr533:
                                                §§push(§§pop() * §§pop());
                                             }
                                             §§goto(addr533);
                                             §§push(§§pop().y);
                                             §§push(tVec.y);
                                          }
                                          §§pop().y = §§pop() + §§pop();
                                          §§push(this.m_sweep);
                                          if(!(_loc8_ && this))
                                          {
                                             §§push(§§pop().c);
                                             if(_loc9_)
                                             {
                                                §§goto(addr549);
                                             }
                                          }
                                          §§goto(addr586);
                                       }
                                       §§push(this.m_xf);
                                       if(!(_loc8_ && this))
                                       {
                                          §§push(§§pop().position);
                                          if(_loc9_ || centerX)
                                          {
                                             §§push(§§pop() + §§pop().x);
                                             if(!_loc8_)
                                             {
                                                §§pop().x = §§pop();
                                             }
                                             §§goto(addr603);
                                          }
                                          §§goto(addr601);
                                       }
                                       §§goto(addr601);
                                    }
                                    §§push(§§pop().y);
                                    §§push(tVec.x);
                                    if(!(_loc8_ && centerX))
                                    {
                                       §§goto(addr528);
                                       §§push(§§pop() * §§pop());
                                    }
                                    §§goto(addr602);
                                 }
                                 §§goto(addr589);
                                 §§push(this.m_sweep);
                              }
                              addr607:
                              §§pop().c0.SetV(this.m_sweep.c);
                              if(_loc8_ && centerX)
                              {
                              }
                              s = this.m_shapeList;
                              if(!_loc8_)
                              {
                                 while(true)
                                 {
                                    if(!s)
                                    {
                                       if(!_loc8_)
                                       {
                                          break;
                                       }
                                       addr660:
                                       §§push(this.m_type);
                                       if(!(_loc8_ && this))
                                       {
                                          §§push(int(§§pop()));
                                       }
                                       var oldType:* = §§pop();
                                       if(!_loc8_)
                                       {
                                          §§push(this.m_invMass);
                                          if(_loc9_ || centerX)
                                          {
                                             §§push(0);
                                             if(!(_loc8_ && centerY))
                                             {
                                                §§push(§§pop() == §§pop());
                                                if(!_loc8_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(_loc9_ || this)
                                                      {
                                                      }
                                                   }
                                                   addr710:
                                                   if(§§pop())
                                                   {
                                                      if(_loc9_)
                                                      {
                                                         this.m_type = e_staticType;
                                                         if(_loc8_)
                                                         {
                                                         }
                                                      }
                                                      addr736:
                                                      s = this.m_shapeList;
                                                      if(_loc9_ || centerY)
                                                      {
                                                         addr779:
                                                         while(true)
                                                         {
                                                            if(!s)
                                                            {
                                                               if(_loc9_ || centerX)
                                                               {
                                                               }
                                                               break;
                                                            }
                                                            if(!_loc8_)
                                                            {
                                                               s.RefilterProxy(this.m_world.m_broadPhase,this.m_xf);
                                                               if(_loc9_ || s)
                                                               {
                                                                  if(_loc9_ || centerX)
                                                                  {
                                                                  }
                                                               }
                                                               break;
                                                            }
                                                            break;
                                                         }
                                                         return;
                                                      }
                                                      while(true)
                                                      {
                                                         s = s.m_next;
                                                         §§goto(addr779);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      this.m_type = e_dynamicType;
                                                      addr724:
                                                   }
                                                }
                                                §§pop();
                                                if(_loc9_)
                                                {
                                                   §§push(this.m_invI);
                                                }
                                                §§goto(addr724);
                                             }
                                             addr709:
                                             §§goto(addr710);
                                             §§push(§§pop() == §§pop());
                                          }
                                          §§goto(addr709);
                                          §§push(0);
                                       }
                                       if(oldType != this.m_type)
                                       {
                                          if(!(_loc8_ && centerX))
                                          {
                                             §§goto(addr736);
                                          }
                                          §§goto(addr736);
                                       }
                                       §§goto(addr796);
                                    }
                                    else
                                    {
                                       if(_loc9_ || this)
                                       {
                                          s.UpdateSweepRadius(this.m_sweep.localCenter);
                                          if(_loc9_)
                                          {
                                             if(_loc9_ || s)
                                             {
                                                s = s.m_next;
                                                continue;
                                             }
                                             break;
                                          }
                                          break;
                                       }
                                       break;
                                    }
                                 }
                              }
                              §§goto(addr660);
                           }
                           §§push(this.m_sweep);
                           if(!_loc8_)
                           {
                              §§goto(addr586);
                           }
                           §§goto(addr607);
                        }
                     }
                     addr272:
                     centerX = §§pop();
                     if(!(_loc8_ && s))
                     {
                        §§push(centerY * this.m_invMass);
                        if(!(_loc8_ && this))
                        {
                           addr292:
                           §§push(Number(§§pop()));
                        }
                        centerY = §§pop();
                        if(_loc9_ || this)
                        {
                           if(!_loc9_)
                           {
                           }
                           addr380:
                           this.m_invI = 1 / this.m_I;
                           if(!_loc8_)
                           {
                              §§goto(addr388);
                           }
                           §§goto(addr388);
                        }
                        §§goto(addr421);
                     }
                     addr406:
                     §§goto(addr388);
                  }
                  break;
               }
               addr306:
               s.ComputeMass(massData);
               if(!_loc8_)
               {
                  §§push(this);
                  §§push(this.m_mass);
                  if(!_loc8_)
                  {
                     §§push(§§pop() + massData.mass);
                  }
                  §§pop().m_mass = §§pop();
                  if(_loc9_)
                  {
                     §§push(centerX);
                     §§push(massData.mass);
                     if(_loc9_)
                     {
                        §§push(massData.center);
                        if(_loc9_)
                        {
                           §§push(§§pop().x);
                           if(_loc9_ || s)
                           {
                              §§push(Number(§§pop() + §§pop() * §§pop()));
                              if(!(_loc8_ && s))
                              {
                                 centerX = §§pop();
                                 if(!_loc8_)
                                 {
                                    §§push(centerY);
                                    §§push(massData.mass);
                                    if(_loc9_ || centerY)
                                    {
                                       §§push(massData.center);
                                    }
                                    addr307:
                                    §§push(§§pop() > §§pop());
                                    if(!(_loc8_ && centerY))
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc8_)
                                          {
                                          }
                                       }
                                       addr326:
                                       if(§§pop())
                                       {
                                          §§push(this);
                                          §§push(this.m_I);
                                          if(!(_loc8_ && s))
                                          {
                                             §§push(this.m_mass);
                                             if(_loc9_)
                                             {
                                                §§push(centerX);
                                                if(!(_loc8_ && this))
                                                {
                                                   §§push(centerX);
                                                   if(_loc9_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(!_loc8_)
                                                      {
                                                         §§push(centerY);
                                                         if(_loc9_ || s)
                                                         {
                                                            §§push(§§pop() * centerY);
                                                         }
                                                      }
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                }
                                                §§push(§§pop() * §§pop());
                                             }
                                             §§push(§§pop() - §§pop());
                                          }
                                          §§pop().m_I = §§pop();
                                          if(!_loc8_)
                                          {
                                             if(!(_loc8_ && centerX))
                                             {
                                                §§goto(addr380);
                                             }
                                             §§goto(addr420);
                                          }
                                       }
                                       else
                                       {
                                          this.m_I = 0;
                                          this.m_invI = 0;
                                          if(!_loc8_)
                                          {
                                             §§goto(addr406);
                                          }
                                       }
                                       §§goto(addr421);
                                    }
                                    §§pop();
                                    §§goto(addr326);
                                    §§push((this.m_flags & e_fixedRotationFlag) == 0);
                                 }
                                 addr206:
                                 if(!(_loc8_ && centerY))
                                 {
                                    s = s.m_next;
                                    continue;
                                 }
                              }
                              addr189:
                              centerY = Number(§§pop());
                              §§push(this);
                              §§push(this.m_I);
                              if(!(_loc8_ && centerY))
                              {
                                 §§push(§§pop() + massData.I);
                              }
                              §§pop().m_I = §§pop();
                              §§goto(addr206);
                           }
                           addr185:
                           §§push(§§pop() * §§pop());
                           if(!_loc8_)
                           {
                              §§goto(addr189);
                              §§push(§§pop() + §§pop());
                           }
                        }
                        §§goto(addr185);
                        §§push(§§pop().y);
                     }
                     §§goto(addr233);
                  }
               }
               break;
               §§goto(addr307);
            }
            §§push(centerX);
            if(!_loc8_)
            {
               §§push(this.m_invMass);
               if(_loc9_ || centerX)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc8_ && centerY)
                  {
                  }
                  §§goto(addr306);
               }
               §§goto(addr307);
            }
            §§push(Number(§§pop()));
            if(_loc9_)
            {
               §§goto(addr272);
            }
            §§goto(addr292);
         }
         if(this.m_world.m_lock == true)
         {
            if(_loc9_)
            {
               if(_loc9_ || centerY)
               {
                  return;
               }
            }
         }
         else
         {
            this.m_mass = 0;
            if(_loc9_)
            {
               if(_loc9_)
               {
                  this.m_invMass = 0;
                  if(_loc8_)
                  {
                  }
                  §§goto(addr78);
               }
               this.m_I = 0;
            }
            §§goto(addr74);
         }
         §§goto(addr79);
      }
      
      public function PutToSleep() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && _loc2_)
         {
         }
         if(!_loc2_)
         {
            this.m_flags = this.m_flags | e_sleepFlag;
            if(!(_loc2_ && _loc2_))
            {
               this.m_sleepTime = 0;
               if(_loc2_)
               {
               }
               addr83:
               return;
            }
            if(!_loc2_)
            {
               this.m_linearVelocity.SetZero();
               this.m_angularVelocity = 0;
               if(!_loc2_)
               {
                  if(!_loc1_)
                  {
                  }
                  addr82:
                  §§goto(addr83);
               }
            }
            addr76:
            if(!_loc2_)
            {
               this.m_torque = 0;
               §§goto(addr82);
            }
            §§goto(addr83);
         }
         this.m_force.SetZero();
         §§goto(addr76);
      }
      
      public function GetJointList() : b2JointEdge
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(_loc1_ && this)
         {
         }
         return this.m_jointList;
      }
      
      public function SetXForm(position:b2Vec2, angle:Number) : Boolean
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         if(_loc10_ || this)
         {
         }
         var s:b2Shape = null;
         var inRange:* = false;
         if(!_loc9_)
         {
            if(_loc10_ || angle)
            {
               §§push(this.m_world.m_lock);
               if(!(_loc9_ && position))
               {
                  if(§§pop() == true)
                  {
                     §§push(true);
                     if(_loc9_ && angle)
                     {
                        addr71:
                        if(§§pop())
                        {
                           return false;
                        }
                        else
                        {
                           §§push(this.m_xf);
                           if(_loc10_)
                           {
                              §§push(§§pop().R);
                              if(_loc10_ || position)
                              {
                                 §§pop().Set(angle);
                                 if(_loc9_)
                                 {
                                 }
                                 addr108:
                                 §§push(this.m_xf.R);
                              }
                              var tMat:b2Mat22 = §§pop();
                              if(!_loc10_)
                              {
                              }
                              var tVec:b2Vec2 = this.m_sweep.localCenter;
                              if(!(_loc9_ && angle))
                              {
                                 §§push(this.m_sweep);
                                 if(!(_loc9_ && s))
                                 {
                                    §§push(§§pop().c);
                                    if(_loc10_ || this)
                                    {
                                       §§push(tMat.col1);
                                       if(!(_loc9_ && position))
                                       {
                                          §§push(§§pop().x);
                                          §§push(tVec.x);
                                          if(!(_loc9_ && s))
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(_loc10_ || this)
                                             {
                                                §§push(tMat.col2);
                                                if(!(_loc9_ && position))
                                                {
                                                   §§push(§§pop().x);
                                                   if(_loc9_)
                                                   {
                                                   }
                                                   addr195:
                                                   §§push(§§pop() + §§pop());
                                                   addr217:
                                                   if(!_loc9_)
                                                   {
                                                      §§pop().x = §§pop();
                                                      if(!_loc9_)
                                                      {
                                                         §§push(this.m_sweep);
                                                         if(!_loc9_)
                                                         {
                                                            §§push(§§pop().c);
                                                            if(_loc10_ || this)
                                                            {
                                                               §§push(tMat.col1);
                                                            }
                                                         }
                                                         addr358:
                                                         §§pop().a0 = this.m_sweep.a = angle;
                                                         if(_loc9_ && angle)
                                                         {
                                                         }
                                                         addr375:
                                                         var freeze:* = false;
                                                         if(_loc9_)
                                                         {
                                                         }
                                                         s = this.m_shapeList;
                                                         while(true)
                                                         {
                                                            if(!s)
                                                            {
                                                               if(!_loc9_)
                                                               {
                                                                  if(_loc10_ || this)
                                                                  {
                                                                  }
                                                                  addr479:
                                                                  this.m_flags = this.m_flags | e_frozenFlag;
                                                                  break;
                                                               }
                                                               addr502:
                                                               s = this.m_shapeList;
                                                               while(s)
                                                               {
                                                                  s.DestroyProxy(this.m_world.m_broadPhase);
                                                                  s = s.m_next;
                                                               }
                                                               if(!_loc10_)
                                                               {
                                                               }
                                                               return false;
                                                            }
                                                            if(_loc10_ || s)
                                                            {
                                                               §§push(s.Synchronize(this.m_world.m_broadPhase,this.m_xf,this.m_xf));
                                                               if(!(_loc9_ && angle))
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                                  if(_loc10_)
                                                                  {
                                                                     inRange = §§pop();
                                                                  }
                                                                  addr444:
                                                                  freeze = §§pop();
                                                                  if(!_loc10_)
                                                                  {
                                                                  }
                                                                  break;
                                                               }
                                                               addr424:
                                                               §§push(false);
                                                               addr470:
                                                               if(_loc10_ || angle)
                                                               {
                                                                  if(§§pop() == §§pop())
                                                                  {
                                                                     if(!_loc9_)
                                                                     {
                                                                        §§push(true);
                                                                        if(_loc10_ || s)
                                                                        {
                                                                           §§goto(addr444);
                                                                        }
                                                                        addr541:
                                                                        return §§pop();
                                                                     }
                                                                     addr497:
                                                                     this.m_angularVelocity = 0;
                                                                     if(!_loc9_)
                                                                     {
                                                                        §§goto(addr502);
                                                                     }
                                                                     §§goto(addr502);
                                                                  }
                                                                  else
                                                                  {
                                                                     s = s.m_next;
                                                                     continue;
                                                                  }
                                                               }
                                                               if(§§pop() == §§pop())
                                                               {
                                                                  if(_loc10_ || this)
                                                                  {
                                                                     §§goto(addr479);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  this.m_world.m_broadPhase.Commit();
                                                               }
                                                               §§goto(addr541);
                                                               §§push(true);
                                                            }
                                                            §§push(inRange);
                                                            if(!(_loc9_ && this))
                                                            {
                                                               §§goto(addr424);
                                                            }
                                                            §§goto(addr444);
                                                            §§push(freeze);
                                                            if(_loc10_)
                                                            {
                                                               §§goto(addr470);
                                                               §§push(true);
                                                            }
                                                            §§goto(addr541);
                                                         }
                                                         this.m_linearVelocity.SetZero();
                                                         if(_loc10_ || angle)
                                                         {
                                                            §§goto(addr497);
                                                         }
                                                         §§goto(addr502);
                                                      }
                                                      §§goto(addr375);
                                                   }
                                                   addr327:
                                                   §§push(tVec.x);
                                                   if(_loc10_ || s)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      §§push(tMat.col2);
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                }
                                                addr232:
                                                §§pop().y = §§pop() + §§pop().y * tVec.y;
                                                addr356:
                                                if(_loc10_ || this)
                                                {
                                                }
                                                addr356:
                                                §§goto(addr358);
                                                §§push(this.m_sweep);
                                             }
                                             addr328:
                                             §§pop().y = §§pop();
                                             if(!_loc9_)
                                             {
                                                if(!_loc9_)
                                                {
                                                   §§push(this.m_sweep);
                                                   if(_loc10_ || this)
                                                   {
                                                      addr343:
                                                      §§pop().c0.SetV(this.m_sweep.c);
                                                      if(_loc9_ && position)
                                                      {
                                                      }
                                                   }
                                                   §§goto(addr358);
                                                }
                                             }
                                             §§goto(addr356);
                                          }
                                          §§push(tVec.y);
                                          if(!(_loc9_ && this))
                                          {
                                             §§goto(addr195);
                                             §§push(§§pop() * §§pop());
                                          }
                                          §§goto(addr232);
                                       }
                                       §§goto(addr217);
                                       §§push(§§pop().y);
                                    }
                                    addr255:
                                    §§push(this.m_sweep);
                                    if(!(_loc9_ && s))
                                    {
                                       §§push(§§pop().c);
                                       if(!_loc9_)
                                       {
                                          §§push(§§pop().x);
                                          if(!_loc9_)
                                          {
                                             §§push(this.m_xf);
                                             if(_loc10_ || this)
                                             {
                                                §§push(§§pop().position);
                                                if(!_loc9_)
                                                {
                                                   §§push(§§pop() + §§pop().x);
                                                   if(_loc9_ && position)
                                                   {
                                                   }
                                                   §§goto(addr328);
                                                }
                                                addr326:
                                                §§goto(addr327);
                                                §§push(§§pop().y);
                                             }
                                             addr325:
                                             §§goto(addr326);
                                             §§push(§§pop().position);
                                          }
                                          §§pop().x = §§pop();
                                          if(!_loc9_)
                                          {
                                             §§push(this.m_sweep);
                                             if(!(_loc9_ && s))
                                             {
                                                addr312:
                                                §§push(§§pop().c);
                                                §§push(this.m_sweep);
                                             }
                                             §§goto(addr343);
                                          }
                                          §§goto(addr356);
                                       }
                                       addr315:
                                       §§push(§§pop().y);
                                       if(!(_loc9_ && position))
                                       {
                                          §§goto(addr325);
                                          §§push(this.m_xf);
                                       }
                                       §§goto(addr328);
                                    }
                                    §§goto(addr315);
                                    §§push(§§pop().c);
                                 }
                                 addr252:
                                 §§push(§§pop().c);
                                 if(!_loc9_)
                                 {
                                    §§goto(addr255);
                                 }
                                 §§goto(addr312);
                              }
                              §§push(this.m_sweep);
                              if(_loc10_ || angle)
                              {
                                 §§goto(addr252);
                              }
                              §§goto(addr312);
                           }
                           addr102:
                           §§pop().position.SetV(position);
                           if(!_loc10_)
                           {
                           }
                           §§goto(addr108);
                        }
                     }
                  }
                  else
                  {
                     §§push(this.IsFrozen());
                     if(!_loc9_)
                     {
                        §§goto(addr71);
                     }
                  }
                  return §§pop();
               }
               return §§pop();
            }
         }
         §§push(this.m_xf);
         if(!(_loc9_ && s))
         {
            §§goto(addr102);
         }
         §§goto(addr108);
      }
      
      public function GetLocalPoint(worldPoint:b2Vec2) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
         }
         if(_loc2_ || _loc2_)
         {
            if(!_loc2_)
            {
            }
            addr47:
            return b2Math.b2MulXT(this.m_xf,worldPoint);
         }
         §§goto(addr47);
      }
      
      public function ApplyForce(force:b2Vec2, point:b2Vec2) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc4_)
         {
         }
         if(!_loc3_)
         {
            if(_loc4_)
            {
               if(this.IsSleeping())
               {
                  if(!(_loc3_ && point))
                  {
                     this.WakeUp();
                     if(_loc4_)
                     {
                        if(_loc3_)
                        {
                        }
                     }
                     addr103:
                     §§push(this);
                     §§push(this.m_torque);
                     if(!_loc3_)
                     {
                        §§push(point.x);
                        if(_loc4_)
                        {
                           §§push(this.m_sweep.c.x);
                           if(!(_loc3_ && force))
                           {
                              §§push(§§pop() - §§pop());
                              if(_loc4_ || point)
                              {
                                 §§push(force.y);
                                 if(_loc4_ || _loc3_)
                                 {
                                 }
                                 addr167:
                                 §§push(§§pop() - §§pop() * force.x);
                              }
                              addr171:
                              §§push(§§pop() + §§pop());
                           }
                           §§push(§§pop() * §§pop());
                           if(!_loc4_)
                           {
                           }
                           §§goto(addr171);
                        }
                        §§push(point.y);
                        if(_loc4_ || _loc3_)
                        {
                           §§push(this.m_sweep.c.y);
                           if(!(_loc3_ && _loc3_))
                           {
                              §§push(§§pop() - §§pop());
                              if(!_loc3_)
                              {
                                 §§goto(addr167);
                              }
                           }
                           §§goto(addr167);
                        }
                        §§goto(addr167);
                     }
                     §§pop().m_torque = §§pop();
                     addr188:
                     if(_loc3_ && this)
                     {
                     }
                     return;
                  }
               }
               §§push(this.m_force);
               if(!_loc3_)
               {
                  §§push(this.m_force);
                  if(!_loc3_)
                  {
                     §§push(§§pop().x);
                     if(!(_loc3_ && this))
                     {
                        §§push(force.x);
                        if(_loc4_ || force)
                        {
                           §§push(§§pop() + §§pop());
                           if(!(_loc3_ && force))
                           {
                              §§pop().x = §§pop();
                           }
                           addr85:
                           §§push(force.y);
                        }
                        §§push(§§pop() + §§pop());
                     }
                     addr95:
                     §§pop().y = §§pop();
                     if(!(_loc3_ && _loc3_))
                     {
                        §§goto(addr103);
                     }
                     §§goto(addr103);
                  }
                  addr82:
                  §§push(§§pop().y);
                  if(_loc4_)
                  {
                     §§goto(addr85);
                  }
                  §§goto(addr95);
               }
               addr80:
               §§goto(addr82);
               §§push(this.m_force);
            }
            §§goto(addr80);
            §§push(this.m_force);
         }
         §§goto(addr188);
      }
      
      public function SynchronizeShapes() : Boolean
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc6_)
         {
         }
         var s:b2Shape = null;
         if(!_loc7_)
         {
         }
         if(_loc7_ || tVec)
         {
         }
         var xf1:b2XForm = s_xf1;
         if(!_loc6_)
         {
            if(!_loc6_)
            {
               §§push(xf1.R);
               if(!_loc6_)
               {
                  §§pop().Set(this.m_sweep.a0);
                  if(!_loc7_)
                  {
                  }
               }
               addr57:
               var tMat:b2Mat22 = §§pop();
               if(_loc6_)
               {
               }
               var tVec:b2Vec2 = this.m_sweep.localCenter;
               if(!(_loc6_ && tVec))
               {
                  if(!(_loc6_ && this))
                  {
                     §§push(xf1.position);
                     if(!_loc6_)
                     {
                        §§push(this.m_sweep);
                        if(!_loc6_)
                        {
                           §§push(§§pop().c0);
                           if(_loc7_ || tVec)
                           {
                              §§push(§§pop().x);
                              if(_loc7_ || this)
                              {
                                 §§push(tMat.col1);
                                 if(!(_loc6_ && tMat))
                                 {
                                    §§push(§§pop().x);
                                    if(!_loc6_)
                                    {
                                       §§push(tVec.x);
                                       if(_loc7_ || tMat)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(!_loc6_)
                                          {
                                             §§push(tMat.col2);
                                             if(_loc7_ || this)
                                             {
                                                §§push(§§pop().x);
                                                if(_loc7_)
                                                {
                                                   §§push(tVec.y);
                                                   if(_loc7_ || tVec)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(!(_loc6_ && this))
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(!_loc6_)
                                                         {
                                                            §§push(§§pop() - §§pop());
                                                            if(!_loc7_)
                                                            {
                                                            }
                                                            addr191:
                                                            §§push(tMat.col1);
                                                         }
                                                         addr196:
                                                         §§push(tVec.x);
                                                         if(_loc6_)
                                                         {
                                                         }
                                                         addr213:
                                                         §§push(tVec.y);
                                                      }
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc7_ || xf1)
                                                      {
                                                      }
                                                   }
                                                   §§push(§§pop() * §§pop());
                                                }
                                             }
                                             addr210:
                                             §§push(§§pop().y);
                                             if(!_loc6_)
                                             {
                                                §§goto(addr213);
                                             }
                                          }
                                          addr208:
                                          §§goto(addr210);
                                          §§push(tMat.col2);
                                       }
                                       §§push(§§pop() + §§pop());
                                    }
                                    addr218:
                                    §§pop().y = §§pop() - §§pop();
                                    if(!_loc6_)
                                    {
                                       addr221:
                                    }
                                 }
                                 §§push(§§pop().y);
                                 if(!_loc6_)
                                 {
                                    §§goto(addr196);
                                 }
                                 §§goto(addr208);
                              }
                              §§pop().x = §§pop();
                              if(_loc7_)
                              {
                                 if(_loc6_ && this)
                                 {
                                 }
                                 §§goto(addr221);
                              }
                           }
                           addr188:
                           §§push(§§pop().y);
                           if(_loc7_)
                           {
                              §§goto(addr191);
                           }
                           §§goto(addr218);
                        }
                        addr187:
                        §§goto(addr188);
                        §§push(§§pop().c0);
                     }
                     addr178:
                     §§goto(addr187);
                     §§push(this.m_sweep);
                  }
                  §§goto(addr178);
                  §§push(xf1.position);
               }
               var inRange:* = true;
               if(_loc6_ && xf1)
               {
               }
               s = this.m_shapeList;
               while(true)
               {
                  if(!s)
                  {
                     if(_loc7_ || tVec)
                     {
                        addr304:
                        §§push(inRange);
                        if(_loc7_)
                        {
                           break;
                        }
                     }
                     addr316:
                     this.m_flags = this.m_flags | e_frozenFlag;
                     addr323:
                     this.m_linearVelocity.SetZero();
                     if(_loc7_)
                     {
                        if(_loc7_)
                        {
                           this.m_angularVelocity = 0;
                           if(_loc6_)
                           {
                           }
                           addr338:
                           s = this.m_shapeList;
                           while(s)
                           {
                              s.DestroyProxy(this.m_world.m_broadPhase);
                              if(_loc7_)
                              {
                                 if(!_loc6_)
                                 {
                                    s = s.m_next;
                                    continue;
                                 }
                                 break;
                              }
                              break;
                           }
                           return false;
                        }
                     }
                     §§goto(addr338);
                  }
                  else
                  {
                     if(!(_loc6_ && xf1))
                     {
                        §§push(s.Synchronize(this.m_world.m_broadPhase,xf1,this.m_xf));
                        if(!(_loc6_ && this))
                        {
                           §§push(Boolean(§§pop()));
                           if(!_loc6_)
                           {
                              inRange = §§pop();
                              if(_loc7_ || xf1)
                              {
                                 if(!_loc7_)
                                 {
                                 }
                                 addr287:
                                 §§goto(addr304);
                              }
                              §§goto(addr323);
                           }
                           break;
                        }
                     }
                     §§push(inRange);
                     if(_loc7_ || this)
                     {
                        §§push(false);
                        if(!_loc6_)
                        {
                           if(§§pop() == §§pop())
                           {
                              §§goto(addr287);
                           }
                           else
                           {
                              s = s.m_next;
                              continue;
                           }
                        }
                        addr308:
                        if(§§pop() == §§pop())
                        {
                           if(_loc7_ || this)
                           {
                              §§goto(addr316);
                           }
                           §§goto(addr338);
                        }
                        else
                        {
                           §§push(true);
                        }
                     }
                     break;
                  }
                  return §§pop();
               }
               §§goto(addr308);
               §§push(false);
            }
         }
         §§goto(addr57);
      }
      
      public function GetAngle() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && _loc2_)
         {
         }
         if(!_loc1_)
         {
         }
         return this.m_sweep.a;
      }
      
      public function GetXForm() : b2XForm
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(_loc1_ && _loc2_)
         {
         }
         return this.m_xf;
      }
      
      public function GetLinearVelocityFromLocalPoint(localPoint:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc5_ && A)
         {
         }
         if(_loc4_ || localPoint)
         {
            if(!_loc5_)
            {
               if(_loc4_)
               {
                  if(!_loc4_)
                  {
                  }
               }
            }
         }
         var A:b2Mat22 = this.m_xf.R;
         if(_loc5_ && worldPoint)
         {
         }
         §§push();
         if(!_loc4_)
         {
         }
         §§push(A.col1.x);
         if(_loc4_ || A)
         {
            §§push(localPoint.x);
            if(!(_loc5_ && A))
            {
               §§push(§§pop() * §§pop());
               if(_loc4_ || localPoint)
               {
               }
               addr103:
               §§push(A.col1.y);
               if(_loc4_)
               {
                  addr109:
                  §§push(localPoint.x);
                  if(!_loc5_)
                  {
                     addr113:
                     §§push(§§pop() * §§pop());
                     if(_loc5_)
                     {
                     }
                  }
                  addr136:
                  §§push(§§pop() + §§pop());
               }
               §§push(A.col2.y);
               if(_loc4_ || localPoint)
               {
                  §§push(§§pop() * localPoint.y);
               }
               §§goto(addr136);
            }
            addr137:
            var worldPoint:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
            if(!_loc5_)
            {
               if(!_loc4_)
               {
               }
               addr184:
               §§push();
               if(_loc5_)
               {
               }
               §§push(this.m_linearVelocity.x);
               if(!(_loc5_ && this))
               {
                  §§push(this.m_angularVelocity);
                  if(!_loc5_)
                  {
                     §§push(worldPoint.y);
                     if(_loc4_)
                     {
                        §§push(this.m_sweep.c.y);
                        if(!_loc5_)
                        {
                           §§push(§§pop() - §§pop());
                           if(_loc4_ || this)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc4_ || localPoint)
                              {
                              }
                              addr238:
                              §§push(this.m_angularVelocity);
                              addr260:
                              if(!_loc4_)
                              {
                              }
                              addr259:
                              return new §§pop().b2Vec2(§§pop(),§§pop() - §§pop());
                           }
                        }
                        addr253:
                        §§goto(addr259);
                        §§push(§§pop() * (§§pop() - this.m_sweep.c.x));
                     }
                     §§push(worldPoint.x);
                     if(_loc4_)
                     {
                        §§goto(addr253);
                     }
                     §§goto(addr253);
                  }
                  §§push(§§pop() + §§pop());
                  if(!_loc4_)
                  {
                  }
                  addr233:
                  §§push(this.m_linearVelocity.x);
                  if(!_loc5_)
                  {
                     §§goto(addr238);
                  }
                  §§goto(addr260);
               }
               §§goto(addr233);
            }
            §§push(worldPoint);
            §§push(worldPoint.x);
            if(_loc4_ || this)
            {
               §§push(§§pop() + this.m_xf.position.x);
            }
            §§pop().x = §§pop();
            if(_loc4_)
            {
               if(_loc4_)
               {
                  §§push(worldPoint);
                  §§push(worldPoint.y);
                  if(_loc4_)
                  {
                     §§push(§§pop() + this.m_xf.position.y);
                  }
                  §§pop().y = §§pop();
                  if(_loc4_ || this)
                  {
                  }
               }
               §§goto(addr184);
            }
            §§goto(addr184);
         }
         §§push(A.col2.x);
         if(!(_loc5_ && worldPoint))
         {
            §§push(localPoint.y);
            if(!_loc5_)
            {
               §§push(§§pop() * §§pop());
               if(!_loc5_)
               {
                  §§push(§§pop() + §§pop());
                  if(_loc4_)
                  {
                     §§goto(addr103);
                  }
                  §§goto(addr103);
               }
               §§goto(addr137);
            }
            §§goto(addr113);
         }
         §§goto(addr109);
      }
      
      public function GetNext() : b2Body
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(!_loc2_)
         {
         }
         return this.m_next;
      }
      
      public function GetMass() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(_loc1_)
         {
         }
         return this.m_mass;
      }
      
      public function ApplyImpulse(impulse:b2Vec2, point:b2Vec2) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc3_ && _loc3_)
         {
         }
         if(!(_loc3_ && point))
         {
            if(!(_loc3_ && this))
            {
               if(this.IsSleeping())
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     if(_loc4_)
                     {
                        this.WakeUp();
                     }
                     addr99:
                     addr220:
                     if(_loc3_ && impulse)
                     {
                     }
                     return;
                  }
               }
               §§push(this.m_linearVelocity);
               if(!_loc3_)
               {
                  §§push(this.m_linearVelocity);
                  if(!_loc3_)
                  {
                     §§push(§§pop().x);
                     if(_loc4_ || point)
                     {
                        §§push(this.m_invMass);
                        if(!_loc3_)
                        {
                           §§push(impulse.x);
                           if(!_loc3_)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc4_)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(!(_loc3_ && this))
                                 {
                                    §§pop().x = §§pop();
                                    if(_loc4_ || point)
                                    {
                                       §§goto(addr99);
                                    }
                                    addr219:
                                    §§goto(addr220);
                                 }
                                 addr129:
                                 §§pop().y = §§pop();
                              }
                              addr128:
                              §§goto(addr129);
                              §§push(§§pop() + §§pop());
                           }
                           addr127:
                           §§goto(addr128);
                           §§push(§§pop() * §§pop());
                        }
                        addr125:
                        §§goto(addr127);
                        §§push(impulse.y);
                     }
                     addr121:
                     §§push(this.m_invMass);
                     if(!_loc3_)
                     {
                        §§goto(addr125);
                     }
                     §§goto(addr128);
                  }
                  addr118:
                  §§push(§§pop().y);
                  if(_loc4_)
                  {
                     §§goto(addr121);
                  }
                  §§goto(addr129);
               }
               addr116:
               §§goto(addr118);
               §§push(this.m_linearVelocity);
            }
            if(!_loc3_)
            {
               §§push(this);
               §§push(this.m_angularVelocity);
               if(_loc4_)
               {
                  §§push(this.m_invI);
                  if(_loc4_ || this)
                  {
                     §§push(point.x);
                     if(!_loc3_)
                     {
                        §§push(this.m_sweep.c.x);
                        if(_loc4_ || this)
                        {
                           §§push(§§pop() - §§pop());
                           if(_loc4_)
                           {
                              §§push(impulse.y);
                              if(!_loc4_)
                              {
                              }
                              addr215:
                              §§push(§§pop() - §§pop() * impulse.x);
                           }
                           addr216:
                           §§push(§§pop() * §§pop());
                        }
                        §§push(§§pop() * §§pop());
                        if(_loc4_ || this)
                        {
                        }
                        §§goto(addr216);
                     }
                     §§push(point.y);
                     if(!(_loc3_ && point))
                     {
                        §§push(this.m_sweep.c.y);
                        if(!(_loc3_ && this))
                        {
                           §§push(§§pop() - §§pop());
                           if(_loc3_ && point)
                           {
                           }
                           §§goto(addr215);
                        }
                        §§goto(addr215);
                     }
                     §§goto(addr215);
                  }
                  §§push(§§pop() + §§pop());
               }
               §§pop().m_angularVelocity = §§pop();
            }
            §§goto(addr219);
         }
         §§goto(addr116);
      }
      
      public function GetAngularVelocity() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
         }
         if(!_loc2_)
         {
         }
         return this.m_angularVelocity;
      }
      
      public function SetAngularVelocity(omega:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_ && _loc3_)
         {
         }
         if(_loc3_)
         {
            if(_loc3_ || this)
            {
               if(!(_loc2_ && omega))
               {
                  this.m_angularVelocity = omega;
                  if(_loc3_ || this)
                  {
                  }
               }
               addr66:
               return;
            }
         }
         §§goto(addr66);
      }
      
      public function SetMass(massData:b2MassData) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc7_)
         {
         }
         var s:b2Shape = null;
         var tVec:b2Vec2 = null;
         if(!(_loc7_ && this))
         {
            if(_loc6_ || tMat)
            {
               if(this.m_world.m_lock == true)
               {
                  return;
               }
               this.m_invMass = 0;
               if(_loc7_ && this)
               {
               }
               this.m_I = 0;
               this.m_invI = 0;
               if(_loc7_)
               {
               }
            }
            addr149:
            if(!(_loc7_ && tMat))
            {
               addr157:
               this.m_sweep.localCenter.SetV(massData.center);
               addr163:
            }
            var tMat:b2Mat22 = this.m_xf.R;
            if(_loc7_ && this)
            {
            }
            tVec = this.m_sweep.localCenter;
            §§push(this.m_sweep);
            if(!_loc7_)
            {
               §§push(§§pop().c);
               if(_loc6_ || s)
               {
                  §§push(tMat.col1);
                  if(!(_loc7_ && this))
                  {
                     §§push(§§pop().x);
                     if(!_loc7_)
                     {
                        §§push(tVec.x);
                        if(!(_loc7_ && tMat))
                        {
                           §§push(§§pop() * §§pop());
                           §§push(tMat.col2);
                           if(!(_loc7_ && this))
                           {
                              §§push(§§pop().x);
                              if(!(_loc7_ && massData))
                              {
                                 §§push(tVec.y);
                                 if(_loc6_ || this)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(_loc6_ || s)
                                    {
                                    }
                                    addr381:
                                    §§pop().y = §§pop() + §§pop();
                                    §§push(this.m_sweep);
                                 }
                                 addr314:
                                 §§pop().y = §§pop() + §§pop() * §§pop();
                                 if(!(_loc7_ && s))
                                 {
                                    §§push(this.m_sweep);
                                    if(!_loc7_)
                                    {
                                       §§push(§§pop().c);
                                       if(_loc6_)
                                       {
                                          §§push(this.m_sweep);
                                          if(!(_loc7_ && s))
                                          {
                                             §§push(§§pop().c);
                                             if(!_loc7_)
                                             {
                                                §§push(§§pop().x);
                                                §§push(this.m_xf);
                                                if(!_loc7_)
                                                {
                                                   §§push(§§pop().position);
                                                   if(!(_loc7_ && massData))
                                                   {
                                                      addr358:
                                                      §§pop().x = §§pop() + §§pop().x;
                                                   }
                                                   addr380:
                                                   §§goto(addr381);
                                                   §§push(§§pop().y);
                                                }
                                                addr379:
                                                §§goto(addr380);
                                                §§push(§§pop().position);
                                             }
                                             addr374:
                                             §§push(§§pop().y);
                                             if(_loc6_)
                                             {
                                                §§goto(addr379);
                                                §§push(this.m_xf);
                                             }
                                             §§goto(addr381);
                                          }
                                          addr373:
                                          §§goto(addr374);
                                          §§push(§§pop().c);
                                       }
                                    }
                                 }
                                 §§push(this.m_sweep);
                                 if(!(_loc7_ && tMat))
                                 {
                                    §§push(§§pop().c);
                                 }
                              }
                              §§push(§§pop() + §§pop());
                              if(_loc7_ && this)
                              {
                              }
                              §§goto(addr381);
                           }
                           addr304:
                           §§push(§§pop().y);
                           if(!(_loc7_ && massData))
                           {
                              §§goto(addr314);
                              §§push(tVec.y);
                           }
                           §§goto(addr381);
                        }
                        addr301:
                        §§goto(addr304);
                        §§push(§§pop() * §§pop());
                        §§push(tMat.col2);
                     }
                     §§pop().x = §§pop();
                     if(_loc6_ || tMat)
                     {
                        §§push(this.m_sweep);
                        if(_loc6_ || s)
                        {
                           §§push(§§pop().c);
                           if(_loc6_ || this)
                           {
                              §§push(tMat.col1);
                           }
                        }
                     }
                     addr392:
                     s = this.m_shapeList;
                     while(true)
                     {
                        if(!s)
                        {
                           if(_loc6_ || s)
                           {
                              break;
                           }
                           break;
                        }
                        if(_loc6_)
                        {
                           s.UpdateSweepRadius(this.m_sweep.localCenter);
                           if(_loc6_)
                           {
                              if(!(_loc7_ && s))
                              {
                                 s = s.m_next;
                                 continue;
                              }
                              break;
                           }
                           break;
                        }
                        break;
                     }
                     §§push(this.m_type);
                     if(_loc6_)
                     {
                        §§push(int(§§pop()));
                     }
                     var oldType:* = §§pop();
                     if(!(_loc7_ && tMat))
                     {
                        §§push(this.m_invMass);
                        if(!_loc7_)
                        {
                           §§push(0);
                           if(_loc6_ || this)
                           {
                              §§push(§§pop() == §§pop());
                              if(!(_loc7_ && tMat))
                              {
                                 if(§§pop())
                                 {
                                    if(!_loc7_)
                                    {
                                       §§pop();
                                    }
                                 }
                              }
                              addr473:
                              if(§§pop())
                              {
                                 if(_loc6_ || s)
                                 {
                                    if(_loc7_)
                                    {
                                    }
                                 }
                                 this.m_type = e_staticType;
                                 if(_loc7_)
                                 {
                                 }
                              }
                              else
                              {
                                 this.m_type = e_dynamicType;
                              }
                              if(oldType != this.m_type)
                              {
                                 s = this.m_shapeList;
                                 if(!_loc7_)
                                 {
                                    loop1:
                                    while(true)
                                    {
                                       if(!s)
                                       {
                                          if(_loc6_ || this)
                                          {
                                             break;
                                          }
                                          break;
                                       }
                                       addr525:
                                       if(!_loc6_)
                                       {
                                       }
                                       while(!(_loc7_ && s))
                                       {
                                          s = s.m_next;
                                          continue loop1;
                                       }
                                       break;
                                    }
                                 }
                                 while(true)
                                 {
                                    s.RefilterProxy(this.m_world.m_broadPhase,this.m_xf);
                                    if(!(_loc7_ && massData))
                                    {
                                       §§goto(addr525);
                                    }
                                 }
                              }
                              return;
                           }
                           addr472:
                           §§goto(addr473);
                           §§push(§§pop() == §§pop());
                        }
                        addr471:
                        §§goto(addr472);
                        §§push(0);
                     }
                     §§goto(addr471);
                     §§push(this.m_invI);
                  }
                  §§push(§§pop().y);
                  if(_loc6_)
                  {
                     §§push(tVec.x);
                     if(!_loc7_)
                     {
                        §§goto(addr301);
                     }
                     §§goto(addr358);
                  }
                  §§goto(addr358);
               }
               §§goto(addr373);
               §§push(this.m_sweep);
            }
            §§pop().c0.SetV(this.m_sweep.c);
            §§goto(addr392);
         }
         this.m_mass = massData.mass;
         if(!(_loc7_ && s))
         {
            §§push(this.m_mass);
            if(_loc6_)
            {
               §§push(0);
               if(!(_loc7_ && massData))
               {
                  if(§§pop() > §§pop())
                  {
                     if(!_loc6_)
                     {
                     }
                     addr113:
                     addr141:
                     if(_loc7_ && this)
                     {
                     }
                     addr140:
                     this.m_invI = 1 / this.m_I;
                     if(!_loc7_)
                     {
                        §§goto(addr149);
                     }
                     §§goto(addr163);
                  }
                  if((this.m_flags & b2Body.e_fixedRotationFlag) == 0)
                  {
                     this.m_I = massData.I;
                     if(!_loc6_)
                     {
                     }
                     §§goto(addr140);
                  }
                  §§push(this.m_I);
               }
               addr139:
               if(§§pop() > §§pop())
               {
                  §§goto(addr140);
               }
               §§goto(addr157);
            }
            §§goto(addr139);
            §§push(0);
         }
         this.m_invMass = 1 / this.m_mass;
         if(_loc6_ || this)
         {
            §§goto(addr113);
         }
         §§goto(addr141);
      }
      
      public function IsStatic() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(_loc1_ && _loc2_)
         {
         }
         return this.m_type == e_staticType;
      }
      
      public function GetWorldVector(localVector:b2Vec2) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_)
         {
         }
         if(!_loc3_)
         {
            if(_loc2_ || localVector)
            {
            }
            addr42:
            return b2Math.b2MulMV(this.m_xf.R,localVector);
         }
         §§goto(addr42);
      }
      
      public function GetShapeList() : b2Shape
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(_loc1_)
         {
         }
         return this.m_shapeList;
      }
      
      public function Advance(t:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc2_)
         {
         }
         if(_loc2_ || _loc3_)
         {
            §§push(this.m_sweep);
            if(!(_loc3_ && t))
            {
               §§push(t);
               if(!(_loc3_ && this))
               {
                  §§pop().Advance(§§pop());
                  if(_loc2_)
                  {
                     §§push(this.m_sweep);
                     if(!(_loc3_ && _loc2_))
                     {
                        §§pop().c.SetV(this.m_sweep.c0);
                        if(_loc3_ && _loc3_)
                        {
                        }
                        addr96:
                        return;
                     }
                  }
                  addr92:
                  this.SynchronizeTransform();
                  if(_loc2_)
                  {
                     §§goto(addr96);
                  }
                  §§goto(addr96);
               }
               addr88:
               §§pop().a = §§pop();
               if(_loc2_)
               {
                  §§goto(addr92);
               }
               §§goto(addr96);
            }
            addr78:
            §§goto(addr88);
            §§push(this.m_sweep.a0);
         }
         §§goto(addr78);
      }
      
      public function SetBullet(flag:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || flag)
         {
         }
         if(_loc3_ || flag)
         {
            if(flag)
            {
               if(!_loc3_)
               {
               }
               this.m_flags = this.m_flags | e_bulletFlag;
            }
            else
            {
               this.m_flags = this.m_flags & ~e_bulletFlag;
            }
         }
      }
      
      public function CreateShape(def:b2ShapeDef) : b2Shape
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc6_)
         {
         }
         if(_loc5_)
         {
            if(_loc5_ || def)
            {
               if(this.m_world.m_lock != true)
               {
                  var s:b2Shape = b2Shape.Create(def,this.m_world.m_blockAllocator);
                  if(!_loc6_)
                  {
                     if(!_loc6_)
                     {
                        s.m_next = this.m_shapeList;
                        if(_loc5_ || s)
                        {
                           if(_loc5_)
                           {
                              this.m_shapeList = s;
                              if(_loc6_)
                              {
                              }
                              addr120:
                              return s;
                           }
                           addr115:
                           s.UpdateSweepRadius(this.m_sweep.localCenter);
                           §§goto(addr120);
                        }
                        addr114:
                        §§goto(addr115);
                     }
                  }
                  §§push(_loc3_.m_shapeCount);
                  if(_loc5_)
                  {
                     §§push(§§pop() + 1);
                  }
                  if(!_loc6_)
                  {
                     _loc3_.m_shapeCount = _loc4_;
                  }
                  if(!_loc6_)
                  {
                     s.m_body = this;
                  }
                  s.CreateProxy(this.m_world.m_broadPhase,this.m_xf);
                  §§goto(addr114);
               }
            }
         }
         return null;
      }
      
      public function IsConnected(other:b2Body) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
         }
         if(!_loc3_)
         {
            if(!(_loc3_ && jn))
            {
               if(_loc4_ || this)
               {
               }
            }
            addr42:
            var jn:b2JointEdge = this.m_jointList;
            while(true)
            {
               if(!jn)
               {
                  if(_loc3_)
                  {
                  }
                  addr116:
                  §§push(false);
                  break;
               }
               if(_loc4_ || _loc3_)
               {
                  if(jn.other == other)
                  {
                     if(_loc4_ || _loc3_)
                     {
                        if(!_loc4_)
                        {
                        }
                     }
                     §§goto(addr116);
                  }
                  else
                  {
                     jn = jn.next;
                     continue;
                  }
               }
               §§push(jn.joint.m_collideConnected);
               if(!_loc3_)
               {
                  §§push(§§pop() == false);
                  if(!(_loc3_ && this))
                  {
                     return §§pop();
                  }
                  break;
               }
               break;
               §§goto(addr116);
            }
            return §§pop();
         }
         §§goto(addr42);
      }
      
      public function DestroyShape(s:b2Shape) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc7_ && found)
         {
         }
         if(_loc6_ || s)
         {
            if(!(_loc7_ && node))
            {
               if(_loc7_)
               {
               }
               addr57:
               var node:b2Shape = this.m_shapeList;
               if(_loc6_ || this)
               {
               }
               var found:Boolean = false;
               while(true)
               {
                  if(node == null)
                  {
                     if(_loc6_ || node)
                     {
                        break;
                     }
                     addr146:
                     s.m_body = null;
                     s.m_next = null;
                  }
                  else
                  {
                     if(_loc6_ || found)
                     {
                        if(node == s)
                        {
                           if(_loc6_)
                           {
                              if(!_loc6_)
                              {
                                 break;
                              }
                           }
                           §§push(s.m_next);
                           if(!(_loc7_ && this))
                           {
                              node = §§pop();
                              found = true;
                              if(_loc6_ || s)
                              {
                                 if(!_loc7_)
                                 {
                                    §§goto(addr146);
                                 }
                                 addr209:
                                 return;
                              }
                           }
                        }
                        else
                        {
                           §§push(node.m_next);
                        }
                        node = §§pop();
                        if(_loc6_ || found)
                        {
                        }
                        continue;
                     }
                     break;
                  }
                  if(_loc6_ || found)
                  {
                     §§push(_loc4_.m_shapeCount);
                     if(!(_loc7_ && found))
                     {
                        §§push(§§pop() - 1);
                     }
                     if(_loc6_ || node)
                     {
                        _loc4_.m_shapeCount = _loc5_;
                     }
                     if(_loc7_)
                     {
                     }
                     §§goto(addr209);
                  }
                  b2Shape.Destroy(s,this.m_world.m_blockAllocator);
                  if(!(_loc7_ && s))
                  {
                     §§goto(addr209);
                  }
                  §§goto(addr209);
               }
               §§goto(addr146);
            }
            if(this.m_world.m_lock != true)
            {
               s.DestroyProxy(this.m_world.m_broadPhase);
               §§goto(addr57);
            }
         }
      }
      
      public function GetUserData() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(_loc1_ && _loc1_)
         {
         }
         return this.m_userData;
      }
      
      public function IsBullet() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && _loc2_)
         {
         }
         if(_loc2_ && this)
         {
         }
         return (this.m_flags & e_bulletFlag) == e_bulletFlag;
      }
      
      public function GetWorldCenter() : b2Vec2
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
         if(_loc1_ || _loc2_)
         {
         }
         return this.m_sweep.c;
      }
      
      public function AllowSleeping(flag:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc3_)
         {
         }
         if(!_loc2_)
         {
            if(!(_loc2_ && _loc2_))
            {
               if(flag)
               {
                  if(_loc3_ || _loc2_)
                  {
                  }
                  addr76:
                  return;
               }
               this.m_flags = this.m_flags & ~e_allowSleepFlag;
               if(_loc2_)
               {
               }
               addr75:
               §§goto(addr76);
            }
            this.WakeUp();
            if(!_loc2_)
            {
               §§goto(addr75);
            }
            §§goto(addr76);
         }
         this.m_flags = this.m_flags | e_allowSleepFlag;
         §§goto(addr76);
      }
      
      public function SetUserData(data:*) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_ && data)
         {
         }
         if(_loc2_ || _loc2_)
         {
            if(!_loc3_)
            {
               if(!(_loc3_ && _loc3_))
               {
                  this.m_userData = data;
                  if(_loc3_)
                  {
                  }
               }
            }
            addr60:
            return;
         }
         §§goto(addr60);
      }
      
      public function GetLocalVector(worldVector:b2Vec2) : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_)
         {
         }
         if(!(_loc2_ && _loc2_))
         {
            if(_loc2_)
            {
            }
         }
         return b2Math.b2MulTMV(this.m_xf.R,worldVector);
      }
      
      public function GetWorldPoint(localPoint:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || this)
         {
         }
         if(_loc5_)
         {
            if(_loc5_ || u)
            {
               if(_loc4_ && this)
               {
               }
            }
            if(_loc4_)
            {
            }
            addr45:
            var A:b2Mat22 = this.m_xf.R;
            if(_loc5_ || localPoint)
            {
            }
            §§push();
            if(_loc5_ || A)
            {
            }
            §§push(A.col1.x);
            if(_loc5_)
            {
               §§push(localPoint.x);
               if(_loc5_ || localPoint)
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc4_ && u))
                  {
                     §§push(A.col2.x);
                     if(_loc5_ || u)
                     {
                        §§push(localPoint.y);
                        if(_loc5_ || A)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc5_ || this)
                           {
                           }
                           addr142:
                           §§push(localPoint.x);
                           if(!_loc4_)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc5_ || this)
                              {
                                 addr154:
                                 §§push(A.col2.y);
                                 if(!_loc5_)
                                 {
                                 }
                                 addr162:
                                 §§push(§§pop() + §§pop());
                              }
                              var u:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
                              if(!_loc4_)
                              {
                                 if(_loc5_ || this)
                                 {
                                    §§push(u);
                                    §§push(u.x);
                                    if(!_loc4_)
                                    {
                                       §§push(§§pop() + this.m_xf.position.x);
                                    }
                                    §§pop().x = §§pop();
                                    if(!_loc5_)
                                    {
                                    }
                                    addr213:
                                    return u;
                                 }
                                 addr192:
                                 §§push(u);
                                 §§push(u.y);
                                 if(_loc5_)
                                 {
                                    §§push(§§pop() + this.m_xf.position.y);
                                 }
                                 §§pop().y = §§pop();
                                 if(_loc4_)
                                 {
                                 }
                                 §§goto(addr213);
                              }
                              if(!_loc4_)
                              {
                                 §§goto(addr192);
                              }
                              §§goto(addr213);
                           }
                        }
                        §§goto(addr162);
                        §§push(§§pop() * localPoint.y);
                     }
                  }
               }
               §§push(§§pop() + §§pop());
               if(_loc4_ && this)
               {
               }
            }
            §§push(A.col1.y);
            if(_loc5_ || u)
            {
               §§goto(addr142);
            }
            §§goto(addr154);
         }
         §§goto(addr45);
      }
      
      public function GetWorld() : b2World
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(_loc2_ || _loc1_)
         {
         }
         return this.m_world;
      }
      
      public function GetPosition() : b2Vec2
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
         if(_loc2_ && _loc2_)
         {
         }
         return this.m_xf.position;
      }
   }
}
