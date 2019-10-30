package Box2D.Dynamics.Contacts
{
   import Box2D.Collision.Shapes.b2Shape;
   import Box2D.Collision.b2Manifold;
   import Box2D.Common.Math.b2Math;
   import Box2D.Dynamics.b2Body;
   import Box2D.Dynamics.b2ContactListener;
   
   public class b2Contact
   {
      
      public static var e_toiFlag:uint = 8;
      
      public static var e_nonSolidFlag:uint = 1;
      
      public static var e_slowFlag:uint = 2;
      
      public static var e_islandFlag:uint = 4;
      
      public static var s_registers:Array;
      
      public static var s_initialized:Boolean = false;
      
      {
         var e_nonSolidFlag:Boolean = false;
         var e_slowFlag:Boolean = true;
         if(e_slowFlag || e_nonSolidFlag)
         {
            e_islandFlag = 4;
            if(!e_nonSolidFlag)
            {
               e_toiFlag = 8;
            }
            s_initialized = false;
         }
      }
      
      public var m_shape1:b2Shape;
      
      public var m_shape2:b2Shape;
      
      public var m_prev:b2Contact;
      
      public var m_toi:Number;
      
      public var m_next:b2Contact;
      
      public var m_friction:Number;
      
      public var m_manifoldCount:int;
      
      public var m_node1:b2ContactEdge;
      
      public var m_node2:b2ContactEdge;
      
      public var m_restitution:Number;
      
      public var m_flags:uint;
      
      public function b2Contact(s1:b2Shape = null, s2:b2Shape = null)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc4_ && s2)
         {
         }
         if(_loc3_)
         {
            if(_loc3_)
            {
               this.m_node1 = new b2ContactEdge();
               if(_loc3_)
               {
                  this.m_node2 = new b2ContactEdge();
                  if(_loc4_ && s2)
                  {
                  }
                  addr215:
                  addr351:
                  if(_loc3_ || s1)
                  {
                     this.m_next = null;
                     addr227:
                     §§push(this.m_node1);
                     if(!(_loc4_ && s2))
                     {
                        §§push(null);
                        if(_loc3_ || this)
                        {
                           §§pop().contact = §§pop();
                           if(_loc3_ || s1)
                           {
                              if(_loc3_ || this)
                              {
                              }
                              addr287:
                              this.m_node1.other = null;
                              addr347:
                              if(_loc3_ || _loc3_)
                              {
                                 addr299:
                                 §§push(this.m_node2);
                                 addr319:
                                 if(_loc3_ || s2)
                                 {
                                    §§push(null);
                                    if(!_loc4_)
                                    {
                                       §§pop().contact = §§pop();
                                       if(!_loc3_)
                                       {
                                       }
                                       addr352:
                                       return;
                                    }
                                    addr327:
                                    addr328:
                                    §§pop().prev = §§pop();
                                    §§push(this.m_node2);
                                    addr349:
                                    if(_loc3_)
                                    {
                                       addr333:
                                       §§push(null);
                                       if(!_loc4_)
                                       {
                                          addr343:
                                          §§pop().next = §§pop();
                                          if(_loc4_)
                                          {
                                          }
                                       }
                                       addr350:
                                       §§pop().other = §§pop();
                                    }
                                    §§goto(addr350);
                                    §§push(null);
                                 }
                                 §§push(null);
                                 if(!(_loc4_ && s2))
                                 {
                                    §§goto(addr327);
                                 }
                                 §§goto(addr343);
                              }
                              §§goto(addr349);
                              §§push(this.m_node2);
                           }
                           addr260:
                           §§push(this.m_node1);
                           if(_loc4_)
                           {
                           }
                           addr275:
                           §§push(null);
                           if(!_loc4_)
                           {
                              addr278:
                              §§pop().next = §§pop();
                              if(_loc3_ || this)
                              {
                                 addr286:
                                 §§goto(addr287);
                              }
                              §§goto(addr328);
                           }
                           §§goto(addr287);
                        }
                        addr267:
                        §§pop().prev = §§pop();
                        if(_loc3_)
                        {
                           §§push(this.m_node1);
                           if(!_loc4_)
                           {
                              §§goto(addr275);
                           }
                           §§goto(addr287);
                        }
                        §§goto(addr347);
                     }
                     §§push(null);
                     if(_loc3_)
                     {
                        §§goto(addr267);
                     }
                     §§goto(addr278);
                  }
                  addr351:
                  §§goto(addr352);
               }
               addr48:
               super();
               if(!(_loc4_ && _loc3_))
               {
                  this.m_flags = 0;
                  §§push(!s1);
                  if(!(_loc4_ && s1))
                  {
                     §§push(§§pop());
                     if(_loc3_)
                     {
                        if(!§§pop())
                        {
                           if(_loc3_ || this)
                           {
                              §§pop();
                              if(_loc3_ || s1)
                              {
                                 §§push(!s2);
                              }
                              §§goto(addr351);
                           }
                           addr130:
                           §§push(Boolean(§§pop()));
                           §§push(Boolean(§§pop()));
                        }
                        if(§§pop())
                        {
                           if(!(_loc4_ && this))
                           {
                              if(_loc3_)
                              {
                                 this.m_shape1 = null;
                                 if(_loc3_)
                                 {
                                    if(_loc3_)
                                    {
                                       this.m_shape2 = null;
                                       if(_loc3_ || _loc3_)
                                       {
                                          return;
                                       }
                                    }
                                    else
                                    {
                                       addr201:
                                       this.m_restitution = b2Math.b2Max(this.m_shape1.m_restitution,this.m_shape2.m_restitution);
                                    }
                                    this.m_prev = null;
                                    §§goto(addr215);
                                 }
                                 §§goto(addr299);
                              }
                              else
                              {
                                 addr156:
                              }
                              §§goto(addr286);
                           }
                           §§goto(addr227);
                        }
                        else
                        {
                           §§push(s1.IsSensor());
                           if(!_loc4_)
                           {
                              §§goto(addr130);
                           }
                           addr135:
                           §§pop();
                        }
                        addr157:
                        this.m_shape1 = s1;
                        this.m_shape2 = s2;
                        if(!(_loc4_ && s1))
                        {
                           addr178:
                           if(!_loc4_)
                           {
                              this.m_manifoldCount = 0;
                              this.m_friction = Math.sqrt(this.m_shape1.m_friction * this.m_shape2.m_friction);
                              if(!_loc4_)
                              {
                                 if(_loc3_)
                                 {
                                    §§goto(addr201);
                                 }
                                 §§goto(addr260);
                              }
                              §§goto(addr351);
                           }
                           §§goto(addr227);
                        }
                        §§goto(addr286);
                     }
                     if(!§§pop())
                     {
                        if(_loc3_)
                        {
                           §§goto(addr135);
                        }
                     }
                     addr146:
                     if(§§pop())
                     {
                        if(_loc3_)
                        {
                           this.m_flags = this.m_flags | e_nonSolidFlag;
                           §§goto(addr156);
                        }
                        §§goto(addr178);
                     }
                     §§goto(addr157);
                  }
                  addr145:
                  §§goto(addr146);
                  §§push(Boolean(§§pop()));
               }
               §§push(s2.IsSensor());
               if(!(_loc4_ && s2))
               {
                  §§goto(addr145);
               }
               §§goto(addr146);
            }
            §§goto(addr48);
         }
         §§push(this.m_node2);
         if(!_loc4_)
         {
            §§goto(addr319);
         }
         §§goto(addr333);
      }
      
      public static function InitializeRegisters() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc3_)
         {
         }
         var j:* = 0;
         if(_loc4_)
         {
            if(_loc3_ && i)
            {
            }
            addr47:
            var i:int = 0;
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  while(true)
                  {
                     if(§§pop() >= §§pop())
                     {
                        if(!_loc3_)
                        {
                           if(!_loc3_)
                           {
                              AddType(b2CircleContact.Create,b2CircleContact.Destroy,b2Shape.e_circleShape,b2Shape.e_circleShape);
                              if(_loc4_ || b2Contact)
                              {
                                 break;
                              }
                              addr237:
                              return;
                           }
                           addr177:
                        }
                        addr167:
                        AddType(b2PolygonContact.Create,b2PolygonContact.Destroy,b2Shape.e_polygonShape,b2Shape.e_polygonShape);
                        §§goto(addr177);
                     }
                     else if(_loc4_)
                     {
                        if(!_loc3_)
                        {
                           §§push(s_registers);
                           if(!_loc3_)
                           {
                              §§push(i);
                              if(_loc4_)
                              {
                                 §§pop()[§§pop()] = new Array(b2Shape.e_shapeTypeCount);
                                 if(!(_loc3_ && j))
                                 {
                                    if(_loc4_)
                                    {
                                       §§push(0);
                                       if(_loc4_)
                                       {
                                          j = §§pop();
                                          addr108:
                                          while(true)
                                          {
                                             §§push(j);
                                             if(!_loc3_)
                                             {
                                                §§push(b2Shape.e_shapeTypeCount);
                                                if(!_loc3_)
                                                {
                                                   if(§§pop() >= §§pop())
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         i++;
                                                         continue loop0;
                                                      }
                                                      addr190:
                                                      if(_loc4_)
                                                      {
                                                         AddType(b2PolyAndConcaveArcContact.Create,b2PolyAndConcaveArcContact.Destroy,b2Shape.e_polygonShape,b2Shape.e_concaveArcShape);
                                                         if(!_loc4_)
                                                         {
                                                         }
                                                         addr216:
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(s_registers);
                                                   }
                                                   addr217:
                                                   AddType(b2PolyAndStaticEdgeContact.Create,b2PolyAndStaticEdgeContact.Destroy,b2Shape.e_polygonShape,b2Shape.e_staticEdgeShape);
                                                   if(_loc3_)
                                                   {
                                                   }
                                                }
                                                else
                                                {
                                                   break;
                                                }
                                             }
                                             else
                                             {
                                                continue loop1;
                                             }
                                          }
                                          continue;
                                       }
                                       continue loop1;
                                    }
                                    addr236:
                                 }
                                 AddType(b2StaticEdgeAndCircleContact.Create,b2StaticEdgeAndCircleContact.Destroy,b2Shape.e_staticEdgeShape,b2Shape.e_circleShape);
                                 §§goto(addr216);
                              }
                              addr87:
                              while(true)
                              {
                                 §§pop()[§§pop()][j] = new b2ContactRegister();
                                 if(_loc4_ || i)
                                 {
                                    if(_loc4_ || b2Contact)
                                    {
                                       j++;
                                       §§goto(addr108);
                                    }
                                 }
                                 §§goto(addr217);
                              }
                           }
                           while(true)
                           {
                              §§goto(addr87);
                           }
                        }
                        §§goto(addr237);
                     }
                     else
                     {
                        break;
                     }
                     AddType(b2ConcaveArcAndCircleContact.Create,b2ConcaveArcAndCircleContact.Destroy,b2Shape.e_concaveArcShape,b2Shape.e_circleShape);
                     if(!_loc3_)
                     {
                        §§goto(addr190);
                     }
                     §§goto(addr237);
                  }
                  AddType(b2PolyAndCircleContact.Create,b2PolyAndCircleContact.Destroy,b2Shape.e_polygonShape,b2Shape.e_circleShape);
                  §§push(b2Shape.e_shapeTypeCount);
                  if(_loc4_)
                  {
                     §§goto(addr167);
                  }
                  §§goto(addr236);
               }
            }
         }
         if(!(_loc3_ && i))
         {
            s_registers = new Array(b2Shape.e_shapeTypeCount);
            if(_loc3_)
            {
            }
            §§goto(addr47);
         }
         §§goto(addr47);
      }
      
      public static function Destroy(contact:b2Contact, allocator:*) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc8_ && allocator)
         {
         }
         if(_loc7_ || contact)
         {
            if(!_loc8_)
            {
               if(_loc7_ || type1)
               {
                  if(!(_loc8_ && allocator))
                  {
                     if(!_loc7_)
                     {
                     }
                     addr68:
                     §§push(contact.m_shape1);
                     if(!_loc8_)
                     {
                        §§push(§§pop().m_body);
                        if(_loc7_)
                        {
                           §§pop().WakeUp();
                           §§push(contact.m_shape2.m_body);
                        }
                        §§pop().WakeUp();
                        if(!_loc7_)
                        {
                        }
                     }
                     addr93:
                     §§push(§§pop().m_type);
                     addr102:
                     if(_loc7_ || allocator)
                     {
                        §§push(int(§§pop()));
                     }
                     var type1:* = §§pop();
                     if(_loc7_ || type1)
                     {
                     }
                     §§push(contact.m_shape2.m_type);
                     if(_loc7_)
                     {
                        §§push(int(§§pop()));
                     }
                     var type2:* = §§pop();
                     if(_loc8_ && allocator)
                     {
                     }
                     var reg:b2ContactRegister = s_registers[type1][type2];
                     if(_loc7_ || allocator)
                     {
                     }
                     var destroyFcn:Function = reg.destroyFcn;
                     if(_loc7_)
                     {
                        if(!_loc7_)
                        {
                        }
                        addr170:
                        return;
                     }
                     destroyFcn(contact,allocator);
                     if(_loc7_ || type1)
                     {
                        §§goto(addr170);
                     }
                     §§goto(addr170);
                  }
                  addr91:
                  §§goto(addr93);
                  §§push(contact.m_shape1);
               }
               addr54:
               §§push(contact.m_manifoldCount);
               if(_loc7_ || b2Contact)
               {
                  if(§§pop() > 0)
                  {
                     if(_loc8_)
                     {
                     }
                  }
                  §§goto(addr91);
               }
               §§goto(addr102);
            }
            §§goto(addr54);
         }
         §§goto(addr68);
      }
      
      public static function AddType(createFcn:Function, destroyFcn:Function, type1:int, type2:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc5_)
         {
         }
         if(_loc6_ || b2Contact)
         {
            if(_loc6_ || createFcn)
            {
            }
            addr136:
            §§push(s_registers);
            if(!(_loc5_ && b2Contact))
            {
               addr144:
               §§push(type2);
               if(!(_loc5_ && createFcn))
               {
                  §§pop()[§§pop()][type1].createFcn = createFcn;
                  if(!(_loc5_ && type1))
                  {
                     addr164:
                     addr207:
                     if(!_loc6_)
                     {
                     }
                     addr208:
                     return;
                  }
                  addr167:
                  §§push(s_registers);
                  if(!_loc5_)
                  {
                     §§push(type2);
                     if(!_loc5_)
                     {
                        addr173:
                        §§pop()[§§pop()][type1].destroyFcn = destroyFcn;
                        if(!(_loc5_ && createFcn))
                        {
                           §§push(s_registers);
                        }
                        §§goto(addr208);
                     }
                  }
               }
               addr188:
               §§pop()[§§pop()][type1].primary = false;
               if(!(_loc5_ && type1))
               {
                  §§goto(addr208);
               }
               §§goto(addr208);
            }
            addr187:
            §§goto(addr188);
            §§push(type2);
         }
         if(_loc6_)
         {
            §§push(s_registers);
            if(_loc6_)
            {
               §§push(type1);
               if(_loc6_ || destroyFcn)
               {
                  §§pop()[§§pop()][type2].createFcn = createFcn;
                  if(_loc6_ || type1)
                  {
                     §§push(s_registers);
                     if(_loc6_ || type1)
                     {
                        §§push(type1);
                        if(!(_loc5_ && b2Contact))
                        {
                           §§pop()[§§pop()][type2].destroyFcn = destroyFcn;
                           if(_loc6_ || b2Contact)
                           {
                              if(!_loc5_)
                              {
                                 §§push(s_registers);
                                 if(!(_loc5_ && b2Contact))
                                 {
                                    §§push(type1);
                                    if(!_loc6_)
                                    {
                                    }
                                    §§goto(addr188);
                                 }
                              }
                              §§goto(addr167);
                           }
                           §§goto(addr164);
                        }
                        §§goto(addr173);
                     }
                     §§goto(addr187);
                  }
                  §§goto(addr207);
               }
               §§pop()[§§pop()][type2].primary = true;
            }
            §§goto(addr144);
         }
         if(!(_loc5_ && type1))
         {
            if(type1 != type2)
            {
               if(_loc6_ || destroyFcn)
               {
               }
               §§goto(addr136);
            }
            §§goto(addr207);
         }
         §§goto(addr136);
      }
      
      public static function Create(shape1:b2Shape, shape2:b2Shape, allocator:*) : b2Contact
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         if(!_loc12_)
         {
         }
         var c:b2Contact = null;
         var i:int = 0;
         var m:b2Manifold = null;
         if(!_loc11_)
         {
            if(_loc12_)
            {
               if(_loc11_)
               {
               }
               addr59:
               §§push(shape1.m_type);
               if(!_loc11_)
               {
                  §§push(int(§§pop()));
               }
               var type1:* = §§pop();
               if(_loc11_)
               {
               }
               §§push(shape2.m_type);
               if(!(_loc11_ && shape1))
               {
                  §§push(int(§§pop()));
               }
               var type2:* = §§pop();
               if(_loc12_ || b2Contact)
               {
               }
               var reg:b2ContactRegister = s_registers[type1][type2];
               if(_loc12_ || b2Contact)
               {
               }
               var createFcn:Function = reg.createFcn;
               if(createFcn != null)
               {
                  if(_loc11_)
                  {
                  }
                  if(reg.primary)
                  {
                     return createFcn(shape1,shape2,allocator);
                  }
                  c = createFcn(shape2,shape1,allocator);
                  if(!(_loc11_ && shape2))
                  {
                     if(_loc12_ || shape2)
                     {
                     }
                     addr159:
                     while(i < c.m_manifoldCount)
                     {
                        m = c.GetManifolds()[i];
                        if(_loc12_ || allocator)
                        {
                           if(_loc12_ || shape1)
                           {
                              m.normal = m.normal.Negative();
                              if(!_loc12_)
                              {
                                 continue;
                              }
                           }
                           if(!_loc11_)
                           {
                              i++;
                           }
                        }
                     }
                     return c;
                  }
                  i = 0;
                  §§goto(addr159);
               }
               else
               {
                  return null;
               }
            }
            if(!_loc11_)
            {
               if(!_loc11_)
               {
                  if(!_loc11_)
                  {
                     if(s_initialized == false)
                     {
                     }
                  }
                  §§goto(addr59);
               }
            }
            InitializeRegisters();
            if(!_loc11_)
            {
               s_initialized = true;
            }
         }
         §§goto(addr59);
      }
      
      public function IsSolid() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
         if(_loc1_ || this)
         {
         }
         return (this.m_flags & e_nonSolidFlag) == 0;
      }
      
      public function GetShape1() : b2Shape
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(!_loc2_)
         {
         }
         return this.m_shape1;
      }
      
      public function GetShape2() : b2Shape
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
         }
         if(_loc2_ && _loc1_)
         {
         }
         return this.m_shape2;
      }
      
      public function GetNext() : b2Contact
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(_loc1_)
         {
         }
         return this.m_next;
      }
      
      public function GetManifoldCount() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
         if(_loc2_)
         {
         }
         return this.m_manifoldCount;
      }
      
      public function GetManifolds() : Array
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
         }
         return null;
      }
      
      public function Update(listener:b2ContactListener) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc6_)
         {
         }
         if(_loc7_)
         {
            if(!(_loc6_ && listener))
            {
               if(_loc6_ && listener)
               {
               }
               addr40:
               §§push(this.m_manifoldCount);
               if(!(_loc6_ && newCount))
               {
                  §§push(int(§§pop()));
               }
               var oldCount:* = §§pop();
               if(!(_loc6_ && oldCount))
               {
                  if(!_loc6_)
                  {
                     this.Evaluate(listener);
                     if(_loc6_ && this)
                     {
                     }
                  }
               }
               §§push(this.m_manifoldCount);
               if(_loc7_)
               {
                  §§push(int(§§pop()));
               }
               var newCount:* = §§pop();
               if(!_loc7_)
               {
               }
               var body1:b2Body = this.m_shape1.m_body;
               if(_loc6_)
               {
               }
               var body2:b2Body = this.m_shape2.m_body;
               §§push(newCount);
               if(_loc7_)
               {
                  §§push(0);
                  if(!_loc6_)
                  {
                     §§push(§§pop() == §§pop());
                     §§push(§§pop() == §§pop());
                     if(!(_loc6_ && newCount))
                     {
                        if(§§pop())
                        {
                           if(_loc7_ || listener)
                           {
                              §§pop();
                              if(!(_loc6_ && oldCount))
                              {
                                 §§push(oldCount);
                              }
                              addr147:
                              §§push(Boolean(body1.IsStatic()));
                              if(!(_loc6_ && oldCount))
                              {
                                 §§push(§§pop());
                                 if(_loc7_)
                                 {
                                    if(!§§pop())
                                    {
                                       §§pop();
                                       §§push(body1.IsBullet());
                                    }
                                 }
                              }
                              addr166:
                              §§push(§§pop());
                              if(_loc7_ || listener)
                              {
                                 if(!§§pop())
                                 {
                                    if(_loc7_)
                                    {
                                       §§pop();
                                       if(_loc7_)
                                       {
                                          §§push(body2.IsStatic());
                                          if(_loc6_)
                                          {
                                          }
                                          addr204:
                                          if(§§pop())
                                          {
                                             if(!_loc6_)
                                             {
                                                if(_loc7_ || this)
                                                {
                                                   addr216:
                                                   this.m_flags = this.m_flags & ~e_slowFlag;
                                                }
                                                addr239:
                                                return;
                                             }
                                          }
                                          else
                                          {
                                             this.m_flags = this.m_flags | e_slowFlag;
                                          }
                                       }
                                       §§goto(addr239);
                                    }
                                    §§push(Boolean(§§pop()));
                                 }
                                 §§push(§§pop());
                              }
                           }
                           §§goto(addr166);
                           §§push(Boolean(§§pop()));
                        }
                        addr138:
                        if(§§pop())
                        {
                           if(!_loc6_)
                           {
                              body1.WakeUp();
                              body2.WakeUp();
                              §§goto(addr147);
                           }
                           §§goto(addr239);
                        }
                        §§goto(addr147);
                     }
                     if(!§§pop())
                     {
                        addr187:
                        §§pop();
                        if(_loc7_ || newCount)
                        {
                           §§push(body2.IsBullet());
                           if(!(_loc6_ && oldCount))
                           {
                              §§goto(addr204);
                           }
                        }
                        §§goto(addr216);
                     }
                     §§goto(addr204);
                  }
                  addr135:
                  §§push(§§pop() > §§pop());
                  if(!_loc6_)
                  {
                     §§goto(addr138);
                  }
                  §§goto(addr187);
               }
               §§goto(addr135);
               §§push(0);
            }
         }
         §§goto(addr40);
      }
      
      public function Evaluate(listener:b2ContactListener) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_ && _loc3_)
         {
         }
         if(_loc2_ && _loc3_)
         {
         }
      }
   }
}
