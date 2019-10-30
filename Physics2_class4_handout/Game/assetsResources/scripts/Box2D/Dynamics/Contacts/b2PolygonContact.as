package Box2D.Dynamics.Contacts
{
   import Box2D.Collision.Shapes.b2PolygonShape;
   import Box2D.Collision.Shapes.b2Shape;
   import Box2D.Collision.b2Collision;
   import Box2D.Collision.b2ContactPoint;
   import Box2D.Collision.b2Manifold;
   import Box2D.Collision.b2ManifoldPoint;
   import Box2D.Common.Math.b2Vec2;
   import Box2D.Dynamics.b2Body;
   import Box2D.Dynamics.b2ContactListener;
   
   public class b2PolygonContact extends b2Contact
   {
      
      public static const s_evalCP:b2ContactPoint = new b2ContactPoint();
      
      {
         var s_evalCP:Boolean = true;
         var _loc2_:Boolean = false;
         if(s_evalCP)
         {
            if(!s_evalCP)
            {
            }
            addr22:
            return;
         }
         §§goto(addr22);
      }
      
      public var m_manifolds:Array;
      
      public var m0:b2Manifold;
      
      public var m_manifold:b2Manifold;
      
      public function b2PolygonContact(shape1:b2Shape, shape2:b2Shape)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc4_)
         {
         }
         if(!(_loc3_ && shape1))
         {
            if(!_loc3_)
            {
               if(!(_loc3_ && this))
               {
                  this.m0 = new b2Manifold();
               }
               this.m_manifolds = [new b2Manifold()];
               if(_loc4_ || this)
               {
               }
               addr95:
               this.m_manifold.pointCount = 0;
               if(!_loc4_)
               {
               }
               return;
            }
            if(_loc4_ || _loc3_)
            {
               super(shape1,shape2);
               if(_loc3_ && shape1)
               {
               }
               §§goto(addr95);
            }
            addr81:
            this.m_manifold = this.m_manifolds[0];
            §§goto(addr95);
         }
         §§goto(addr81);
      }
      
      public static function Destroy(contact:b2Contact, allocator:*) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc3_)
         {
         }
         if(_loc4_)
         {
            if(!_loc3_)
            {
               if(_loc4_ || contact)
               {
               }
               addr46:
               return;
            }
         }
         §§goto(addr46);
      }
      
      public static function Create(shape1:b2Shape, shape2:b2Shape, allocator:*) : b2Contact
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc5_)
         {
         }
         if(!_loc4_)
         {
            if(!_loc4_)
            {
               if(_loc5_ || shape1)
               {
               }
            }
            if(!_loc5_)
            {
            }
         }
         return new b2PolygonContact(shape1,shape2);
      }
      
      override public function Evaluate(listener:b2ContactListener) : void
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         if(_loc15_ || v1)
         {
         }
         var v1:b2Vec2 = null;
         var v2:b2Vec2 = null;
         var mp0:b2ManifoldPoint = null;
         var cp:b2ContactPoint = null;
         var i:* = 0;
         var mp:b2ManifoldPoint = null;
         var found:* = false;
         var idKey:* = uint(0);
         var j:* = 0;
         if(!_loc14_)
         {
            if(_loc15_ || v2)
            {
               if(_loc15_)
               {
                  if(!_loc14_)
                  {
                     if(_loc14_)
                     {
                     }
                  }
               }
               addr72:
               var b1:b2Body = m_shape1.m_body;
               if(_loc14_ && v1)
               {
               }
               var b2:b2Body = m_shape2.m_body;
               if(!_loc14_)
               {
                  if(_loc15_)
                  {
                     this.m0.Set(this.m_manifold);
                     if(!_loc15_)
                     {
                     }
                     addr108:
                     b2Collision.b2CollidePolygons(this.m_manifold,m_shape1 as b2PolygonShape,b1.m_xf,m_shape2 as b2PolygonShape,b2.m_xf);
                     if(_loc14_ && v1)
                     {
                     }
                  }
                  if(_loc15_ || v1)
                  {
                     §§goto(addr108);
                  }
               }
               var persisted:Array = [false,false];
               if(_loc14_)
               {
               }
               cp = s_evalCP;
               cp.shape1 = m_shape1;
               if(!_loc14_)
               {
                  cp.shape2 = m_shape2;
                  cp.friction = m_friction;
                  cp.restitution = m_restitution;
                  if(_loc15_)
                  {
                     §§push(this.m_manifold.pointCount);
                     if(_loc15_)
                     {
                        if(§§pop() <= 0)
                        {
                           m_manifoldCount = 0;
                           if(_loc15_)
                           {
                              addr650:
                           }
                        }
                        addr651:
                        addr817:
                        if(listener == null)
                        {
                           addr654:
                           if(_loc15_)
                           {
                              addr657:
                              return;
                           }
                           addr816:
                           while(true)
                           {
                           }
                        }
                        else
                        {
                           §§push(0);
                           if(!(_loc14_ && v1))
                           {
                              i = §§pop();
                              §§goto(addr816);
                           }
                        }
                        while(§§pop() < this.m0.pointCount)
                        {
                           if(persisted[i])
                           {
                              if(_loc14_ && v1)
                              {
                                 break;
                              }
                           }
                           else
                           {
                              addr689:
                              mp0 = this.m0.points[i];
                              if(_loc15_ || this)
                              {
                                 if(!(_loc14_ && this))
                                 {
                                    cp.position = b1.GetWorldPoint(mp0.localPoint1);
                                    if(!_loc15_)
                                    {
                                    }
                                 }
                              }
                              v1 = b1.GetLinearVelocityFromLocalPoint(mp0.localPoint1);
                              if(_loc14_ && this)
                              {
                              }
                              v2 = b2.GetLinearVelocityFromLocalPoint(mp0.localPoint2);
                              §§push(cp.velocity);
                              §§push(v2.x);
                              if(_loc15_ || this)
                              {
                                 §§push(v1.x);
                                 if(!(_loc14_ && v2))
                                 {
                                    §§push(§§pop() - §§pop());
                                 }
                                 addr765:
                                 §§pop().Set(§§pop(),§§pop());
                                 if(_loc15_)
                                 {
                                    cp.normal.SetV(this.m0.normal);
                                 }
                                 cp.separation = mp0.separation;
                                 if(_loc15_ || this)
                                 {
                                    cp.id.key = mp0.id._key;
                                    if(_loc15_ || listener)
                                    {
                                       if(_loc15_)
                                       {
                                          listener.Remove(cp);
                                       }
                                    }
                                 }
                              }
                              §§push(v2.y);
                              if(_loc15_)
                              {
                                 §§push(§§pop() - v1.y);
                              }
                              §§goto(addr765);
                           }
                           i++;
                           §§goto(addr816);
                        }
                        return;
                     }
                     addr171:
                     i = §§pop();
                  }
                  loop2:
                  while(true)
                  {
                     §§push(i);
                     if(!_loc14_)
                     {
                        §§push(this.m_manifold.pointCount);
                        if(!_loc14_)
                        {
                           if(§§pop() >= §§pop())
                           {
                              if(!(_loc14_ && this))
                              {
                                 m_manifoldCount = 1;
                                 if(_loc14_)
                                 {
                                    §§goto(addr650);
                                 }
                                 §§goto(addr651);
                              }
                              §§goto(addr822);
                           }
                           else
                           {
                              if(_loc15_)
                              {
                                 if(!_loc14_)
                                 {
                                    if(_loc15_ || this)
                                    {
                                       §§push(this.m_manifold.points);
                                       if(_loc15_)
                                       {
                                          §§push(i);
                                          if(_loc15_)
                                          {
                                             mp = §§pop()[§§pop()];
                                             if(_loc15_)
                                             {
                                                mp.normalImpulse = 0;
                                                mp.tangentImpulse = 0;
                                                if(_loc15_ || listener)
                                                {
                                                   if(_loc15_)
                                                   {
                                                      found = false;
                                                      §§push(mp.id._key);
                                                      if(!(_loc14_ && listener))
                                                      {
                                                         §§push(uint(§§pop()));
                                                      }
                                                      idKey = §§pop();
                                                      if(!(_loc14_ && listener))
                                                      {
                                                         §§push(0);
                                                         if(!_loc14_)
                                                         {
                                                            j = §§pop();
                                                         }
                                                         loop3:
                                                         while(§§pop() < this.m0.pointCount)
                                                         {
                                                            if(!(_loc14_ && v2))
                                                            {
                                                               if(persisted[j] != true)
                                                               {
                                                                  mp0 = this.m0.points[j];
                                                                  if(!_loc14_)
                                                                  {
                                                                     if(!_loc14_)
                                                                     {
                                                                        if(mp0.id._key == idKey)
                                                                        {
                                                                           if(!_loc14_)
                                                                           {
                                                                              persisted[j] = true;
                                                                              if(!(_loc14_ && v2))
                                                                              {
                                                                                 mp.normalImpulse = mp0.normalImpulse;
                                                                                 if(_loc14_)
                                                                                 {
                                                                                 }
                                                                                 addr490:
                                                                                 §§push(listener == null);
                                                                                 if(!_loc14_)
                                                                                 {
                                                                                    addr495:
                                                                                    §§push(!§§pop());
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 continue loop2;
                                                                              }
                                                                           }
                                                                           addr310:
                                                                           §§push(true);
                                                                           if(_loc15_)
                                                                           {
                                                                              found = §§pop();
                                                                              if(!(_loc14_ && listener))
                                                                              {
                                                                                 if(!(_loc14_ && v2))
                                                                                 {
                                                                                    if(listener != null)
                                                                                    {
                                                                                       cp.position = b1.GetWorldPoint(mp.localPoint1);
                                                                                       if(_loc15_ || v1)
                                                                                       {
                                                                                       }
                                                                                    }
                                                                                    addr450:
                                                                                 }
                                                                              }
                                                                              §§push(b1.GetLinearVelocityFromLocalPoint(mp.localPoint1));
                                                                              if(!_loc14_)
                                                                              {
                                                                                 v1 = §§pop();
                                                                                 if(_loc14_ && listener)
                                                                                 {
                                                                                 }
                                                                                 v2 = b2.GetLinearVelocityFromLocalPoint(mp.localPoint2);
                                                                                 if(!_loc14_)
                                                                                 {
                                                                                    if(_loc15_)
                                                                                    {
                                                                                       §§push(cp.velocity);
                                                                                       §§push(v2.x);
                                                                                       if(_loc15_)
                                                                                       {
                                                                                          §§push(v1.x);
                                                                                          if(_loc15_ || v1)
                                                                                          {
                                                                                             §§push(§§pop() - §§pop());
                                                                                          }
                                                                                          addr394:
                                                                                          §§pop().Set(§§pop(),§§pop() - v1.y);
                                                                                          if(_loc15_ || this)
                                                                                          {
                                                                                             cp.normal.SetV(this.m_manifold.normal);
                                                                                             if(!_loc14_)
                                                                                             {
                                                                                                cp.separation = mp.separation;
                                                                                             }
                                                                                          }
                                                                                          if(_loc15_ || this)
                                                                                          {
                                                                                             cp.id.key = idKey;
                                                                                          }
                                                                                       }
                                                                                       §§push(v2.y);
                                                                                       if(_loc15_)
                                                                                       {
                                                                                          §§goto(addr394);
                                                                                       }
                                                                                       §§goto(addr394);
                                                                                    }
                                                                                    listener.Persist(cp);
                                                                                    if(_loc15_ || this)
                                                                                    {
                                                                                    }
                                                                                    §§goto(addr450);
                                                                                 }
                                                                                 §§goto(addr450);
                                                                              }
                                                                              addr522:
                                                                              v1 = §§pop();
                                                                              if(_loc14_ && listener)
                                                                              {
                                                                              }
                                                                              v2 = b2.GetLinearVelocityFromLocalPoint(mp.localPoint2);
                                                                              addr620:
                                                                              if(_loc15_)
                                                                              {
                                                                                 §§push(cp.velocity);
                                                                                 §§push(v2.x);
                                                                                 if(_loc15_ || v1)
                                                                                 {
                                                                                    §§push(v1.x);
                                                                                    if(_loc15_)
                                                                                    {
                                                                                       §§push(§§pop() - §§pop());
                                                                                    }
                                                                                    addr566:
                                                                                    §§pop().Set(§§pop(),§§pop() - v1.y);
                                                                                    if(_loc15_ || v2)
                                                                                    {
                                                                                       cp.normal.SetV(this.m_manifold.normal);
                                                                                       if(_loc15_ || listener)
                                                                                       {
                                                                                       }
                                                                                       addr597:
                                                                                       cp.id.key = idKey;
                                                                                       if(_loc15_ || this)
                                                                                       {
                                                                                          listener.Add(cp);
                                                                                          if(_loc14_ && v1)
                                                                                          {
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    cp.separation = mp.separation;
                                                                                    §§goto(addr597);
                                                                                 }
                                                                                 §§push(v2.y);
                                                                                 if(_loc15_ || v1)
                                                                                 {
                                                                                    §§goto(addr566);
                                                                                 }
                                                                                 §§goto(addr566);
                                                                              }
                                                                              i++;
                                                                              continue loop2;
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           addr452:
                                                                           while(true)
                                                                           {
                                                                              j++;
                                                                              if(!(_loc14_ && this))
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    continue loop3;
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 break;
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  mp.tangentImpulse = mp0.tangentImpulse;
                                                                  §§goto(addr310);
                                                               }
                                                               addr496:
                                                               if(§§pop())
                                                               {
                                                                  if(_loc15_ || this)
                                                                  {
                                                                     if(_loc15_)
                                                                     {
                                                                        cp.position = b1.GetWorldPoint(mp.localPoint1);
                                                                        if(_loc14_)
                                                                        {
                                                                        }
                                                                     }
                                                                     if(_loc14_)
                                                                     {
                                                                        continue loop2;
                                                                     }
                                                                  }
                                                                  §§goto(addr522);
                                                                  §§push(b1.GetLinearVelocityFromLocalPoint(mp.localPoint1));
                                                               }
                                                               §§goto(addr620);
                                                            }
                                                            else
                                                            {
                                                               break;
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr248);
                                                   }
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr452);
                                                }
                                             }
                                             §§push(found);
                                             if(!_loc14_)
                                             {
                                                §§push(false);
                                                if(_loc15_ || v1)
                                                {
                                                   §§push(§§pop() == §§pop());
                                                   if(!_loc14_)
                                                   {
                                                      §§push(§§pop());
                                                   }
                                                   §§goto(addr495);
                                                }
                                                if(§§pop())
                                                {
                                                   if(_loc14_ && v1)
                                                   {
                                                   }
                                                }
                                                §§goto(addr496);
                                             }
                                             §§pop();
                                             §§goto(addr490);
                                          }
                                          else
                                          {
                                             §§goto(addr689);
                                          }
                                       }
                                       §§goto(addr689);
                                    }
                                    else
                                    {
                                       §§goto(addr654);
                                    }
                                    §§goto(addr816);
                                 }
                              }
                              break;
                           }
                           §§goto(addr821);
                        }
                        §§goto(addr820);
                     }
                     §§goto(addr817);
                  }
                  §§goto(addr657);
               }
               §§goto(addr171);
               §§push(0);
            }
         }
         §§goto(addr72);
      }
      
      override public function GetManifolds() : Array
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         if(_loc2_ && _loc2_)
         {
         }
         return this.m_manifolds;
      }
   }
}
