package Box2D.Dynamics.Contacts
{
   import Box2D.Collision.Shapes.b2CircleShape;
   import Box2D.Collision.Shapes.b2ConcaveArcShape;
   import Box2D.Collision.Shapes.b2Shape;
   import Box2D.Collision.b2Collision;
   import Box2D.Collision.b2ContactPoint;
   import Box2D.Collision.b2Manifold;
   import Box2D.Collision.b2ManifoldPoint;
   import Box2D.Common.Math.b2Mat22;
   import Box2D.Common.Math.b2Vec2;
   import Box2D.Common.Math.b2XForm;
   import Box2D.Dynamics.b2Body;
   import Box2D.Dynamics.b2ContactListener;
   
   public class b2ConcaveArcAndCircleContact extends b2PolyAndCircleContact
   {
      
      private static var s_evalCP:b2ContactPoint;
      
      {
         var s_evalCP:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(_loc2_ || s_evalCP)
            {
               s_evalCP = new b2ContactPoint();
            }
         }
      }
      
      public function b2ConcaveArcAndCircleContact(shape1:b2Shape, shape2:b2Shape)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc4_)
         {
         }
         if(_loc4_ || _loc3_)
         {
            if(_loc4_)
            {
               if(!_loc4_)
               {
               }
               addr46:
               super(shape1,shape2);
               addr65:
               if(_loc4_ || this)
               {
               }
               addr65:
               return;
            }
            §§goto(addr65);
         }
         if(!(_loc3_ && _loc3_))
         {
            §§goto(addr46);
         }
         §§goto(addr65);
      }
      
      public static function Destroy(contact:b2Contact, allocator:*) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc3_)
         {
         }
         if(!(_loc3_ && _loc3_))
         {
            if(_loc3_ && allocator)
            {
            }
            addr55:
            return;
         }
         if(!(_loc3_ && b2ConcaveArcAndCircleContact))
         {
            §§goto(addr55);
         }
         §§goto(addr55);
      }
      
      public static function Create(shape1:b2Shape, shape2:b2Shape, allocator:*) : b2Contact
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || shape1)
         {
         }
         if(!(_loc5_ && shape1))
         {
            if(!(_loc5_ && shape2))
            {
               if(!(_loc5_ && shape1))
               {
                  if(!_loc4_)
                  {
                  }
               }
            }
            addr63:
            return new b2ConcaveArcAndCircleContact(shape1,shape2);
         }
         §§goto(addr63);
      }
      
      public static function b2CollideConcaveArcAndCircle(manifolds:Array, polygon:b2ConcaveArcShape, xf1:b2XForm, circle:b2CircleShape, xf2:b2XForm) : Number
      {
         /*
          * Error de decompilación
          * Tiempo de espera (1 minuto) alcanzado
          * Instruction count: 4730
          */
         throw new flash.errors.IllegalOperationError("No decompilado debido al tiempo de espera");
      }
      
      override public function Evaluate(listener:b2ContactListener) : void
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         if(_loc14_ && v1)
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
         if(!(_loc14_ && listener))
         {
            if(_loc15_ || i)
            {
               if(!_loc14_)
               {
                  if(_loc15_ || this)
                  {
                  }
                  addr76:
                  if(!_loc15_)
                  {
                  }
               }
               var b1:b2Body = m_shape1.m_body;
               if(!_loc15_)
               {
               }
               var b2:b2Body = m_shape2.m_body;
               if(!(_loc14_ && i))
               {
                  if(!(_loc14_ && v1))
                  {
                     m0.Set(m_manifolds[0]);
                     if(!_loc14_)
                     {
                        if(_loc15_ || v1)
                        {
                        }
                        addr139:
                     }
                     m_manifoldCount = b2CollideConcaveArcAndCircle(m_manifolds,m_shape1 as b2ConcaveArcShape,b1.m_xf,m_shape2 as b2CircleShape,b2.m_xf);
                     if(!_loc14_)
                     {
                        §§goto(addr139);
                     }
                  }
               }
               var persisted:Array = [false,false];
               if(_loc14_)
               {
               }
               var cp:b2ContactPoint = s_evalCP;
               cp.shape1 = m_shape1;
               cp.shape2 = m_shape2;
               if(_loc15_ || v1)
               {
                  if(_loc15_)
                  {
                     cp.friction = m_friction;
                     if(!_loc15_)
                     {
                     }
                     addr179:
                     if(m_manifold.pointCount > 0)
                     {
                        i = 0;
                        loop0:
                        while(true)
                        {
                           §§push(i);
                           if(!(_loc14_ && listener))
                           {
                              if(§§pop() >= m_manifold.pointCount)
                              {
                                 if(!_loc15_)
                                 {
                                 }
                                 m_manifoldCount = 1;
                                 if(_loc14_ && this)
                                 {
                                 }
                                 addr651:
                                 return;
                              }
                              addr648:
                              if(_loc15_)
                              {
                                 if(_loc15_ || listener)
                                 {
                                    if(_loc15_ || i)
                                    {
                                    }
                                    addr666:
                                    if(persisted[i])
                                    {
                                       if(_loc15_ || i)
                                       {
                                          addr790:
                                          i++;
                                          if(!_loc14_)
                                          {
                                             addr800:
                                             loop3:
                                             while(true)
                                             {
                                                addr801:
                                                while(true)
                                                {
                                                   if(§§pop() >= m0.pointCount)
                                                   {
                                                      if(!_loc14_)
                                                      {
                                                         break loop3;
                                                      }
                                                      addr807:
                                                      return;
                                                   }
                                                   §§goto(addr666);
                                                }
                                                break loop0;
                                             }
                                          }
                                       }
                                       §§goto(addr807);
                                    }
                                    mp0 = m0.points[i];
                                    if(!(_loc14_ && i))
                                    {
                                       if(_loc15_ || v1)
                                       {
                                       }
                                       addr709:
                                       v1 = b1.GetLinearVelocityFromLocalPoint(mp0.localPoint1);
                                       if(_loc14_ && i)
                                       {
                                       }
                                       v2 = b2.GetLinearVelocityFromLocalPoint(mp0.localPoint2);
                                       if(!_loc14_)
                                       {
                                          if(_loc15_)
                                          {
                                             §§push(cp.velocity);
                                             §§push(v2.x);
                                             if(_loc15_)
                                             {
                                                §§push(v1.x);
                                                if(_loc15_ || listener)
                                                {
                                                   §§push(§§pop() - §§pop());
                                                }
                                                addr758:
                                                §§pop().Set(§§pop(),§§pop());
                                                if(_loc15_)
                                                {
                                                   cp.normal.SetV(m0.normal);
                                                   cp.separation = mp0.separation;
                                                }
                                             }
                                             §§push(v2.y);
                                             if(!_loc14_)
                                             {
                                                §§push(§§pop() - v1.y);
                                             }
                                             §§goto(addr758);
                                          }
                                          addr775:
                                          cp.id.key = mp0.id._key;
                                          addr789:
                                          if(_loc15_)
                                          {
                                             listener.Remove(cp);
                                             if(!_loc15_)
                                             {
                                             }
                                             §§goto(addr790);
                                          }
                                          §§goto(addr790);
                                       }
                                       if(!_loc14_)
                                       {
                                          §§goto(addr775);
                                       }
                                       §§goto(addr789);
                                    }
                                    cp.position = b1.GetWorldPoint(mp0.localPoint1);
                                    if(_loc15_)
                                    {
                                       §§goto(addr709);
                                    }
                                    §§goto(addr709);
                                 }
                              }
                              if(_loc15_ || v1)
                              {
                                 mp = m_manifold.points[i];
                                 if(!_loc14_)
                                 {
                                    mp.normalImpulse = 0;
                                    mp.tangentImpulse = 0;
                                    found = false;
                                    if(_loc15_ || i)
                                    {
                                       if(_loc14_ && listener)
                                       {
                                       }
                                       addr258:
                                       §§push(0);
                                       if(!(_loc14_ && listener))
                                       {
                                          j = §§pop();
                                          if(_loc15_ || listener)
                                          {
                                             addr477:
                                             while(true)
                                             {
                                             }
                                          }
                                          addr481:
                                       }
                                       while(§§pop() < m0.pointCount)
                                       {
                                          if(persisted[j] != true)
                                          {
                                             mp0 = m0.points[j];
                                             if(_loc15_ || i)
                                             {
                                                if(!_loc14_)
                                                {
                                                   if(mp0.id._key == idKey)
                                                   {
                                                      if(_loc15_)
                                                      {
                                                         if(_loc15_ || this)
                                                         {
                                                            persisted[j] = true;
                                                            mp.normalImpulse = mp0.normalImpulse;
                                                            if(_loc15_)
                                                            {
                                                               mp.tangentImpulse = mp0.tangentImpulse;
                                                               if(_loc14_)
                                                               {
                                                               }
                                                               addr348:
                                                               cp.position = b1.GetWorldPoint(mp.localPoint1);
                                                               if(!(_loc14_ && this))
                                                               {
                                                                  §§push(b1.GetLinearVelocityFromLocalPoint(mp.localPoint1));
                                                                  if(!(_loc14_ && v1))
                                                                  {
                                                                     v1 = §§pop();
                                                                     if(_loc14_)
                                                                     {
                                                                     }
                                                                     v2 = b2.GetLinearVelocityFromLocalPoint(mp.localPoint2);
                                                                     §§push(cp.velocity);
                                                                     §§push(v2.x);
                                                                     if(_loc15_)
                                                                     {
                                                                        §§push(v1.x);
                                                                        if(_loc15_)
                                                                        {
                                                                           §§push(§§pop() - §§pop());
                                                                        }
                                                                        addr413:
                                                                        §§pop().Set(§§pop(),§§pop() - v1.y);
                                                                        if(_loc15_ || this)
                                                                        {
                                                                           if(_loc15_)
                                                                           {
                                                                              cp.normal.SetV(m_manifold.normal);
                                                                              if(_loc15_)
                                                                              {
                                                                                 if(!_loc14_)
                                                                                 {
                                                                                    cp.separation = mp.separation;
                                                                                    if(!_loc15_)
                                                                                    {
                                                                                    }
                                                                                    addr466:
                                                                                 }
                                                                                 cp.id.key = idKey;
                                                                              }
                                                                              addr467:
                                                                           }
                                                                           if(_loc15_ || listener)
                                                                           {
                                                                           }
                                                                           §§goto(addr467);
                                                                        }
                                                                        listener.Persist(cp);
                                                                        if(_loc15_ || listener)
                                                                        {
                                                                           §§goto(addr466);
                                                                        }
                                                                        §§goto(addr467);
                                                                     }
                                                                     §§push(v2.y);
                                                                     if(!(_loc14_ && i))
                                                                     {
                                                                        §§goto(addr413);
                                                                     }
                                                                     §§goto(addr413);
                                                                  }
                                                                  addr527:
                                                                  v1 = §§pop();
                                                                  if(_loc14_ && this)
                                                                  {
                                                                  }
                                                                  v2 = b2.GetLinearVelocityFromLocalPoint(mp.localPoint2);
                                                                  if(_loc15_ || i)
                                                                  {
                                                                     §§push(cp.velocity);
                                                                     §§push(v2.x);
                                                                     if(!(_loc14_ && this))
                                                                     {
                                                                        §§push(v1.x);
                                                                        if(!(_loc14_ && this))
                                                                        {
                                                                           §§push(§§pop() - §§pop());
                                                                        }
                                                                        addr576:
                                                                        §§pop().Set(§§pop(),§§pop() - v1.y);
                                                                        cp.normal.SetV(m_manifold.normal);
                                                                        if(!(_loc14_ && this))
                                                                        {
                                                                           cp.separation = mp.separation;
                                                                           if(_loc14_)
                                                                           {
                                                                           }
                                                                           cp.id.key = idKey;
                                                                        }
                                                                     }
                                                                     §§push(v2.y);
                                                                     if(_loc15_)
                                                                     {
                                                                        §§goto(addr576);
                                                                     }
                                                                     §§goto(addr576);
                                                                  }
                                                                  listener.Add(cp);
                                                                  continue loop0;
                                                               }
                                                            }
                                                            addr522:
                                                         }
                                                         addr344:
                                                         if(listener != null)
                                                         {
                                                            §§goto(addr348);
                                                         }
                                                         §§goto(addr467);
                                                      }
                                                      §§goto(addr527);
                                                      §§push(b1.GetLinearVelocityFromLocalPoint(mp.localPoint1));
                                                   }
                                                }
                                                addr516:
                                                cp.position = b1.GetWorldPoint(mp.localPoint1);
                                                §§goto(addr522);
                                             }
                                             §§push(true);
                                             if(!(_loc14_ && i))
                                             {
                                                found = §§pop();
                                                §§goto(addr344);
                                             }
                                             addr505:
                                             §§pop();
                                             §§push(listener == null);
                                             addr512:
                                             if(!_loc14_)
                                             {
                                                addr511:
                                                §§push(!§§pop());
                                             }
                                             if(§§pop())
                                             {
                                                if(_loc15_)
                                                {
                                                   §§goto(addr516);
                                                }
                                                §§goto(addr522);
                                             }
                                             continue loop0;
                                          }
                                          j++;
                                          if(!(_loc14_ && listener))
                                          {
                                             §§goto(addr477);
                                          }
                                          else
                                          {
                                             break;
                                          }
                                       }
                                       §§goto(addr481);
                                    }
                                    §§push(mp.id._key);
                                    if(!_loc14_)
                                    {
                                       §§push(uint(§§pop()));
                                    }
                                    idKey = §§pop();
                                    §§goto(addr258);
                                 }
                                 §§push(found);
                                 if(!(_loc14_ && listener))
                                 {
                                    §§push(false);
                                    if(!_loc14_)
                                    {
                                       §§push(§§pop() == §§pop());
                                       if(!_loc14_)
                                       {
                                          §§push(§§pop());
                                       }
                                       §§goto(addr505);
                                    }
                                    if(§§pop())
                                    {
                                       if(_loc15_ || v1)
                                       {
                                          §§goto(addr505);
                                       }
                                       §§goto(addr511);
                                    }
                                 }
                                 §§goto(addr512);
                              }
                              if(listener == null)
                              {
                                 §§goto(addr651);
                              }
                              else
                              {
                                 §§push(0);
                                 if(!(_loc14_ && i))
                                 {
                                    break;
                                 }
                                 §§goto(addr801);
                              }
                           }
                           break;
                        }
                        i = §§pop();
                        §§goto(addr800);
                     }
                     else
                     {
                        m_manifoldCount = 0;
                     }
                     if(!(_loc14_ && listener))
                     {
                        §§goto(addr648);
                     }
                     §§goto(addr651);
                  }
               }
               cp.restitution = m_restitution;
               §§goto(addr179);
            }
            addr73:
            if(_loc15_)
            {
               §§goto(addr76);
            }
            §§goto(addr76);
         }
         §§goto(addr73);
      }
      
      override public function GetManifolds() : Array
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && this)
         {
         }
         if(!_loc2_)
         {
         }
         return m_manifolds;
      }
   }
}
