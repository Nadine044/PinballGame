package Box2D.Dynamics.Contacts
{
   import Box2D.Collision.Shapes.b2PolygonShape;
   import Box2D.Collision.Shapes.b2Shape;
   import Box2D.Collision.Shapes.b2StaticEdgeShape;
   import Box2D.Collision.b2Collision;
   import Box2D.Collision.b2ContactPoint;
   import Box2D.Collision.b2Manifold;
   import Box2D.Collision.b2ManifoldPoint;
   import Box2D.Common.Math.b2Mat22;
   import Box2D.Common.Math.b2Vec2;
   import Box2D.Common.Math.b2XForm;
   import Box2D.Common.b2Settings;
   import Box2D.Dynamics.b2Body;
   import Box2D.Dynamics.b2ContactListener;
   
   public class b2PolyAndStaticEdgeContact extends b2Contact
   {
      
      public static const s_evalCP:b2ContactPoint;
      
      private static const k_slop:Number = 4.94E-322;
      
      {
         var s_evalCP:Boolean = true;
         var k_slop:Boolean = false;
         if(s_evalCP || s_evalCP)
         {
            if(s_evalCP || b2PolyAndStaticEdgeContact)
            {
               s_evalCP = new b2ContactPoint();
               if(k_slop && b2PolyAndStaticEdgeContact)
               {
               }
               addr62:
               return;
            }
         }
         if(!k_slop)
         {
            k_slop = 100 * Number.MIN_VALUE;
         }
         §§goto(addr62);
      }
      
      public var m_manifolds:Array;
      
      public var m_manifold:b2Manifold;
      
      public var m0:b2Manifold;
      
      public function b2PolyAndStaticEdgeContact(shape1:b2Shape, shape2:b2Shape)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || shape1)
         {
         }
         if(_loc5_)
         {
            if(!_loc4_)
            {
               if(!_loc5_)
               {
               }
               addr37:
               addr67:
               if(!_loc5_)
               {
               }
               this.m_manifold = this.m_manifolds[0];
               if(!(_loc4_ && this))
               {
                  addr87:
                  §§push(this.m_manifold);
                  if(_loc5_ || shape2)
                  {
                     §§pop().pointCount = 0;
                     if(_loc5_ || shape1)
                     {
                     }
                     addr107:
                     §§push(this.m_manifold);
                  }
                  var point:b2ManifoldPoint = §§pop().points[0];
                  if(_loc5_)
                  {
                     if(_loc5_ || shape1)
                     {
                        point.normalImpulse = 0;
                        if(_loc4_)
                        {
                        }
                        addr137:
                        point.tangentImpulse = 0;
                        if(!(_loc4_ && this))
                        {
                           addr154:
                        }
                        return;
                     }
                  }
                  if(!(_loc4_ && point))
                  {
                     §§goto(addr137);
                  }
                  §§goto(addr154);
               }
               §§goto(addr107);
            }
            this.m_manifolds = [new b2Manifold()];
            §§goto(addr37);
         }
         this.m0 = new b2Manifold();
         if(!(_loc4_ && this))
         {
            super(shape1,shape2);
            if(!(_loc4_ && shape1))
            {
               if(_loc4_)
               {
               }
               §§goto(addr107);
            }
            §§goto(addr67);
         }
         §§goto(addr87);
      }
      
      public static function b2CollidePolygonAndStaticEdge(manifold:b2Manifold, polygon:b2PolygonShape, xf1:b2XForm, edge:b2StaticEdgeShape, xf2:b2XForm) : void
      {
         /*
          * Error de decompilación
          * Tiempo de espera (1 minuto) alcanzado
          * Instruction count: 3137
          */
         throw new flash.errors.IllegalOperationError("No decompilado debido al tiempo de espera");
      }
      
      public static function Destroy(contact:b2Contact, allocator:*) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || allocator)
         {
         }
         if(_loc3_)
         {
            if(_loc3_ || _loc3_)
            {
               if(_loc3_ || _loc3_)
               {
               }
            }
            addr55:
            return;
         }
         §§goto(addr55);
      }
      
      public static function Create(shape1:b2Shape, shape2:b2Shape, allocator:*) : b2Contact
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc5_)
         {
         }
         if(!(_loc4_ && b2PolyAndStaticEdgeContact))
         {
            if(!_loc4_)
            {
               if(_loc4_)
               {
               }
            }
            if(!_loc5_)
            {
            }
            addr49:
            return new b2PolyAndStaticEdgeContact(shape1,shape2);
         }
         §§goto(addr49);
      }
      
      override public function Evaluate(listener:b2ContactListener) : void
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         if(_loc15_)
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
         if(!(_loc15_ && v1))
         {
            if(!(_loc15_ && listener))
            {
               if(!_loc15_)
               {
                  if(_loc15_)
                  {
                  }
                  addr73:
                  var b1:b2Body = m_shape1.m_body;
                  if(_loc15_ && listener)
                  {
                  }
                  var b2:b2Body = m_shape2.m_body;
                  if(_loc14_ || i)
                  {
                     if(_loc14_ || i)
                     {
                        this.m0.Set(this.m_manifold);
                        if(_loc14_ || i)
                        {
                           if(!_loc15_)
                           {
                              b2CollidePolygonAndStaticEdge(this.m_manifold,m_shape1 as b2PolygonShape,b1.m_xf,m_shape2 as b2StaticEdgeShape,b2.m_xf);
                              if(_loc15_ && i)
                              {
                              }
                           }
                        }
                     }
                  }
                  var persisted:Array = [false,false];
                  if(_loc15_ && v1)
                  {
                  }
                  var cp:b2ContactPoint = s_evalCP;
                  if(_loc14_)
                  {
                     cp.shape1 = m_shape1;
                     if(_loc14_ || v1)
                     {
                        cp.shape2 = m_shape2;
                     }
                     addr184:
                     if(_loc14_ || listener)
                     {
                        §§push(this.m_manifold.pointCount);
                        if(_loc14_)
                        {
                           if(§§pop() > 0)
                           {
                              if(_loc14_)
                              {
                                 if(_loc14_ || listener)
                                 {
                                 }
                                 addr211:
                                 loop1:
                                 while(true)
                                 {
                                    §§push(i);
                                    if(!_loc15_)
                                    {
                                       §§push(this.m_manifold.pointCount);
                                       if(!(_loc15_ && v1))
                                       {
                                          if(§§pop() >= §§pop())
                                          {
                                             if(!(_loc15_ && v1))
                                             {
                                                m_manifoldCount = 1;
                                             }
                                             addr702:
                                             addr844:
                                             if(_loc14_)
                                             {
                                                addr829:
                                                i++;
                                                addr852:
                                                if(_loc14_ || v1)
                                                {
                                                }
                                                return;
                                             }
                                             addr844:
                                             while(true)
                                             {
                                                break loop1;
                                             }
                                          }
                                          else
                                          {
                                             if(!_loc15_)
                                             {
                                                if(_loc14_ || listener)
                                                {
                                                }
                                                if(!_loc15_)
                                                {
                                                   §§push(this.m_manifold.points);
                                                   if(!(_loc15_ && i))
                                                   {
                                                      §§push(i);
                                                      if(!_loc15_)
                                                      {
                                                         mp = §§pop()[§§pop()];
                                                         if(!(_loc15_ && this))
                                                         {
                                                            if(_loc14_)
                                                            {
                                                               mp.normalImpulse = 0;
                                                               mp.tangentImpulse = 0;
                                                               found = false;
                                                               if(!_loc15_)
                                                               {
                                                                  §§push(mp.id._key);
                                                                  if(!(_loc15_ && i))
                                                                  {
                                                                     §§push(uint(§§pop()));
                                                                  }
                                                                  idKey = §§pop();
                                                                  if(!_loc14_)
                                                                  {
                                                                  }
                                                                  addr302:
                                                                  while(!(_loc14_ || i))
                                                                  {
                                                                  }
                                                                  §§push(found);
                                                                  if(!(_loc15_ && this))
                                                                  {
                                                                     §§push(false);
                                                                     if(!_loc15_)
                                                                     {
                                                                        §§push(§§pop() == §§pop());
                                                                        if(_loc15_)
                                                                        {
                                                                        }
                                                                        addr536:
                                                                        if(!§§pop())
                                                                        {
                                                                           if(_loc14_)
                                                                           {
                                                                              addr541:
                                                                              cp.position = b1.GetWorldPoint(mp.localPoint1);
                                                                              addr561:
                                                                              if(_loc15_)
                                                                              {
                                                                              }
                                                                              addr557:
                                                                              v1 = b1.GetLinearVelocityFromLocalPoint(mp.localPoint1);
                                                                              if(!_loc14_)
                                                                              {
                                                                              }
                                                                              v2 = b2.GetLinearVelocityFromLocalPoint(mp.localPoint2);
                                                                              §§push(cp.velocity);
                                                                              §§push(v2.x);
                                                                              if(!_loc15_)
                                                                              {
                                                                                 §§push(v1.x);
                                                                                 if(_loc14_ || this)
                                                                                 {
                                                                                    §§push(§§pop() - §§pop());
                                                                                 }
                                                                                 addr596:
                                                                                 §§pop().Set(§§pop(),§§pop());
                                                                                 if(_loc14_ || this)
                                                                                 {
                                                                                    cp.normal.SetV(this.m_manifold.normal);
                                                                                    cp.separation = mp.separation;
                                                                                    if(_loc14_ || listener)
                                                                                    {
                                                                                    }
                                                                                    addr636:
                                                                                    listener.Add(cp);
                                                                                 }
                                                                                 cp.id.key = idKey;
                                                                                 if(_loc14_ || listener)
                                                                                 {
                                                                                    §§goto(addr636);
                                                                                 }
                                                                              }
                                                                              §§push(v2.y);
                                                                              if(!_loc15_)
                                                                              {
                                                                                 §§push(§§pop() - v1.y);
                                                                              }
                                                                              §§goto(addr596);
                                                                           }
                                                                           if(!(_loc15_ && v1))
                                                                           {
                                                                              §§goto(addr557);
                                                                           }
                                                                           else
                                                                           {
                                                                              continue;
                                                                           }
                                                                        }
                                                                        i++;
                                                                        continue;
                                                                     }
                                                                     addr520:
                                                                     if(§§pop())
                                                                     {
                                                                        if(_loc14_ || i)
                                                                        {
                                                                           §§pop();
                                                                           if(!_loc15_)
                                                                           {
                                                                              addr531:
                                                                              §§push(listener == null);
                                                                              if(!_loc14_)
                                                                              {
                                                                              }
                                                                           }
                                                                           §§goto(addr541);
                                                                        }
                                                                        §§goto(addr536);
                                                                     }
                                                                     §§goto(addr536);
                                                                  }
                                                                  §§goto(addr520);
                                                                  §§push(§§pop());
                                                               }
                                                            }
                                                            addr290:
                                                            §§push(0);
                                                            if(!(_loc15_ && listener))
                                                            {
                                                               j = §§pop();
                                                               addr492:
                                                               while(true)
                                                               {
                                                               }
                                                            }
                                                            loop4:
                                                            while(true)
                                                            {
                                                               if(§§pop() >= this.m0.pointCount)
                                                               {
                                                                  if(_loc14_ || v1)
                                                                  {
                                                                  }
                                                                  break;
                                                               }
                                                               addr489:
                                                               if(persisted[j] == true)
                                                               {
                                                                  if(_loc14_)
                                                                  {
                                                                     §§goto(addr302);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  mp0 = this.m0.points[j];
                                                                  if(mp0.id._key == idKey)
                                                                  {
                                                                     if(_loc14_)
                                                                     {
                                                                        persisted[j] = true;
                                                                        if(!_loc15_)
                                                                        {
                                                                           if(_loc14_)
                                                                           {
                                                                              mp.normalImpulse = mp0.normalImpulse;
                                                                              mp.tangentImpulse = mp0.tangentImpulse;
                                                                              if(!(_loc15_ && v1))
                                                                              {
                                                                                 §§push(true);
                                                                                 if(!_loc15_)
                                                                                 {
                                                                                    found = §§pop();
                                                                                    if(_loc14_ || this)
                                                                                    {
                                                                                       if(_loc15_)
                                                                                       {
                                                                                       }
                                                                                    }
                                                                                    addr371:
                                                                                 }
                                                                                 §§goto(addr519);
                                                                              }
                                                                              cp.position = b1.GetWorldPoint(mp.localPoint1);
                                                                              if(!_loc14_)
                                                                              {
                                                                              }
                                                                              §§goto(addr531);
                                                                           }
                                                                        }
                                                                        §§push(b1.GetLinearVelocityFromLocalPoint(mp.localPoint1));
                                                                        if(!(_loc15_ && listener))
                                                                        {
                                                                           v1 = §§pop();
                                                                           if(!_loc14_)
                                                                           {
                                                                           }
                                                                           v2 = b2.GetLinearVelocityFromLocalPoint(mp.localPoint2);
                                                                           if(_loc14_ || v1)
                                                                           {
                                                                              §§push(cp.velocity);
                                                                              §§push(v2.x);
                                                                              if(_loc14_ || this)
                                                                              {
                                                                                 §§push(v1.x);
                                                                                 if(!(_loc15_ && v1))
                                                                                 {
                                                                                    §§push(§§pop() - §§pop());
                                                                                 }
                                                                                 addr448:
                                                                                 §§pop().Set(§§pop(),§§pop() - v1.y);
                                                                                 addr487:
                                                                                 if(!_loc15_)
                                                                                 {
                                                                                    if(!_loc15_)
                                                                                    {
                                                                                       cp.normal.SetV(this.m_manifold.normal);
                                                                                       if(_loc14_)
                                                                                       {
                                                                                          cp.separation = mp.separation;
                                                                                       }
                                                                                       addr486:
                                                                                    }
                                                                                    cp.id.key = idKey;
                                                                                    if(_loc14_ || i)
                                                                                    {
                                                                                    }
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              §§push(v2.y);
                                                                              if(_loc14_ || v1)
                                                                              {
                                                                                 §§goto(addr448);
                                                                              }
                                                                              §§goto(addr448);
                                                                           }
                                                                           listener.Persist(cp);
                                                                           §§goto(addr486);
                                                                        }
                                                                        §§goto(addr561);
                                                                     }
                                                                     if(listener != null)
                                                                     {
                                                                        §§goto(addr371);
                                                                     }
                                                                     §§goto(addr487);
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  j++;
                                                                  if(_loc14_)
                                                                  {
                                                                     §§goto(addr492);
                                                                  }
                                                                  else
                                                                  {
                                                                     break loop4;
                                                                  }
                                                               }
                                                               §§goto(addr504);
                                                               §§goto(addr290);
                                                            }
                                                            §§goto(addr504);
                                                         }
                                                         while(true)
                                                         {
                                                            §§goto(addr489);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr711:
                                                         mp0 = §§pop()[§§pop()];
                                                         if(!_loc15_)
                                                         {
                                                            if(_loc14_ || listener)
                                                            {
                                                               cp.position = b1.GetWorldPoint(mp0.localPoint1);
                                                               if(_loc14_ || i)
                                                               {
                                                               }
                                                            }
                                                            addr738:
                                                            v1 = b1.GetLinearVelocityFromLocalPoint(mp0.localPoint1);
                                                            if(_loc15_)
                                                            {
                                                            }
                                                            v2 = b2.GetLinearVelocityFromLocalPoint(mp0.localPoint2);
                                                            §§push(cp.velocity);
                                                            §§push(v2.x);
                                                            if(_loc14_ || listener)
                                                            {
                                                               §§push(v1.x);
                                                               if(_loc14_)
                                                               {
                                                                  §§push(§§pop() - §§pop());
                                                               }
                                                               addr774:
                                                               §§pop().Set(§§pop(),§§pop() - v1.y);
                                                               if(!(_loc15_ && this))
                                                               {
                                                                  if(_loc14_ || i)
                                                                  {
                                                                     cp.normal.SetV(this.m0.normal);
                                                                     if(_loc14_)
                                                                     {
                                                                        if(_loc15_)
                                                                        {
                                                                        }
                                                                     }
                                                                  }
                                                                  cp.separation = mp0.separation;
                                                                  if(_loc14_ || this)
                                                                  {
                                                                  }
                                                                  §§goto(addr829);
                                                               }
                                                               cp.id.key = mp0.id._key;
                                                               if(_loc14_)
                                                               {
                                                                  listener.Remove(cp);
                                                               }
                                                               §§goto(addr829);
                                                            }
                                                            §§push(v2.y);
                                                            if(_loc14_)
                                                            {
                                                               §§goto(addr774);
                                                            }
                                                            §§goto(addr774);
                                                         }
                                                         §§goto(addr738);
                                                      }
                                                   }
                                                   addr710:
                                                   §§goto(addr711);
                                                   §§push(i);
                                                }
                                                else
                                                {
                                                   addr680:
                                                   return;
                                                }
                                             }
                                             §§goto(addr844);
                                          }
                                          addr674:
                                          if(listener == null)
                                          {
                                             if(!_loc14_)
                                             {
                                             }
                                             §§goto(addr680);
                                          }
                                          else
                                          {
                                             §§push(0);
                                             if(_loc14_ || i)
                                             {
                                                i = §§pop();
                                             }
                                             break;
                                          }
                                       }
                                       addr848:
                                       if(§§pop() < §§pop())
                                       {
                                          if(_loc14_)
                                          {
                                             if(persisted[i])
                                             {
                                                if(_loc15_)
                                                {
                                                }
                                                §§goto(addr829);
                                             }
                                             §§goto(addr710);
                                             §§push(this.m0.points);
                                          }
                                          §§goto(addr702);
                                       }
                                       if(_loc15_)
                                       {
                                       }
                                       §§goto(addr852);
                                    }
                                    break;
                                 }
                                 while(true)
                                 {
                                    §§goto(addr848);
                                 }
                                 §§goto(addr852);
                              }
                           }
                           else
                           {
                              m_manifoldCount = 0;
                              if(_loc14_)
                              {
                                 §§goto(addr674);
                              }
                           }
                           §§goto(addr844);
                        }
                        addr210:
                        i = §§pop();
                        §§goto(addr211);
                     }
                     §§goto(addr210);
                     §§push(0);
                  }
                  cp.friction = m_friction;
                  if(!_loc14_)
                  {
                  }
                  cp.restitution = m_restitution;
                  §§goto(addr184);
               }
            }
            if(_loc15_ && i)
            {
            }
            §§goto(addr73);
         }
         §§goto(addr73);
      }
      
      override public function GetManifolds() : Array
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(_loc2_ || this)
         {
         }
         return this.m_manifolds;
      }
   }
}
