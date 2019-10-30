package Box2D.Dynamics.Contacts
{
   import Box2D.Collision.Shapes.b2CircleShape;
   import Box2D.Collision.Shapes.b2PolygonShape;
   import Box2D.Collision.Shapes.b2Shape;
   import Box2D.Collision.b2Collision;
   import Box2D.Collision.b2ContactPoint;
   import Box2D.Collision.b2Manifold;
   import Box2D.Collision.b2ManifoldPoint;
   import Box2D.Common.Math.b2Vec2;
   import Box2D.Common.b2Settings;
   import Box2D.Dynamics.b2Body;
   import Box2D.Dynamics.b2ContactListener;
   
   public class b2PolyAndCircleContact extends b2Contact
   {
      
      public static const s_evalCP:b2ContactPoint;
      
      {
         var s_evalCP:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(!(s_evalCP && s_evalCP))
            {
               s_evalCP = new b2ContactPoint();
            }
         }
      }
      
      public var m_manifolds:Array;
      
      public var m_manifold:b2Manifold;
      
      public var m0:b2Manifold;
      
      public function b2PolyAndCircleContact(shape1:b2Shape, shape2:b2Shape)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || this)
         {
         }
         this.m_manifolds = [new b2Manifold()];
         this.m0 = new b2Manifold();
         if(!(_loc4_ && shape2))
         {
            super(shape1,shape2);
            if(_loc4_ && this)
            {
            }
            addr59:
            this.m_manifold = this.m_manifolds[0];
            addr102:
            if(!(_loc4_ && this))
            {
               if(_loc5_ || shape2)
               {
                  b2Settings.b2Assert(m_shape2.m_type == b2Shape.e_circleShape);
                  §§push(this.m_manifold);
                  if(_loc5_)
                  {
                     §§pop().pointCount = 0;
                  }
                  addr104:
                  var point:b2ManifoldPoint = §§pop().points[0];
                  if(!(_loc4_ && shape1))
                  {
                     if(_loc4_ && this)
                     {
                     }
                     addr134:
                     if(!(_loc4_ && shape2))
                     {
                        point.tangentImpulse = 0;
                        if(!(_loc4_ && point))
                        {
                           addr159:
                        }
                     }
                     return;
                  }
                  point.normalImpulse = 0;
                  if(!(_loc4_ && point))
                  {
                     §§goto(addr134);
                  }
                  §§goto(addr159);
               }
            }
            §§goto(addr104);
            §§push(this.m_manifold);
         }
         if(!_loc4_)
         {
            §§goto(addr59);
         }
         §§goto(addr102);
      }
      
      public static function Destroy(contact:b2Contact, allocator:*) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc3_)
         {
         }
         if(_loc4_ || contact)
         {
            if(!_loc3_)
            {
               if(_loc4_ || contact)
               {
               }
            }
            addr51:
            return;
         }
         §§goto(addr51);
      }
      
      public static function Create(shape1:b2Shape, shape2:b2Shape, allocator:*) : b2Contact
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || shape2)
         {
         }
         if(_loc5_)
         {
            if(_loc5_)
            {
               if(_loc5_ || shape2)
               {
                  if(_loc4_ && allocator)
                  {
                  }
               }
            }
            addr59:
            return new b2PolyAndCircleContact(shape1,shape2);
         }
         §§goto(addr59);
      }
      
      override public function Evaluate(listener:b2ContactListener) : void
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         if(_loc15_ || i)
         {
         }
         var i:* = 0;
         var v1:b2Vec2 = null;
         var v2:b2Vec2 = null;
         var mp0:b2ManifoldPoint = null;
         var mp:b2ManifoldPoint = null;
         var found:* = false;
         var idKey:* = uint(0);
         var j:* = 0;
         if(!(_loc14_ && v1))
         {
            if(_loc14_)
            {
            }
            addr85:
            var b1:b2Body = m_shape1.m_body;
            if(_loc14_)
            {
            }
            var b2:b2Body = m_shape2.m_body;
            if(_loc15_ || i)
            {
               if(_loc15_)
               {
                  this.m0.Set(this.m_manifold);
                  if(!(_loc14_ && this))
                  {
                     if(!_loc15_)
                     {
                     }
                     addr139:
                     var persisted:Array = [false,false];
                     if(_loc15_ || v1)
                     {
                     }
                     var cp:b2ContactPoint = s_evalCP;
                     if(!(_loc14_ && this))
                     {
                        cp.shape1 = m_shape1;
                        if(!(_loc14_ && i))
                        {
                           cp.shape2 = m_shape2;
                        }
                        cp.friction = m_friction;
                        if(_loc14_ && v1)
                        {
                        }
                        addr210:
                        loop0:
                        while(true)
                        {
                           §§push(i);
                           if(!_loc14_)
                           {
                              §§push(this.m_manifold.pointCount);
                              if(!(_loc14_ && v1))
                              {
                                 if(§§pop() >= §§pop())
                                 {
                                    if(_loc14_ && listener)
                                    {
                                    }
                                    m_manifoldCount = 1;
                                    if(_loc15_)
                                    {
                                       addr634:
                                       if(listener != null)
                                       {
                                          addr656:
                                          §§push(0);
                                          addr776:
                                          if(!(_loc14_ && i))
                                          {
                                             break;
                                          }
                                          while(true)
                                          {
                                             §§goto(addr656);
                                          }
                                       }
                                    }
                                    if(_loc15_ || v1)
                                    {
                                       return;
                                    }
                                 }
                                 else if(_loc15_ || v1)
                                 {
                                    §§push(this.m_manifold.points);
                                    if(!(_loc14_ && i))
                                    {
                                       §§push(i);
                                       if(!_loc14_)
                                       {
                                          mp = §§pop()[§§pop()];
                                          if(_loc15_)
                                          {
                                             if(!_loc14_)
                                             {
                                                mp.normalImpulse = 0;
                                                mp.tangentImpulse = 0;
                                                found = false;
                                                if(!_loc14_)
                                                {
                                                   §§push(mp.id._key);
                                                   if(_loc15_ || listener)
                                                   {
                                                      §§push(uint(§§pop()));
                                                   }
                                                   idKey = §§pop();
                                                   if(_loc14_)
                                                   {
                                                   }
                                                   addr277:
                                                   loop1:
                                                   while(true)
                                                   {
                                                      while(true)
                                                      {
                                                         if(§§pop() >= this.m0.pointCount)
                                                         {
                                                            if(!_loc15_)
                                                            {
                                                            }
                                                         }
                                                         addr491:
                                                         §§push(found);
                                                         if(!(_loc14_ && this))
                                                         {
                                                            §§push(false);
                                                            if(_loc15_)
                                                            {
                                                               §§push(§§pop() == §§pop());
                                                               if(_loc15_)
                                                               {
                                                                  §§push(§§pop());
                                                               }
                                                            }
                                                            if(§§pop())
                                                            {
                                                               if(_loc15_ || v1)
                                                               {
                                                                  §§pop();
                                                                  if(!_loc14_)
                                                                  {
                                                                     §§push(listener == null);
                                                                     if(!_loc15_)
                                                                     {
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     continue loop0;
                                                                  }
                                                               }
                                                            }
                                                            addr523:
                                                            addr600:
                                                            if(§§pop())
                                                            {
                                                               if(!_loc15_)
                                                               {
                                                               }
                                                               cp.position = b1.GetWorldPoint(mp.localPoint1);
                                                               if(!_loc14_)
                                                               {
                                                                  addr535:
                                                               }
                                                               §§push(b1.GetLinearVelocityFromLocalPoint(mp.localPoint1));
                                                               break loop1;
                                                            }
                                                            i++;
                                                            continue loop0;
                                                         }
                                                         addr522:
                                                         §§goto(addr523);
                                                         §§push(0);
                                                         if(!_loc14_)
                                                         {
                                                            j = §§pop();
                                                            §§goto(addr277);
                                                         }
                                                         else
                                                         {
                                                            continue;
                                                         }
                                                      }
                                                   }
                                                   v1 = §§pop();
                                                   if(_loc14_ && this)
                                                   {
                                                   }
                                                   v2 = b2.GetLinearVelocityFromLocalPoint(mp.localPoint2);
                                                   §§push(cp.velocity);
                                                   §§push(v2.x);
                                                   if(_loc15_)
                                                   {
                                                      §§push(v1.x);
                                                      if(!_loc14_)
                                                      {
                                                         §§push(§§pop() - §§pop());
                                                      }
                                                      addr572:
                                                      §§pop().Set(§§pop(),§§pop() - v1.y);
                                                      cp.normal.SetV(this.m_manifold.normal);
                                                      if(_loc15_)
                                                      {
                                                         cp.separation = mp.separation;
                                                         cp.id.key = idKey;
                                                      }
                                                      listener.Add(cp);
                                                      §§goto(addr600);
                                                   }
                                                   §§push(v2.y);
                                                   if(!_loc14_)
                                                   {
                                                      §§goto(addr572);
                                                   }
                                                   §§goto(addr572);
                                                }
                                                addr293:
                                                while(true)
                                                {
                                                   addr482:
                                                   while(true)
                                                   {
                                                      j++;
                                                      §§goto(addr277);
                                                   }
                                                }
                                             }
                                             §§goto(addr273);
                                          }
                                          while(true)
                                          {
                                             if(persisted[j] == true)
                                             {
                                                if(_loc15_ || v1)
                                                {
                                                   §§goto(addr293);
                                                }
                                                §§goto(addr277);
                                             }
                                             else
                                             {
                                                mp0 = this.m0.points[j];
                                                if(!_loc14_)
                                                {
                                                   if(mp0.id._key == idKey)
                                                   {
                                                      if(!(_loc14_ && i))
                                                      {
                                                         persisted[j] = true;
                                                         if(_loc15_ || listener)
                                                         {
                                                            if(_loc15_ || i)
                                                            {
                                                               mp.normalImpulse = mp0.normalImpulse;
                                                               if(!_loc15_)
                                                               {
                                                               }
                                                               mp.tangentImpulse = mp0.tangentImpulse;
                                                               §§push(true);
                                                               if(_loc15_)
                                                               {
                                                                  found = §§pop();
                                                               }
                                                               §§goto(addr522);
                                                            }
                                                         }
                                                         if(listener != null)
                                                         {
                                                            if(!(_loc14_ && v1))
                                                            {
                                                               cp.position = b1.GetWorldPoint(mp.localPoint1);
                                                               if(!_loc15_)
                                                               {
                                                                  continue loop0;
                                                               }
                                                            }
                                                            §§goto(addr535);
                                                         }
                                                         addr480:
                                                      }
                                                      addr374:
                                                      §§push(b1.GetLinearVelocityFromLocalPoint(mp.localPoint1));
                                                      if(_loc15_ || v1)
                                                      {
                                                         v1 = §§pop();
                                                         if(_loc14_ && listener)
                                                         {
                                                         }
                                                         v2 = b2.GetLinearVelocityFromLocalPoint(mp.localPoint2);
                                                         if(_loc15_ || this)
                                                         {
                                                            §§push(cp.velocity);
                                                            §§push(v2.x);
                                                            if(!_loc14_)
                                                            {
                                                               §§push(v1.x);
                                                               if(!_loc14_)
                                                               {
                                                                  §§push(§§pop() - §§pop());
                                                               }
                                                               addr434:
                                                               §§pop().Set(§§pop(),§§pop());
                                                               if(!(_loc14_ && i))
                                                               {
                                                                  cp.normal.SetV(this.m_manifold.normal);
                                                                  if(!_loc14_)
                                                                  {
                                                                     cp.separation = mp.separation;
                                                                     if(!(_loc14_ && listener))
                                                                     {
                                                                        cp.id.key = idKey;
                                                                     }
                                                                  }
                                                               }
                                                               listener.Persist(cp);
                                                               if(_loc14_ && i)
                                                               {
                                                               }
                                                            }
                                                            §§push(v2.y);
                                                            if(!_loc14_)
                                                            {
                                                               §§push(§§pop() - v1.y);
                                                            }
                                                            §§goto(addr434);
                                                         }
                                                         §§goto(addr480);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr482);
                                                   }
                                                   §§goto(addr491);
                                                }
                                                §§goto(addr374);
                                             }
                                             §§goto(addr540);
                                          }
                                       }
                                       else
                                       {
                                          addr674:
                                          mp0 = §§pop()[§§pop()];
                                          if(_loc15_)
                                          {
                                             if(_loc15_)
                                             {
                                                cp.position = b1.GetWorldPoint(mp0.localPoint1);
                                                if(!_loc15_)
                                                {
                                                }
                                                addr691:
                                                v1 = b1.GetLinearVelocityFromLocalPoint(mp0.localPoint1);
                                                if(_loc14_ && this)
                                                {
                                                }
                                                v2 = b2.GetLinearVelocityFromLocalPoint(mp0.localPoint2);
                                                §§push(cp.velocity);
                                                §§push(v2.x);
                                                if(_loc15_ || v1)
                                                {
                                                   §§push(v1.x);
                                                   if(_loc15_)
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                   }
                                                   addr740:
                                                   §§pop().Set(§§pop(),§§pop());
                                                   cp.normal.SetV(this.m0.normal);
                                                   cp.separation = mp0.separation;
                                                   cp.id.key = mp0.id._key;
                                                   addr774:
                                                   addr775:
                                                   if(_loc15_)
                                                   {
                                                      listener.Remove(cp);
                                                   }
                                                   i++;
                                                   while(true)
                                                   {
                                                      §§goto(addr776);
                                                   }
                                                }
                                                §§push(v2.y);
                                                if(_loc15_ || this)
                                                {
                                                   §§push(§§pop() - v1.y);
                                                }
                                                §§goto(addr740);
                                             }
                                          }
                                          §§goto(addr691);
                                       }
                                    }
                                    addr673:
                                    §§goto(addr674);
                                    §§push(i);
                                 }
                                 addr780:
                                 return;
                              }
                              if(§§pop() < §§pop())
                              {
                                 if(persisted[i])
                                 {
                                    if(_loc15_)
                                    {
                                       §§goto(addr774);
                                    }
                                    §§goto(addr775);
                                 }
                                 §§goto(addr673);
                                 §§push(this.m0.points);
                              }
                              §§goto(addr780);
                           }
                           break;
                        }
                        i = §§pop();
                        §§goto(addr775);
                     }
                     cp.restitution = m_restitution;
                     if(!(_loc14_ && i))
                     {
                        §§push(this.m_manifold.pointCount);
                        if(!_loc14_)
                        {
                           if(§§pop() <= 0)
                           {
                              m_manifoldCount = 0;
                           }
                           §§goto(addr634);
                        }
                        addr209:
                        i = §§pop();
                        §§goto(addr210);
                     }
                     §§goto(addr209);
                     §§push(0);
                  }
               }
            }
            b2Collision.b2CollidePolygonAndCircle(this.m_manifold,m_shape1 as b2PolygonShape,b1.m_xf,m_shape2 as b2CircleShape,b2.m_xf);
            if(_loc14_)
            {
            }
            §§goto(addr139);
         }
         if(_loc15_ || i)
         {
            if(!_loc14_)
            {
               if(_loc14_ && this)
               {
               }
               addr77:
               if(!(_loc14_ && this))
               {
                  §§goto(addr85);
               }
               §§goto(addr85);
            }
         }
         §§goto(addr77);
      }
      
      override public function GetManifolds() : Array
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         if(_loc2_ && this)
         {
         }
         return this.m_manifolds;
      }
   }
}
