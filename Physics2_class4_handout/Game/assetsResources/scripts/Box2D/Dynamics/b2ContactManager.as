package Box2D.Dynamics
{
   import Box2D.Collision.Shapes.b2Shape;
   import Box2D.Collision.b2ContactPoint;
   import Box2D.Collision.b2Manifold;
   import Box2D.Collision.b2ManifoldPoint;
   import Box2D.Collision.b2PairCallback;
   import Box2D.Common.Math.b2Vec2;
   import Box2D.Dynamics.Contacts.b2Contact;
   import Box2D.Dynamics.Contacts.b2NullContact;
   
   public class b2ContactManager extends b2PairCallback
   {
      
      private static const s_evalCP:b2ContactPoint = new b2ContactPoint();
      
      {
         var s_evalCP:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(_loc2_ && s_evalCP)
            {
            }
            addr34:
            return;
         }
         §§goto(addr34);
      }
      
      public var m_world:b2World;
      
      public var m_destroyImmediate:Boolean;
      
      public var m_nullContact:b2NullContact;
      
      public function b2ContactManager()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && _loc2_)
         {
         }
         if(_loc1_)
         {
            this.m_nullContact = new b2NullContact();
            if(_loc2_)
            {
            }
            addr42:
            this.m_world = null;
            if(!_loc1_)
            {
            }
            this.m_destroyImmediate = false;
            return;
         }
         super();
         §§goto(addr42);
      }
      
      override public function PairRemoved(proxyUserData1:*, proxyUserData2:*, pairUserData:*) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc6_)
         {
         }
         if(!(_loc6_ && proxyUserData1))
         {
            if(_loc5_ || proxyUserData2)
            {
            }
            addr36:
            if(pairUserData == null)
            {
               return;
            }
            var c:b2Contact = pairUserData as b2Contact;
            if(_loc5_ || this)
            {
               if(_loc5_)
               {
                  if(c != this.m_nullContact)
                  {
                     this.Destroy(c);
                     if(!_loc6_)
                     {
                        addr90:
                     }
                  }
               }
               return;
            }
            if(!(_loc6_ && proxyUserData2))
            {
               return;
            }
            §§goto(addr90);
         }
         §§goto(addr36);
      }
      
      public function Destroy(c:b2Contact) : void
      {
         var _loc19_:Boolean = true;
         var _loc20_:Boolean = false;
         if(_loc19_ || c)
         {
         }
         var b1:b2Body = null;
         var b2:b2Body = null;
         var manifolds:Array = null;
         var cp:b2ContactPoint = null;
         var i:int = 0;
         var manifold:b2Manifold = null;
         var j:* = 0;
         var mp:b2ManifoldPoint = null;
         var v1:b2Vec2 = null;
         var v2:b2Vec2 = null;
         if(_loc19_ || this)
         {
            if(_loc19_)
            {
               if(_loc19_ || shape1)
               {
               }
               if(_loc19_ || this)
               {
               }
            }
            addr80:
            var shape1:b2Shape = c.m_shape1;
            if(_loc19_ || shape2)
            {
            }
            var shape2:b2Shape = c.m_shape2;
            if(_loc20_)
            {
            }
            §§push(c.m_manifoldCount);
            if(!_loc20_)
            {
               §§push(int(§§pop()));
            }
            var manifoldCount:* = §§pop();
            if(_loc19_)
            {
               §§push(manifoldCount > 0);
               if(_loc19_ || shape1)
               {
                  if(§§pop())
                  {
                     if(_loc19_ || shape1)
                     {
                     }
                  }
                  addr132:
                  addr385:
                  if(!§§pop())
                  {
                  }
                  §§push(c.m_prev);
                  if(_loc19_ || shape1)
                  {
                     if(§§pop())
                     {
                        §§push(c.m_prev);
                     }
                     addr409:
                     §§push(c.m_next);
                     if(_loc19_ || shape2)
                     {
                        if(§§pop())
                        {
                           if(_loc19_)
                           {
                              §§push(c.m_next);
                           }
                           addr444:
                           var body1:b2Body = shape1.m_body;
                           if(_loc20_)
                           {
                           }
                           var body2:b2Body = shape2.m_body;
                           §§push(c.m_node1);
                           if(!(_loc20_ && c))
                           {
                              §§push(§§pop().prev);
                              if(_loc19_ || shape2)
                              {
                                 if(§§pop())
                                 {
                                    §§push(c.m_node1);
                                    if(!_loc20_)
                                    {
                                       §§push(§§pop().prev);
                                       if(!_loc20_)
                                       {
                                          §§push(c.m_node1.next);
                                          if(!_loc20_)
                                          {
                                             §§pop().next = §§pop();
                                             if(_loc20_ && shape2)
                                             {
                                             }
                                             addr509:
                                             addr551:
                                             if(_loc19_)
                                             {
                                                §§push(c.m_node1);
                                                if(_loc20_)
                                                {
                                                }
                                                addr547:
                                                if(§§pop() == body1.m_contactList)
                                                {
                                                }
                                                addr557:
                                                §§push(c.m_node2);
                                                addr628:
                                                if(!(_loc20_ && shape1))
                                                {
                                                   §§push(§§pop().prev);
                                                   if(!_loc19_)
                                                   {
                                                   }
                                                }
                                                if(§§pop() == body2.m_contactList)
                                                {
                                                   if(!(_loc20_ && shape1))
                                                   {
                                                      body2.m_contactList = c.m_node2.next;
                                                      if(_loc20_ && shape2)
                                                      {
                                                      }
                                                   }
                                                   addr665:
                                                   addr709:
                                                   if(!(_loc20_ && shape2))
                                                   {
                                                      addr673:
                                                      §§push(_loc17_.m_contactCount);
                                                      if(!_loc20_)
                                                      {
                                                         §§push(§§pop() - 1);
                                                      }
                                                      if(_loc19_ || this)
                                                      {
                                                         _loc17_.m_contactCount = _loc18_;
                                                      }
                                                      if(_loc19_ || shape2)
                                                      {
                                                      }
                                                   }
                                                   return;
                                                }
                                                b2Contact.Destroy(c,this.m_world.m_blockAllocator);
                                                if(_loc19_ || this)
                                                {
                                                   §§goto(addr665);
                                                }
                                                §§goto(addr673);
                                             }
                                             body1.m_contactList = c.m_node1.next;
                                             §§goto(addr557);
                                          }
                                          addr584:
                                          §§pop().next = §§pop();
                                          if(_loc19_ || shape2)
                                          {
                                             addr593:
                                             §§push(c.m_node2);
                                             if(_loc19_)
                                             {
                                                addr597:
                                                §§push(§§pop().next);
                                                addr614:
                                                if(_loc19_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(_loc19_ || shape2)
                                                      {
                                                      }
                                                      §§goto(addr709);
                                                   }
                                                   addr626:
                                                   §§goto(addr628);
                                                   §§push(c.m_node2);
                                                }
                                                addr614:
                                                §§pop().prev = c.m_node2.prev;
                                                if(_loc20_ && c)
                                                {
                                                }
                                                §§goto(addr626);
                                             }
                                             addr613:
                                             §§goto(addr614);
                                             §§push(§§pop().next);
                                          }
                                          §§push(c.m_node2);
                                          if(_loc19_)
                                          {
                                             §§goto(addr613);
                                          }
                                          §§goto(addr628);
                                       }
                                       if(§§pop())
                                       {
                                          §§push(c.m_node2);
                                          if(!(_loc20_ && shape1))
                                          {
                                             §§push(§§pop().prev);
                                          }
                                          §§goto(addr597);
                                       }
                                       §§goto(addr593);
                                    }
                                    addr505:
                                    §§push(§§pop().next);
                                    if(_loc19_)
                                    {
                                       if(§§pop())
                                       {
                                          §§goto(addr509);
                                       }
                                       addr545:
                                       §§goto(addr547);
                                       §§push(c.m_node1);
                                    }
                                    §§goto(addr614);
                                 }
                                 §§push(c.m_node1);
                                 if(!(_loc20_ && this))
                                 {
                                    §§goto(addr505);
                                 }
                                 §§goto(addr547);
                              }
                              §§goto(addr584);
                              §§push(c.m_node2.next);
                           }
                           §§push(§§pop().next);
                           if(_loc19_ || this)
                           {
                              §§push(c.m_node1.prev);
                              if(!(_loc20_ && this))
                              {
                                 §§pop().prev = §§pop();
                                 if(!(_loc20_ && shape1))
                                 {
                                    if(!_loc20_)
                                    {
                                       §§goto(addr545);
                                    }
                                 }
                                 §§goto(addr551);
                              }
                              §§goto(addr614);
                           }
                           §§goto(addr614);
                        }
                        addr428:
                        if(c == this.m_world.m_contactList)
                        {
                           if(_loc19_)
                           {
                              this.m_world.m_contactList = c.m_next;
                              if(_loc20_)
                              {
                              }
                           }
                           addr443:
                        }
                        §§goto(addr444);
                     }
                     §§pop().m_prev = c.m_prev;
                     §§goto(addr428);
                  }
                  §§pop().m_next = c.m_next;
                  if(!(_loc20_ && shape2))
                  {
                     §§goto(addr409);
                  }
                  §§goto(addr443);
               }
               §§pop();
               §§goto(addr132);
               §§push(Boolean(this.m_world.m_contactListener));
            }
            if(!_loc19_)
            {
            }
            b1 = shape1.m_body;
            if(_loc19_ || this)
            {
            }
            b2 = shape2.m_body;
            if(!_loc19_)
            {
            }
            manifolds = c.GetManifolds();
            if(_loc20_ && shape2)
            {
            }
            cp = s_evalCP;
            cp.shape1 = c.m_shape1;
            cp.shape2 = c.m_shape2;
            cp.friction = c.m_friction;
            if(_loc19_)
            {
               cp.restitution = c.m_restitution;
               if(!_loc20_)
               {
                  if(_loc19_ || shape2)
                  {
                  }
               }
               i = 0;
            }
            loop0:
            while(true)
            {
               if(i >= manifoldCount)
               {
                  if(!_loc20_)
                  {
                     break;
                  }
               }
               else
               {
                  if(_loc19_)
                  {
                     if(!_loc20_)
                     {
                        if(_loc20_)
                        {
                        }
                     }
                     else
                     {
                        break;
                     }
                  }
                  manifold = manifolds[i];
                  cp.normal.SetV(manifold.normal);
                  if(_loc19_ || c)
                  {
                     §§push(0);
                     if(!_loc20_)
                     {
                        j = §§pop();
                     }
                     loop1:
                     while(§§pop() < manifold.pointCount)
                     {
                        if(_loc19_ || this)
                        {
                           if(!(_loc20_ && c))
                           {
                              mp = manifold.points[j];
                              if(!(_loc20_ && c))
                              {
                                 if(!_loc20_)
                                 {
                                    cp.position = b1.GetWorldPoint(mp.localPoint1);
                                    if(_loc20_)
                                    {
                                    }
                                 }
                              }
                              v1 = b1.GetLinearVelocityFromLocalPoint(mp.localPoint1);
                              if(_loc20_)
                              {
                              }
                              v2 = b2.GetLinearVelocityFromLocalPoint(mp.localPoint2);
                              §§push(cp.velocity);
                              §§push(v2.x);
                              if(!_loc20_)
                              {
                                 §§push(v1.x);
                                 if(_loc19_ || shape1)
                                 {
                                    §§push(§§pop() - §§pop());
                                 }
                                 addr324:
                                 §§pop().Set(§§pop(),§§pop() - v1.y);
                                 if(!(_loc20_ && shape1))
                                 {
                                    cp.separation = mp.separation;
                                    cp.id.key = mp.id._key;
                                    if(!(_loc20_ && c))
                                    {
                                       if(_loc20_)
                                       {
                                       }
                                    }
                                    this.m_world.m_contactListener.Remove(cp);
                                    if(_loc20_)
                                    {
                                    }
                                    addr373:
                                    while(true)
                                    {
                                       continue loop1;
                                    }
                                 }
                                 j++;
                                 §§goto(addr373);
                              }
                              §§push(v2.y);
                              if(!_loc20_)
                              {
                                 §§goto(addr324);
                              }
                              §§goto(addr324);
                           }
                           else
                           {
                              continue loop0;
                           }
                        }
                        else
                        {
                           break;
                        }
                     }
                     continue;
                  }
                  §§goto(addr373);
               }
               §§goto(addr385);
            }
            §§goto(addr385);
         }
         §§goto(addr80);
      }
      
      override public function PairAdded(proxyUserData1:*, proxyUserData2:*) : *
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         if(_loc11_ || shape1)
         {
         }
         if(_loc11_ || shape1)
         {
            if(!_loc10_)
            {
               if(!(_loc10_ && shape1))
               {
                  if(_loc11_ || this)
                  {
                  }
                  addr54:
                  addr63:
                  if(_loc10_ && this)
                  {
                  }
                  var shape1:b2Shape = proxyUserData1 as b2Shape;
                  if(_loc11_ || proxyUserData2)
                  {
                  }
                  var shape2:b2Shape = proxyUserData2 as b2Shape;
                  if(!_loc11_)
                  {
                  }
                  var body1:b2Body = shape1.m_body;
                  if(_loc10_ && proxyUserData2)
                  {
                  }
                  var body2:b2Body = shape2.m_body;
                  §§push(Boolean(body1.IsStatic()));
                  §§push(Boolean(body1.IsStatic()));
                  if(!_loc10_)
                  {
                     if(§§pop())
                     {
                        §§pop();
                        §§push(Boolean(body2.IsStatic()));
                     }
                     if(§§pop())
                     {
                        §§push(this.m_nullContact);
                        if(_loc11_ || this)
                        {
                           return §§pop();
                        }
                     }
                     else
                     {
                        if(shape1.m_body == shape2.m_body)
                        {
                           §§push(this.m_nullContact);
                           if(!_loc11_)
                           {
                           }
                        }
                        else
                        {
                           §§push(body2.IsConnected(body1));
                           if(!(_loc10_ && this))
                           {
                              if(§§pop())
                              {
                                 if(_loc11_ || this)
                                 {
                                    §§push(this.m_nullContact);
                                    if(_loc11_ || this)
                                    {
                                    }
                                 }
                                 else
                                 {
                                    addr201:
                                    §§push(this.m_world);
                                 }
                                 addr215:
                                 return §§pop();
                              }
                              §§push(this.m_world);
                              if(!(_loc10_ && proxyUserData2))
                              {
                                 §§push(§§pop().m_contactFilter);
                                 if(_loc11_)
                                 {
                                    §§push(§§pop() != null);
                                    if(_loc11_ || this)
                                    {
                                    }
                                    addr200:
                                    §§pop();
                                    §§goto(addr201);
                                 }
                                 addr204:
                                 §§push(§§pop().ShouldCollide(shape1,shape2));
                                 §§push(false);
                              }
                              §§goto(addr204);
                              §§push(§§pop().m_contactFilter);
                           }
                           §§push(§§pop());
                           if(!_loc10_)
                           {
                              if(§§pop())
                              {
                                 if(!(_loc10_ && shape1))
                                 {
                                    §§goto(addr200);
                                 }
                              }
                              addr209:
                              if(§§pop())
                              {
                                 if(_loc10_)
                                 {
                                 }
                                 §§goto(addr215);
                                 return this.m_nullContact;
                              }
                              else
                              {
                                 var c:b2Contact = b2Contact.Create(shape1,shape2,this.m_world.m_blockAllocator);
                                 if(_loc11_)
                                 {
                                    if(!_loc11_)
                                    {
                                    }
                                    addr241:
                                    return this.m_nullContact;
                                 }
                                 if(c == null)
                                 {
                                    if(!(_loc10_ && proxyUserData2))
                                    {
                                       §§goto(addr241);
                                    }
                                    §§goto(addr241);
                                 }
                                 else
                                 {
                                    shape1 = c.m_shape1;
                                    if(!_loc11_)
                                    {
                                    }
                                    shape2 = c.m_shape2;
                                    if(_loc10_)
                                    {
                                    }
                                    body1 = shape1.m_body;
                                    if(_loc10_)
                                    {
                                    }
                                    body2 = shape2.m_body;
                                    if(_loc11_ || this)
                                    {
                                       c.m_prev = null;
                                       c.m_next = this.m_world.m_contactList;
                                       if(!(_loc10_ && proxyUserData1))
                                       {
                                          if(!_loc10_)
                                          {
                                             §§push(this.m_world);
                                             if(_loc11_)
                                             {
                                                §§push(§§pop().m_contactList);
                                                if(!(_loc10_ && shape1))
                                                {
                                                   if(§§pop() != null)
                                                   {
                                                      §§push(this.m_world);
                                                      if(_loc11_ || shape1)
                                                      {
                                                         §§push(§§pop().m_contactList);
                                                      }
                                                   }
                                                   addr335:
                                                   §§push(this.m_world);
                                                   if(_loc11_ || shape1)
                                                   {
                                                      §§pop().m_contactList = c;
                                                      §§push(c.m_node1);
                                                      if(_loc11_ || this)
                                                      {
                                                         §§pop().contact = c;
                                                         §§push(c.m_node1);
                                                         if(_loc11_ || this)
                                                         {
                                                            §§pop().other = body2;
                                                            if(_loc11_)
                                                            {
                                                               if(!(_loc10_ && proxyUserData2))
                                                               {
                                                                  §§push(c.m_node1);
                                                                  if(!_loc11_)
                                                                  {
                                                                  }
                                                                  addr398:
                                                                  §§pop().next = body1.m_contactList;
                                                                  addr543:
                                                                  if(_loc10_ && shape1)
                                                                  {
                                                                  }
                                                                  addr542:
                                                                  §§push(this.m_world);
                                                               }
                                                               addr525:
                                                               body2.m_contactList.prev = c.m_node2;
                                                               if(!_loc10_)
                                                               {
                                                                  if(_loc11_ || proxyUserData2)
                                                                  {
                                                                     addr538:
                                                                     body2.m_contactList = c.m_node2;
                                                                  }
                                                                  addr572:
                                                                  return c;
                                                               }
                                                               §§goto(addr542);
                                                            }
                                                            §§push(body1.m_contactList);
                                                            if(!(_loc10_ && proxyUserData1))
                                                            {
                                                               §§push(null);
                                                               if(!_loc10_)
                                                               {
                                                                  if(§§pop() != §§pop())
                                                                  {
                                                                     if(_loc11_ || shape1)
                                                                     {
                                                                        §§push(body1.m_contactList);
                                                                        if(!_loc10_)
                                                                        {
                                                                           §§pop().prev = c.m_node1;
                                                                        }
                                                                        §§goto(addr525);
                                                                     }
                                                                     addr473:
                                                                     §§push(c.m_node2);
                                                                     addr503:
                                                                     if(!_loc10_)
                                                                     {
                                                                        §§pop().other = body1;
                                                                        if(!(_loc10_ && proxyUserData1))
                                                                        {
                                                                           addr487:
                                                                           §§push(c.m_node2);
                                                                           if(!(_loc10_ && proxyUserData2))
                                                                           {
                                                                              §§pop().prev = null;
                                                                           }
                                                                        }
                                                                        addr508:
                                                                     }
                                                                     addr571:
                                                                     §§pop().next = body2.m_contactList;
                                                                     if(_loc11_)
                                                                     {
                                                                        §§goto(addr508);
                                                                     }
                                                                     §§goto(addr572);
                                                                  }
                                                                  body1.m_contactList = c.m_node1;
                                                                  if(_loc11_)
                                                                  {
                                                                     if(_loc11_ || this)
                                                                     {
                                                                        §§push(c.m_node2);
                                                                        if(!(_loc10_ && shape1))
                                                                        {
                                                                           §§pop().contact = c;
                                                                           if(!(_loc10_ && shape1))
                                                                           {
                                                                              if(_loc11_)
                                                                              {
                                                                                 §§goto(addr473);
                                                                              }
                                                                              §§goto(addr508);
                                                                           }
                                                                           addr522:
                                                                           §§goto(addr525);
                                                                        }
                                                                        §§goto(addr503);
                                                                     }
                                                                  }
                                                                  §§goto(addr487);
                                                               }
                                                               addr514:
                                                               if(§§pop() != §§pop())
                                                               {
                                                                  if(!(_loc10_ && proxyUserData1))
                                                                  {
                                                                     §§goto(addr522);
                                                                  }
                                                               }
                                                               §§goto(addr538);
                                                            }
                                                            addr513:
                                                            §§goto(addr514);
                                                            §§push(null);
                                                         }
                                                      }
                                                      §§pop().prev = null;
                                                      if(_loc10_ && shape1)
                                                      {
                                                      }
                                                      §§goto(addr571);
                                                   }
                                                }
                                                §§pop().m_prev = c;
                                                if(_loc11_)
                                                {
                                                   §§goto(addr335);
                                                }
                                                §§goto(addr542);
                                             }
                                             §§push(_loc8_.m_contactCount);
                                             if(_loc11_ || proxyUserData1)
                                             {
                                                §§push(§§pop() + 1);
                                             }
                                             if(_loc11_)
                                             {
                                                _loc8_.m_contactCount = _loc9_;
                                             }
                                             §§goto(addr571);
                                          }
                                          §§push(body2.m_contactList);
                                          if(_loc11_)
                                          {
                                             §§goto(addr513);
                                          }
                                          §§goto(addr525);
                                       }
                                       if(!_loc10_)
                                       {
                                          §§goto(addr398);
                                          §§push(c.m_node1);
                                       }
                                       §§goto(addr543);
                                    }
                                    if(_loc11_)
                                    {
                                       §§goto(addr503);
                                       §§push(c.m_node2);
                                    }
                                    §§goto(addr522);
                                 }
                              }
                           }
                        }
                        return §§pop();
                     }
                     return §§pop();
                  }
                  §§goto(addr209);
                  §§push(§§pop() == §§pop());
               }
               addr52:
               §§goto(addr54);
            }
            if(!_loc10_)
            {
               §§goto(addr52);
            }
         }
         §§goto(addr63);
      }
      
      public function Collide() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || body1)
         {
         }
         var body1:b2Body = null;
         var body2:b2Body = null;
         if(_loc4_)
         {
            if(!_loc4_)
            {
            }
         }
         var c:b2Contact = this.m_world.m_contactList;
         while(true)
         {
            if(!c)
            {
               if(_loc4_)
               {
                  break;
               }
               break;
            }
            if(_loc4_ || c)
            {
               if(_loc4_ || body1)
               {
                  if(_loc5_)
                  {
                     break;
                  }
               }
               break;
            }
            body1 = c.m_shape1.m_body;
            if(!_loc4_)
            {
            }
            body2 = c.m_shape2.m_body;
            §§push(body1.IsSleeping());
            if(_loc4_ || body1)
            {
               §§push(Boolean(§§pop()));
               if(_loc4_)
               {
                  if(§§pop())
                  {
                     if(_loc4_ || c)
                     {
                        §§pop();
                        §§push(body2.IsSleeping());
                        if(_loc5_)
                        {
                        }
                     }
                  }
               }
               addr108:
               if(§§pop())
               {
                  if(_loc4_ || this)
                  {
                     continue;
                  }
               }
               else
               {
                  c.Update(this.m_world.m_contactListener);
               }
               continue;
            }
            §§goto(addr108);
            §§push(Boolean(§§pop()));
         }
      }
   }
}
