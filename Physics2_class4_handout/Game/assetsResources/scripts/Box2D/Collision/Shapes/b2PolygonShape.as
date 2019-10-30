package Box2D.Collision.Shapes
{
   import Box2D.Collision.b2AABB;
   import Box2D.Collision.b2OBB;
   import Box2D.Collision.b2Segment;
   import Box2D.Common.Math.b2Mat22;
   import Box2D.Common.Math.b2Math;
   import Box2D.Common.Math.b2Vec2;
   import Box2D.Common.Math.b2XForm;
   import Box2D.Common.b2Settings;
   
   public class b2PolygonShape extends b2Shape
   {
      
      private static var s_computeMat:b2Mat22;
      
      private static var s_sweptAABB1:b2AABB;
      
      private static var s_sweptAABB2:b2AABB;
      
      {
         var s_computeMat:Boolean = true;
         var s_sweptAABB1:Boolean = false;
         if(!s_sweptAABB1)
         {
            s_computeMat = new b2Mat22();
            s_sweptAABB1 = new b2AABB();
            if(s_sweptAABB1)
            {
            }
            addr49:
            addr53:
            s_sweptAABB2 = new b2AABB();
            return;
         }
         if(s_computeMat || b2PolygonShape)
         {
            §§goto(addr49);
         }
         §§goto(addr53);
      }
      
      public var m_coreVertices:Array;
      
      public var m_vertices:Array;
      
      private var s_supportVec:b2Vec2;
      
      public var m_centroid:b2Vec2;
      
      public var m_normals:Array;
      
      public var m_obb:b2OBB;
      
      public var m_vertexCount:int;
      
      public function b2PolygonShape(def:b2ShapeDef)
      {
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = true;
         if(_loc18_ && this)
         {
         }
         var i:* = 0;
         var edgeX:* = NaN;
         var edgeY:Number = NaN;
         var len:Number = NaN;
         var n1X:* = NaN;
         var n1Y:* = NaN;
         var n2X:* = NaN;
         var n2Y:* = NaN;
         var vX:Number = NaN;
         var vY:Number = NaN;
         var dX:Number = NaN;
         var dY:Number = NaN;
         var det:* = NaN;
         if(_loc19_)
         {
            this.s_supportVec = new b2Vec2();
            this.m_obb = new b2OBB();
            if(!_loc18_)
            {
               this.m_vertices = new Array(b2Settings.b2_maxPolygonVertices);
               if(_loc19_)
               {
                  this.m_normals = new Array(b2Settings.b2_maxPolygonVertices);
               }
               addr87:
               if(_loc19_ || i)
               {
                  super(def);
               }
               addr107:
               var poly:b2PolygonDef = def as b2PolygonDef;
               if(!_loc18_)
               {
                  if(_loc19_)
                  {
                     this.m_vertexCount = poly.vertexCount;
                     if(_loc18_ && this)
                     {
                     }
                  }
               }
               §§push(i);
               if(!(_loc18_ && poly))
               {
                  §§push(int(§§pop()));
               }
               var i1:* = §§pop();
               if(_loc19_ || def)
               {
               }
               §§push(i);
               if(!(_loc18_ && def))
               {
                  §§push(int(§§pop()));
               }
               var i2:* = §§pop();
               if(_loc19_)
               {
                  if(!_loc19_)
                  {
                  }
                  addr164:
                  loop0:
                  while(true)
                  {
                     §§push(i);
                     §§push(this.m_vertexCount);
                     if(_loc19_ || poly)
                     {
                        if(§§pop() >= §§pop())
                        {
                           if(_loc19_)
                           {
                              §§push(0);
                              if(!_loc18_)
                              {
                                 i = §§pop();
                                 if(!_loc18_)
                                 {
                                    loop21:
                                    while(true)
                                    {
                                       §§push(i);
                                       if(_loc19_)
                                       {
                                          §§push(this.m_vertexCount);
                                          if(!_loc18_)
                                          {
                                             loop22:
                                             while(true)
                                             {
                                                if(§§pop() >= §§pop())
                                                {
                                                   if(_loc19_)
                                                   {
                                                      this.m_centroid = ComputeCentroid(poly.vertices,poly.vertexCount);
                                                      if(_loc19_ || this)
                                                      {
                                                         ComputeOBB(this.m_obb,this.m_vertices,this.m_vertexCount);
                                                         if(_loc18_)
                                                         {
                                                         }
                                                         addr469:
                                                         while(true)
                                                         {
                                                            if(_loc18_)
                                                            {
                                                            }
                                                            addr514:
                                                            while(true)
                                                            {
                                                               if(!(_loc18_ && i))
                                                               {
                                                                  §§push(Number(this.m_normals[i1].x));
                                                                  if(_loc19_)
                                                                  {
                                                                     addr530:
                                                                     while(true)
                                                                     {
                                                                        n1X = §§pop();
                                                                        if(_loc19_)
                                                                        {
                                                                           §§push(Number(this.m_normals[i1].y));
                                                                        }
                                                                        addr663:
                                                                        loop3:
                                                                        while(true)
                                                                        {
                                                                           §§push(n2X);
                                                                           if(_loc19_ || def)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(vX);
                                                                                 if(!(_loc18_ && poly))
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(_loc19_ || i)
                                                                                    {
                                                                                       addr687:
                                                                                       while(true)
                                                                                       {
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    addr689:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(_loc19_ || poly)
                                                                                       {
                                                                                          §§push(§§pop() + §§pop());
                                                                                          §§push(b2Settings.b2_toiSlop);
                                                                                       }
                                                                                       dY = §§pop() - §§pop();
                                                                                       addr705:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(n1X);
                                                                                          if(_loc19_ || poly)
                                                                                          {
                                                                                             §§push(n2Y);
                                                                                             if(_loc19_ || this)
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(_loc19_ || i)
                                                                                                {
                                                                                                }
                                                                                                addr740:
                                                                                                while(true)
                                                                                                {
                                                                                                }
                                                                                                §§push(§§pop() / §§pop());
                                                                                             }
                                                                                             addr739:
                                                                                             §§goto(addr740);
                                                                                             §§push(§§pop() - §§pop());
                                                                                          }
                                                                                          §§push(n1Y);
                                                                                          if(!(_loc18_ && poly))
                                                                                          {
                                                                                             §§push(§§pop() * n2X);
                                                                                          }
                                                                                          §§goto(addr739);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 if(§§pop())
                                                                                 {
                                                                                    dX = §§pop();
                                                                                    addr662:
                                                                                    while(true)
                                                                                    {
                                                                                       continue loop3;
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              det = §§pop();
                                                                              if(!_loc19_)
                                                                              {
                                                                              }
                                                                              addr858:
                                                                              while(true)
                                                                              {
                                                                                 break loop21;
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     n1Y = §§pop();
                                                                     if(!(_loc18_ && def))
                                                                     {
                                                                        if(_loc19_ || def)
                                                                        {
                                                                           §§push(this.m_normals);
                                                                           §§push(i2);
                                                                           if(!(_loc18_ && i))
                                                                           {
                                                                              addr569:
                                                                              while(true)
                                                                              {
                                                                                 n2X = §§pop();
                                                                              }
                                                                              §§push(Number(§§pop()[§§pop()].x));
                                                                           }
                                                                           addr749:
                                                                           while(true)
                                                                           {
                                                                              §§push();
                                                                              if(_loc19_ || def)
                                                                              {
                                                                              }
                                                                              §§push(det);
                                                                              if(!_loc18_)
                                                                              {
                                                                                 §§push(n2Y);
                                                                                 §§push(dX);
                                                                                 if(_loc19_)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(_loc19_)
                                                                                    {
                                                                                       §§push(n1Y);
                                                                                       §§push(dY);
                                                                                       if(_loc19_ || this)
                                                                                       {
                                                                                          §§push(§§pop() - §§pop() * §§pop());
                                                                                          if(!_loc19_)
                                                                                          {
                                                                                          }
                                                                                          addr794:
                                                                                          §§push(§§pop() + §§pop());
                                                                                          addr798:
                                                                                          if(_loc18_)
                                                                                          {
                                                                                          }
                                                                                          §§push(det);
                                                                                          if(_loc19_ || this)
                                                                                          {
                                                                                             addr806:
                                                                                             §§push(n1X);
                                                                                             if(_loc19_ || this)
                                                                                             {
                                                                                                §§push(dY);
                                                                                                if(_loc18_ && poly)
                                                                                                {
                                                                                                }
                                                                                                addr833:
                                                                                                §§push(§§pop() - §§pop() * dX);
                                                                                                if(!_loc18_)
                                                                                                {
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(!_loc18_)
                                                                                                   {
                                                                                                      §§push(this.m_centroid.y);
                                                                                                   }
                                                                                                }
                                                                                                addr844:
                                                                                                §§push(§§pop() + §§pop());
                                                                                             }
                                                                                          }
                                                                                          §§pop()[§§pop()] = new §§pop().b2Vec2(§§pop(),§§pop());
                                                                                       }
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(_loc18_ && i)
                                                                                       {
                                                                                       }
                                                                                       §§goto(addr844);
                                                                                    }
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(_loc19_)
                                                                                    {
                                                                                       §§push(this.m_centroid.x);
                                                                                       if(_loc19_ || poly)
                                                                                       {
                                                                                          §§goto(addr794);
                                                                                       }
                                                                                       §§goto(addr806);
                                                                                    }
                                                                                 }
                                                                                 §§push(n2X);
                                                                                 if(!_loc18_)
                                                                                 {
                                                                                    §§goto(addr833);
                                                                                 }
                                                                                 §§goto(addr833);
                                                                              }
                                                                              §§goto(addr798);
                                                                           }
                                                                        }
                                                                        addr571:
                                                                        while(true)
                                                                        {
                                                                           addr574:
                                                                           while(true)
                                                                           {
                                                                              §§push(Number(§§pop()[§§pop()].y));
                                                                              if(_loc19_ || i)
                                                                              {
                                                                                 n2Y = §§pop();
                                                                                 if(!_loc18_)
                                                                                 {
                                                                                    if(!_loc18_)
                                                                                    {
                                                                                       §§push(this.m_vertices);
                                                                                       §§push(i);
                                                                                       if(!_loc18_)
                                                                                       {
                                                                                          addr595:
                                                                                          while(true)
                                                                                          {
                                                                                             vX = §§pop()[§§pop()].x - this.m_centroid.x;
                                                                                             if(_loc19_)
                                                                                             {
                                                                                                addr608:
                                                                                                while(true)
                                                                                                {
                                                                                                   break loop22;
                                                                                                }
                                                                                                §§push(this.m_vertices);
                                                                                             }
                                                                                             §§goto(addr662);
                                                                                          }
                                                                                       }
                                                                                       break loop22;
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr663);
                                                                              }
                                                                              §§goto(addr740);
                                                                           }
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        i++;
                                                                        if(_loc19_)
                                                                        {
                                                                           §§goto(addr858);
                                                                        }
                                                                        break;
                                                                     }
                                                                     return;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      §§push(0);
                                                      if(!_loc18_)
                                                      {
                                                         i = §§pop();
                                                         §§goto(addr858);
                                                      }
                                                      addr503:
                                                      while(true)
                                                      {
                                                         i1 = §§pop();
                                                         §§push(i);
                                                         if(!_loc18_)
                                                         {
                                                            addr508:
                                                            while(true)
                                                            {
                                                               §§push(int(§§pop()));
                                                               if(_loc18_)
                                                               {
                                                               }
                                                               break loop21;
                                                            }
                                                         }
                                                         §§goto(addr705);
                                                      }
                                                   }
                                                   addr619:
                                                   while(true)
                                                   {
                                                      if(_loc19_)
                                                      {
                                                         addr622:
                                                         while(true)
                                                         {
                                                            §§push(n1X);
                                                            if(!(_loc18_ && def))
                                                            {
                                                               addr630:
                                                               while(true)
                                                               {
                                                                  §§push(vX);
                                                                  if(_loc19_ || poly)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     §§push(n1Y);
                                                                     §§push(vY);
                                                                     if(_loc19_ || poly)
                                                                     {
                                                                        §§push(§§pop() + §§pop() * §§pop());
                                                                        §§push(b2Settings.b2_toiSlop);
                                                                     }
                                                                     §§goto(addr689);
                                                                  }
                                                                  §§goto(addr659);
                                                               }
                                                            }
                                                            §§goto(addr687);
                                                         }
                                                      }
                                                   }
                                                }
                                                else
                                                {
                                                   if(_loc19_ || i)
                                                   {
                                                   }
                                                   addr230:
                                                   while(true)
                                                   {
                                                      §§push(i);
                                                      §§push(1);
                                                      if(!(_loc18_ && i))
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc19_ || poly)
                                                         {
                                                            §§push(this.m_vertexCount);
                                                            if(_loc19_ || poly)
                                                            {
                                                               §§push(§§pop() < §§pop());
                                                               if(_loc19_ || def)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     §§push(i);
                                                                     §§push(1);
                                                                     if(_loc19_ || poly)
                                                                     {
                                                                        §§push(int(§§pop() + §§pop()));
                                                                        if(_loc19_ || def)
                                                                        {
                                                                           addr293:
                                                                           §§push(int(§§pop()));
                                                                           if(!_loc18_)
                                                                           {
                                                                              i2 = §§pop();
                                                                              if(!(_loc18_ && this))
                                                                              {
                                                                                 §§push(this.m_vertices[i2].x - this.m_vertices[i1].x);
                                                                                 if(!(_loc18_ && poly))
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                 }
                                                                                 §§goto(addr569);
                                                                              }
                                                                              §§goto(addr571);
                                                                           }
                                                                           §§goto(addr508);
                                                                        }
                                                                        addr490:
                                                                        while(true)
                                                                        {
                                                                           addr502:
                                                                           while(true)
                                                                           {
                                                                              §§goto(addr503);
                                                                           }
                                                                        }
                                                                     }
                                                                     break loop0;
                                                                  }
                                                                  §§push(0);
                                                                  if(_loc19_ || def)
                                                                  {
                                                                     §§goto(addr293);
                                                                  }
                                                               }
                                                               addr479:
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     §§push(i - 1);
                                                                     if(!(_loc18_ && i))
                                                                     {
                                                                        §§goto(addr490);
                                                                        §§push(int(§§pop()));
                                                                     }
                                                                     §§goto(addr530);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(this.m_vertexCount);
                                                                     if(_loc19_ || this)
                                                                     {
                                                                        §§goto(addr502);
                                                                        §§push(int(§§pop() - 1));
                                                                     }
                                                                  }
                                                                  §§goto(addr705);
                                                               }
                                                            }
                                                            addr478:
                                                            while(true)
                                                            {
                                                               §§goto(addr479);
                                                            }
                                                         }
                                                         edgeX = §§pop();
                                                         §§push(this.m_vertices);
                                                         §§push(i2);
                                                         if(!(_loc18_ && def))
                                                         {
                                                            edgeY = §§pop()[§§pop()].y - this.m_vertices[i1].y;
                                                            len = Math.sqrt(edgeX * edgeX + edgeY * edgeY);
                                                            if(!_loc18_)
                                                            {
                                                               §§push(this.m_normals);
                                                               if(!(_loc18_ && def))
                                                               {
                                                                  §§push(i);
                                                                  if(!_loc18_)
                                                                  {
                                                                     §§push();
                                                                     §§push(edgeY);
                                                                     if(_loc19_ || poly)
                                                                     {
                                                                        §§push(len);
                                                                        if(!_loc18_)
                                                                        {
                                                                           §§push(§§pop() / §§pop());
                                                                        }
                                                                        addr392:
                                                                        §§pop()[§§pop()] = new §§pop().b2Vec2(§§pop(),§§pop() / len);
                                                                        i++;
                                                                        continue loop21;
                                                                     }
                                                                     §§push(edgeX);
                                                                     if(!_loc18_)
                                                                     {
                                                                        §§push(-§§pop());
                                                                        if(!_loc18_)
                                                                        {
                                                                           §§goto(addr392);
                                                                        }
                                                                     }
                                                                     §§goto(addr392);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr574);
                                                                  }
                                                               }
                                                               §§goto(addr608);
                                                            }
                                                         }
                                                         break loop22;
                                                      }
                                                      continue loop22;
                                                   }
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr749);
                                                }
                                             }
                                             while(true)
                                             {
                                                §§push(§§pop()[§§pop()].y - this.m_centroid.y);
                                                if(_loc19_)
                                                {
                                                   vY = §§pop();
                                                   §§goto(addr619);
                                                }
                                                §§goto(addr630);
                                             }
                                          }
                                          break loop0;
                                       }
                                       break;
                                    }
                                    while(true)
                                    {
                                       break loop0;
                                    }
                                 }
                                 while(true)
                                 {
                                    §§push(int(i));
                                    if(!_loc18_)
                                    {
                                       i1 = §§pop();
                                       §§goto(addr230);
                                    }
                                    break;
                                 }
                                 §§goto(addr705);
                              }
                              while(true)
                              {
                                 i2 = §§pop();
                                 if(!_loc18_)
                                 {
                                    §§goto(addr514);
                                 }
                                 §§goto(addr622);
                              }
                           }
                           addr458:
                           while(true)
                           {
                              if(_loc19_ || def)
                              {
                              }
                              §§goto(addr469);
                           }
                        }
                        else if(!(_loc18_ && def))
                        {
                           §§push(this.m_vertices);
                           §§push(i);
                           if(_loc19_ || def)
                           {
                              §§pop()[§§pop()] = poly.vertices[i].Copy();
                              i++;
                              continue;
                           }
                           §§goto(addr595);
                        }
                        while(true)
                        {
                           §§goto(addr478);
                        }
                     }
                     break;
                  }
                  while(true)
                  {
                     if(§§pop() < §§pop())
                     {
                        if(_loc19_ || poly)
                        {
                           §§goto(addr458);
                        }
                        §§goto(addr662);
                     }
                     §§goto(addr862);
                  }
               }
               i = 0;
               §§goto(addr164);
            }
            m_type = e_polygonShape;
            §§goto(addr107);
         }
         this.m_coreVertices = new Array(b2Settings.b2_maxPolygonVertices);
         §§goto(addr87);
      }
      
      public static function ComputeCentroid(vs:Array, count:int) : b2Vec2
      {
         var _loc17_:Boolean = false;
         var _loc18_:Boolean = true;
         if(_loc18_ || c)
         {
         }
         var c:b2Vec2 = null;
         var inv3:* = NaN;
         var p2:b2Vec2 = null;
         var p3:b2Vec2 = null;
         var e1X:* = NaN;
         var e1Y:* = NaN;
         var e2X:* = NaN;
         var e2Y:* = NaN;
         var D:* = NaN;
         var triangleArea:Number = NaN;
         if(_loc17_ && b2PolygonShape)
         {
         }
         c = new b2Vec2();
         if(_loc17_ && c)
         {
         }
         §§push(0);
         if(_loc18_ || b2PolygonShape)
         {
            §§push(Number(§§pop()));
         }
         var area:* = §§pop();
         if(!_loc18_)
         {
         }
         §§push(0);
         if(_loc18_)
         {
            §§push(Number(§§pop()));
         }
         var p1X:* = §§pop();
         if(_loc18_ || vs)
         {
         }
         §§push(0);
         if(_loc18_)
         {
            §§push(Number(§§pop()));
         }
         var p1Y:* = §§pop();
         if(!_loc17_)
         {
            if(_loc18_)
            {
               §§push(1);
               if(!_loc17_)
               {
                  §§push(§§pop() / 3);
                  if(_loc18_)
                  {
                     §§push(Number(§§pop()));
                  }
                  inv3 = §§pop();
                  if(_loc17_)
                  {
                  }
               }
               addr123:
               var i:* = §§pop();
               while(true)
               {
                  if(i >= count)
                  {
                     §§push(c);
                     §§push(c.x);
                     if(_loc18_)
                     {
                        §§push(§§pop() * (1 / area));
                     }
                     §§pop().x = §§pop();
                     if(_loc18_)
                     {
                        break;
                     }
                  }
                  else
                  {
                     if(_loc18_)
                     {
                        if(!(_loc17_ && b2PolygonShape))
                        {
                           if(!(_loc17_ && count))
                           {
                              if(_loc17_ && vs)
                              {
                              }
                              addr165:
                              p2 = vs[i];
                              if(!(_loc17_ && count))
                              {
                                 if(_loc17_)
                                 {
                                 }
                                 addr186:
                                 p3 = !(_loc17_ && vs)?§§pop()[int(i + 1)]:§§pop()[0];
                                 §§push(vs);
                                 §§push(p2.x - p1X);
                                 if(!_loc17_)
                                 {
                                    §§push(Number(§§pop()));
                                    if(!(_loc17_ && count))
                                    {
                                       e1X = §§pop();
                                       if(!_loc17_)
                                       {
                                          if(!_loc17_)
                                          {
                                             §§push(p2.y);
                                             if(!(_loc17_ && c))
                                             {
                                                §§push(Number(§§pop() - p1Y));
                                                if(!(_loc17_ && b2PolygonShape))
                                                {
                                                   e1Y = §§pop();
                                                   if(_loc18_ || b2PolygonShape)
                                                   {
                                                      §§push(p3.x);
                                                      if(!(_loc17_ && count))
                                                      {
                                                         §§push(§§pop() - p1X);
                                                         if(_loc18_ || count)
                                                         {
                                                         }
                                                         addr340:
                                                         triangleArea = §§pop() * D;
                                                         if(_loc18_ || count)
                                                         {
                                                         }
                                                         addr363:
                                                         if(_loc18_)
                                                         {
                                                            §§push(c);
                                                            §§push(c.x);
                                                            if(_loc18_ || vs)
                                                            {
                                                               §§push(triangleArea);
                                                               if(!_loc17_)
                                                               {
                                                                  §§push(inv3);
                                                                  if(!_loc17_)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(_loc18_ || vs)
                                                                     {
                                                                        §§push(p1X);
                                                                        if(_loc17_)
                                                                        {
                                                                        }
                                                                        addr403:
                                                                        §§push(§§pop() * §§pop());
                                                                     }
                                                                  }
                                                                  §§push(p2.x);
                                                                  if(_loc18_)
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     if(!_loc17_)
                                                                     {
                                                                        §§push(p3.x);
                                                                     }
                                                                     §§goto(addr403);
                                                                  }
                                                                  §§goto(addr403);
                                                                  §§push(§§pop() + §§pop());
                                                               }
                                                               §§push(§§pop() + §§pop());
                                                            }
                                                            §§pop().x = §§pop();
                                                            if(_loc18_ || b2PolygonShape)
                                                            {
                                                            }
                                                         }
                                                         §§push(c);
                                                         §§push(c.y);
                                                         if(!(_loc17_ && c))
                                                         {
                                                            §§push(triangleArea);
                                                            if(!(_loc17_ && c))
                                                            {
                                                               §§push(inv3);
                                                               if(_loc18_ || count)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(!_loc17_)
                                                                  {
                                                                     §§push(p1Y);
                                                                     if(_loc17_ && b2PolygonShape)
                                                                     {
                                                                     }
                                                                     addr466:
                                                                     §§push(§§pop() * §§pop());
                                                                  }
                                                               }
                                                               §§push(p2.y);
                                                               if(!_loc17_)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  if(!(_loc17_ && vs))
                                                                  {
                                                                     §§push(p3.y);
                                                                  }
                                                                  §§goto(addr466);
                                                               }
                                                               §§goto(addr466);
                                                               §§push(§§pop() + §§pop());
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                         }
                                                         §§pop().y = §§pop();
                                                      }
                                                      addr362:
                                                      area = §§pop();
                                                      §§goto(addr363);
                                                   }
                                                }
                                             }
                                             §§push(Number(§§pop()));
                                             if(!_loc18_)
                                             {
                                             }
                                             addr301:
                                             e2Y = §§pop();
                                             if(!_loc17_)
                                             {
                                                if(_loc18_ || b2PolygonShape)
                                                {
                                                   §§push(e1X);
                                                   if(!_loc17_)
                                                   {
                                                      §§push(e2Y);
                                                      if(_loc18_ || count)
                                                      {
                                                         §§push(Number(§§pop() * §§pop() - e1Y * e2X));
                                                         if(!(_loc17_ && vs))
                                                         {
                                                            D = §§pop();
                                                         }
                                                         §§goto(addr362);
                                                      }
                                                      §§goto(addr340);
                                                   }
                                                   §§goto(addr340);
                                                }
                                                else
                                                {
                                                   continue;
                                                }
                                             }
                                             §§goto(addr340);
                                             §§push(0.5);
                                          }
                                          if(!(_loc17_ && b2PolygonShape))
                                          {
                                             §§push(area + triangleArea);
                                          }
                                          addr477:
                                          i++;
                                          continue;
                                       }
                                       if(_loc18_ || b2PolygonShape)
                                       {
                                          §§goto(addr477);
                                       }
                                       else
                                       {
                                          continue;
                                       }
                                    }
                                    addr361:
                                    §§goto(addr362);
                                    §§push(Number(§§pop()));
                                 }
                                 e2X = §§pop();
                                 §§push(p3.y);
                                 if(!_loc17_)
                                 {
                                    §§push(§§pop() - p1Y);
                                    if(!(_loc17_ && count))
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                    §§goto(addr361);
                                 }
                                 §§goto(addr301);
                              }
                              if(i + 1 < count)
                              {
                                 §§goto(addr186);
                              }
                              else
                              {
                                 §§push(vs);
                              }
                              §§goto(addr203);
                           }
                        }
                        break;
                     }
                     if(!(_loc17_ && c))
                     {
                        §§goto(addr165);
                     }
                     else
                     {
                        break;
                     }
                  }
                  addr517:
                  return c;
               }
               §§push(c);
               §§push(c.y);
               if(_loc18_ || count)
               {
                  §§push(§§pop() * (1 / area));
               }
               §§pop().y = §§pop();
               §§goto(addr517);
            }
         }
         §§goto(addr123);
      }
      
      public static function ComputeOBB(obb:b2OBB, vs:Array, count:int) : void
      {
         var _loc26_:Boolean = true;
         var _loc27_:Boolean = false;
         if(_loc27_ && count)
         {
         }
         var i:* = 0;
         var root:b2Vec2 = null;
         var uxX:* = NaN;
         var uxY:* = NaN;
         var length:Number = NaN;
         var uyX:Number = NaN;
         var uyY:* = NaN;
         var lowerX:* = NaN;
         var lowerY:* = NaN;
         var upperX:* = NaN;
         var upperY:* = NaN;
         var j:* = 0;
         var area:* = NaN;
         var dX:* = NaN;
         var dY:* = NaN;
         var rX:Number = NaN;
         var rY:* = NaN;
         var centerX:Number = NaN;
         var centerY:Number = NaN;
         var tMat:b2Mat22 = null;
         if(!_loc27_)
         {
            if(_loc27_)
            {
            }
            if(_loc26_ || b2PolygonShape)
            {
            }
         }
         var p:Array = new Array(b2Settings.b2_maxPolygonVertices + 1);
         if(_loc26_)
         {
            if(_loc26_)
            {
               i = 0;
            }
         }
         while(i < count)
         {
            if(_loc26_)
            {
               p[i] = vs[i];
               if(_loc26_)
               {
                  i++;
                  if(_loc26_)
                  {
                     continue;
                  }
               }
               addr118:
               p[count] = p[0];
               var minArea:Number = Number.MAX_VALUE;
               if(!(_loc27_ && vs))
               {
                  if(!(_loc27_ && obb))
                  {
                     §§push(1);
                     if(_loc26_)
                     {
                        i = §§pop();
                        if(_loc26_ || vs)
                        {
                           addr959:
                           while(true)
                           {
                           }
                        }
                        addr184:
                        while(true)
                        {
                           if(!_loc27_)
                           {
                              addr187:
                              while(true)
                              {
                                 if(!_loc27_)
                                 {
                                    addr190:
                                    while(!_loc27_)
                                    {
                                       while(true)
                                       {
                                          if(_loc26_ || count)
                                          {
                                          }
                                          addr202:
                                          while(true)
                                          {
                                          }
                                       }
                                    }
                                    return;
                                 }
                              }
                           }
                           while(true)
                           {
                              root = p[int(i - 1)];
                              if(!(_loc27_ && vs))
                              {
                                 uxX = Number(p[i].x - root.x);
                                 if(!_loc27_)
                                 {
                                    §§push(p[i].y - root.y);
                                    if(_loc26_)
                                    {
                                       §§push(Number(§§pop()));
                                       if(_loc26_)
                                       {
                                          uxY = §§pop();
                                          if(!(_loc27_ && count))
                                          {
                                             length = Math.sqrt(uxX * uxX + uxY * uxY);
                                             if(!(_loc27_ && b2PolygonShape))
                                             {
                                                §§push(Number(uxX / length));
                                                if(!_loc27_)
                                                {
                                                   uxX = §§pop();
                                                   if(_loc27_)
                                                   {
                                                   }
                                                   addr523:
                                                   loop7:
                                                   while(true)
                                                   {
                                                      §§push(rY);
                                                      if(!(_loc27_ && obb))
                                                      {
                                                         addr531:
                                                         loop8:
                                                         while(true)
                                                         {
                                                            §§push(lowerY);
                                                            if(_loc26_ || count)
                                                            {
                                                               if(§§pop() < §§pop())
                                                               {
                                                                  addr541:
                                                                  while(true)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     if(_loc27_)
                                                                     {
                                                                     }
                                                                     break;
                                                                  }
                                                                  area = rY;
                                                                  if(!_loc27_)
                                                                  {
                                                                     addr607:
                                                                     §§push(area);
                                                                     §§push(0.95);
                                                                     if(_loc26_)
                                                                     {
                                                                        §§push(minArea);
                                                                        if(_loc26_)
                                                                        {
                                                                           addr613:
                                                                           §§push(§§pop() * §§pop());
                                                                        }
                                                                        addr741:
                                                                        §§push(§§pop() * (§§pop() + §§pop()));
                                                                        break loop7;
                                                                     }
                                                                     if(§§pop() < §§pop())
                                                                     {
                                                                        if(_loc26_ || obb)
                                                                        {
                                                                           addr623:
                                                                           addr645:
                                                                           if(!(_loc27_ && b2PolygonShape))
                                                                           {
                                                                              if(!_loc27_)
                                                                              {
                                                                                 addr634:
                                                                                 minArea = area;
                                                                                 if(_loc26_ || obb)
                                                                                 {
                                                                                 }
                                                                                 addr724:
                                                                                 addr746:
                                                                                 if(!_loc27_)
                                                                                 {
                                                                                    §§push(0.5);
                                                                                    if(!_loc27_)
                                                                                    {
                                                                                       §§push(lowerX);
                                                                                       if(_loc26_ || b2PolygonShape)
                                                                                       {
                                                                                          §§push(upperX);
                                                                                          if(!_loc27_)
                                                                                          {
                                                                                             §§goto(addr741);
                                                                                          }
                                                                                          addr749:
                                                                                          §§push(§§pop() + §§pop());
                                                                                       }
                                                                                       §§push(§§pop() * §§pop());
                                                                                    }
                                                                                    addr747:
                                                                                    §§goto(addr749);
                                                                                    §§push(lowerY);
                                                                                    §§push(upperY);
                                                                                 }
                                                                                 §§goto(addr747);
                                                                                 §§push(0.5);
                                                                              }
                                                                              addr688:
                                                                              §§push(obb.R);
                                                                              addr763:
                                                                              if(_loc26_ || vs)
                                                                              {
                                                                                 addr697:
                                                                                 §§push(§§pop().col2);
                                                                                 addr720:
                                                                                 if(!_loc27_)
                                                                                 {
                                                                                    §§push(uyX);
                                                                                    if(!(_loc27_ && obb))
                                                                                    {
                                                                                       §§pop().x = §§pop();
                                                                                       addr709:
                                                                                    }
                                                                                    addr721:
                                                                                    §§pop().y = §§pop();
                                                                                    if(!_loc27_)
                                                                                    {
                                                                                       §§goto(addr724);
                                                                                    }
                                                                                    §§goto(addr746);
                                                                                 }
                                                                                 §§goto(addr721);
                                                                                 §§push(uyY);
                                                                              }
                                                                              tMat = §§pop();
                                                                              if(_loc26_ || vs)
                                                                              {
                                                                                 §§push(obb.center);
                                                                                 if(_loc26_ || count)
                                                                                 {
                                                                                    §§push(root.x);
                                                                                    if(_loc26_ || obb)
                                                                                    {
                                                                                       §§push(tMat.col1);
                                                                                       if(!(_loc27_ && b2PolygonShape))
                                                                                       {
                                                                                          §§push(§§pop().x);
                                                                                          if(_loc26_)
                                                                                          {
                                                                                             §§push(centerX);
                                                                                             if(!(_loc27_ && b2PolygonShape))
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(!_loc27_)
                                                                                                {
                                                                                                   §§push(tMat.col2);
                                                                                                   if(_loc26_)
                                                                                                   {
                                                                                                      §§push(§§pop().x);
                                                                                                      if(_loc27_ && b2PolygonShape)
                                                                                                      {
                                                                                                      }
                                                                                                      addr884:
                                                                                                      §§push(§§pop() + (§§pop() + §§pop() * centerY));
                                                                                                   }
                                                                                                   addr881:
                                                                                                   §§push(§§pop().y);
                                                                                                   if(_loc26_)
                                                                                                   {
                                                                                                      §§goto(addr884);
                                                                                                   }
                                                                                                   §§goto(addr884);
                                                                                                }
                                                                                                addr868:
                                                                                                §§push(centerX);
                                                                                                if(!_loc27_)
                                                                                                {
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(_loc26_ || count)
                                                                                                   {
                                                                                                      addr879:
                                                                                                      §§goto(addr881);
                                                                                                      §§push(tMat.col2);
                                                                                                   }
                                                                                                   §§goto(addr884);
                                                                                                }
                                                                                                §§goto(addr884);
                                                                                             }
                                                                                             §§push(centerY);
                                                                                             if(!_loc27_)
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(_loc26_)
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(_loc26_ || b2PolygonShape)
                                                                                                   {
                                                                                                   }
                                                                                                   §§goto(addr879);
                                                                                                }
                                                                                                §§goto(addr884);
                                                                                             }
                                                                                             §§goto(addr884);
                                                                                          }
                                                                                          §§push(§§pop() + §§pop());
                                                                                          if(_loc26_ || b2PolygonShape)
                                                                                          {
                                                                                             §§pop().x = §§pop();
                                                                                             if(_loc26_ || count)
                                                                                             {
                                                                                                §§push(obb.center);
                                                                                             }
                                                                                          }
                                                                                          addr863:
                                                                                          §§push(tMat.col1);
                                                                                       }
                                                                                       §§push(§§pop().y);
                                                                                       if(_loc26_)
                                                                                       {
                                                                                          §§goto(addr868);
                                                                                       }
                                                                                       §§goto(addr884);
                                                                                    }
                                                                                    addr888:
                                                                                    §§pop().y = §§pop();
                                                                                    §§push(obb.extents);
                                                                                    addr933:
                                                                                    if(_loc26_)
                                                                                    {
                                                                                       §§push(0.5);
                                                                                       if(_loc26_ || b2PolygonShape)
                                                                                       {
                                                                                          §§push(upperX);
                                                                                          if(!_loc27_)
                                                                                          {
                                                                                             §§push(lowerX);
                                                                                             if(!(_loc27_ && b2PolygonShape))
                                                                                             {
                                                                                                §§push(§§pop() - §§pop());
                                                                                                if(!(_loc27_ && vs))
                                                                                                {
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(_loc26_ || obb)
                                                                                                   {
                                                                                                      §§pop().x = §§pop();
                                                                                                   }
                                                                                                   addr954:
                                                                                                   §§pop().y = §§pop();
                                                                                                   if(!_loc26_)
                                                                                                   {
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             addr945:
                                                                                             §§goto(addr954);
                                                                                             §§push(§§pop() * (§§pop() - §§pop()));
                                                                                          }
                                                                                          addr944:
                                                                                          §§goto(addr945);
                                                                                          §§push(lowerY);
                                                                                       }
                                                                                       addr936:
                                                                                       §§push(upperY);
                                                                                       if(!(_loc27_ && obb))
                                                                                       {
                                                                                          §§goto(addr944);
                                                                                       }
                                                                                       §§goto(addr945);
                                                                                    }
                                                                                    §§push(0.5);
                                                                                    if(_loc26_)
                                                                                    {
                                                                                       §§goto(addr936);
                                                                                    }
                                                                                    §§goto(addr954);
                                                                                 }
                                                                                 §§push(root.y);
                                                                                 if(!_loc27_)
                                                                                 {
                                                                                    §§goto(addr863);
                                                                                 }
                                                                                 §§goto(addr888);
                                                                              }
                                                                              §§goto(addr933);
                                                                              §§push(obb.extents);
                                                                           }
                                                                           §§push(obb.R);
                                                                           if(!_loc27_)
                                                                           {
                                                                              §§push(§§pop().col1);
                                                                              if(!(_loc27_ && count))
                                                                              {
                                                                                 §§push(uxX);
                                                                                 if(_loc26_ || vs)
                                                                                 {
                                                                                    §§pop().x = §§pop();
                                                                                 }
                                                                                 addr679:
                                                                                 §§pop().y = §§pop();
                                                                                 addr761:
                                                                                 if(_loc26_ || count)
                                                                                 {
                                                                                    §§goto(addr688);
                                                                                 }
                                                                                 §§goto(addr763);
                                                                                 §§push(obb.R);
                                                                              }
                                                                              addr678:
                                                                              §§goto(addr679);
                                                                              §§push(uxY);
                                                                           }
                                                                           §§goto(addr697);
                                                                        }
                                                                        addr745:
                                                                        §§goto(addr746);
                                                                     }
                                                                     i++;
                                                                     §§goto(addr959);
                                                                  }
                                                                  §§push(obb.R);
                                                                  if(!(_loc27_ && vs))
                                                                  {
                                                                     §§goto(addr678);
                                                                     §§push(§§pop().col1);
                                                                  }
                                                                  §§goto(addr697);
                                                               }
                                                               addr546:
                                                               while(true)
                                                               {
                                                                  if(rX > upperX)
                                                                  {
                                                                     if(!_loc27_)
                                                                     {
                                                                        addr551:
                                                                        while(true)
                                                                        {
                                                                        }
                                                                     }
                                                                     §§goto(addr634);
                                                                  }
                                                                  addr562:
                                                                  while(true)
                                                                  {
                                                                     §§push(rY);
                                                                     if(_loc26_ || vs)
                                                                     {
                                                                        addr570:
                                                                        while(true)
                                                                        {
                                                                           addr571:
                                                                           while(true)
                                                                           {
                                                                              if(§§pop() > §§pop())
                                                                              {
                                                                              }
                                                                              addr587:
                                                                              loop16:
                                                                              while(true)
                                                                              {
                                                                                 j++;
                                                                                 addr588:
                                                                                 loop14:
                                                                                 while(true)
                                                                                 {
                                                                                    loop18:
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop() >= count)
                                                                                       {
                                                                                          addr592:
                                                                                          §§push(upperX - lowerX);
                                                                                          §§push(upperY);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          if(!(_loc27_ && count))
                                                                                          {
                                                                                             §§push(Number(p[j].x - root.x));
                                                                                             if(_loc26_ || b2PolygonShape)
                                                                                             {
                                                                                                dX = §§pop();
                                                                                                while(true)
                                                                                                {
                                                                                                   dY = §§pop();
                                                                                                   if(_loc26_ || b2PolygonShape)
                                                                                                   {
                                                                                                      if(_loc26_)
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(uxX);
                                                                                                            §§push(dX);
                                                                                                            if(_loc26_ || count)
                                                                                                            {
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               if(_loc26_)
                                                                                                               {
                                                                                                                  §§push(uxY);
                                                                                                                  §§push(dY);
                                                                                                                  if(_loc26_)
                                                                                                                  {
                                                                                                                     rX = §§pop() + §§pop() * §§pop();
                                                                                                                     if(!_loc26_)
                                                                                                                     {
                                                                                                                     }
                                                                                                                     §§goto(addr634);
                                                                                                                  }
                                                                                                                  §§goto(addr613);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr541);
                                                                                                               }
                                                                                                               §§goto(addr602);
                                                                                                            }
                                                                                                            §§goto(addr741);
                                                                                                            if(!§§pop())
                                                                                                            {
                                                                                                               addr397:
                                                                                                               continue loop14;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   addr760:
                                                                                                   §§goto(addr761);
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      lowerY = §§pop();
                                                                                                      §§push(Number(-Number.MAX_VALUE));
                                                                                                      if(_loc26_ || obb)
                                                                                                      {
                                                                                                         upperX = §§pop();
                                                                                                         if(_loc26_ || count)
                                                                                                         {
                                                                                                            if(_loc26_)
                                                                                                            {
                                                                                                               §§push(Number(-Number.MAX_VALUE));
                                                                                                               if(!_loc27_)
                                                                                                               {
                                                                                                                  upperY = §§pop();
                                                                                                                  if(_loc26_ || b2PolygonShape)
                                                                                                                  {
                                                                                                                     if(!(_loc27_ && b2PolygonShape))
                                                                                                                     {
                                                                                                                        §§push(0);
                                                                                                                        if(_loc26_)
                                                                                                                        {
                                                                                                                           j = §§pop();
                                                                                                                           §§goto(addr396);
                                                                                                                           §§push(_loc27_ && b2PolygonShape);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           continue loop18;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        continue loop16;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr397);
                                                                                                               }
                                                                                                               §§goto(addr602);
                                                                                                            }
                                                                                                            §§goto(addr760);
                                                                                                         }
                                                                                                         §§goto(addr709);
                                                                                                      }
                                                                                                      break loop14;
                                                                                                   }
                                                                                                }
                                                                                                §§push(Number(p[j].y - root.y));
                                                                                             }
                                                                                             break loop14;
                                                                                          }
                                                                                          §§goto(addr551);
                                                                                       }
                                                                                       §§push(lowerY);
                                                                                       if(_loc26_)
                                                                                       {
                                                                                          §§push(§§pop() - §§pop());
                                                                                          break loop8;
                                                                                       }
                                                                                       §§goto(addr741);
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            break;
                                                         }
                                                         §§goto(addr602);
                                                         §§push(Number(§§pop() * §§pop()));
                                                      }
                                                      break;
                                                   }
                                                   centerX = §§pop();
                                                   §§goto(addr745);
                                                }
                                                centerY = §§pop();
                                                if(_loc26_ || b2PolygonShape)
                                                {
                                                   §§goto(addr760);
                                                }
                                                §§goto(addr959);
                                             }
                                             while(true)
                                             {
                                                §§push(rY);
                                                if(!(_loc27_ && vs))
                                                {
                                                   §§push(Number(§§pop()));
                                                }
                                                upperY = §§pop();
                                                if(_loc26_)
                                                {
                                                   if(!_loc27_)
                                                   {
                                                      §§goto(addr587);
                                                   }
                                                   §§goto(addr592);
                                                }
                                                break;
                                             }
                                             §§goto(addr623);
                                          }
                                          if(_loc26_ || obb)
                                          {
                                             §§push(uxY);
                                             if(_loc26_)
                                             {
                                                uxY = Number(§§pop() / length);
                                                if(!_loc27_)
                                                {
                                                   §§push(-uxY);
                                                   if(!_loc27_)
                                                   {
                                                      uyX = §§pop();
                                                      §§push(Number(uxX));
                                                      if(_loc26_ || count)
                                                      {
                                                         uyY = §§pop();
                                                         if(_loc26_)
                                                         {
                                                            lowerX = Number(Number.MAX_VALUE);
                                                            if(_loc27_ && count)
                                                            {
                                                            }
                                                            §§goto(addr959);
                                                         }
                                                         §§goto(addr645);
                                                      }
                                                   }
                                                   §§goto(addr607);
                                                }
                                                §§goto(addr339);
                                                §§push(Number(Number.MAX_VALUE));
                                                §§push(_loc26_ || count);
                                             }
                                             §§goto(addr570);
                                          }
                                          §§goto(addr523);
                                       }
                                       while(true)
                                       {
                                          upperX = §§pop();
                                          if(_loc26_ || vs)
                                          {
                                             §§goto(addr562);
                                          }
                                          §§goto(addr588);
                                       }
                                    }
                                    while(true)
                                    {
                                       lowerY = §§pop();
                                       §§goto(addr546);
                                    }
                                 }
                                 §§push(obb.R);
                                 if(!(_loc27_ && b2PolygonShape))
                                 {
                                    §§goto(addr720);
                                    §§push(§§pop().col2);
                                 }
                                 §§goto(addr763);
                              }
                              while(true)
                              {
                                 §§push(uyX);
                                 §§push(dX);
                                 if(_loc26_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(_loc26_)
                                    {
                                       §§push(uyY);
                                       §§push(dY);
                                       if(!_loc27_)
                                       {
                                          §§push(Number(§§pop() + §§pop() * §§pop()));
                                          if(_loc26_ || count)
                                          {
                                             rY = §§pop();
                                             if(!(_loc27_ && vs))
                                             {
                                                if(rX < lowerX)
                                                {
                                                   §§push(Number(rX));
                                                   if(!(_loc27_ && obb))
                                                   {
                                                      lowerX = §§pop();
                                                      if(_loc27_)
                                                      {
                                                      }
                                                      §§goto(addr668);
                                                   }
                                                   §§goto(addr601);
                                                }
                                                §§goto(addr523);
                                             }
                                             §§goto(addr688);
                                          }
                                          §§goto(addr744);
                                       }
                                       §§goto(addr741);
                                    }
                                    §§goto(addr531);
                                 }
                                 §§goto(addr571);
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        if(§§pop() <= count)
                        {
                           if(_loc26_ || obb)
                           {
                              if(_loc26_)
                              {
                                 if(!_loc27_)
                                 {
                                    if(!(_loc27_ && obb))
                                    {
                                       if(!_loc26_)
                                       {
                                       }
                                    }
                                    §§goto(addr190);
                                 }
                                 §§goto(addr184);
                              }
                              §§goto(addr187);
                           }
                           §§goto(addr193);
                        }
                        §§goto(addr963);
                     }
                  }
               }
               while(true)
               {
                  §§goto(addr202);
               }
            }
            else
            {
               break;
            }
         }
         §§goto(addr118);
      }
      
      override public function ComputeSweptAABB(aabb:b2AABB, transform1:b2XForm, transform2:b2XForm) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc7_ && this)
         {
         }
         if(_loc6_)
         {
            if(_loc7_)
            {
            }
            addr46:
            var aabb1:b2AABB = s_sweptAABB1;
            if(!_loc6_)
            {
            }
            var aabb2:b2AABB = s_sweptAABB2;
            if(!(_loc7_ && transform1))
            {
               this.ComputeAABB(aabb1,transform1);
               if(_loc6_)
               {
                  if(!(_loc7_ && transform2))
                  {
                     this.ComputeAABB(aabb2,transform2);
                  }
                  addr82:
                  §§push(aabb.lowerBound);
                  if(!_loc7_)
                  {
                     if(_loc6_ || transform2)
                     {
                        §§push(aabb1.lowerBound);
                        if(!(_loc7_ && aabb))
                        {
                           §§push(§§pop().x);
                           §§push(aabb2.lowerBound);
                           if(!_loc7_)
                           {
                              §§push(§§pop().x);
                              if(_loc6_)
                              {
                                 if(§§pop() >= §§pop())
                                 {
                                    §§push(aabb2.lowerBound);
                                 }
                                 addr136:
                                 §§push(§§pop().x);
                                 addr174:
                                 if(_loc6_ || this)
                                 {
                                    §§push(Number(§§pop()));
                                    if(!_loc7_)
                                    {
                                       if(!_loc7_)
                                       {
                                          addr150:
                                          §§push(aabb1.lowerBound);
                                          if(_loc7_)
                                          {
                                          }
                                          addr178:
                                          §§push(§§pop().y);
                                          if(_loc6_ || this)
                                          {
                                             §§push(Number(§§pop()));
                                             if(!_loc6_)
                                             {
                                             }
                                          }
                                       }
                                    }
                                 }
                                 addr174:
                                 §§push(aabb1.lowerBound);
                                 if(_loc6_)
                                 {
                                    §§goto(addr178);
                                 }
                                 else
                                 {
                                    addr192:
                                    §§push(§§pop().y);
                                    if(_loc6_ || aabb)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                 }
                              }
                              addr201:
                              §§pop().Set(§§pop(),§§pop());
                              if(_loc6_ || aabb)
                              {
                                 §§push(aabb.upperBound);
                                 if(!_loc7_)
                                 {
                                    if(_loc7_)
                                    {
                                    }
                                    addr241:
                                    §§push(aabb1.upperBound);
                                    if(!(_loc7_ && transform2))
                                    {
                                       §§push(Number(§§pop().x));
                                       if(_loc7_)
                                       {
                                          addr265:
                                          §§push(Number(§§pop()));
                                          if(_loc6_ || this)
                                          {
                                          }
                                       }
                                       addr296:
                                       §§push(aabb1.upperBound);
                                       if(_loc6_ || this)
                                       {
                                          addr305:
                                          §§push(§§pop().y);
                                          if(!(_loc7_ && transform2))
                                          {
                                             addr313:
                                             §§push(Number(§§pop()));
                                             if(_loc6_ || aabb)
                                             {
                                                addr321:
                                             }
                                          }
                                          addr327:
                                          §§push(Number(§§pop()));
                                       }
                                       else
                                       {
                                          addr324:
                                          §§push(§§pop().y);
                                          if(!_loc7_)
                                          {
                                             §§goto(addr327);
                                          }
                                       }
                                       §§pop().Set(§§pop(),§§pop());
                                       if(_loc6_ || this)
                                       {
                                       }
                                    }
                                    else
                                    {
                                       addr257:
                                       §§push(§§pop().x);
                                       if(!(_loc7_ && transform1))
                                       {
                                          §§goto(addr265);
                                       }
                                    }
                                    §§push(aabb1.upperBound);
                                    if(_loc6_ || this)
                                    {
                                       §§push(§§pop().y);
                                       if(!(_loc7_ && transform2))
                                       {
                                          if(§§pop() > aabb2.upperBound.y)
                                          {
                                             §§goto(addr296);
                                          }
                                          else
                                          {
                                             §§push(aabb2.upperBound);
                                          }
                                          §§goto(addr324);
                                       }
                                       §§goto(addr313);
                                    }
                                    §§goto(addr305);
                                 }
                                 §§push(aabb1.upperBound);
                                 if(_loc6_ || this)
                                 {
                                    §§push(§§pop().x);
                                    §§push(aabb2.upperBound);
                                    if(!_loc7_)
                                    {
                                       §§push(§§pop().x);
                                       if(!(_loc7_ && transform1))
                                       {
                                          if(§§pop() > §§pop())
                                          {
                                             §§goto(addr241);
                                          }
                                          else
                                          {
                                             §§push(aabb2.upperBound);
                                          }
                                       }
                                       §§goto(addr321);
                                    }
                                    §§goto(addr305);
                                 }
                                 §§goto(addr257);
                              }
                           }
                           §§push(§§pop().y);
                           if(!(_loc7_ && transform1))
                           {
                              if(§§pop() < aabb2.lowerBound.y)
                              {
                                 §§goto(addr174);
                              }
                              else
                              {
                                 §§push(aabb2.lowerBound);
                              }
                              §§goto(addr192);
                           }
                           §§goto(addr201);
                        }
                        addr122:
                        §§push(§§pop().x);
                        if(_loc6_ || aabb)
                        {
                           §§push(Number(§§pop()));
                           if(!_loc6_)
                           {
                           }
                           §§goto(addr150);
                        }
                        §§goto(addr174);
                     }
                  }
                  §§push(aabb1.lowerBound);
                  if(!(_loc7_ && this))
                  {
                     §§goto(addr122);
                  }
                  else
                  {
                     §§goto(addr136);
                  }
                  §§goto(addr174);
               }
               return;
            }
            §§goto(addr82);
         }
         if(_loc6_ || aabb)
         {
            if(_loc6_ || transform1)
            {
            }
         }
         §§goto(addr46);
      }
      
      public function GetVertices() : Array
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(_loc1_)
         {
         }
         return this.m_vertices;
      }
      
      public function GetCoreVertices() : Array
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
         if(!_loc1_)
         {
         }
         return this.m_coreVertices;
      }
      
      public function GetCentroid() : b2Vec2
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         if(!_loc1_)
         {
         }
         return this.m_centroid;
      }
      
      public function GetOBB() : b2OBB
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
         }
         if(!_loc2_)
         {
         }
         return this.m_obb;
      }
      
      public function GetFirstVertex(xf:b2XForm) : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_)
         {
         }
         if(_loc3_)
         {
            if(!_loc3_)
            {
            }
         }
         return b2Math.b2MulX(xf,this.m_coreVertices[0]);
      }
      
      public function Centroid(xf:b2XForm) : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc3_)
         {
         }
         if(!_loc2_)
         {
            if(_loc3_ || xf)
            {
            }
         }
         return b2Math.b2MulX(xf,this.m_centroid);
      }
      
      override public function TestSegment(xf:b2XForm, lambda:Array, normal:b2Vec2, segment:b2Segment, maxLambda:Number) : Boolean
      {
         var _loc22_:Boolean = false;
         var _loc23_:Boolean = true;
         if(!_loc23_)
         {
         }
         var tX:* = NaN;
         var tY:* = NaN;
         var tMat:b2Mat22 = null;
         var tVec:b2Vec2 = null;
         var numerator:Number = NaN;
         var denominator:Number = NaN;
         if(!_loc22_)
         {
            if(_loc23_ || normal)
            {
               if(!_loc22_)
               {
                  if(!_loc23_)
                  {
                  }
                  addr67:
                  §§push(0);
                  if(_loc23_)
                  {
                     §§push(Number(§§pop()));
                  }
                  var lower:* = §§pop();
                  if(!_loc23_)
                  {
                  }
                  §§push(maxLambda);
                  if(_loc23_)
                  {
                     §§push(Number(§§pop()));
                  }
                  var upper:* = §§pop();
                  if(!(_loc22_ && normal))
                  {
                     if(_loc23_ || this)
                     {
                        §§push(segment.p1);
                        if(_loc23_ || lambda)
                        {
                           §§push(§§pop().x);
                           if(_loc23_ || normal)
                           {
                              §§push(xf.position);
                              if(_loc23_ || lambda)
                              {
                                 §§push(§§pop().x);
                                 if(_loc23_)
                                 {
                                    §§push(§§pop() - §§pop());
                                    if(!_loc23_)
                                    {
                                    }
                                    addr151:
                                    §§push(xf.position);
                                 }
                                 addr154:
                                 §§push(§§pop() - §§pop());
                                 addr163:
                                 if(!(_loc22_ && lambda))
                                 {
                                    §§push(Number(§§pop()));
                                 }
                                 tY = §§pop();
                                 if(_loc23_)
                                 {
                                    addr166:
                                 }
                              }
                              §§goto(addr154);
                              §§push(§§pop().y);
                           }
                           §§push(Number(§§pop()));
                           if(!(_loc22_ && this))
                           {
                              tX = §§pop();
                              if(_loc23_ || lambda)
                              {
                                 if(!_loc23_)
                                 {
                                 }
                                 §§goto(addr166);
                              }
                           }
                           §§goto(addr163);
                        }
                        addr148:
                        §§push(§§pop().y);
                        if(_loc23_)
                        {
                           §§goto(addr151);
                        }
                        §§goto(addr163);
                     }
                     §§goto(addr148);
                     §§push(segment.p1);
                  }
                  tMat = xf.R;
                  if(!_loc23_)
                  {
                  }
                  §§push(tX);
                  if(!(_loc22_ && this))
                  {
                     §§push(tMat.col1.x);
                     if(_loc23_)
                     {
                        §§push(§§pop() * §§pop());
                        if(!_loc23_)
                        {
                        }
                        addr210:
                        var p1X:Number = §§pop();
                        if(_loc23_ || this)
                        {
                        }
                        §§push(tX);
                        if(_loc23_ || xf)
                        {
                           §§push(tMat.col2.x);
                           if(_loc23_ || lambda)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc22_ && this)
                              {
                              }
                              addr261:
                              var p1Y:Number = §§pop();
                              if(_loc23_)
                              {
                                 if(_loc23_ || normal)
                                 {
                                 }
                                 addr344:
                                 tMat = xf.R;
                                 if(_loc23_ || xf)
                                 {
                                 }
                                 §§push(tX);
                                 if(_loc23_)
                                 {
                                    §§push(tMat.col1.x);
                                    if(!(_loc22_ && xf))
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(!(_loc22_ && normal))
                                       {
                                          §§push(tY);
                                          if(_loc23_ || this)
                                          {
                                          }
                                          addr390:
                                          §§push(§§pop() + §§pop());
                                          if(!_loc22_)
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                       }
                                    }
                                    §§goto(addr390);
                                    §§push(§§pop() * tMat.col1.y);
                                 }
                                 var p2X:* = §§pop();
                                 if(_loc22_)
                                 {
                                 }
                                 §§push(tX);
                                 if(_loc23_)
                                 {
                                    §§push(tMat.col2.x);
                                    if(!(_loc22_ && this))
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(_loc23_ || normal)
                                       {
                                          §§push(tY);
                                          if(_loc22_ && normal)
                                          {
                                          }
                                          addr431:
                                          §§push(§§pop() + §§pop());
                                          if(_loc23_ || normal)
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                       }
                                    }
                                    §§goto(addr431);
                                    §§push(§§pop() * tMat.col2.y);
                                 }
                                 var p2Y:* = §§pop();
                                 if(_loc22_)
                                 {
                                 }
                                 §§push(p2X);
                                 if(!(_loc22_ && lambda))
                                 {
                                    §§push(§§pop() - p1X);
                                    if(_loc23_ || this)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                 }
                                 var dX:* = §§pop();
                                 if(_loc23_ || normal)
                                 {
                                 }
                                 §§push(p2Y);
                                 if(_loc23_ || this)
                                 {
                                    §§push(§§pop() - p1Y);
                                    if(_loc23_ || lambda)
                                    {
                                    }
                                    addr496:
                                    var dY:* = §§pop();
                                    if(_loc22_)
                                    {
                                    }
                                    var index:* = -1;
                                    if(_loc22_)
                                    {
                                    }
                                    var i:int = 0;
                                    while(true)
                                    {
                                       §§push(i);
                                       if(_loc23_)
                                       {
                                          §§push(this.m_vertexCount);
                                          if(_loc23_)
                                          {
                                             if(§§pop() >= §§pop())
                                             {
                                                if(!_loc22_)
                                                {
                                                   if(_loc23_)
                                                   {
                                                      §§push(index);
                                                   }
                                                   addr806:
                                                   tMat = xf.R;
                                                   if(_loc22_ && normal)
                                                   {
                                                   }
                                                   tVec = this.m_normals[index];
                                                   if(!_loc22_)
                                                   {
                                                      §§push(normal);
                                                      §§push(tMat.col1.x);
                                                      if(_loc23_ || normal)
                                                      {
                                                         §§push(tVec.x);
                                                         if(_loc23_)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc22_ && xf)
                                                            {
                                                            }
                                                            addr859:
                                                            §§pop().x = §§pop();
                                                         }
                                                         addr855:
                                                         §§goto(addr859);
                                                         §§push(§§pop() + §§pop() * tVec.y);
                                                      }
                                                      §§push(tMat.col2.x);
                                                      if(_loc23_)
                                                      {
                                                         §§goto(addr855);
                                                      }
                                                      §§goto(addr855);
                                                   }
                                                   if(_loc23_)
                                                   {
                                                      §§push(normal);
                                                      §§push(tMat.col1.y);
                                                      if(_loc23_)
                                                      {
                                                         §§push(tVec.x);
                                                         if(!_loc22_)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc22_)
                                                            {
                                                            }
                                                            addr897:
                                                            §§pop().y = §§pop();
                                                            addr901:
                                                            if(_loc22_)
                                                            {
                                                            }
                                                            return true;
                                                         }
                                                         addr896:
                                                         §§goto(addr897);
                                                         §§push(§§pop() + §§pop());
                                                      }
                                                      §§push(tMat.col2.y);
                                                      if(!(_loc22_ && lambda))
                                                      {
                                                         §§push(§§pop() * tVec.y);
                                                      }
                                                      §§goto(addr896);
                                                   }
                                                   §§goto(addr901);
                                                }
                                                addr794:
                                                §§push(lambda);
                                             }
                                             else
                                             {
                                                §§push(this.m_vertices);
                                                if(!(_loc22_ && xf))
                                                {
                                                   §§push(i);
                                                   if(_loc23_ || this)
                                                   {
                                                      tVec = §§pop()[§§pop()];
                                                      if(!_loc22_)
                                                      {
                                                         if(_loc23_ || this)
                                                         {
                                                            §§push(tVec.x);
                                                            if(!(_loc22_ && normal))
                                                            {
                                                               §§push(p1X);
                                                               if(_loc23_ || normal)
                                                               {
                                                                  §§push(§§pop() - §§pop());
                                                                  if(!_loc22_)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     if(!(_loc22_ && lambda))
                                                                     {
                                                                        tX = §§pop();
                                                                        if(!(_loc22_ && normal))
                                                                        {
                                                                           if(_loc23_ || xf)
                                                                           {
                                                                           }
                                                                        }
                                                                        §§push(tVec.y);
                                                                        if(_loc22_)
                                                                        {
                                                                        }
                                                                        addr595:
                                                                        tY = §§pop();
                                                                        if(!_loc23_)
                                                                        {
                                                                        }
                                                                     }
                                                                  }
                                                                  §§push(p1Y);
                                                               }
                                                               §§push(§§pop() - §§pop());
                                                               if(_loc22_)
                                                               {
                                                               }
                                                               §§goto(addr595);
                                                            }
                                                            §§goto(addr595);
                                                            §§push(Number(§§pop()));
                                                         }
                                                      }
                                                      tVec = this.m_normals[i];
                                                      §§push(tVec.x * tX);
                                                      §§push(tVec.y);
                                                      if(_loc23_ || this)
                                                      {
                                                         §§push(tY);
                                                         if(_loc23_)
                                                         {
                                                            numerator = §§pop() + §§pop() * §§pop();
                                                            if(!(_loc22_ && lambda))
                                                            {
                                                               §§push(tVec.x * dX);
                                                               §§push(tVec.y);
                                                               if(!_loc22_)
                                                               {
                                                                  §§push(dY);
                                                                  if(_loc23_ || xf)
                                                                  {
                                                                     §§push(§§pop() + §§pop() * §§pop());
                                                                     if(!(_loc22_ && xf))
                                                                     {
                                                                        denominator = §§pop();
                                                                        §§push(denominator);
                                                                        if(_loc23_ || xf)
                                                                        {
                                                                           §§push(§§pop() < 0);
                                                                           if(_loc23_ || normal)
                                                                           {
                                                                              §§push(§§pop());
                                                                              if(_loc23_ || this)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(_loc23_)
                                                                                    {
                                                                                       §§pop();
                                                                                       §§push(numerator);
                                                                                       §§push(lower);
                                                                                    }
                                                                                 }
                                                                                 addr703:
                                                                                 if(§§pop())
                                                                                 {
                                                                                    §§push(numerator);
                                                                                    §§push(denominator);
                                                                                    if(_loc23_ || normal)
                                                                                    {
                                                                                       §§push(Number(§§pop() / §§pop()));
                                                                                    }
                                                                                    addr764:
                                                                                    if(§§pop() < §§pop())
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    i++;
                                                                                    continue;
                                                                                 }
                                                                                 §§push(denominator > 0);
                                                                                 §§push(denominator > 0);
                                                                                 addr762:
                                                                                 §§push(upper);
                                                                              }
                                                                              if(§§pop())
                                                                              {
                                                                                 if(!_loc23_)
                                                                                 {
                                                                                 }
                                                                              }
                                                                              addr750:
                                                                              if(§§pop())
                                                                              {
                                                                                 §§push(Number(numerator / denominator));
                                                                                 if(_loc23_)
                                                                                 {
                                                                                    upper = §§pop();
                                                                                    if(!_loc23_)
                                                                                    {
                                                                                    }
                                                                                    addr766:
                                                                                    return false;
                                                                                 }
                                                                              }
                                                                              §§goto(addr762);
                                                                           }
                                                                           §§pop();
                                                                           if(!(_loc22_ && lambda))
                                                                           {
                                                                              §§push(numerator);
                                                                              §§push(upper);
                                                                              §§push(denominator);
                                                                           }
                                                                           §§goto(addr766);
                                                                        }
                                                                        §§goto(addr764);
                                                                        §§push(lower);
                                                                     }
                                                                     lower = §§pop();
                                                                     §§push(i);
                                                                     if(!(_loc22_ && normal))
                                                                     {
                                                                        §§push(int(§§pop()));
                                                                     }
                                                                     index = §§pop();
                                                                     §§goto(addr762);
                                                                  }
                                                                  addr701:
                                                                  §§push(§§pop() * §§pop());
                                                               }
                                                               §§push(denominator);
                                                               if(_loc23_ || this)
                                                               {
                                                                  §§goto(addr701);
                                                               }
                                                            }
                                                            break;
                                                         }
                                                         §§goto(addr750);
                                                         §§push(§§pop() < §§pop() * §§pop());
                                                      }
                                                      §§goto(addr703);
                                                      §§push(§§pop() < §§pop());
                                                   }
                                                }
                                                addr796:
                                                §§pop()[§§pop()] = lower;
                                                if(_loc23_ || normal)
                                                {
                                                   addr805:
                                                }
                                                §§goto(addr806);
                                             }
                                             §§goto(addr796);
                                             §§push(0);
                                          }
                                          addr785:
                                          if(§§pop() >= §§pop())
                                          {
                                             if(_loc23_ || xf)
                                             {
                                                §§goto(addr794);
                                             }
                                             §§goto(addr805);
                                          }
                                          else
                                          {
                                             return false;
                                          }
                                       }
                                       §§goto(addr785);
                                    }
                                    §§goto(addr766);
                                 }
                                 §§goto(addr496);
                                 §§push(Number(§§pop()));
                              }
                              §§push(segment.p2);
                              if(_loc23_ || this)
                              {
                                 §§push(§§pop().x);
                                 if(!(_loc22_ && xf))
                                 {
                                    §§push(xf.position);
                                    if(_loc23_)
                                    {
                                       §§push(§§pop().x);
                                       if(_loc23_)
                                       {
                                          §§push(§§pop() - §§pop());
                                          if(_loc23_)
                                          {
                                             §§push(Number(§§pop()));
                                             if(!_loc23_)
                                             {
                                             }
                                             addr324:
                                             §§push(xf.position);
                                          }
                                       }
                                       addr327:
                                       §§push(§§pop() - §§pop());
                                       if(_loc23_ || xf)
                                       {
                                          addr335:
                                          §§push(Number(§§pop()));
                                       }
                                       tY = §§pop();
                                       if(_loc23_ || this)
                                       {
                                          §§goto(addr344);
                                       }
                                       §§goto(addr344);
                                    }
                                    §§goto(addr327);
                                    §§push(§§pop().y);
                                 }
                                 tX = §§pop();
                                 if(_loc23_)
                                 {
                                    if(_loc23_ || this)
                                    {
                                       §§push(segment.p2);
                                    }
                                 }
                                 §§goto(addr344);
                              }
                              §§push(§§pop().y);
                              if(!(_loc22_ && xf))
                              {
                                 §§goto(addr324);
                              }
                              §§goto(addr335);
                           }
                           addr253:
                           §§push(§§pop() + §§pop());
                           if(_loc23_ || xf)
                           {
                              §§goto(addr261);
                           }
                           §§goto(addr261);
                        }
                        §§push(tY);
                        if(_loc23_)
                        {
                           §§push(§§pop() * tMat.col2.y);
                        }
                        §§goto(addr253);
                     }
                     addr198:
                     §§push(§§pop() + §§pop() * tMat.col1.y);
                     if(!(_loc22_ && this))
                     {
                        §§goto(addr210);
                     }
                     §§goto(addr210);
                  }
                  §§push(tY);
                  if(_loc23_ || lambda)
                  {
                     §§goto(addr198);
                  }
                  §§goto(addr198);
               }
               addr66:
               §§goto(addr67);
            }
            addr65:
            §§goto(addr66);
         }
         if(_loc23_)
         {
            §§goto(addr65);
         }
         §§goto(addr67);
      }
      
      override public function ComputeMass(massData:b2MassData) : void
      {
         var _loc26_:Boolean = false;
         var _loc27_:Boolean = true;
         if(!_loc27_)
         {
         }
         var p2:b2Vec2 = null;
         var p3:b2Vec2 = null;
         var e1X:Number = NaN;
         var e1Y:Number = NaN;
         var e2X:* = NaN;
         var e2Y:Number = NaN;
         var D:* = NaN;
         var triangleArea:* = NaN;
         var px:Number = NaN;
         var py:* = NaN;
         var ex1:Number = NaN;
         var ey1:Number = NaN;
         var ex2:* = NaN;
         var ey2:* = NaN;
         var intx2:* = NaN;
         var inty2:* = NaN;
         if(!_loc26_)
         {
            if(_loc27_)
            {
               if(_loc26_ && centerY)
               {
               }
               addr77:
               §§push(0);
               if(!(_loc26_ && this))
               {
                  §§push(Number(§§pop()));
               }
               var centerX:* = §§pop();
               if(_loc26_ && massData)
               {
               }
               §§push(0);
               if(_loc27_ || this)
               {
                  §§push(Number(§§pop()));
               }
               var centerY:* = §§pop();
               if(_loc26_)
               {
               }
               §§push(0);
               if(!(_loc26_ && centerY))
               {
                  §§push(Number(§§pop()));
               }
               var area:* = §§pop();
               if(_loc26_)
               {
               }
               §§push(0);
               if(!(_loc26_ && this))
               {
                  §§push(Number(§§pop()));
               }
               var I:* = §§pop();
               if(!_loc27_)
               {
               }
               §§push(0);
               if(!_loc26_)
               {
                  §§push(Number(§§pop()));
               }
               var p1X:* = §§pop();
               if(_loc26_)
               {
               }
               §§push(0);
               if(!_loc26_)
               {
                  §§push(Number(§§pop()));
               }
               var p1Y:* = §§pop();
               if(_loc27_ || massData)
               {
               }
               §§push(1 / 3);
               if(!_loc26_)
               {
                  §§push(Number(§§pop()));
               }
               var k_inv3:* = §§pop();
               if(_loc27_ || centerX)
               {
               }
               var i:int = 0;
               while(true)
               {
                  if(i >= this.m_vertexCount)
                  {
                     if(_loc27_)
                     {
                        break;
                     }
                     addr755:
                  }
                  else
                  {
                     if(!(_loc26_ && this))
                     {
                        if(!_loc26_)
                        {
                           if(!_loc26_)
                           {
                              if(!_loc27_)
                              {
                              }
                              if(!_loc27_)
                              {
                              }
                              addr791:
                              §§push(centerY);
                              addr800:
                              if(!_loc26_)
                              {
                                 addr794:
                                 §§push(§§pop() * (1 / area));
                                 if(!_loc27_)
                                 {
                                 }
                                 addr801:
                                 centerY = §§pop();
                                 if(!(_loc26_ && centerY))
                                 {
                                    massData.center.Set(centerX,centerY);
                                 }
                              }
                              §§goto(addr801);
                              §§push(Number(§§pop()));
                           }
                           massData.I = m_density * I;
                           if(_loc26_ && centerX)
                           {
                           }
                           return;
                        }
                        addr207:
                        if(_loc27_)
                        {
                           p2 = this.m_vertices[i];
                           if(_loc27_ || centerX)
                           {
                              if(_loc27_ || centerX)
                              {
                              }
                              addr238:
                              p3 = !_loc26_?§§pop()[int(i + 1)]:§§pop()[0];
                              §§push(this.m_vertices);
                              if(_loc27_ || this)
                              {
                                 §§push(p2.x);
                                 if(_loc27_)
                                 {
                                    §§push(p1X);
                                    if(!(_loc26_ && this))
                                    {
                                       §§push(§§pop() - §§pop());
                                       if(!_loc26_)
                                       {
                                          e1X = §§pop();
                                          e1Y = p2.y - p1Y;
                                          if(!(_loc26_ && centerX))
                                          {
                                             if(_loc27_)
                                             {
                                                §§push(p3.x);
                                                if(!_loc26_)
                                                {
                                                   §§push(p1X);
                                                   if(!_loc26_)
                                                   {
                                                      §§push(Number(§§pop() - §§pop()));
                                                      if(!(_loc26_ && centerY))
                                                      {
                                                         e2X = §§pop();
                                                         if(!(_loc26_ && this))
                                                         {
                                                            §§push(p3.y);
                                                            §§push(p1Y);
                                                            if(_loc27_)
                                                            {
                                                               §§push(§§pop() - §§pop());
                                                               if(!_loc26_)
                                                               {
                                                                  e2Y = §§pop();
                                                                  §§push(e1X * e2Y);
                                                                  §§push(e1Y);
                                                                  if(!(_loc26_ && centerY))
                                                                  {
                                                                     §§push(Number(§§pop() - §§pop() * e2X));
                                                                     if(!(_loc26_ && massData))
                                                                     {
                                                                        D = §§pop();
                                                                        §§push(0.5);
                                                                        if(_loc27_)
                                                                        {
                                                                           §§push(D);
                                                                           if(!_loc26_)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                           }
                                                                        }
                                                                        addr379:
                                                                        §§push(Number(§§pop()));
                                                                        if(!(_loc26_ && massData))
                                                                        {
                                                                           area = §§pop();
                                                                           if(!_loc27_)
                                                                           {
                                                                           }
                                                                           addr434:
                                                                           §§push(centerY);
                                                                        }
                                                                     }
                                                                     addr436:
                                                                     §§push(triangleArea);
                                                                     §§push(k_inv3);
                                                                     if(!(_loc26_ && massData))
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                     }
                                                                     addr696:
                                                                     §§push(§§pop() * §§pop());
                                                                     addr736:
                                                                     addr739:
                                                                     if(!_loc27_)
                                                                     {
                                                                     }
                                                                     I = Number(§§pop() + §§pop());
                                                                     if(!_loc26_)
                                                                     {
                                                                        addr742:
                                                                        i++;
                                                                     }
                                                                     continue;
                                                                  }
                                                                  addr695:
                                                                  §§goto(addr696);
                                                                  §§push(py);
                                                               }
                                                               addr536:
                                                               ex2 = §§pop();
                                                               addr715:
                                                               if(!_loc26_)
                                                               {
                                                                  addr541:
                                                                  §§push(Number(e2Y));
                                                                  addr724:
                                                                  if(!_loc26_)
                                                                  {
                                                                     ey2 = §§pop();
                                                                     if(_loc27_)
                                                                     {
                                                                        §§push(k_inv3);
                                                                        if(!(_loc26_ && massData))
                                                                        {
                                                                           §§push(0.25);
                                                                           §§push(ex1 * ex1);
                                                                           §§push(ex2);
                                                                           if(!_loc26_)
                                                                           {
                                                                              §§push(ex1);
                                                                              if(!_loc26_)
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(_loc27_)
                                                                                 {
                                                                                    §§push(§§pop() + §§pop());
                                                                                    §§push(ex2);
                                                                                    §§push(ex2);
                                                                                    if(!(_loc26_ && this))
                                                                                    {
                                                                                       §§push(§§pop() * (§§pop() + §§pop() * §§pop()));
                                                                                       if(!_loc26_)
                                                                                       {
                                                                                          §§push(px);
                                                                                          §§push(ex1);
                                                                                          if(_loc27_ || this)
                                                                                          {
                                                                                          }
                                                                                          addr677:
                                                                                          §§push(ey2);
                                                                                          addr690:
                                                                                          if(_loc27_)
                                                                                          {
                                                                                             addr682:
                                                                                             §§push(§§pop() * (§§pop() + §§pop() * §§pop()));
                                                                                             §§push(py * ey1);
                                                                                             addr733:
                                                                                             if(!_loc26_)
                                                                                             {
                                                                                                addr688:
                                                                                                §§push(py);
                                                                                                §§push(ey2);
                                                                                             }
                                                                                             §§push(§§pop() * (§§pop() + inty2));
                                                                                          }
                                                                                          §§goto(addr695);
                                                                                          §§push(§§pop() * (§§pop() + (§§pop() + §§pop() * §§pop())));
                                                                                          §§push(0.5);
                                                                                       }
                                                                                       §§goto(addr736);
                                                                                    }
                                                                                    addr672:
                                                                                    §§push(§§pop() + §§pop() * §§pop());
                                                                                    if(!_loc26_)
                                                                                    {
                                                                                       §§goto(addr677);
                                                                                       §§push(ey2);
                                                                                    }
                                                                                    §§goto(addr682);
                                                                                 }
                                                                                 §§push(§§pop() * §§pop());
                                                                                 §§push(px);
                                                                                 if(_loc26_ && centerX)
                                                                                 {
                                                                                 }
                                                                                 addr664:
                                                                                 §§push(ey1);
                                                                                 if(!(_loc26_ && massData))
                                                                                 {
                                                                                    §§goto(addr672);
                                                                                 }
                                                                                 §§goto(addr690);
                                                                              }
                                                                              addr605:
                                                                              §§push(§§pop() * (§§pop() + (§§pop() + §§pop() * §§pop())));
                                                                              §§push(0.5);
                                                                              if(!(_loc26_ && centerY))
                                                                              {
                                                                                 §§push(§§pop() * px);
                                                                                 §§push(px);
                                                                                 if(_loc27_ || centerY)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(_loc27_)
                                                                                    {
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(!_loc26_)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          if(!_loc26_)
                                                                                          {
                                                                                             intx2 = §§pop();
                                                                                          }
                                                                                          §§goto(addr736);
                                                                                       }
                                                                                    }
                                                                                    addr656:
                                                                                    §§push(ey1);
                                                                                    if(_loc27_)
                                                                                    {
                                                                                       addr661:
                                                                                       §§push(§§pop() * ey1);
                                                                                       §§push(ey2);
                                                                                       if(!_loc26_)
                                                                                       {
                                                                                          §§goto(addr664);
                                                                                       }
                                                                                       §§goto(addr677);
                                                                                    }
                                                                                    §§goto(addr688);
                                                                                 }
                                                                                 addr707:
                                                                                 §§push(§§pop() + §§pop() * §§pop());
                                                                              }
                                                                           }
                                                                           §§push(ex2);
                                                                           if(_loc27_)
                                                                           {
                                                                              §§goto(addr605);
                                                                           }
                                                                           §§goto(addr672);
                                                                        }
                                                                     }
                                                                     addr723:
                                                                     §§push(I);
                                                                  }
                                                                  addr724:
                                                                  §§push(D);
                                                                  if(!(_loc26_ && centerX))
                                                                  {
                                                                     §§goto(addr733);
                                                                     §§push(intx2);
                                                                  }
                                                                  §§goto(addr736);
                                                               }
                                                               if(!(_loc26_ && centerY))
                                                               {
                                                                  §§goto(addr723);
                                                               }
                                                               else
                                                               {
                                                                  continue;
                                                               }
                                                            }
                                                            §§push(py);
                                                            if(_loc27_ || centerX)
                                                            {
                                                               §§goto(addr707);
                                                            }
                                                            §§goto(addr733);
                                                         }
                                                         addr501:
                                                         §§push(e1X);
                                                         if(_loc27_)
                                                         {
                                                            ex1 = §§pop();
                                                            if(!(_loc26_ && centerY))
                                                            {
                                                               §§push(e1Y);
                                                               if(!_loc26_)
                                                               {
                                                                  ey1 = §§pop();
                                                                  §§push(e2X);
                                                                  if(!(_loc26_ && massData))
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     if(_loc27_ || centerY)
                                                                     {
                                                                        §§goto(addr536);
                                                                     }
                                                                     §§goto(addr605);
                                                                  }
                                                               }
                                                               §§goto(addr690);
                                                            }
                                                            §§goto(addr739);
                                                         }
                                                      }
                                                      §§push(Number(§§pop()));
                                                      if(!_loc26_)
                                                      {
                                                         inty2 = §§pop();
                                                         if(!_loc26_)
                                                         {
                                                            §§goto(addr715);
                                                         }
                                                         §§goto(addr742);
                                                      }
                                                      §§goto(addr724);
                                                   }
                                                   §§push(p1Y);
                                                   if(_loc27_ || centerX)
                                                   {
                                                      addr453:
                                                      §§push(§§pop() + p2.y);
                                                      if(_loc27_ || massData)
                                                      {
                                                         §§push(§§pop() * (§§pop() + p3.y));
                                                      }
                                                      §§goto(addr696);
                                                   }
                                                   §§goto(addr682);
                                                }
                                                §§push(Number(§§pop()));
                                                if(_loc27_ || centerY)
                                                {
                                                   triangleArea = §§pop();
                                                   §§goto(addr379);
                                                   §§push(area + triangleArea);
                                                }
                                                §§goto(addr605);
                                             }
                                             §§push(centerX);
                                             §§push(triangleArea);
                                             §§push(k_inv3);
                                             if(_loc27_ || massData)
                                             {
                                                §§push(§§pop() * §§pop());
                                                §§push(p1X);
                                                if(_loc27_ || this)
                                                {
                                                   §§push(§§pop() + p2.x + p3.x);
                                                   if(_loc27_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(!_loc26_)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(!_loc26_)
                                                         {
                                                            centerX = Number(§§pop());
                                                         }
                                                         §§goto(addr541);
                                                      }
                                                      §§goto(addr436);
                                                   }
                                                   §§goto(addr661);
                                                }
                                                §§goto(addr661);
                                             }
                                             §§goto(addr453);
                                          }
                                          §§goto(addr434);
                                       }
                                       addr648:
                                       §§push(0.25);
                                       if(_loc27_ || this)
                                       {
                                          §§goto(addr656);
                                       }
                                       §§goto(addr695);
                                    }
                                    centerY = Number(§§pop() + §§pop());
                                    if(_loc26_)
                                    {
                                    }
                                    §§push(p1X);
                                    if(!_loc26_)
                                    {
                                       px = §§pop();
                                       if(!(_loc26_ && centerX))
                                       {
                                          if(!(_loc26_ && centerX))
                                          {
                                             §§push(Number(p1Y));
                                          }
                                          §§goto(addr501);
                                       }
                                       addr645:
                                       §§push(k_inv3);
                                       if(!_loc26_)
                                       {
                                          §§goto(addr648);
                                       }
                                       §§goto(addr724);
                                    }
                                    §§goto(addr690);
                                 }
                                 py = §§pop();
                                 if(_loc27_)
                                 {
                                    if(!_loc27_)
                                    {
                                    }
                                    §§goto(addr541);
                                 }
                                 §§goto(addr501);
                              }
                              if(!(_loc26_ && centerX))
                              {
                                 §§goto(addr645);
                              }
                              §§goto(addr723);
                           }
                           if(i + 1 < this.m_vertexCount)
                           {
                              §§goto(addr238);
                           }
                           else
                           {
                              §§push(this.m_vertices);
                           }
                           §§goto(addr252);
                        }
                     }
                     if(!_loc26_)
                     {
                        §§goto(addr207);
                     }
                     else
                     {
                        break;
                     }
                  }
                  §§push(centerX);
                  if(_loc27_ || centerX)
                  {
                     §§push(1);
                     if(!(_loc26_ && this))
                     {
                        §§push(area);
                        if(!(_loc26_ && centerY))
                        {
                           §§push(§§pop() / §§pop());
                           if(!_loc26_)
                           {
                              §§push(§§pop() * §§pop());
                              if(!_loc26_)
                              {
                                 §§push(Number(§§pop()));
                                 if(!_loc26_)
                                 {
                                    centerX = §§pop();
                                    §§goto(addr791);
                                 }
                                 §§goto(addr801);
                              }
                              §§goto(addr794);
                           }
                           §§goto(addr794);
                        }
                        §§goto(addr794);
                     }
                     §§goto(addr794);
                  }
                  §§goto(addr800);
               }
               massData.mass = m_density * area;
               §§goto(addr755);
            }
         }
         if(_loc27_)
         {
            if(!_loc27_)
            {
            }
         }
         §§goto(addr77);
      }
      
      public function GetNormals() : Array
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
         }
         if(_loc1_ || _loc2_)
         {
         }
         return this.m_normals;
      }
      
      public function Support(xf:b2XForm, dX:Number, dY:Number) : b2Vec2
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         if(!_loc13_)
         {
         }
         var tVec:b2Vec2 = null;
         var tMat:b2Mat22 = null;
         var value:Number = NaN;
         if(_loc13_ || xf)
         {
         }
         if(!(_loc12_ && dX))
         {
            if(!_loc13_)
            {
            }
         }
         tMat = xf.R;
         if(_loc12_)
         {
         }
         §§push(dX);
         if(!(_loc12_ && xf))
         {
            §§push(tMat.col1.x);
            if(_loc13_ || this)
            {
               §§push(§§pop() * §§pop());
               if(!_loc12_)
               {
                  §§push(dY);
                  if(_loc13_)
                  {
                     §§push(§§pop() * tMat.col1.y);
                  }
               }
               addr96:
               §§push(Number(§§pop()));
            }
            §§push(§§pop() + §§pop());
            if(!(_loc12_ && dX))
            {
               §§goto(addr96);
            }
         }
         var dLocalX:* = §§pop();
         if(_loc12_)
         {
         }
         §§push(dX);
         if(!_loc12_)
         {
            §§push(tMat.col2.x);
            if(!(_loc12_ && dX))
            {
               §§push(§§pop() * §§pop());
               if(_loc13_)
               {
                  §§push(dY);
                  if(!_loc13_)
                  {
                  }
                  addr124:
                  §§push(§§pop() + §§pop());
                  if(!_loc13_)
                  {
                  }
               }
               addr128:
               var dLocalY:* = §§pop();
               if(_loc12_)
               {
               }
               var bestIndex:* = 0;
               if(_loc12_ && xf)
               {
               }
               tVec = this.m_coreVertices[0];
               if(!_loc13_)
               {
               }
               §§push(tVec.x);
               if(!(_loc12_ && xf))
               {
                  §§push(dLocalX);
                  if(_loc13_)
                  {
                     §§push(§§pop() * §§pop());
                     if(_loc13_)
                     {
                        §§push(tVec.y);
                        if(_loc13_ || dX)
                        {
                        }
                        addr177:
                        §§push(§§pop() + §§pop());
                        if(!(_loc12_ && this))
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                  }
                  §§goto(addr177);
                  §§push(§§pop() * dLocalY);
               }
               var bestValue:* = §§pop();
               if(!_loc13_)
               {
               }
               var i:int = 1;
               while(true)
               {
                  if(i >= this.m_vertexCount)
                  {
                     if(!_loc12_)
                     {
                        break;
                     }
                     addr289:
                     tMat = xf.R;
                     if(_loc13_ || dX)
                     {
                     }
                     tVec = this.m_coreVertices[bestIndex];
                     if(!_loc12_)
                     {
                        if(!(_loc12_ && this))
                        {
                           §§push(this.s_supportVec);
                           if(_loc13_)
                           {
                              §§push(xf.position);
                              if(!_loc12_)
                              {
                                 §§push(§§pop().x);
                                 if(!(_loc12_ && dY))
                                 {
                                    §§push(tMat.col1);
                                    if(!_loc12_)
                                    {
                                       §§push(§§pop().x);
                                       if(_loc13_)
                                       {
                                          §§push(tVec.x);
                                          if(_loc13_ || dY)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(!(_loc12_ && dX))
                                             {
                                                §§push(tMat.col2);
                                                if(_loc13_ || this)
                                                {
                                                   §§push(§§pop().x);
                                                   if(!_loc12_)
                                                   {
                                                      §§push(tVec.y);
                                                      if(_loc13_)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc12_ && this)
                                                         {
                                                         }
                                                         addr454:
                                                         §§pop().y = §§pop() + (§§pop() + §§pop());
                                                         if(_loc12_)
                                                         {
                                                         }
                                                      }
                                                      addr453:
                                                      §§goto(addr454);
                                                      §§push(§§pop() * §§pop());
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                   if(!_loc13_)
                                                   {
                                                   }
                                                   addr434:
                                                   §§push(tMat.col2);
                                                }
                                                §§push(§§pop().y);
                                                if(_loc13_ || dY)
                                                {
                                                   §§goto(addr453);
                                                   §§push(tVec.y);
                                                }
                                                §§goto(addr454);
                                             }
                                          }
                                          addr426:
                                          §§push(§§pop() * §§pop());
                                          if(_loc13_ || dX)
                                          {
                                             §§goto(addr434);
                                          }
                                          §§goto(addr454);
                                       }
                                       §§push(§§pop() + §§pop());
                                       if(_loc12_)
                                       {
                                       }
                                       addr407:
                                       §§push(tMat.col1);
                                    }
                                    §§push(§§pop().y);
                                    if(!(_loc12_ && xf))
                                    {
                                       §§push(tVec.x);
                                       if(!(_loc12_ && xf))
                                       {
                                          §§goto(addr426);
                                       }
                                       §§goto(addr454);
                                    }
                                    §§goto(addr434);
                                 }
                                 §§pop().x = §§pop();
                                 if(_loc13_)
                                 {
                                    if(_loc13_)
                                    {
                                       §§push(this.s_supportVec);
                                       if(_loc13_ || dX)
                                       {
                                       }
                                       addr462:
                                       return §§pop();
                                    }
                                 }
                              }
                              addr404:
                              §§push(§§pop().y);
                              if(!_loc12_)
                              {
                                 §§goto(addr407);
                              }
                              §§goto(addr454);
                           }
                           §§goto(addr404);
                           §§push(xf.position);
                        }
                     }
                     §§goto(addr462);
                     §§push(this.s_supportVec);
                  }
                  else
                  {
                     if(_loc13_)
                     {
                        if(_loc12_ && dY)
                        {
                           break;
                        }
                     }
                     tVec = this.m_coreVertices[i];
                     if(!_loc12_)
                     {
                        §§push(tVec.x);
                        if(_loc13_)
                        {
                           §§push(dLocalX);
                           if(_loc13_)
                           {
                              §§push(§§pop() * §§pop());
                           }
                           addr233:
                           §§push(§§pop() * dLocalY);
                           addr250:
                           if(_loc13_)
                           {
                              value = §§pop() + §§pop();
                              §§push(value);
                              if(!(_loc12_ && this))
                              {
                                 §§push(bestValue);
                              }
                              addr272:
                              bestValue = §§pop();
                              if(!(_loc12_ && this))
                              {
                                 addr281:
                                 i++;
                              }
                              continue;
                           }
                           if(§§pop() > §§pop())
                           {
                              §§push(i);
                              if(_loc13_ || dX)
                              {
                                 §§push(int(§§pop()));
                              }
                              bestIndex = §§pop();
                           }
                           §§goto(addr281);
                        }
                        §§push(tVec.y);
                        if(_loc13_)
                        {
                           §§goto(addr233);
                        }
                        §§goto(addr250);
                     }
                     if(_loc13_ || xf)
                     {
                        §§goto(addr272);
                        §§push(Number(value));
                     }
                     §§goto(addr281);
                  }
               }
               §§goto(addr289);
            }
            §§goto(addr124);
            §§push(§§pop() * tMat.col2.y);
         }
         §§goto(addr128);
      }
      
      public function GetVertexCount() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         if(_loc2_)
         {
         }
         return this.m_vertexCount;
      }
      
      override public function ComputeAABB(aabb:b2AABB, xf:b2XForm) : void
      {
         /*
          * Error de decompilación
          * Tiempo de espera (1 minuto) alcanzado
          * Instruction count: 642
          */
         throw new flash.errors.IllegalOperationError("No decompilado debido al tiempo de espera");
      }
      
      override public function UpdateSweepRadius(center:b2Vec2) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc6_)
         {
         }
         var tVec:b2Vec2 = null;
         var dX:Number = NaN;
         var dY:* = NaN;
         if(!_loc6_)
         {
            if(_loc6_ && this)
            {
            }
            if(!(_loc6_ && tVec))
            {
               if(_loc7_ || center)
               {
               }
               addr55:
            }
            m_sweepRadius = 0;
            §§goto(addr55);
         }
         var i:int = 0;
         while(true)
         {
            if(i >= this.m_vertexCount)
            {
               if(_loc7_ || i)
               {
               }
               break;
            }
            if(!(_loc6_ && this))
            {
               if(_loc7_ || i)
               {
                  if(_loc7_)
                  {
                     tVec = this.m_coreVertices[i];
                     if(_loc7_)
                     {
                        if(_loc7_)
                        {
                           §§push(tVec.x);
                           if(!(_loc6_ && tVec))
                           {
                              §§push(center.x);
                              if(_loc7_)
                              {
                                 dX = §§pop() - §§pop();
                                 §§push(tVec.y);
                                 if(_loc7_)
                                 {
                                    §§push(center.y);
                                 }
                                 addr121:
                                 §§push(Number(§§pop()));
                                 if(_loc7_ || this)
                                 {
                                    dY = §§pop();
                                 }
                              }
                              §§goto(addr121);
                              §§push(§§pop() - §§pop());
                           }
                           addr146:
                           if(§§pop() > m_sweepRadius)
                           {
                              if(_loc7_ || tVec)
                              {
                                 m_sweepRadius = dX;
                                 if(!(_loc7_ || tVec))
                                 {
                                    continue;
                                 }
                              }
                           }
                           addr166:
                           i++;
                           continue;
                        }
                        dX = Math.sqrt(dX * dX + dY * dY);
                        if(_loc6_)
                        {
                        }
                        §§goto(addr166);
                     }
                     §§goto(addr146);
                     §§push(dX);
                  }
               }
               break;
            }
            break;
         }
      }
      
      override public function TestPoint(xf:b2XForm, p:b2Vec2) : Boolean
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         if(_loc11_)
         {
         }
         var tVec:b2Vec2 = null;
         var dot:* = NaN;
         if(_loc12_)
         {
            if(!_loc12_)
            {
            }
            addr32:
            if(_loc12_)
            {
               if(_loc12_ || tVec)
               {
                  addr44:
                  if(!_loc12_)
                  {
                  }
               }
               addr50:
               var tMat:b2Mat22 = xf.R;
               if(!_loc12_)
               {
               }
               §§push(p.x);
               if(_loc12_)
               {
                  §§push(§§pop() - xf.position.x);
                  if(_loc11_ && this)
                  {
                  }
                  addr73:
                  var tX:* = §§pop();
                  if(!_loc12_)
                  {
                  }
                  §§push(p.y);
                  if(!(_loc11_ && xf))
                  {
                     §§push(§§pop() - xf.position.y);
                     if(_loc11_)
                     {
                     }
                     addr93:
                     var tY:* = §§pop();
                     if(_loc12_ || p)
                     {
                     }
                     §§push(tX);
                     if(!(_loc11_ && p))
                     {
                        §§push(tMat.col1.x);
                        if(!(_loc11_ && xf))
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc12_ || tVec)
                           {
                           }
                           addr139:
                           var pLocalX:* = §§pop();
                           if(_loc11_)
                           {
                           }
                           §§push(tX);
                           if(!(_loc11_ && p))
                           {
                              §§push(tMat.col2.x);
                              if(_loc12_ || tVec)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(_loc11_)
                                 {
                                 }
                                 addr187:
                                 var pLocalY:* = §§pop();
                                 if(_loc12_ || tVec)
                                 {
                                 }
                                 var i:int = 0;
                                 while(true)
                                 {
                                    if(i >= this.m_vertexCount)
                                    {
                                       if(_loc11_ && this)
                                       {
                                       }
                                       addr370:
                                       return true;
                                    }
                                    if(!(_loc11_ && this))
                                    {
                                       if(!(_loc11_ && tVec))
                                       {
                                          tVec = this.m_vertices[i];
                                          if(!(_loc11_ && this))
                                          {
                                             if(_loc12_)
                                             {
                                                §§push(pLocalX);
                                                if(!(_loc11_ && p))
                                                {
                                                   §§push(tVec.x);
                                                   if(_loc12_ || this)
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                      if(_loc11_)
                                                      {
                                                      }
                                                      addr269:
                                                      §§push(tVec.y);
                                                   }
                                                   §§push(§§pop() - §§pop());
                                                   if(!(_loc11_ && p))
                                                   {
                                                      addr279:
                                                      §§push(Number(§§pop()));
                                                   }
                                                   addr280:
                                                   tY = §§pop();
                                                   if(_loc11_)
                                                   {
                                                   }
                                                }
                                                §§push(Number(§§pop()));
                                                if(!_loc11_)
                                                {
                                                   tX = §§pop();
                                                   if(_loc12_)
                                                   {
                                                      if(_loc12_)
                                                      {
                                                         §§push(pLocalY);
                                                         if(!(_loc11_ && xf))
                                                         {
                                                            §§goto(addr269);
                                                         }
                                                         §§goto(addr279);
                                                      }
                                                   }
                                                }
                                                §§goto(addr280);
                                             }
                                             addr284:
                                             tVec = this.m_normals[i];
                                             if(!_loc11_)
                                             {
                                                §§push(tVec.x);
                                                if(_loc12_)
                                                {
                                                   §§push(tX);
                                                   if(_loc12_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc12_)
                                                      {
                                                         §§push(tVec.y);
                                                         if(_loc12_ || xf)
                                                         {
                                                         }
                                                         addr336:
                                                         if(§§pop() > §§pop())
                                                         {
                                                            if(!_loc11_)
                                                            {
                                                               break;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            i++;
                                                         }
                                                         continue;
                                                      }
                                                   }
                                                   §§push(§§pop() * tY);
                                                   if(!(_loc11_ && tVec))
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc12_ || p)
                                                      {
                                                      }
                                                      addr332:
                                                      addr335:
                                                      dot = §§pop();
                                                      §§push(dot);
                                                      §§push(0);
                                                   }
                                                   §§goto(addr336);
                                                }
                                                §§push(Number(§§pop()));
                                                if(_loc12_)
                                                {
                                                   §§goto(addr332);
                                                }
                                                §§goto(addr335);
                                             }
                                             break;
                                          }
                                          §§goto(addr284);
                                       }
                                    }
                                    §§goto(addr370);
                                    §§goto(addr370);
                                 }
                                 return false;
                              }
                              addr171:
                              §§push(§§pop() + §§pop());
                              if(!(_loc11_ && xf))
                              {
                                 §§push(Number(§§pop()));
                              }
                              §§goto(addr187);
                           }
                           §§push(tY);
                           if(_loc12_)
                           {
                              §§push(§§pop() * tMat.col2.y);
                           }
                           §§goto(addr171);
                        }
                        addr131:
                        §§push(§§pop() + §§pop() * tMat.col1.y);
                        if(_loc12_)
                        {
                           §§push(Number(§§pop()));
                        }
                        §§goto(addr139);
                     }
                     §§push(tY);
                     if(_loc12_)
                     {
                        §§goto(addr131);
                     }
                     §§goto(addr131);
                  }
                  §§goto(addr93);
                  §§push(Number(§§pop()));
               }
               §§goto(addr73);
               §§push(Number(§§pop()));
            }
            §§goto(addr50);
         }
         if(_loc12_)
         {
            §§goto(addr32);
         }
         §§goto(addr44);
      }
   }
}
