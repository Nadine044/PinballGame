package Box2D.Dynamics
{
   import Box2D.Collision.b2Manifold;
   import Box2D.Collision.b2ManifoldPoint;
   import Box2D.Common.Math.b2Mat22;
   import Box2D.Common.Math.b2Math;
   import Box2D.Common.Math.b2Vec2;
   import Box2D.Common.b2Settings;
   import Box2D.Dynamics.Contacts.b2Contact;
   import Box2D.Dynamics.Contacts.b2ContactConstraint;
   import Box2D.Dynamics.Contacts.b2ContactConstraintPoint;
   import Box2D.Dynamics.Contacts.b2ContactResult;
   import Box2D.Dynamics.Contacts.b2ContactSolver;
   import Box2D.Dynamics.Joints.b2Joint;
   
   public class b2Island
   {
      
      private static var s_reportCR:b2ContactResult;
      
      {
         var s_reportCR:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(s_reportCR && _loc2_))
         {
            if(!(s_reportCR && b2Island))
            {
               s_reportCR = new b2ContactResult();
            }
         }
      }
      
      public var m_listener:b2ContactListener;
      
      public var m_positionIterationCount:int;
      
      public var m_bodyCapacity:int;
      
      public var m_bodies:Array;
      
      public var m_joints:Array;
      
      public var m_jointCapacity:int;
      
      public var m_contactCount:int;
      
      public var m_contacts:Array;
      
      public var m_contactCapacity:int;
      
      public var m_jointCount:int;
      
      public var m_allocator;
      
      public var m_bodyCount:int;
      
      public function b2Island(bodyCapacity:int, contactCapacity:int, jointCapacity:int, allocator:*, listener:b2ContactListener)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc8_ && bodyCapacity)
         {
         }
         var i:* = 0;
         if(!(_loc8_ && contactCapacity))
         {
            if(!_loc8_)
            {
               if(!_loc8_)
               {
                  if(!_loc7_)
                  {
                  }
                  addr73:
                  this.m_jointCapacity = jointCapacity;
                  if(_loc7_)
                  {
                     this.m_bodyCount = 0;
                     this.m_contactCount = 0;
                     if(!_loc8_)
                     {
                        addr89:
                        this.m_jointCount = 0;
                        if(_loc7_)
                        {
                           if(!(_loc8_ && this))
                           {
                              this.m_allocator = allocator;
                           }
                        }
                        addr118:
                        while(true)
                        {
                           §§push(i);
                           if(_loc7_)
                           {
                              §§push(bodyCapacity);
                              if(_loc7_ || bodyCapacity)
                              {
                                 if(§§pop() >= §§pop())
                                 {
                                    this.m_contacts = new Array(contactCapacity);
                                    if(_loc7_)
                                    {
                                       if(!(_loc8_ && this))
                                       {
                                          §§push(0);
                                          if(!(_loc8_ && this))
                                          {
                                             break;
                                          }
                                          addr298:
                                          while(true)
                                          {
                                          }
                                       }
                                       addr274:
                                       while(true)
                                       {
                                          addr276:
                                          loop6:
                                          while(true)
                                          {
                                             addr277:
                                             while(true)
                                             {
                                                addr278:
                                                while(true)
                                                {
                                                   §§pop()[§§pop()] = §§pop();
                                                   if(_loc7_ || bodyCapacity)
                                                   {
                                                      addr286:
                                                      while(true)
                                                      {
                                                         i++;
                                                         if(_loc7_)
                                                         {
                                                            addr290:
                                                            while(true)
                                                            {
                                                               §§goto(addr298);
                                                            }
                                                         }
                                                         break;
                                                      }
                                                      return;
                                                   }
                                                   break loop6;
                                                }
                                             }
                                          }
                                          §§goto(addr307);
                                       }
                                    }
                                 }
                                 else
                                 {
                                    if(!_loc8_)
                                    {
                                       §§push(this.m_bodies);
                                       if(_loc7_)
                                       {
                                          §§push(i);
                                          if(!(_loc8_ && jointCapacity))
                                          {
                                             §§push(null);
                                             if(_loc7_ || jointCapacity)
                                             {
                                                §§pop()[§§pop()] = §§pop();
                                                i++;
                                                continue;
                                             }
                                             addr222:
                                             while(true)
                                             {
                                                §§pop()[§§pop()] = §§pop();
                                                i++;
                                             }
                                             i = §§pop();
                                          }
                                          addr219:
                                          while(true)
                                          {
                                             §§push(null);
                                             if(!_loc8_)
                                             {
                                                §§goto(addr222);
                                             }
                                             break;
                                          }
                                          §§goto(addr278);
                                       }
                                       addr211:
                                       while(true)
                                       {
                                          §§push(i);
                                          if(!(_loc8_ && jointCapacity))
                                          {
                                             §§goto(addr219);
                                          }
                                          break;
                                       }
                                       §§goto(addr277);
                                    }
                                    addr225:
                                    while(true)
                                    {
                                       §§push(i);
                                       if(_loc7_)
                                       {
                                          §§push(contactCapacity);
                                          if(_loc7_ || contactCapacity)
                                          {
                                             if(§§pop() >= §§pop())
                                             {
                                                if(!(_loc8_ && jointCapacity))
                                                {
                                                   this.m_joints = new Array(jointCapacity);
                                                   if(_loc7_ || bodyCapacity)
                                                   {
                                                   }
                                                   §§goto(addr286);
                                                }
                                             }
                                             else
                                             {
                                                if(!(_loc8_ && this))
                                                {
                                                   §§push(this.m_contacts);
                                                   if(!(_loc8_ && contactCapacity))
                                                   {
                                                      §§goto(addr211);
                                                   }
                                                   §§goto(addr276);
                                                }
                                                §§goto(addr306);
                                             }
                                             if(_loc7_ || jointCapacity)
                                             {
                                                §§push(0);
                                                if(_loc8_)
                                                {
                                                }
                                                §§goto(addr298);
                                             }
                                             §§goto(addr306);
                                          }
                                       }
                                       §§goto(addr268);
                                    }
                                 }
                                 §§goto(addr290);
                              }
                              while(true)
                              {
                                 if(§§pop() >= §§pop())
                                 {
                                    if(_loc7_)
                                    {
                                       break;
                                    }
                                 }
                                 else if(!_loc8_)
                                 {
                                    §§goto(addr274);
                                 }
                                 else
                                 {
                                    break;
                                 }
                                 §§goto(addr306);
                              }
                              this.m_positionIterationCount = 0;
                              §§goto(addr306);
                           }
                           break;
                        }
                        i = §§pop();
                        if(_loc7_)
                        {
                           §§goto(addr225);
                        }
                        §§goto(addr307);
                     }
                     addr110:
                     this.m_bodies = new Array(bodyCapacity);
                  }
                  this.m_listener = listener;
                  §§goto(addr110);
               }
               i = 0;
               §§goto(addr118);
            }
         }
         super();
         if(_loc7_ || this)
         {
            this.m_bodyCapacity = bodyCapacity;
            if(_loc7_)
            {
               this.m_contactCapacity = contactCapacity;
               if(_loc7_ || contactCapacity)
               {
               }
            }
            §§goto(addr118);
         }
         if(!_loc8_)
         {
            §§goto(addr73);
         }
         §§goto(addr89);
      }
      
      public function AddBody(body:b2Body) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc5_ && this)
         {
         }
         if(!(_loc5_ && this))
         {
            if(_loc5_)
            {
            }
            addr41:
            §§push(this.m_bodies);
            §§push(_loc3_.m_bodyCount);
            if(_loc6_)
            {
               §§push(§§pop());
               if(!_loc5_)
               {
                  §§push(§§pop() + 1);
               }
               if(!_loc5_)
               {
                  _loc3_.m_bodyCount = _loc4_;
               }
            }
            var _loc2_:* = §§pop();
            §§pop()[_loc2_] = body;
            if(_loc5_ && _loc2_)
            {
            }
            return;
         }
         §§goto(addr41);
      }
      
      public function AddJoint(joint:b2Joint) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || this)
         {
         }
         if(!(_loc6_ && _loc3_))
         {
            if(_loc6_)
            {
            }
            addr33:
            §§push(this.m_joints);
            §§push(_loc3_.m_jointCount);
            if(_loc5_ || _loc2_)
            {
               §§push(§§pop());
               if(_loc5_)
               {
                  §§push(§§pop() + 1);
               }
               if(_loc5_ || this)
               {
                  _loc3_.m_jointCount = _loc4_;
               }
            }
            var _loc2_:* = §§pop();
            §§pop()[_loc2_] = joint;
            if(_loc5_ || joint)
            {
            }
            return;
         }
         §§goto(addr33);
      }
      
      public function Report(constraints:Array) : void
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         if(!_loc17_)
         {
         }
         var tMat:b2Mat22 = null;
         var tVec:b2Vec2 = null;
         var c:b2Contact = null;
         var cc:b2ContactConstraint = null;
         var cr:b2ContactResult = null;
         var b1:b2Body = null;
         var manifoldCount:* = 0;
         var manifolds:Array = null;
         var j:* = 0;
         var manifold:b2Manifold = null;
         var k:* = 0;
         var point:b2ManifoldPoint = null;
         var ccp:b2ContactConstraintPoint = null;
         if(this.m_listener == null)
         {
            return;
         }
         loop0:
         for(var i:int = 0; i < this.m_contactCount; )
         {
            if(_loc17_)
            {
               if(_loc16_)
               {
                  break;
               }
            }
            c = this.m_contacts[i];
            if(_loc16_ && constraints)
            {
            }
            cc = constraints[i];
            if(_loc16_ && tVec)
            {
            }
            cr = s_reportCR;
            if(_loc17_)
            {
               if(!(_loc16_ && tVec))
               {
                  cr.shape1 = c.m_shape1;
                  if(!(_loc16_ && constraints))
                  {
                     if(_loc16_)
                     {
                     }
                     addr143:
                     b1 = cr.shape1.m_body;
                     if(!_loc16_)
                     {
                        if(_loc16_)
                        {
                        }
                        addr178:
                        manifolds = c.GetManifolds();
                        if(_loc17_)
                        {
                           addr193:
                           §§push(0);
                           if(!(_loc16_ && this))
                           {
                              j = §§pop();
                              addr330:
                              while(true)
                              {
                              }
                           }
                           while(§§pop() < manifoldCount)
                           {
                              if(_loc17_ || tMat)
                              {
                              }
                              while(true)
                              {
                                 if(_loc17_)
                                 {
                                    addr216:
                                    while(true)
                                    {
                                       manifold = manifolds[j];
                                       if(_loc17_)
                                       {
                                          cr.normal.SetV(manifold.normal);
                                          if(_loc17_)
                                          {
                                             §§push(0);
                                             if(_loc17_ || constraints)
                                             {
                                                k = §§pop();
                                                if(!_loc17_)
                                                {
                                                }
                                                addr329:
                                                j++;
                                                §§goto(addr330);
                                             }
                                             loop3:
                                             while(true)
                                             {
                                                if(§§pop() >= manifold.pointCount)
                                                {
                                                   if(!_loc16_)
                                                   {
                                                      §§goto(addr329);
                                                   }
                                                   break;
                                                }
                                                if(!(_loc16_ && this))
                                                {
                                                   point = manifold.points[k];
                                                   if(!_loc17_)
                                                   {
                                                   }
                                                   ccp = cc.points[k];
                                                   if(_loc17_)
                                                   {
                                                      if(_loc17_)
                                                      {
                                                         cr.position = b1.GetWorldPoint(point.localPoint1);
                                                         if(!_loc17_)
                                                         {
                                                         }
                                                         addr307:
                                                         this.m_listener.Result(cr);
                                                         if(!_loc16_)
                                                         {
                                                            addr313:
                                                            addr322:
                                                            if(_loc17_ || tVec)
                                                            {
                                                            }
                                                            addr322:
                                                            while(true)
                                                            {
                                                               continue loop3;
                                                            }
                                                         }
                                                         k++;
                                                         §§goto(addr322);
                                                      }
                                                      cr.normalImpulse = ccp.normalImpulse;
                                                      if(_loc17_)
                                                      {
                                                         if(_loc16_)
                                                         {
                                                         }
                                                         §§goto(addr322);
                                                      }
                                                      cr.tangentImpulse = ccp.tangentImpulse;
                                                      if(_loc16_)
                                                      {
                                                      }
                                                      §§goto(addr313);
                                                   }
                                                   cr.id.key = point.id.key;
                                                   §§goto(addr307);
                                                }
                                                else
                                                {
                                                   break;
                                                }
                                             }
                                             §§goto(addr330);
                                          }
                                       }
                                       §§goto(addr322);
                                    }
                                 }
                                 else
                                 {
                                    continue loop0;
                                 }
                              }
                              §§goto(addr193);
                           }
                           if(_loc16_ && tVec)
                           {
                           }
                           i++;
                           continue;
                        }
                        while(true)
                        {
                           if(!(_loc16_ && tVec))
                           {
                              §§goto(addr213);
                           }
                           §§goto(addr216);
                        }
                     }
                     §§push(c.m_manifoldCount);
                     if(!(_loc16_ && tMat))
                     {
                        §§push(int(§§pop()));
                     }
                     manifoldCount = §§pop();
                     if(!(_loc16_ && tVec))
                     {
                        §§goto(addr178);
                     }
                     §§goto(addr178);
                  }
               }
               cr.shape2 = c.m_shape2;
               if(!_loc17_)
               {
               }
               §§goto(addr143);
            }
            §§goto(addr143);
         }
      }
      
      public function AddContact(contact:b2Contact) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc6_ && _loc2_)
         {
         }
         if(!(_loc6_ && _loc2_))
         {
            if(_loc6_ && _loc3_)
            {
            }
            addr38:
            §§push(this.m_contacts);
            §§push(_loc3_.m_contactCount);
            if(!_loc6_)
            {
               §§push(§§pop());
               if(!(_loc6_ && contact))
               {
                  §§push(§§pop() + 1);
               }
               if(_loc5_ || this)
               {
                  _loc3_.m_contactCount = _loc4_;
               }
            }
            var _loc2_:* = §§pop();
            §§pop()[_loc2_] = contact;
            if(_loc5_ || this)
            {
            }
            return;
         }
         §§goto(addr38);
      }
      
      public function Solve(step:b2TimeStep, gravity:b2Vec2, correctPositions:Boolean, allowSleep:Boolean) : void
      {
         var _loc18_:Boolean = true;
         var _loc19_:Boolean = false;
         if(!_loc18_)
         {
         }
         var i:* = 0;
         var b:b2Body = null;
         var joint:b2Joint = null;
         var j:int = 0;
         var contactsOkay:* = false;
         var jointsOkay:* = false;
         var jointOkay:* = false;
         var minSleepTime:* = NaN;
         var linTolSqr:Number = NaN;
         var angTolSqr:* = NaN;
         if(_loc18_ || step)
         {
            if(!(_loc19_ && correctPositions))
            {
               if(_loc19_ && gravity)
               {
               }
               addr81:
               addr90:
               addr92:
               if(_loc19_ && correctPositions)
               {
               }
               i = 0;
               while(true)
               {
                  if(i >= this.m_bodyCount)
                  {
                     if(_loc18_ || gravity)
                     {
                        break;
                     }
                     break;
                  }
                  if(_loc18_)
                  {
                     b = this.m_bodies[i];
                     if(b.IsStatic())
                     {
                        if(_loc19_)
                        {
                           addr411:
                           if(b.m_angularVelocity < 0)
                           {
                              if(!_loc18_)
                              {
                                 continue;
                              }
                              addr415:
                           }
                           else
                           {
                              b.m_angularVelocity = b2Settings.b2_maxAngularVelocity;
                              if(_loc19_ && this)
                              {
                                 continue;
                              }
                           }
                        }
                        addr437:
                        i++;
                        continue;
                     }
                     §§push(b.m_linearVelocity);
                     §§push(b.m_linearVelocity);
                     if(_loc18_)
                     {
                        §§push(§§pop().x);
                        §§push(step.dt);
                        if(!(_loc19_ && this))
                        {
                           §§push(gravity.x);
                           if(!(_loc19_ && correctPositions))
                           {
                              §§push(b.m_invMass);
                              if(!(_loc19_ && correctPositions))
                              {
                                 §§push(b.m_force);
                                 if(_loc18_)
                                 {
                                    §§push(§§pop().x);
                                    if(!(_loc19_ && this))
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(!_loc19_)
                                       {
                                          §§push(§§pop() + §§pop());
                                          if(!_loc19_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(!(_loc19_ && gravity))
                                             {
                                                §§pop().x = §§pop() + §§pop();
                                                if(_loc18_ || correctPositions)
                                                {
                                                   §§push(b.m_linearVelocity);
                                                   §§push(b.m_linearVelocity);
                                                   if(_loc18_)
                                                   {
                                                      §§push(§§pop().y);
                                                      if(!_loc19_)
                                                      {
                                                         §§push(step.dt);
                                                         if(_loc18_)
                                                         {
                                                            §§push(gravity.y);
                                                            if(_loc19_ && gravity)
                                                            {
                                                            }
                                                            addr213:
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc19_)
                                                            {
                                                            }
                                                         }
                                                         addr347:
                                                         §§push(§§pop() * §§pop());
                                                         addr370:
                                                         if(_loc18_)
                                                         {
                                                            §§pop().x = §§pop();
                                                            if(_loc18_)
                                                            {
                                                               if(!_loc19_)
                                                               {
                                                                  addr360:
                                                                  §§push(b.m_linearVelocity);
                                                                  §§push(b.m_linearVelocity.y);
                                                                  if(_loc19_ && step)
                                                                  {
                                                                  }
                                                                  addr371:
                                                                  §§pop().y = §§pop();
                                                                  if(!_loc18_)
                                                                  {
                                                                  }
                                                               }
                                                            }
                                                            addr423:
                                                            §§goto(addr437);
                                                         }
                                                         §§goto(addr371);
                                                         §§push(§§pop() * b2Settings.b2_maxLinearVelocity);
                                                      }
                                                      addr338:
                                                      §§push(b2Settings.b2_maxLinearVelocity);
                                                      if(_loc18_ || gravity)
                                                      {
                                                         §§goto(addr347);
                                                      }
                                                      §§goto(addr370);
                                                   }
                                                }
                                                if(!(_loc19_ && step))
                                                {
                                                   addr382:
                                                   §§push(b.m_angularVelocity);
                                                   if(!(_loc19_ && step))
                                                   {
                                                      §§push(b.m_angularVelocity);
                                                      if(!_loc19_)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc18_ || this)
                                                         {
                                                         }
                                                         §§goto(addr411);
                                                      }
                                                      §§goto(addr411);
                                                   }
                                                   §§push(b2Settings.b2_maxAngularVelocitySquared);
                                                   if(_loc18_)
                                                   {
                                                      if(§§pop() > §§pop())
                                                      {
                                                         §§goto(addr411);
                                                      }
                                                      §§goto(addr437);
                                                   }
                                                   §§goto(addr411);
                                                }
                                                else
                                                {
                                                   continue;
                                                }
                                             }
                                          }
                                       }
                                       addr212:
                                       §§goto(addr213);
                                       §§push(§§pop() + §§pop());
                                    }
                                    addr211:
                                    §§goto(addr212);
                                    §§push(§§pop() * §§pop());
                                 }
                                 addr210:
                                 §§goto(addr211);
                                 §§push(§§pop().y);
                              }
                              addr208:
                              §§goto(addr210);
                              §§push(b.m_force);
                           }
                           §§push(b.m_invMass);
                           if(_loc18_)
                           {
                              §§goto(addr208);
                           }
                           §§goto(addr212);
                        }
                        §§pop().y = §§pop() + §§pop();
                        §§push(b);
                        §§push(b.m_angularVelocity);
                        if(!(_loc19_ && correctPositions))
                        {
                           §§push(step.dt);
                           if(_loc18_)
                           {
                              §§push(b.m_invI);
                              if(_loc18_ || gravity)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(!(_loc19_ && step))
                                 {
                                    §§push(b.m_torque);
                                 }
                              }
                              §§push(§§pop() * §§pop());
                           }
                           §§push(§§pop() + §§pop());
                        }
                        §§pop().m_angularVelocity = §§pop();
                        b.m_force.SetZero();
                        b.m_torque = 0;
                        §§push(b.m_linearVelocity);
                        §§push(b2Math);
                        §§push(1);
                        §§push(step.dt);
                        if(_loc18_)
                        {
                           §§push(§§pop() * b.m_linearDamping);
                        }
                        §§pop().Multiply(§§pop().b2Clamp(§§pop() - §§pop(),0,1));
                        §§push(b);
                        §§push(b.m_angularVelocity);
                        if(_loc18_)
                        {
                           §§push(b2Math);
                           §§push(1);
                           §§push(step.dt);
                           if(!_loc19_)
                           {
                              §§push(§§pop() * b.m_angularDamping);
                           }
                           §§push(§§pop() * §§pop().b2Clamp(§§pop() - §§pop(),0,1));
                        }
                        §§pop().m_angularVelocity = §§pop();
                        if(_loc19_)
                        {
                        }
                        §§push(b.m_linearVelocity.LengthSquared());
                        if(!_loc19_)
                        {
                           §§push(b2Settings.b2_maxLinearVelocitySquared);
                           if(_loc18_)
                           {
                              if(§§pop() > §§pop())
                              {
                                 if(!(_loc19_ && correctPositions))
                                 {
                                    b.m_linearVelocity.Normalize();
                                    §§push(b.m_linearVelocity);
                                    §§push(b.m_linearVelocity);
                                    if(_loc18_ || correctPositions)
                                    {
                                    }
                                    §§goto(addr360);
                                 }
                                 §§goto(addr415);
                              }
                              §§goto(addr382);
                           }
                           §§goto(addr411);
                        }
                        §§goto(addr411);
                     }
                     §§goto(addr338);
                     §§push(§§pop().x);
                     §§push(b);
                     §§push(b2Settings.b2_maxAngularVelocity);
                     if(!_loc19_)
                     {
                        §§push(-§§pop());
                     }
                     §§pop().m_angularVelocity = §§pop();
                     §§goto(addr423);
                  }
                  else
                  {
                     break;
                  }
               }
               var contactSolver:b2ContactSolver = new b2ContactSolver(step,this.m_contacts,this.m_contactCount,this.m_allocator);
               if(!(_loc19_ && step))
               {
                  contactSolver.InitVelocityConstraints(step);
                  if(!_loc19_)
                  {
                     if(_loc18_)
                     {
                        i = 0;
                        loop1:
                        while(true)
                        {
                           §§push(i);
                           §§push(this.m_jointCount);
                           if(_loc18_)
                           {
                              if(§§pop() >= §§pop())
                              {
                                 if(_loc18_ || correctPositions)
                                 {
                                    i = 0;
                                    loop3:
                                    while(true)
                                    {
                                       §§push(i);
                                       if(_loc18_)
                                       {
                                          if(§§pop() >= step.maxIterations)
                                          {
                                             if(_loc18_ || correctPositions)
                                             {
                                                contactSolver.FinalizeVelocityConstraints();
                                                if(!_loc19_)
                                                {
                                                   if(_loc18_ || gravity)
                                                   {
                                                   }
                                                   addr1120:
                                                   addr1441:
                                                   if(!_loc19_)
                                                   {
                                                      addr1124:
                                                      if(allowSleep)
                                                      {
                                                         addr1126:
                                                         if(_loc18_)
                                                         {
                                                            addr1130:
                                                            if(_loc18_)
                                                            {
                                                               addr1133:
                                                               §§push(Number(Number.MAX_VALUE));
                                                               if(_loc18_)
                                                               {
                                                                  minSleepTime = §§pop();
                                                                  addr1140:
                                                                  §§push(b2Settings.b2_linearSleepTolerance);
                                                                  §§push(b2Settings.b2_linearSleepTolerance);
                                                                  if(!(_loc19_ && step))
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(!_loc19_)
                                                                     {
                                                                        linTolSqr = §§pop();
                                                                        if(_loc19_)
                                                                        {
                                                                        }
                                                                        addr1187:
                                                                        loop10:
                                                                        while(true)
                                                                        {
                                                                           addr1366:
                                                                           while(true)
                                                                           {
                                                                              if(§§pop() >= this.m_bodyCount)
                                                                              {
                                                                                 addr1371:
                                                                                 if(minSleepTime >= b2Settings.b2_timeToSleep)
                                                                                 {
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 if(_loc18_)
                                                                                 {
                                                                                    addr1192:
                                                                                    while(true)
                                                                                    {
                                                                                       addr1194:
                                                                                       while(true)
                                                                                       {
                                                                                          b = §§pop()[i];
                                                                                          if(_loc18_)
                                                                                          {
                                                                                             §§push(b.m_invMass);
                                                                                             §§push(0);
                                                                                             if(!_loc19_)
                                                                                             {
                                                                                                if(§§pop() == §§pop())
                                                                                                {
                                                                                                   if(_loc18_ || step)
                                                                                                   {
                                                                                                   }
                                                                                                   addr1364:
                                                                                                   i++;
                                                                                                   continue loop10;
                                                                                                }
                                                                                                §§push(b.m_flags);
                                                                                                if(!(_loc19_ && correctPositions))
                                                                                                {
                                                                                                   §§push(b2Body.e_allowSleepFlag);
                                                                                                   if(!_loc19_)
                                                                                                   {
                                                                                                      §§push(§§pop() & §§pop());
                                                                                                      if(_loc18_ || step)
                                                                                                      {
                                                                                                         §§push(0);
                                                                                                         if(!(_loc19_ && gravity))
                                                                                                         {
                                                                                                            if(§§pop() == §§pop())
                                                                                                            {
                                                                                                               b.m_sleepTime = 0;
                                                                                                               minSleepTime = Number(0);
                                                                                                            }
                                                                                                            addr1256:
                                                                                                            §§push(b.m_flags);
                                                                                                         }
                                                                                                         addr1262:
                                                                                                         §§push(§§pop() == §§pop());
                                                                                                         if(!_loc19_)
                                                                                                         {
                                                                                                            §§push(§§pop());
                                                                                                            if(_loc18_)
                                                                                                            {
                                                                                                               if(!§§pop())
                                                                                                               {
                                                                                                                  if(_loc19_)
                                                                                                                  {
                                                                                                                  }
                                                                                                                  addr1312:
                                                                                                                  addr1313:
                                                                                                                  §§pop();
                                                                                                                  §§push(b2Math.b2Dot(b.m_linearVelocity,b.m_linearVelocity));
                                                                                                                  if(_loc18_)
                                                                                                                  {
                                                                                                                     addr1324:
                                                                                                                     if(§§pop() > linTolSqr)
                                                                                                                     {
                                                                                                                        if(!(_loc19_ && gravity))
                                                                                                                        {
                                                                                                                           b.m_sleepTime = 0;
                                                                                                                           if(!_loc19_)
                                                                                                                           {
                                                                                                                              §§push(0);
                                                                                                                           }
                                                                                                                           §§goto(addr1364);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§push(b);
                                                                                                                        §§push(b.m_sleepTime);
                                                                                                                        if(_loc18_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + step.dt);
                                                                                                                        }
                                                                                                                        §§pop().m_sleepTime = §§pop();
                                                                                                                     }
                                                                                                                     §§push(b2Math.b2Min(minSleepTime,b.m_sleepTime));
                                                                                                                     if(_loc18_)
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                     }
                                                                                                                     minSleepTime = §§pop();
                                                                                                                     §§goto(addr1364);
                                                                                                                  }
                                                                                                                  minSleepTime = Number(§§pop());
                                                                                                               }
                                                                                                               addr1303:
                                                                                                               §§push(§§pop());
                                                                                                            }
                                                                                                            if(!§§pop())
                                                                                                            {
                                                                                                               if(_loc18_ || step)
                                                                                                               {
                                                                                                                  §§goto(addr1312);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr1324);
                                                                                                         }
                                                                                                         §§pop();
                                                                                                         if(!(_loc19_ && correctPositions))
                                                                                                         {
                                                                                                            §§push(b.m_angularVelocity);
                                                                                                            §§push(b.m_angularVelocity);
                                                                                                            if(_loc18_)
                                                                                                            {
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               §§push(angTolSqr);
                                                                                                               if(_loc18_ || gravity)
                                                                                                               {
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr1324);
                                                                                                         }
                                                                                                         §§goto(addr1313);
                                                                                                      }
                                                                                                      addr1261:
                                                                                                      §§goto(addr1262);
                                                                                                      §§push(0);
                                                                                                   }
                                                                                                   addr1260:
                                                                                                   §§goto(addr1261);
                                                                                                   §§push(§§pop() & §§pop());
                                                                                                }
                                                                                                §§goto(addr1260);
                                                                                                §§push(b2Body.e_allowSleepFlag);
                                                                                                §§goto(addr1364);
                                                                                             }
                                                                                             §§push(§§pop() > §§pop());
                                                                                             if(_loc18_ || gravity)
                                                                                             {
                                                                                                §§goto(addr1303);
                                                                                             }
                                                                                             §§goto(addr1324);
                                                                                          }
                                                                                          §§goto(addr1256);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 addr1386:
                                                                                 while(true)
                                                                                 {
                                                                                    addr1439:
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop() < §§pop())
                                                                                       {
                                                                                          §§push(this.m_bodies);
                                                                                       }
                                                                                       addr1440:
                                                                                    }
                                                                                    §§goto(addr1386);
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  addr1165:
                                                                  §§push(§§pop() * §§pop());
                                                                  if(_loc18_ || step)
                                                                  {
                                                                  }
                                                                  addr1181:
                                                                  angTolSqr = §§pop();
                                                                  §§push(0);
                                                                  if(!_loc19_)
                                                                  {
                                                                     i = §§pop();
                                                                     §§goto(addr1187);
                                                                  }
                                                                  §§goto(addr1366);
                                                               }
                                                               §§push(Number(§§pop()));
                                                               if(_loc18_ || step)
                                                               {
                                                                  §§goto(addr1181);
                                                               }
                                                               §§goto(addr1371);
                                                            }
                                                            addr1159:
                                                            §§push(b2Settings.b2_angularSleepTolerance);
                                                            §§push(b2Settings.b2_angularSleepTolerance);
                                                            if(_loc18_)
                                                            {
                                                               §§goto(addr1165);
                                                            }
                                                            §§goto(addr1371);
                                                         }
                                                         §§goto(addr1159);
                                                      }
                                                   }
                                                   return;
                                                }
                                                addr1113:
                                                if(_loc18_)
                                                {
                                                   addr1116:
                                                   this.Report(contactSolver.m_constraints);
                                                   §§goto(addr1120);
                                                }
                                                §§goto(addr1371);
                                             }
                                             addr1076:
                                             §§goto(addr1116);
                                          }
                                          else
                                          {
                                             if(!_loc19_)
                                             {
                                                if(!_loc19_)
                                                {
                                                   contactSolver.SolveVelocityConstraints();
                                                   if(!(_loc19_ && gravity))
                                                   {
                                                      j = 0;
                                                      loop4:
                                                      while(true)
                                                      {
                                                         if(j >= this.m_jointCount)
                                                         {
                                                            if(!(_loc19_ && gravity))
                                                            {
                                                               i++;
                                                               continue loop3;
                                                            }
                                                            addr863:
                                                            §§push(0);
                                                            if(!(_loc19_ && correctPositions))
                                                            {
                                                               i = §§pop();
                                                               loop14:
                                                               while(true)
                                                               {
                                                                  §§push(i);
                                                                  if(!(_loc19_ && gravity))
                                                                  {
                                                                     §§push(this.m_jointCount);
                                                                     if(!(_loc19_ && correctPositions))
                                                                     {
                                                                        if(§§pop() >= §§pop())
                                                                        {
                                                                           if(!_loc18_)
                                                                           {
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           if(!_loc19_)
                                                                           {
                                                                              §§push(this.m_joints);
                                                                              if(_loc18_ || step)
                                                                              {
                                                                                 §§push(i);
                                                                                 if(_loc18_)
                                                                                 {
                                                                                    joint = §§pop()[§§pop()];
                                                                                    if(!(_loc19_ && gravity))
                                                                                    {
                                                                                       if(_loc18_ || correctPositions)
                                                                                       {
                                                                                       }
                                                                                       addr919:
                                                                                       i++;
                                                                                       continue;
                                                                                    }
                                                                                    joint.InitPositionConstraints();
                                                                                    if(!_loc19_)
                                                                                    {
                                                                                       if(_loc19_ && gravity)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr919);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr999:
                                                                                    while(true)
                                                                                    {
                                                                                       joint = §§pop()[§§pop()];
                                                                                       §§push(joint.SolvePositionConstraints());
                                                                                       if(_loc18_ || correctPositions)
                                                                                       {
                                                                                          §§push(Boolean(§§pop()));
                                                                                          if(!_loc19_)
                                                                                          {
                                                                                             jointOkay = §§pop();
                                                                                             if(_loc18_)
                                                                                             {
                                                                                                §§push(jointsOkay);
                                                                                                if(!_loc19_)
                                                                                                {
                                                                                                   §§push(Boolean(§§pop()));
                                                                                                }
                                                                                                addr1030:
                                                                                                jointsOkay = Boolean(§§pop());
                                                                                                if(!_loc18_)
                                                                                                {
                                                                                                }
                                                                                                addr1035:
                                                                                                i++;
                                                                                                while(true)
                                                                                                {
                                                                                                   addr1039:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(§§pop() >= §§pop())
                                                                                                      {
                                                                                                         if(!_loc19_)
                                                                                                         {
                                                                                                            if(_loc18_)
                                                                                                            {
                                                                                                               §§push(Boolean(contactsOkay));
                                                                                                               if(Boolean(contactsOkay))
                                                                                                               {
                                                                                                                  if(!(_loc19_ && this))
                                                                                                                  {
                                                                                                                     §§pop();
                                                                                                                     §§push(jointsOkay);
                                                                                                                     if(_loc18_ || correctPositions)
                                                                                                                     {
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                                  if(_loc19_)
                                                                                                                  {
                                                                                                                  }
                                                                                                                  §§goto(addr1124);
                                                                                                               }
                                                                                                               addr1068:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     if(!(_loc19_ && correctPositions))
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     §§goto(addr1181);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§push(_loc16_.m_positionIterationCount);
                                                                                                                     if(!(_loc19_ && gravity))
                                                                                                                     {
                                                                                                                        §§push(§§pop() + 1);
                                                                                                                     }
                                                                                                                     if(!_loc19_)
                                                                                                                     {
                                                                                                                        _loc16_.m_positionIterationCount = _loc17_;
                                                                                                                     }
                                                                                                                     if(!(_loc19_ && this))
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           break loop1;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     break loop4;
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr1076);
                                                                                                            }
                                                                                                            §§goto(addr1133);
                                                                                                         }
                                                                                                         break loop4;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr1035);
                                                                                          }
                                                                                       }
                                                                                       if(§§pop())
                                                                                       {
                                                                                          §§pop();
                                                                                          if(!_loc19_)
                                                                                          {
                                                                                             §§push(Boolean(jointOkay));
                                                                                          }
                                                                                          §§goto(addr1035);
                                                                                       }
                                                                                       §§goto(addr1030);
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           addr973:
                                                                           while(!(_loc18_ || step))
                                                                           {
                                                                           }
                                                                           §§goto(addr1181);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(0);
                                                                           if(_loc18_ || correctPositions)
                                                                           {
                                                                              break loop14;
                                                                           }
                                                                           break;
                                                                        }
                                                                        i = §§pop();
                                                                        if(!(_loc19_ && this))
                                                                        {
                                                                           §§goto(addr1386);
                                                                        }
                                                                        break loop4;
                                                                     }
                                                                     §§goto(addr1439);
                                                                  }
                                                                  break;
                                                               }
                                                               while(true)
                                                               {
                                                                  i = §§pop();
                                                               }
                                                            }
                                                            §§goto(addr1366);
                                                         }
                                                         else
                                                         {
                                                            if(!_loc19_)
                                                            {
                                                               §§push(this.m_joints);
                                                               if(!(_loc19_ && gravity))
                                                               {
                                                                  joint = §§pop()[j];
                                                                  if(_loc18_)
                                                                  {
                                                                     if(!(_loc19_ && gravity))
                                                                     {
                                                                        joint.SolveVelocityConstraints(step);
                                                                        if(_loc19_ && step)
                                                                        {
                                                                           continue;
                                                                        }
                                                                     }
                                                                     if(!(_loc18_ || correctPositions))
                                                                     {
                                                                        continue;
                                                                     }
                                                                  }
                                                                  j++;
                                                                  continue;
                                                               }
                                                            }
                                                            break;
                                                         }
                                                         §§goto(addr1194);
                                                      }
                                                      §§goto(addr1441);
                                                   }
                                                   this.m_positionIterationCount = 0;
                                                }
                                                §§goto(addr1126);
                                             }
                                             while(true)
                                             {
                                                §§goto(addr1035);
                                             }
                                          }
                                          addr1392:
                                          while(true)
                                          {
                                             b = §§pop()[§§pop()];
                                             if(!(_loc19_ && this))
                                             {
                                                b.m_flags = b.m_flags | b2Body.e_sleepFlag;
                                                if(_loc18_)
                                                {
                                                   b.m_linearVelocity.SetZero();
                                                   if(_loc18_ || step)
                                                   {
                                                      b.m_angularVelocity = 0;
                                                   }
                                                }
                                             }
                                             i++;
                                             §§goto(addr1386);
                                          }
                                       }
                                       break;
                                    }
                                    loop20:
                                    while(true)
                                    {
                                       §§push(this.m_bodyCount);
                                       if(!_loc19_)
                                       {
                                          if(§§pop() >= §§pop())
                                          {
                                             if(!(_loc19_ && step))
                                             {
                                                if(!_loc18_)
                                                {
                                                }
                                                §§goto(addr1133);
                                             }
                                          }
                                          else
                                          {
                                             if(_loc18_ || correctPositions)
                                             {
                                                §§push(this.m_bodies);
                                                if(!_loc19_)
                                                {
                                                   §§push(i);
                                                   if(_loc18_)
                                                   {
                                                      b = §§pop()[§§pop()];
                                                      if(_loc18_ || this)
                                                      {
                                                         if(!b.IsStatic())
                                                         {
                                                            §§push(b.m_sweep);
                                                            if(!_loc19_)
                                                            {
                                                               §§pop().c0.SetV(b.m_sweep.c);
                                                               §§push(b.m_sweep);
                                                               if(_loc18_ || step)
                                                               {
                                                               }
                                                               addr778:
                                                               §§push(§§pop().c);
                                                               §§push(b.m_sweep.c.y);
                                                               if(!(_loc19_ && step))
                                                               {
                                                                  addr786:
                                                                  §§push(step.dt);
                                                                  if(_loc18_ || gravity)
                                                                  {
                                                                     addr795:
                                                                     §§push(§§pop() * b.m_linearVelocity.y);
                                                                  }
                                                                  §§push(§§pop() + §§pop());
                                                               }
                                                               addr804:
                                                               §§pop().y = §§pop();
                                                               §§push(b.m_sweep);
                                                               §§push(b.m_sweep.a);
                                                               if(_loc18_ || this)
                                                               {
                                                                  addr814:
                                                                  §§push(step.dt);
                                                                  if(!_loc19_)
                                                                  {
                                                                     §§push(§§pop() * b.m_angularVelocity);
                                                                  }
                                                                  §§push(§§pop() + §§pop());
                                                               }
                                                               §§pop().a = §§pop();
                                                               if(!(_loc19_ && gravity))
                                                               {
                                                                  b.SynchronizeTransform();
                                                               }
                                                            }
                                                            §§push(b.m_sweep);
                                                            if(_loc18_)
                                                            {
                                                               §§push(§§pop().a);
                                                               if(!(_loc19_ && gravity))
                                                               {
                                                                  §§pop().a0 = §§pop();
                                                                  if(!_loc19_)
                                                                  {
                                                                     §§push(b.m_sweep);
                                                                     if(_loc18_ || gravity)
                                                                     {
                                                                        §§push(§§pop().c);
                                                                        if(_loc18_)
                                                                        {
                                                                           §§push(b.m_sweep);
                                                                           if(_loc18_)
                                                                           {
                                                                              §§push(§§pop().c);
                                                                              if(_loc18_)
                                                                              {
                                                                                 §§push(§§pop().x);
                                                                                 if(!_loc19_)
                                                                                 {
                                                                                    §§push(step.dt);
                                                                                    if(!_loc19_)
                                                                                    {
                                                                                       §§push(b.m_linearVelocity);
                                                                                       if(!_loc19_)
                                                                                       {
                                                                                          §§push(§§pop().x);
                                                                                          if(!_loc19_)
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(_loc19_)
                                                                                             {
                                                                                             }
                                                                                             §§goto(addr795);
                                                                                          }
                                                                                          §§goto(addr795);
                                                                                       }
                                                                                       §§goto(addr795);
                                                                                    }
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(_loc18_)
                                                                                    {
                                                                                       §§pop().x = §§pop();
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr786);
                                                                              }
                                                                              §§goto(addr778);
                                                                           }
                                                                           §§goto(addr778);
                                                                        }
                                                                        §§goto(addr778);
                                                                     }
                                                                     §§goto(addr778);
                                                                  }
                                                                  §§push(b.m_sweep);
                                                                  if(!(_loc19_ && correctPositions))
                                                                  {
                                                                     §§goto(addr778);
                                                                  }
                                                                  §§goto(addr804);
                                                               }
                                                               §§goto(addr814);
                                                            }
                                                            §§goto(addr804);
                                                         }
                                                         addr835:
                                                         while(true)
                                                         {
                                                            continue loop20;
                                                         }
                                                      }
                                                      i++;
                                                      §§goto(addr835);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr1392);
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr1194);
                                                }
                                                §§goto(addr1386);
                                             }
                                             §§goto(addr1441);
                                          }
                                          if(correctPositions)
                                          {
                                             if(_loc18_ || step)
                                             {
                                                if(!_loc19_)
                                                {
                                                   §§goto(addr863);
                                                }
                                                §§goto(addr1130);
                                             }
                                             §§goto(addr1140);
                                          }
                                          §§goto(addr1116);
                                       }
                                       break;
                                    }
                                    §§goto(addr1039);
                                 }
                                 i = 0;
                                 §§goto(addr835);
                              }
                              else
                              {
                                 §§push(this.m_joints);
                                 if(_loc18_ || gravity)
                                 {
                                    joint = §§pop()[i];
                                    if(!(_loc19_ && correctPositions))
                                    {
                                       if(_loc18_)
                                       {
                                          joint.InitVelocityConstraints(step);
                                          if(!(_loc18_ || gravity))
                                          {
                                             continue;
                                          }
                                       }
                                       else
                                       {
                                          continue;
                                       }
                                    }
                                    if(_loc18_ || step)
                                    {
                                       i++;
                                    }
                                    continue;
                                 }
                              }
                              while(true)
                              {
                                 §§goto(addr1392);
                              }
                              §§goto(addr1440);
                           }
                           break;
                        }
                        while(true)
                        {
                           if(§§pop() >= §§pop())
                           {
                              if(!_loc19_)
                              {
                                 §§goto(addr1113);
                              }
                              §§goto(addr1192);
                           }
                           else
                           {
                              if(_loc18_)
                              {
                                 §§push(contactSolver.SolvePositionConstraints(b2Settings.b2_contactBaumgarte));
                                 if(_loc18_)
                                 {
                                    §§push(Boolean(§§pop()));
                                    if(_loc18_)
                                    {
                                       contactsOkay = §§pop();
                                       if(!_loc19_)
                                       {
                                          §§push(true);
                                       }
                                       §§goto(addr1140);
                                    }
                                    jointsOkay = §§pop();
                                    if(_loc18_ || correctPositions)
                                    {
                                       §§goto(addr973);
                                    }
                                    §§goto(addr1371);
                                 }
                                 §§goto(addr1068);
                              }
                              §§goto(addr1076);
                           }
                           §§goto(addr1441);
                        }
                        §§goto(addr1116);
                     }
                     if(_loc18_)
                     {
                        §§goto(addr1378);
                        §§push(0);
                     }
                     §§goto(addr1386);
                  }
                  §§goto(addr944);
               }
               while(true)
               {
                  §§push(this.m_joints);
                  §§push(i);
                  if(_loc18_)
                  {
                     §§goto(addr999);
                  }
                  §§goto(addr1392);
               }
            }
         }
         if(!(_loc19_ && this))
         {
            if(!(_loc19_ && this))
            {
               §§goto(addr81);
            }
            §§goto(addr90);
         }
         §§goto(addr92);
      }
      
      public function Clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && _loc2_)
         {
         }
         if(_loc1_ || _loc1_)
         {
            this.m_bodyCount = 0;
            if(!_loc1_)
            {
            }
            addr65:
            return;
         }
         this.m_contactCount = 0;
         this.m_jointCount = 0;
         if(_loc1_ || _loc2_)
         {
         }
         §§goto(addr65);
      }
      
      public function SolveTOI(subStep:b2TimeStep) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!_loc8_)
         {
         }
         var i:* = 0;
         var b:b2Body = null;
         var contactsOkay:* = false;
         if(_loc8_ || subStep)
         {
            if(_loc8_ || subStep)
            {
               if(_loc8_)
               {
                  if(_loc7_ && this)
                  {
                  }
                  addr55:
                  var contactSolver:b2ContactSolver = new b2ContactSolver(subStep,this.m_contacts,this.m_contactCount,this.m_allocator);
                  if(_loc8_ || contactSolver)
                  {
                     if(_loc8_ || i)
                     {
                        i = 0;
                     }
                  }
                  while(true)
                  {
                     §§push(i);
                     if(!_loc7_)
                     {
                        §§push(subStep.maxIterations);
                        if(_loc8_ || contactSolver)
                        {
                           if(§§pop() >= §§pop())
                           {
                              §§push(0);
                              if(_loc8_)
                              {
                                 break;
                              }
                              addr330:
                              while(true)
                              {
                              }
                           }
                           else
                           {
                              if(_loc8_ || this)
                              {
                                 contactSolver.SolveVelocityConstraints();
                                 if(_loc8_)
                                 {
                                    i++;
                                    continue;
                                 }
                              }
                              else
                              {
                                 addr117:
                              }
                              addr341:
                              §§push(0.75);
                              if(_loc8_)
                              {
                                 §§push(Number(§§pop()));
                              }
                              var k_toiBaumgarte:* = §§pop();
                              if(_loc8_ || contactSolver)
                              {
                                 if(_loc8_ || i)
                                 {
                                    §§push(0);
                                    if(_loc8_)
                                    {
                                       i = §§pop();
                                       if(!_loc7_)
                                       {
                                          addr392:
                                          while(true)
                                          {
                                          }
                                       }
                                       addr406:
                                       this.Report(contactSolver.m_constraints);
                                       return;
                                    }
                                    while(true)
                                    {
                                       if(§§pop() >= subStep.maxIterations)
                                       {
                                          if(!_loc7_)
                                          {
                                             break;
                                          }
                                          break;
                                       }
                                    }
                                    §§goto(addr406);
                                 }
                                 while(true)
                                 {
                                    §§push(contactSolver.SolvePositionConstraints(k_toiBaumgarte));
                                    if(_loc8_)
                                    {
                                       §§push(Boolean(§§pop()));
                                       if(_loc8_ || this)
                                       {
                                       }
                                       addr387:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             §§goto(addr406);
                                          }
                                          else
                                          {
                                             i++;
                                             §§goto(addr392);
                                          }
                                          §§goto(addr406);
                                       }
                                    }
                                    contactsOkay = §§pop();
                                 }
                              }
                              while(true)
                              {
                                 §§goto(addr387);
                              }
                           }
                           while(true)
                           {
                              §§goto(addr330);
                              i++;
                           }
                        }
                        while(true)
                        {
                           if(§§pop() >= §§pop())
                           {
                              if(_loc8_ || i)
                              {
                                 break;
                              }
                              §§goto(addr341);
                           }
                           else if(_loc8_ || this)
                           {
                              b = this.m_bodies[i];
                              if(!(_loc7_ && contactSolver))
                              {
                                 if(b.IsStatic())
                                 {
                                    if(_loc8_)
                                    {
                                       if(_loc7_ && this)
                                       {
                                          addr174:
                                          §§push(b.m_sweep);
                                          if(!_loc7_)
                                          {
                                             §§push(b.m_sweep);
                                             if(!_loc7_)
                                             {
                                                §§push(§§pop().a);
                                                if(_loc8_ || i)
                                                {
                                                   §§pop().a0 = §§pop();
                                                }
                                                addr321:
                                                §§pop().a = §§pop();
                                                b.SynchronizeTransform();
                                                if(!_loc8_)
                                                {
                                                }
                                             }
                                             addr305:
                                             §§push(§§pop().a);
                                             if(!_loc7_)
                                             {
                                                §§push(subStep.dt);
                                                if(_loc8_ || this)
                                                {
                                                   §§push(§§pop() * b.m_angularVelocity);
                                                }
                                                §§push(§§pop() + §§pop());
                                             }
                                             §§goto(addr321);
                                          }
                                       }
                                       §§goto(addr328);
                                    }
                                    if(_loc8_)
                                    {
                                       addr194:
                                       §§push(b.m_sweep);
                                       if(!(_loc7_ && subStep))
                                       {
                                          §§push(§§pop().c);
                                          if(_loc8_)
                                          {
                                             §§push(b.m_sweep);
                                             if(!_loc7_)
                                             {
                                                §§push(§§pop().c);
                                                if(!(_loc7_ && i))
                                                {
                                                   §§push(§§pop().x);
                                                   if(_loc8_ || i)
                                                   {
                                                      §§push(subStep.dt);
                                                      if(!(_loc7_ && subStep))
                                                      {
                                                         §§push(b.m_linearVelocity);
                                                         if(!_loc7_)
                                                         {
                                                            §§push(§§pop().x);
                                                            if(!(_loc7_ && subStep))
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(!(_loc7_ && this))
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  if(!_loc7_)
                                                                  {
                                                                     §§pop().x = §§pop();
                                                                     §§push(b.m_sweep);
                                                                     if(!_loc8_)
                                                                     {
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            addr290:
                                                            §§push(§§pop() * §§pop());
                                                         }
                                                         addr289:
                                                         §§goto(addr290);
                                                         §§push(§§pop().y);
                                                      }
                                                      addr291:
                                                      §§push(§§pop() + §§pop());
                                                   }
                                                   addr292:
                                                   §§pop().y = §§pop();
                                                   if(_loc8_ || contactSolver)
                                                   {
                                                   }
                                                }
                                                addr275:
                                                §§push(§§pop().y);
                                                if(!_loc7_)
                                                {
                                                   §§push(subStep.dt);
                                                   if(!(_loc7_ && contactSolver))
                                                   {
                                                      §§goto(addr289);
                                                      §§push(b.m_linearVelocity);
                                                   }
                                                   §§goto(addr291);
                                                }
                                                §§goto(addr292);
                                             }
                                             addr274:
                                             §§goto(addr275);
                                             §§push(§§pop().c);
                                          }
                                          addr272:
                                          §§goto(addr274);
                                          §§push(b.m_sweep);
                                       }
                                       addr303:
                                       §§goto(addr305);
                                       §§push(b.m_sweep);
                                    }
                                    §§goto(addr303);
                                    §§push(b.m_sweep);
                                 }
                                 else
                                 {
                                    §§push(b.m_sweep);
                                    if(_loc8_ || contactSolver)
                                    {
                                       §§pop().c0.SetV(b.m_sweep.c);
                                       if(!_loc7_)
                                       {
                                          §§goto(addr174);
                                       }
                                       §§goto(addr194);
                                    }
                                 }
                                 §§goto(addr272);
                                 §§push(§§pop().c);
                              }
                              §§goto(addr328);
                           }
                           else
                           {
                              break;
                           }
                        }
                        §§goto(addr341);
                     }
                     break;
                  }
                  i = §§pop();
                  §§goto(addr117);
               }
               if(!_loc8_)
               {
               }
               §§goto(addr55);
            }
         }
         §§goto(addr55);
      }
   }
}
