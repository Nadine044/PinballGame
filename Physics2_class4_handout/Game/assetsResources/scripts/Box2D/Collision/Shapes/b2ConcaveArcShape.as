package Box2D.Collision.Shapes
{
   import Box2D.Collision.b2Segment;
   import Box2D.Common.Math.b2Mat22;
   import Box2D.Common.Math.b2Vec2;
   import Box2D.Common.Math.b2XForm;
   import Box2D.Common.b2Settings;
   
   public class b2ConcaveArcShape extends b2PolygonShape
   {
       
      
      public var m_radius:Number;
      
      public var m_radius2:Number;
      
      public var m_arcCenter:b2Vec2;
      
      public var m_dot:Number;
      
      public var m_norm:Number;
      
      public function b2ConcaveArcShape(def:b2ShapeDef)
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         if(_loc13_ && this)
         {
         }
         var nx:* = NaN;
         var ny:* = NaN;
         if(!_loc13_)
         {
            if(!_loc13_)
            {
               if(!_loc14_)
               {
               }
            }
            addr49:
            if(!_loc13_)
            {
               if(!_loc14_)
               {
               }
               addr61:
               var arcDef:b2ConcaveArcDef = def as b2ConcaveArcDef;
               if(!(_loc13_ && arcDef))
               {
                  if(!(_loc13_ && def))
                  {
                     this.m_radius = arcDef.radius;
                     if(!_loc13_)
                     {
                        if(!_loc14_)
                        {
                        }
                     }
                     §§push(this);
                     §§push(this.m_radius);
                     if(_loc14_ || p1)
                     {
                        §§push(§§pop() * this.m_radius);
                     }
                     §§pop().m_radius2 = §§pop();
                     if(_loc13_)
                     {
                     }
                  }
                  addr107:
                  var p1:b2Vec2 = m_vertices[0];
                  if(_loc13_ && p1)
                  {
                  }
                  var p2:b2Vec2 = m_vertices[1];
                  if(_loc14_ || this)
                  {
                  }
                  §§push(p1.x);
                  if(!(_loc13_ && def))
                  {
                     §§push(§§pop() - p2.x);
                     if(_loc13_)
                     {
                     }
                     addr148:
                     var dx:* = §§pop();
                     if(_loc13_ && p1)
                     {
                     }
                     §§push(p1.y);
                     if(_loc14_)
                     {
                        §§push(§§pop() - p2.y);
                        if(_loc13_ && p1)
                        {
                        }
                        addr172:
                        var dy:* = §§pop();
                        if(_loc13_)
                        {
                        }
                        §§push(dx);
                        if(_loc14_)
                        {
                           §§push(dx);
                           if(_loc14_)
                           {
                              §§push(§§pop() * §§pop());
                              if(!_loc13_)
                              {
                                 §§push(dy);
                                 if(!(_loc13_ && def))
                                 {
                                    §§push(§§pop() * dy);
                                 }
                              }
                           }
                           §§push(§§pop() + §§pop());
                           if(_loc14_ || def)
                           {
                           }
                           addr204:
                           var d2:* = §§pop();
                           if(_loc13_ && this)
                           {
                           }
                           var d:* = Number(Math.sqrt(d2));
                           §§push(d2);
                           if(_loc14_ || arcDef)
                           {
                              §§push(§§pop() / 4);
                              if(!_loc14_)
                              {
                              }
                              addr265:
                              var dot:* = §§pop();
                              if(!_loc13_)
                              {
                                 §§push(this);
                                 §§push();
                                 §§push(p1.x);
                                 if(_loc14_)
                                 {
                                    §§push(p2.x);
                                    if(!(_loc13_ && this))
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(!_loc13_)
                                       {
                                          §§push(§§pop() / 2);
                                          if(!(_loc13_ && this))
                                          {
                                             §§push(§§pop() + dot * m_normals[0].x);
                                          }
                                       }
                                    }
                                    addr340:
                                    §§pop().m_arcCenter = new §§pop().b2Vec2(§§pop(),§§pop());
                                    if(_loc13_)
                                    {
                                    }
                                    §§push(this);
                                    §§push(dot);
                                    if(!(_loc13_ && p1))
                                    {
                                       §§push(§§pop() / this.m_radius);
                                    }
                                    §§pop().m_dot = §§pop();
                                    addr391:
                                    if(!(_loc13_ && p1))
                                    {
                                       §§push(this);
                                       §§push(d);
                                       if(!(_loc13_ && def))
                                       {
                                          §§push(§§pop() / 2);
                                          if(!_loc13_)
                                          {
                                             §§push(§§pop() / this.m_radius);
                                          }
                                       }
                                       §§pop().m_norm = §§pop();
                                    }
                                    §§push(this.m_radius);
                                    if(_loc14_)
                                    {
                                       §§push(b2Settings.b2_toiSlop);
                                       if(_loc14_)
                                       {
                                          §§push(§§pop() + §§pop());
                                          if(!_loc14_)
                                          {
                                          }
                                          addr418:
                                          var coreRadius2:* = §§pop();
                                          if(_loc14_ || arcDef)
                                          {
                                             if(!_loc13_)
                                             {
                                                §§push(Number(m_normals[m_vertexCount - 1].x));
                                                if(_loc14_)
                                                {
                                                   nx = §§pop();
                                                   if(!(_loc13_ && def))
                                                   {
                                                      if(_loc14_)
                                                      {
                                                         ny = Number(m_normals[m_vertexCount - 1].y);
                                                         if(_loc14_)
                                                         {
                                                            dx = Number(m_coreVertices[0].x - this.m_arcCenter.x);
                                                            if(_loc14_ || this)
                                                            {
                                                               §§push(Number(m_coreVertices[0].y - this.m_arcCenter.y));
                                                            }
                                                         }
                                                         addr565:
                                                         m_coreVertices[0].y = this.m_arcCenter.y + d * ny - d2 * nx;
                                                         nx = Number(m_normals[1].x);
                                                      }
                                                      addr493:
                                                      §§push(dx);
                                                      addr595:
                                                      if(!_loc13_)
                                                      {
                                                         §§push(nx);
                                                         if(!_loc13_)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            §§push(dy);
                                                            if(_loc14_ || this)
                                                            {
                                                               §§push(ny);
                                                               if(_loc14_ || this)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(_loc14_)
                                                                  {
                                                                     d = Number(§§pop() + §§pop());
                                                                     if(!_loc13_)
                                                                     {
                                                                        §§push(Number(Math.sqrt(coreRadius2 - d * d)));
                                                                        if(!_loc13_)
                                                                        {
                                                                           d2 = §§pop();
                                                                           if(!_loc13_)
                                                                           {
                                                                              m_coreVertices[0].x = this.m_arcCenter.x + d * nx + d2 * ny;
                                                                              if(!(_loc13_ && def))
                                                                              {
                                                                                 if(!_loc13_)
                                                                                 {
                                                                                    §§goto(addr565);
                                                                                 }
                                                                                 addr727:
                                                                              }
                                                                              addr728:
                                                                              return;
                                                                           }
                                                                           addr616:
                                                                           §§push(Number(m_coreVertices[1].y - this.m_arcCenter.y));
                                                                           if(_loc14_ || p1)
                                                                           {
                                                                              dy = §§pop();
                                                                              if(_loc14_ || p1)
                                                                              {
                                                                                 if(_loc14_ || p1)
                                                                                 {
                                                                                 }
                                                                                 addr681:
                                                                                 addr697:
                                                                                 m_coreVertices[1].x = this.m_arcCenter.x + d * nx - d2 * ny;
                                                                                 m_coreVertices[1].y = this.m_arcCenter.y + d * ny + d2 * nx;
                                                                                 if(!_loc14_)
                                                                                 {
                                                                                 }
                                                                                 §§goto(addr728);
                                                                              }
                                                                              §§push(dx);
                                                                              if(!_loc14_)
                                                                              {
                                                                              }
                                                                              addr663:
                                                                              d = §§pop();
                                                                              if(_loc14_ || arcDef)
                                                                              {
                                                                              }
                                                                           }
                                                                           §§push(nx);
                                                                           if(_loc13_)
                                                                           {
                                                                           }
                                                                        }
                                                                        addr662:
                                                                        §§goto(addr663);
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                     addr672:
                                                                     d2 = Number(Math.sqrt(coreRadius2 - d * d));
                                                                     §§goto(addr681);
                                                                  }
                                                                  §§push(§§pop() * §§pop());
                                                                  §§push(dy);
                                                                  if(_loc13_)
                                                                  {
                                                                  }
                                                               }
                                                               addr660:
                                                               §§push(§§pop() * §§pop());
                                                            }
                                                            §§goto(addr662);
                                                            §§push(§§pop() + §§pop());
                                                         }
                                                         §§goto(addr660);
                                                         §§push(ny);
                                                      }
                                                      ny = §§pop();
                                                      if(_loc14_ || def)
                                                      {
                                                         dx = Number(m_coreVertices[1].x - this.m_arcCenter.x);
                                                         if(!_loc13_)
                                                         {
                                                            §§goto(addr616);
                                                         }
                                                         §§goto(addr697);
                                                      }
                                                   }
                                                   addr671:
                                                   §§goto(addr672);
                                                }
                                                dy = §§pop();
                                                if(!(_loc13_ && arcDef))
                                                {
                                                   §§goto(addr493);
                                                }
                                                §§goto(addr671);
                                             }
                                             §§push(Number(m_normals[1].y));
                                             if(_loc14_)
                                             {
                                                §§goto(addr595);
                                             }
                                             §§goto(addr672);
                                          }
                                          m_type = b2Shape.e_concaveArcShape;
                                          §§goto(addr727);
                                       }
                                       addr414:
                                       §§push(§§pop() * §§pop());
                                       if(!_loc13_)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                       §§goto(addr418);
                                    }
                                    §§push(this.m_radius);
                                    if(_loc14_ || p1)
                                    {
                                       §§push(§§pop() + b2Settings.b2_toiSlop);
                                    }
                                    §§goto(addr414);
                                 }
                                 §§push(p1.y);
                                 §§push(p2.y);
                                 if(!(_loc13_ && arcDef))
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(!_loc13_)
                                    {
                                       §§push(§§pop() / 2);
                                       if(_loc14_ || arcDef)
                                       {
                                       }
                                       §§goto(addr340);
                                    }
                                    §§push(dot);
                                    if(_loc14_ || def)
                                    {
                                    }
                                    addr339:
                                    §§goto(addr340);
                                    §§push(§§pop() + §§pop());
                                 }
                                 §§goto(addr339);
                                 §§push(§§pop() * m_normals[0].y);
                              }
                              §§goto(addr391);
                           }
                           if(§§pop() > this.m_radius2)
                           {
                              §§push(this);
                              §§push(d2);
                              if(!(_loc13_ && def))
                              {
                                 §§push(§§pop() / 4);
                              }
                              §§pop().m_radius2 = §§pop();
                              §§push(this);
                              §§push(d);
                              if(!_loc13_)
                              {
                                 §§push(§§pop() / 2);
                              }
                              §§pop().m_radius = §§pop();
                           }
                           §§goto(addr265);
                           §§push(Number(Math.sqrt(this.m_radius2 - d2 * 0.25)));
                        }
                        §§goto(addr204);
                        §§push(Number(§§pop()));
                     }
                     §§goto(addr172);
                     §§push(Number(§§pop()));
                  }
                  §§goto(addr148);
                  §§push(Number(§§pop()));
               }
               §§goto(addr107);
            }
            super(def);
            §§goto(addr61);
         }
         if(_loc14_ || this)
         {
            §§goto(addr49);
         }
         §§goto(addr49);
      }
      
      public static function TriangleMass(massData:b2MassData, p1:b2Vec2, p2:b2Vec2, p3:b2Vec2, density:Number) : void
      {
         /*
          * Error de decompilación
          * Tiempo de espera (1 minuto) alcanzado
          * Instruction count: 651
          */
         throw new flash.errors.IllegalOperationError("No decompilado debido al tiempo de espera");
      }
      
      public static function SegmentMass(massData:b2MassData, arcCenter:b2Vec2, radius:Number, norm:b2Vec2, d:Number, density:Number) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         if(!_loc10_)
         {
         }
         var theta:* = NaN;
         if(!_loc9_)
         {
            if(_loc10_)
            {
               if(_loc9_)
               {
               }
            }
            addr34:
            if(_loc10_ || arcCenter)
            {
               §§push(Math.asin(d / radius / 2) * 2);
               if(_loc10_)
               {
                  §§push(Number(§§pop()));
                  if(!(_loc9_ && b2ConcaveArcShape))
                  {
                     theta = §§pop();
                     if(_loc10_ || b2ConcaveArcShape)
                     {
                        §§push(massData);
                        §§push(0.5);
                        if(_loc10_)
                        {
                           §§push(radius);
                           if(!(_loc9_ && massData))
                           {
                              §§push(§§pop() * §§pop());
                              if(!_loc10_)
                              {
                              }
                              addr91:
                              §§push(theta);
                              addr99:
                              if(!_loc10_)
                              {
                              }
                              addr98:
                              §§pop().mass = §§pop() * §§pop();
                              if(_loc9_ && arcCenter)
                              {
                              }
                           }
                           addr94:
                           §§push(§§pop() * §§pop());
                           if(_loc10_)
                           {
                              §§goto(addr98);
                              §§push(density);
                           }
                           §§goto(addr98);
                        }
                        §§push(radius);
                        if(!_loc9_)
                        {
                           §§push(§§pop() * §§pop());
                           if(!_loc9_)
                           {
                              §§goto(addr91);
                           }
                           §§goto(addr99);
                        }
                        §§goto(addr94);
                     }
                  }
               }
               addr139:
               var v:* = §§pop();
               if(_loc10_ || radius)
               {
                  if(_loc10_)
                  {
                     §§push(theta);
                     if(!(_loc9_ && arcCenter))
                     {
                        if(§§pop() < Number.MIN_VALUE)
                        {
                           §§push(2 / 3);
                           if(!(_loc9_ && massData))
                           {
                              §§push(§§pop() * radius);
                              if(_loc9_)
                              {
                              }
                              addr183:
                              v = §§pop();
                           }
                        }
                        §§push(massData);
                        §§push();
                        §§push(arcCenter.x);
                        if(_loc10_)
                        {
                           §§push(norm.x);
                           if(_loc10_ || arcCenter)
                           {
                              §§push(v);
                              if(!(_loc9_ && massData))
                              {
                                 §§push(§§pop() * §§pop());
                                 if(!_loc9_)
                                 {
                                    §§push(§§pop() - §§pop());
                                 }
                                 addr228:
                                 §§pop().center = new §§pop().b2Vec2(§§pop(),§§pop());
                              }
                              addr227:
                              §§goto(addr228);
                              §§push(§§pop() - §§pop());
                           }
                           addr216:
                           §§push(norm.y);
                           if(!(_loc9_ && radius))
                           {
                              §§push(§§pop() * v);
                           }
                           §§goto(addr227);
                        }
                        §§push(arcCenter.y);
                        if(_loc10_)
                        {
                           §§goto(addr216);
                        }
                        §§goto(addr228);
                     }
                     §§goto(addr183);
                     §§push(Number(§§pop()));
                  }
                  addr231:
                  §§push(massData);
                  §§push(0.5);
                  if(_loc10_ || massData)
                  {
                     §§push(massData.mass);
                     if(_loc10_)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc10_)
                        {
                           §§push(radius);
                           if(_loc10_ || arcCenter)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc10_)
                              {
                                 §§push(radius);
                                 if(_loc10_ || b2ConcaveArcShape)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(!_loc10_)
                                    {
                                    }
                                 }
                              }
                           }
                           addr298:
                           §§push(§§pop() - §§pop());
                        }
                        §§push(massData.mass);
                        if(_loc10_ || radius)
                        {
                           §§push(v);
                           if(_loc10_)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc10_ || radius)
                              {
                              }
                              §§goto(addr298);
                           }
                           addr297:
                           §§goto(addr298);
                           §§push(§§pop() * §§pop());
                        }
                     }
                     §§goto(addr297);
                     §§push(v);
                  }
                  §§pop().I = §§pop();
                  if(!_loc10_)
                  {
                  }
                  return;
               }
               §§goto(addr231);
            }
            §§push(2 / 3);
            if(!_loc9_)
            {
               §§push(d);
               if(!(_loc9_ && arcCenter))
               {
                  §§push(§§pop() * §§pop());
                  if(_loc9_ && massData)
                  {
                  }
                  addr138:
                  §§goto(addr139);
                  §§push(Number(§§pop()));
               }
               addr130:
               §§push(§§pop() / §§pop());
               if(_loc10_ || arcCenter)
               {
                  §§goto(addr138);
               }
               §§goto(addr139);
            }
            §§goto(addr130);
            §§push(theta);
         }
         §§goto(addr34);
      }
      
      override public function TestSegment(xf:b2XForm, lambda:Array, normal:b2Vec2, segment:b2Segment, maxLambda:Number) : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc7_)
         {
         }
         if(_loc6_ || normal)
         {
            if(!(_loc7_ && xf))
            {
               if(_loc7_)
               {
               }
               addr45:
               if(_loc6_ || normal)
               {
               }
               addr65:
               return false;
            }
            b2Settings.b2Assert(false);
            if(_loc6_)
            {
               §§goto(addr65);
            }
            §§goto(addr65);
         }
         §§goto(addr45);
      }
      
      override public function ComputeMass(massData:b2MassData) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc3_)
         {
         }
         if(_loc3_ || massData)
         {
            if(!_loc3_)
            {
            }
            addr50:
            super.ComputeMass(massData);
            addr56:
            if(_loc2_)
            {
            }
            return;
         }
         if(_loc3_ || this)
         {
            §§goto(addr50);
         }
         §§goto(addr56);
      }
      
      override public function TestPoint(xf:b2XForm, p:b2Vec2) : Boolean
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         if(!_loc12_)
         {
         }
         var tVec:b2Vec2 = null;
         var dot:* = NaN;
         if(_loc12_)
         {
            if(_loc12_ || tMat)
            {
            }
            if(_loc11_ && xf)
            {
            }
            addr45:
            if(_loc12_ || p)
            {
            }
            var tMat:b2Mat22 = xf.R;
            if(_loc11_ && xf)
            {
            }
            §§push(p.x);
            if(_loc12_ || this)
            {
               §§push(§§pop() - xf.position.x);
               if(!(_loc11_ && xf))
               {
                  §§push(Number(§§pop()));
               }
            }
            var tX:* = §§pop();
            if(_loc11_)
            {
            }
            §§push(p.y);
            if(!_loc11_)
            {
               §§push(§§pop() - xf.position.y);
               if(_loc11_)
               {
               }
               addr103:
               var tY:* = §§pop();
               if(_loc11_)
               {
               }
               §§push(tX);
               if(!_loc11_)
               {
                  §§push(tMat.col1.x);
                  if(_loc12_ || p)
                  {
                     §§push(§§pop() * §§pop());
                     if(_loc12_ || xf)
                     {
                     }
                     addr143:
                     var pLocalX:Number = §§pop();
                     if(_loc11_)
                     {
                     }
                     §§push(tX);
                     if(_loc12_ || xf)
                     {
                        §§push(tMat.col2.x);
                        if(_loc12_ || p)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc12_)
                           {
                              §§push(tY);
                              if(!_loc12_)
                              {
                              }
                              addr176:
                              §§push(§§pop() + §§pop());
                              addr180:
                              if(_loc11_)
                              {
                              }
                              var pLocalY:* = §§pop();
                              if(!_loc12_)
                              {
                              }
                              var i:int = 0;
                              while(true)
                              {
                                 if(i >= m_vertexCount)
                                 {
                                    addr326:
                                    §§push(pLocalX);
                                    §§push(this.m_arcCenter);
                                    if(_loc12_ || this)
                                    {
                                       §§push(§§pop().x);
                                       if(!_loc11_)
                                       {
                                          §§push(Number(§§pop() - §§pop()));
                                          if(_loc12_ || this)
                                          {
                                             tX = §§pop();
                                             if(_loc12_)
                                             {
                                                §§push(pLocalY);
                                                §§push(this.m_arcCenter);
                                             }
                                          }
                                          addr399:
                                          return §§pop() > this.m_radius2;
                                       }
                                       addr358:
                                       §§push(§§pop() - §§pop());
                                       if(!(_loc11_ && this))
                                       {
                                          tY = Number(§§pop());
                                       }
                                       §§goto(addr399);
                                    }
                                    §§push(§§pop().y);
                                    addr398:
                                    if(_loc12_)
                                    {
                                       §§goto(addr358);
                                    }
                                    §§goto(addr399);
                                    §§push(§§pop() + §§pop());
                                 }
                                 else if(!(_loc11_ && this))
                                 {
                                    if(!_loc11_)
                                    {
                                       tVec = m_vertices[i];
                                       if(!(_loc11_ && tMat))
                                       {
                                          §§push(pLocalX);
                                          if(_loc12_)
                                          {
                                             §§push(tVec.x);
                                             if(!(_loc11_ && tMat))
                                             {
                                                §§push(§§pop() - §§pop());
                                                if(!(_loc11_ && tMat))
                                                {
                                                   tX = Number(§§pop());
                                                   §§push(pLocalY);
                                                   §§push(tVec.y);
                                                   if(!(_loc11_ && tMat))
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                      if(!(_loc11_ && tMat))
                                                      {
                                                         §§push(Number(§§pop()));
                                                         if(!(_loc11_ && this))
                                                         {
                                                            tY = §§pop();
                                                            if(_loc12_ || p)
                                                            {
                                                            }
                                                         }
                                                      }
                                                      addr316:
                                                      if(§§pop() > 0)
                                                      {
                                                         break;
                                                      }
                                                      i++;
                                                      continue;
                                                   }
                                                }
                                             }
                                             addr285:
                                             §§push(§§pop() * §§pop());
                                             if(!_loc11_)
                                             {
                                                §§push(tVec.y);
                                                if(_loc12_)
                                                {
                                                   §§push(§§pop() * tY);
                                                   if(!_loc11_)
                                                   {
                                                      addr296:
                                                      §§push(§§pop() + §§pop());
                                                      addr312:
                                                      if(!(_loc11_ && xf))
                                                      {
                                                         §§push(Number(§§pop()));
                                                         if(_loc12_ || xf)
                                                         {
                                                         }
                                                      }
                                                      dot = §§pop();
                                                      §§push(dot);
                                                   }
                                                }
                                                §§goto(addr316);
                                             }
                                             §§goto(addr316);
                                          }
                                          addr282:
                                          §§push(tX);
                                          if(_loc12_)
                                          {
                                             §§goto(addr285);
                                          }
                                          §§goto(addr296);
                                       }
                                       §§push(tVec.x);
                                       if(!_loc11_)
                                       {
                                          §§goto(addr282);
                                       }
                                       §§goto(addr312);
                                    }
                                    else
                                    {
                                       §§goto(addr326);
                                    }
                                 }
                                 §§push(tX);
                                 §§push(tX);
                                 if(_loc12_ || tMat)
                                 {
                                    §§push(§§pop() * §§pop());
                                    §§push(tY);
                                    if(_loc12_)
                                    {
                                       §§push(§§pop() * tY);
                                       if(_loc12_ || xf)
                                       {
                                       }
                                    }
                                    §§goto(addr398);
                                 }
                                 §§goto(addr399);
                              }
                              return false;
                           }
                        }
                        §§goto(addr176);
                        §§push(§§pop() * tMat.col2.y);
                     }
                     §§goto(addr180);
                     §§push(Number(§§pop()));
                  }
                  addr135:
                  §§push(§§pop() + §§pop());
                  if(_loc12_ || tMat)
                  {
                     §§goto(addr143);
                  }
                  §§goto(addr143);
               }
               §§push(tY);
               if(!_loc11_)
               {
                  §§push(§§pop() * tMat.col1.y);
               }
               §§goto(addr135);
            }
            §§goto(addr103);
            §§push(Number(§§pop()));
         }
         §§goto(addr45);
      }
   }
}
