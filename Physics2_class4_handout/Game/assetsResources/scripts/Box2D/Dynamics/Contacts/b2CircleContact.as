package Box2D.Dynamics.Contacts
{
   import Box2D.Collision.Shapes.b2CircleShape;
   import Box2D.Collision.Shapes.b2Shape;
   import Box2D.Collision.b2Collision;
   import Box2D.Collision.b2ContactPoint;
   import Box2D.Collision.b2Manifold;
   import Box2D.Collision.b2ManifoldPoint;
   import Box2D.Common.Math.b2Vec2;
   import Box2D.Dynamics.b2Body;
   import Box2D.Dynamics.b2ContactListener;
   
   public class b2CircleContact extends b2Contact
   {
      
      private static const s_evalCP:b2ContactPoint;
      
      {
         var s_evalCP:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            if(s_evalCP)
            {
               s_evalCP = new b2ContactPoint();
            }
         }
      }
      
      private var m_manifolds:Array;
      
      public var m_manifold:b2Manifold;
      
      private var m0:b2Manifold;
      
      public function b2CircleContact(shape1:b2Shape, shape2:b2Shape)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc4_)
         {
         }
         if(!_loc5_)
         {
            if(_loc4_)
            {
               this.m_manifolds = [new b2Manifold()];
               if(_loc4_ || shape2)
               {
               }
               addr57:
               super(shape1,shape2);
               addr76:
               if(_loc4_ || this)
               {
               }
               this.m_manifold = this.m_manifolds[0];
               if(_loc4_)
               {
                  if(_loc4_ || shape2)
                  {
                     §§push(this.m_manifold);
                     if(!_loc5_)
                     {
                        §§pop().pointCount = 0;
                     }
                     addr101:
                     var point:b2ManifoldPoint = §§pop().points[0];
                     if(!_loc5_)
                     {
                        if(_loc4_)
                        {
                           point.normalImpulse = 0;
                           if(_loc4_ || shape1)
                           {
                           }
                           addr142:
                           return;
                        }
                        if(!_loc4_)
                        {
                        }
                        §§goto(addr142);
                     }
                     point.tangentImpulse = 0;
                     if(_loc4_ || point)
                     {
                        §§goto(addr142);
                     }
                     §§goto(addr142);
                  }
                  addr99:
                  §§goto(addr101);
                  §§push(this.m_manifold);
               }
               §§goto(addr99);
            }
            addr49:
            if(!(_loc5_ && this))
            {
               §§goto(addr57);
            }
            §§goto(addr76);
         }
         this.m0 = new b2Manifold();
         if(_loc4_ || shape1)
         {
            §§goto(addr49);
         }
         §§goto(addr76);
      }
      
      public static function Destroy(contact:b2Contact, allocator:*) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc3_)
         {
         }
         if(!(_loc4_ && allocator))
         {
            if(_loc4_)
            {
            }
            addr44:
            return;
         }
         if(!_loc4_)
         {
            §§goto(addr44);
         }
         §§goto(addr44);
      }
      
      public static function Create(shape1:b2Shape, shape2:b2Shape, allocator:*) : b2Contact
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc5_)
         {
         }
         if(_loc4_)
         {
            if(_loc4_ || allocator)
            {
            }
            addr48:
            return new b2CircleContact(shape1,shape2);
         }
         if(_loc4_)
         {
            if(_loc5_)
            {
            }
            §§goto(addr48);
         }
         §§goto(addr48);
      }
      
      override public function Evaluate(listener:b2ContactListener) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         if(_loc9_ || v2)
         {
         }
         var v1:b2Vec2 = null;
         var v2:b2Vec2 = null;
         var mp0:b2ManifoldPoint = null;
         var mp:b2ManifoldPoint = null;
         if(_loc10_)
         {
         }
         var b1:b2Body = m_shape1.m_body;
         if(_loc10_)
         {
         }
         var b2:b2Body = m_shape2.m_body;
         if(_loc9_)
         {
            if(!_loc9_)
            {
            }
            addr101:
            var cp:b2ContactPoint = s_evalCP;
            if(!_loc10_)
            {
               cp.shape1 = m_shape1;
               cp.shape2 = m_shape2;
               if(!(_loc10_ && this))
               {
                  cp.friction = m_friction;
                  if(!(_loc10_ && listener))
                  {
                     cp.restitution = m_restitution;
                     if(!_loc9_)
                     {
                     }
                     addr176:
                     §§push(this.m_manifold.points);
                     if(_loc9_ || this)
                     {
                        §§push(0);
                        if(!(_loc10_ && listener))
                        {
                           mp = §§pop()[§§pop()];
                           if(_loc9_ || v2)
                           {
                              §§push(this.m0);
                              if(!_loc10_)
                              {
                                 if(§§pop().pointCount == 0)
                                 {
                                    mp.normalImpulse = 0;
                                    if(_loc9_ || v2)
                                    {
                                       mp.tangentImpulse = 0;
                                       if(_loc10_)
                                       {
                                       }
                                       addr235:
                                       cp.position = b1.GetWorldPoint(mp.localPoint1);
                                       if(!_loc10_)
                                       {
                                          addr243:
                                       }
                                       v1 = b1.GetLinearVelocityFromLocalPoint(mp.localPoint1);
                                       if(!_loc9_)
                                       {
                                       }
                                       v2 = b2.GetLinearVelocityFromLocalPoint(mp.localPoint2);
                                       if(_loc9_)
                                       {
                                          if(_loc10_)
                                          {
                                          }
                                          addr289:
                                          cp.normal.SetV(this.m_manifold.normal);
                                          cp.separation = mp.separation;
                                          if(!_loc10_)
                                          {
                                             if(_loc9_)
                                             {
                                                cp.id.key = mp.id._key;
                                             }
                                          }
                                          addr322:
                                          listener.Add(cp);
                                       }
                                       §§push(cp.velocity);
                                       §§push(v2.x);
                                       if(!_loc10_)
                                       {
                                          §§push(v1.x);
                                          if(_loc9_)
                                          {
                                             §§push(§§pop() - §§pop());
                                          }
                                          addr287:
                                          §§pop().Set(§§pop(),§§pop());
                                          §§goto(addr289);
                                       }
                                       §§push(v2.y);
                                       if(_loc9_ || this)
                                       {
                                          §§push(§§pop() - v1.y);
                                       }
                                       §§goto(addr287);
                                    }
                                 }
                                 else
                                 {
                                    §§push(this.m0);
                                 }
                                 addr466:
                              }
                              mp0 = §§pop().points[0];
                              if(_loc9_ || v2)
                              {
                                 mp.normalImpulse = mp0.normalImpulse;
                                 if(_loc9_ || listener)
                                 {
                                 }
                                 addr374:
                                 if(!(_loc10_ && listener))
                                 {
                                    addr382:
                                    cp.position = b1.GetWorldPoint(mp.localPoint1);
                                    if(_loc9_ || v2)
                                    {
                                    }
                                 }
                                 v1 = b1.GetLinearVelocityFromLocalPoint(mp.localPoint1);
                                 if(_loc10_ && this)
                                 {
                                 }
                                 v2 = b2.GetLinearVelocityFromLocalPoint(mp.localPoint2);
                                 if(!_loc10_)
                                 {
                                    §§push(cp.velocity);
                                    §§push(v2.x);
                                    if(_loc9_)
                                    {
                                       §§push(v1.x);
                                       if(!_loc10_)
                                       {
                                          §§push(§§pop() - §§pop());
                                       }
                                       addr442:
                                       §§pop().Set(§§pop(),§§pop());
                                       cp.normal.SetV(this.m_manifold.normal);
                                       cp.separation = mp.separation;
                                       cp.id.key = mp.id._key;
                                    }
                                    §§push(v2.y);
                                    if(!(_loc10_ && v2))
                                    {
                                       §§push(§§pop() - v1.y);
                                    }
                                    §§goto(addr442);
                                 }
                                 listener.Persist(cp);
                                 §§goto(addr466);
                              }
                              mp.tangentImpulse = mp0.tangentImpulse;
                              if(!(_loc10_ && this))
                              {
                                 if(!_loc9_)
                                 {
                                 }
                                 §§goto(addr374);
                              }
                              if(listener)
                              {
                                 if(!(_loc10_ && v2))
                                 {
                                    §§goto(addr374);
                                 }
                                 §§goto(addr382);
                              }
                              §§goto(addr466);
                           }
                           if(listener)
                           {
                              if(!_loc10_)
                              {
                                 §§goto(addr235);
                              }
                              §§goto(addr243);
                           }
                           §§goto(addr322);
                        }
                        addr633:
                        return;
                     }
                     addr509:
                     §§push(0);
                     mp0 = §§pop()[§§pop()];
                     if(!_loc10_)
                     {
                        if(!_loc10_)
                        {
                           cp.position = b1.GetWorldPoint(mp0.localPoint1);
                           if(_loc9_ || this)
                           {
                           }
                        }
                        addr532:
                        v1 = b1.GetLinearVelocityFromLocalPoint(mp0.localPoint1);
                        if(!_loc9_)
                        {
                        }
                        v2 = b2.GetLinearVelocityFromLocalPoint(mp0.localPoint2);
                        if(_loc9_ || this)
                        {
                           §§push(cp.velocity);
                           §§push(v2.x);
                           if(!_loc10_)
                           {
                              §§push(v1.x);
                              if(_loc9_ || listener)
                              {
                                 §§push(§§pop() - §§pop());
                              }
                              addr575:
                              §§pop().Set(§§pop(),§§pop() - v1.y);
                              addr613:
                              if(!(_loc10_ && this))
                              {
                                 cp.normal.SetV(this.m0.normal);
                                 if(!(_loc10_ && this))
                                 {
                                    if(!(_loc10_ && listener))
                                    {
                                       cp.separation = mp0.separation;
                                    }
                                 }
                              }
                              cp.id.key = mp0.id._key;
                              if(_loc10_)
                              {
                              }
                              listener.Remove(cp);
                              §§goto(addr633);
                           }
                           §§push(v2.y);
                           if(_loc9_)
                           {
                              §§goto(addr575);
                           }
                           §§goto(addr575);
                        }
                        §§goto(addr613);
                     }
                     §§goto(addr532);
                  }
                  addr171:
                  m_manifoldCount = 1;
               }
               §§goto(addr176);
            }
            §§push(this.m_manifold);
            if(_loc9_ || this)
            {
               §§push(§§pop().pointCount);
               if(!_loc10_)
               {
                  §§push(0);
                  if(_loc9_ || listener)
                  {
                     if(§§pop() > §§pop())
                     {
                        if(!_loc10_)
                        {
                           if(_loc9_ || this)
                           {
                              §§goto(addr171);
                           }
                           else
                           {
                              addr506:
                              §§push(this.m0);
                           }
                           §§goto(addr509);
                        }
                        else
                        {
                           addr473:
                           §§push(this.m0);
                           if(!(_loc10_ && v1))
                           {
                              §§push(§§pop().pointCount);
                           }
                        }
                        §§goto(addr509);
                        §§push(§§pop().points);
                     }
                     else
                     {
                        m_manifoldCount = 0;
                        if(!_loc10_)
                        {
                           §§goto(addr473);
                        }
                     }
                     addr500:
                     if(listener)
                     {
                        if(_loc9_)
                        {
                           addr505:
                        }
                        §§goto(addr506);
                     }
                     §§goto(addr633);
                  }
                  addr485:
                  §§push(§§pop() > §§pop());
                  if(_loc9_)
                  {
                     if(§§pop())
                     {
                        if(!(_loc10_ && this))
                        {
                           §§pop();
                           if(_loc9_)
                           {
                              §§goto(addr500);
                           }
                           §§goto(addr505);
                        }
                     }
                  }
                  §§goto(addr500);
               }
               §§goto(addr485);
               §§push(0);
            }
            §§goto(addr176);
         }
         this.m0.Set(this.m_manifold);
         if(!(_loc10_ && v1))
         {
            if(!(_loc10_ && listener))
            {
               b2Collision.b2CollideCircles(this.m_manifold,m_shape1 as b2CircleShape,b1.m_xf,m_shape2 as b2CircleShape,b2.m_xf);
               if(_loc9_ || v2)
               {
               }
            }
            §§goto(addr101);
         }
         §§goto(addr101);
      }
      
      override public function GetManifolds() : Array
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         if(_loc1_ || this)
         {
         }
         return this.m_manifolds;
      }
   }
}
