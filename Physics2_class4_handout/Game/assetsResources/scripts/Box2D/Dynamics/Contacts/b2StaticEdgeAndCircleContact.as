package Box2D.Dynamics.Contacts
{
   import Box2D.Collision.Shapes.b2CircleShape;
   import Box2D.Collision.Shapes.b2Shape;
   import Box2D.Collision.Shapes.b2StaticEdgeShape;
   import Box2D.Collision.b2ContactPoint;
   import Box2D.Collision.b2Manifold;
   import Box2D.Collision.b2ManifoldPoint;
   import Box2D.Common.Math.b2Mat22;
   import Box2D.Common.Math.b2Vec2;
   import Box2D.Common.Math.b2XForm;
   import Box2D.Dynamics.b2Body;
   import Box2D.Dynamics.b2ContactListener;
   
   public class b2StaticEdgeAndCircleContact extends b2Contact
   {
      
      private static const s_evalCP:b2ContactPoint = new b2ContactPoint();
      
      {
         var s_evalCP:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && b2StaticEdgeAndCircleContact))
         {
            if(_loc2_ && _loc2_)
            {
            }
            addr46:
            return;
         }
         §§goto(addr46);
      }
      
      private var m_manifolds:Array;
      
      public var m_manifold:b2Manifold;
      
      private var m0:b2Manifold;
      
      public function b2StaticEdgeAndCircleContact(shape1:b2Shape, shape2:b2Shape)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || shape1)
         {
         }
         if(!(_loc4_ && this))
         {
            if(!_loc4_)
            {
               if(_loc4_)
               {
               }
               addr43:
               this.m0 = new b2Manifold();
               if(!_loc4_)
               {
                  if(!_loc4_)
                  {
                     super(shape1,shape2);
                     if(!_loc4_)
                     {
                        if(_loc5_ || this)
                        {
                        }
                        addr80:
                     }
                     §§push(this.m_manifold);
                     if(!(_loc4_ && shape2))
                     {
                        §§pop().pointCount = 0;
                     }
                     addr95:
                     var point:b2ManifoldPoint = §§pop().points[0];
                     if(_loc5_ || shape2)
                     {
                        if(!_loc4_)
                        {
                           point.normalImpulse = 0;
                           if(_loc5_ || point)
                           {
                              if(_loc5_ || shape2)
                              {
                                 point.tangentImpulse = 0;
                                 if(_loc4_ && shape2)
                                 {
                                 }
                              }
                              addr146:
                              return;
                           }
                        }
                     }
                     §§goto(addr146);
                  }
                  addr93:
                  §§goto(addr95);
                  §§push(this.m_manifold);
               }
               this.m_manifold = this.m_manifolds[0];
               §§goto(addr80);
            }
            §§goto(addr93);
         }
         this.m_manifolds = [new b2Manifold()];
         §§goto(addr43);
      }
      
      public static function Destroy(contact:b2Contact, allocator:*) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
         }
         if(_loc3_ || _loc3_)
         {
            if(_loc4_ && _loc3_)
            {
            }
            addr54:
            return;
         }
         if(!_loc4_)
         {
            §§goto(addr54);
         }
         §§goto(addr54);
      }
      
      public static function Create(shape1:b2Shape, shape2:b2Shape, allocator:*) : b2Contact
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || b2StaticEdgeAndCircleContact)
         {
         }
         if(!_loc5_)
         {
            if(!_loc5_)
            {
               if(!_loc4_)
               {
               }
            }
            if(_loc5_)
            {
            }
         }
         return new b2StaticEdgeAndCircleContact(shape1,shape2);
      }
      
      public static function b2CollideStaticEdgeAndCircle(manifold:b2Manifold, edge:b2StaticEdgeShape, xf1:b2XForm, circle:b2CircleShape, xf2:b2XForm) : void
      {
         /*
          * Error de decompilación
          * Tiempo de espera (1 minuto) alcanzado
          * Instruction count: 1325
          */
         throw new flash.errors.IllegalOperationError("No decompilado debido al tiempo de espera");
      }
      
      override public function Evaluate(listener:b2ContactListener) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         if(_loc10_ || this)
         {
         }
         var v1:b2Vec2 = null;
         var v2:b2Vec2 = null;
         var mp0:b2ManifoldPoint = null;
         var mp:b2ManifoldPoint = null;
         if(!(_loc9_ && listener))
         {
            if(!_loc10_)
            {
            }
         }
         var b1:b2Body = m_shape1.m_body;
         if(_loc9_)
         {
         }
         var b2:b2Body = m_shape2.m_body;
         if(_loc10_ || v2)
         {
            if(!(_loc9_ && this))
            {
               this.m0.Set(this.m_manifold);
               if(_loc9_ && listener)
               {
               }
               addr110:
               var cp:b2ContactPoint = s_evalCP;
               if(_loc10_ || v2)
               {
                  cp.shape1 = m_shape1;
                  cp.shape2 = m_shape2;
                  if(_loc10_ || v1)
                  {
                     if(!_loc9_)
                     {
                        cp.friction = m_friction;
                        if(!_loc9_)
                        {
                           cp.restitution = m_restitution;
                           §§push(this.m_manifold);
                           if(_loc10_)
                           {
                              §§push(§§pop().pointCount);
                              if(_loc10_)
                              {
                                 §§push(0);
                                 if(!(_loc9_ && listener))
                                 {
                                    if(§§pop() > §§pop())
                                    {
                                       if(_loc9_ && this)
                                       {
                                       }
                                       addr180:
                                       m_manifoldCount = 1;
                                       addr520:
                                       mp0 = (!_loc9_?this.m_manifold:this.m0.points)[0];
                                       if(_loc10_ || listener)
                                       {
                                          if(!_loc9_)
                                          {
                                             cp.position = b1.GetWorldPoint(mp0.localPoint1);
                                             if(_loc10_ || listener)
                                             {
                                             }
                                             addr548:
                                             v1 = b1.GetLinearVelocityFromLocalPoint(mp0.localPoint1);
                                             if(_loc10_ || this)
                                             {
                                             }
                                             v2 = b2.GetLinearVelocityFromLocalPoint(mp0.localPoint2);
                                             §§push(cp.velocity);
                                             §§push(v2.x);
                                             if(!_loc9_)
                                             {
                                                §§push(v1.x);
                                                if(!(_loc9_ && v1))
                                                {
                                                   §§push(§§pop() - §§pop());
                                                }
                                                addr592:
                                                §§pop().Set(§§pop(),§§pop());
                                                cp.normal.SetV(this.m0.normal);
                                                if(!_loc9_)
                                                {
                                                   if(!_loc9_)
                                                   {
                                                      cp.separation = mp0.separation;
                                                      cp.id.key = mp0.id._key;
                                                   }
                                                }
                                                listener.Remove(cp);
                                                addr630:
                                                if(!_loc10_)
                                                {
                                                }
                                                return;
                                             }
                                             §§push(v2.y);
                                             if(!_loc9_)
                                             {
                                                §§push(§§pop() - v1.y);
                                             }
                                             §§goto(addr592);
                                          }
                                       }
                                       §§goto(addr548);
                                    }
                                    else
                                    {
                                       m_manifoldCount = 0;
                                       if(_loc10_ || v1)
                                       {
                                          if(!(_loc9_ && listener))
                                          {
                                             §§push(this.m0);
                                             if(_loc10_)
                                             {
                                                §§push(§§pop().pointCount);
                                             }
                                             §§goto(addr519);
                                          }
                                          addr516:
                                          §§goto(addr519);
                                       }
                                    }
                                 }
                                 addr498:
                                 §§push(§§pop() > §§pop());
                                 addr513:
                                 if(!_loc9_)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc10_ || v1)
                                       {
                                          §§pop();
                                       }
                                    }
                                 }
                                 if(§§pop())
                                 {
                                    if(_loc10_)
                                    {
                                       §§goto(addr516);
                                    }
                                    §§goto(addr519);
                                 }
                                 §§goto(addr630);
                              }
                              §§goto(addr498);
                              §§push(0);
                           }
                           §§push(§§pop().points);
                           if(!_loc9_)
                           {
                              §§push(0);
                              if(!(_loc9_ && v1))
                              {
                                 mp = §§pop()[§§pop()];
                                 if(_loc10_ || listener)
                                 {
                                    if(!(_loc9_ && v2))
                                    {
                                       §§push(this.m0);
                                       if(_loc10_)
                                       {
                                          if(§§pop().pointCount == 0)
                                          {
                                             if(_loc10_ || v2)
                                             {
                                             }
                                             addr247:
                                             addr343:
                                             if(listener)
                                             {
                                                addr250:
                                                cp.position = b1.GetWorldPoint(mp.localPoint1);
                                                if(_loc9_)
                                                {
                                                }
                                             }
                                          }
                                          else
                                          {
                                             §§push(this.m0);
                                          }
                                          addr472:
                                       }
                                       mp0 = §§pop().points[0];
                                       if(_loc10_)
                                       {
                                          mp.normalImpulse = mp0.normalImpulse;
                                          if(_loc10_)
                                          {
                                             mp.tangentImpulse = mp0.tangentImpulse;
                                             if(!_loc9_)
                                             {
                                                if(!listener)
                                                {
                                                }
                                                §§goto(addr472);
                                             }
                                          }
                                          cp.position = b1.GetWorldPoint(mp.localPoint1);
                                       }
                                       v1 = b1.GetLinearVelocityFromLocalPoint(mp.localPoint1);
                                       if(_loc10_ || v2)
                                       {
                                       }
                                       v2 = b2.GetLinearVelocityFromLocalPoint(mp.localPoint2);
                                       if(_loc10_ || this)
                                       {
                                          §§push(cp.velocity);
                                          §§push(v2.x);
                                          if(_loc10_)
                                          {
                                             §§push(v1.x);
                                             if(!_loc9_)
                                             {
                                                §§push(§§pop() - §§pop());
                                             }
                                             addr427:
                                             §§pop().Set(§§pop(),§§pop() - v1.y);
                                             addr457:
                                             if(_loc10_ || v2)
                                             {
                                                if(_loc10_ || v2)
                                                {
                                                }
                                                addr466:
                                                if(_loc10_)
                                                {
                                                   addr469:
                                                   listener.Persist(cp);
                                                }
                                                §§goto(addr472);
                                             }
                                             cp.id.key = mp.id._key;
                                             if(_loc10_)
                                             {
                                                §§goto(addr466);
                                             }
                                             §§goto(addr469);
                                          }
                                          §§push(v2.y);
                                          if(_loc10_ || this)
                                          {
                                             §§goto(addr427);
                                          }
                                          §§goto(addr427);
                                       }
                                       cp.normal.SetV(this.m_manifold.normal);
                                       cp.separation = mp.separation;
                                       §§goto(addr457);
                                    }
                                    mp.normalImpulse = 0;
                                    if(!(_loc9_ && listener))
                                    {
                                       mp.tangentImpulse = 0;
                                       §§goto(addr247);
                                    }
                                    §§goto(addr250);
                                 }
                                 v1 = b1.GetLinearVelocityFromLocalPoint(mp.localPoint1);
                                 if(_loc10_ || v1)
                                 {
                                 }
                                 v2 = b2.GetLinearVelocityFromLocalPoint(mp.localPoint2);
                                 if(_loc10_)
                                 {
                                    §§push(cp.velocity);
                                    §§push(v2.x);
                                    if(!_loc9_)
                                    {
                                       §§push(v1.x);
                                       if(_loc10_ || v2)
                                       {
                                          §§push(§§pop() - §§pop());
                                       }
                                       addr307:
                                       §§pop().Set(§§pop(),§§pop() - v1.y);
                                       cp.normal.SetV(this.m_manifold.normal);
                                       if(!_loc9_)
                                       {
                                          cp.separation = mp.separation;
                                          cp.id.key = mp.id._key;
                                       }
                                    }
                                    §§push(v2.y);
                                    if(!(_loc9_ && v1))
                                    {
                                       §§goto(addr307);
                                    }
                                    §§goto(addr307);
                                 }
                                 listener.Add(cp);
                                 §§goto(addr343);
                              }
                              §§goto(addr630);
                           }
                           else
                           {
                              §§goto(addr520);
                           }
                           §§goto(addr520);
                        }
                     }
                     addr511:
                     §§goto(addr513);
                     §§push(Boolean(listener));
                  }
               }
               if(!(_loc9_ && listener))
               {
                  §§goto(addr180);
               }
               else
               {
                  §§goto(addr511);
               }
               §§goto(addr630);
            }
            addr109:
            §§goto(addr110);
         }
         if(_loc10_)
         {
            b2CollideStaticEdgeAndCircle(this.m_manifold,m_shape1 as b2StaticEdgeShape,b1.m_xf,m_shape2 as b2CircleShape,b2.m_xf);
            if(_loc10_)
            {
               §§goto(addr109);
            }
         }
         §§goto(addr110);
      }
      
      override public function GetManifolds() : Array
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
         }
         if(_loc2_)
         {
         }
         return this.m_manifolds;
      }
   }
}
