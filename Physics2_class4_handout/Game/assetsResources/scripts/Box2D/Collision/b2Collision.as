package Box2D.Collision
{
   import Box2D.Collision.Shapes.b2CircleShape;
   import Box2D.Collision.Shapes.b2PolygonShape;
   import Box2D.Common.Math.b2Mat22;
   import Box2D.Common.Math.b2Math;
   import Box2D.Common.Math.b2Vec2;
   import Box2D.Common.Math.b2XForm;
   import Box2D.Common.b2Settings;
   
   public class b2Collision
   {
      
      public static const b2_nullFeature:uint = 255;
      
      private static var b2CollidePolyTempVec:b2Vec2 = new b2Vec2();
      
      {
         var b2_nullFeature:Boolean = true;
         var b2CollidePolyTempVec:Boolean = false;
         if(b2_nullFeature || b2CollidePolyTempVec)
         {
            if(b2_nullFeature || b2_nullFeature)
            {
               b2_nullFeature = 255;
               if(b2_nullFeature || b2_nullFeature)
               {
                  if(b2_nullFeature || b2CollidePolyTempVec)
                  {
                  }
                  addr64:
                  return;
               }
            }
         }
         §§goto(addr64);
      }
      
      public function b2Collision()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && this)
         {
         }
         if(!_loc2_)
         {
            super();
            if(_loc1_ || _loc1_)
            {
            }
         }
      }
      
      public static function EdgeSeparation(poly1:b2PolygonShape, xf1:b2XForm, edge1:int, poly2:b2PolygonShape, xf2:b2XForm) : Number
      {
         var _loc26_:Boolean = true;
         var _loc27_:Boolean = false;
         if(_loc27_)
         {
         }
         var tMat:b2Mat22 = null;
         var tVec:b2Vec2 = null;
         var dot:* = NaN;
         if(_loc26_ || edge1)
         {
            if(!(_loc27_ && poly1))
            {
               if(!_loc26_)
               {
               }
               if(!_loc27_)
               {
                  if(_loc27_ && edge1)
                  {
                  }
                  addr85:
                  if(!(_loc27_ && b2Collision))
                  {
                     addr95:
                  }
                  §§push(poly1.m_vertexCount);
                  if(_loc26_ || edge1)
                  {
                     §§push(int(§§pop()));
                  }
                  var count1:* = §§pop();
                  if(_loc26_ || xf1)
                  {
                  }
                  var vertices1:Array = poly1.m_vertices;
                  if(_loc27_)
                  {
                  }
                  var normals1:Array = poly1.m_normals;
                  if(!_loc26_)
                  {
                  }
                  §§push(poly2.m_vertexCount);
                  if(!_loc27_)
                  {
                     §§push(int(§§pop()));
                  }
                  var count2:* = §§pop();
                  if(_loc27_)
                  {
                  }
                  var vertices2:Array = poly2.m_vertices;
                  if(!_loc26_)
                  {
                  }
                  tMat = xf1.R;
                  if(_loc27_)
                  {
                  }
                  tVec = normals1[edge1];
                  if(_loc27_)
                  {
                  }
                  §§push(tMat.col1.x);
                  if(!_loc27_)
                  {
                     §§push(tVec.x);
                     if(_loc26_)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc26_ || xf1)
                        {
                           §§push(tMat.col2.x);
                           if(!(_loc27_ && xf1))
                           {
                              §§push(§§pop() * tVec.y);
                           }
                        }
                        addr198:
                        §§push(Number(§§pop()));
                     }
                     §§push(§§pop() + §§pop());
                     if(!(_loc27_ && edge1))
                     {
                        §§goto(addr198);
                     }
                  }
                  var normal1WorldX:* = §§pop();
                  if(!_loc26_)
                  {
                  }
                  §§push(tMat.col1.y);
                  if(_loc26_ || b2Collision)
                  {
                     §§push(tVec.x);
                     if(_loc26_ || xf1)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc27_ && edge1)
                        {
                        }
                        addr247:
                        var normal1WorldY:* = §§pop();
                        if(!_loc26_)
                        {
                        }
                        tMat = xf2.R;
                        if(!_loc26_)
                        {
                        }
                        §§push(tMat.col1.x);
                        if(!(_loc27_ && edge1))
                        {
                           §§push(normal1WorldX);
                           if(!(_loc27_ && edge1))
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc26_)
                              {
                                 §§push(tMat.col1.y);
                                 if(!(_loc27_ && poly1))
                                 {
                                    §§push(§§pop() * normal1WorldY);
                                 }
                              }
                           }
                           §§push(§§pop() + §§pop());
                           if(!_loc27_)
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                        var normal1X:* = §§pop();
                        if(_loc26_ || xf1)
                        {
                        }
                        §§push(tMat.col2.x);
                        if(_loc26_)
                        {
                           §§push(normal1WorldX);
                           if(!_loc27_)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc27_ && edge1)
                              {
                              }
                              addr331:
                              var normal1Y:* = §§pop();
                              if(!_loc26_)
                              {
                              }
                              var index:* = 0;
                              if(_loc26_ || poly1)
                              {
                              }
                              var minDot:Number = Number.MAX_VALUE;
                              if(_loc27_ && b2Collision)
                              {
                              }
                              var i:int = 0;
                              while(true)
                              {
                                 if(i >= count2)
                                 {
                                    if(!(_loc27_ && b2Collision))
                                    {
                                       break;
                                    }
                                    addr465:
                                    tVec = vertices1[edge1];
                                    if(_loc26_ || poly1)
                                    {
                                    }
                                    tMat = xf1.R;
                                    if(_loc26_ || xf1)
                                    {
                                    }
                                    §§push(xf1.position.x);
                                    if(_loc26_)
                                    {
                                       §§push(tMat.col1.x);
                                       if(!(_loc27_ && xf1))
                                       {
                                          §§push(tVec.x);
                                          if(_loc26_ || poly1)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(!_loc26_)
                                             {
                                             }
                                             addr526:
                                             §§push(§§pop() + §§pop());
                                             addr530:
                                             if(!_loc26_)
                                             {
                                             }
                                             var v1X:* = §§pop();
                                             if(_loc27_)
                                             {
                                             }
                                             §§push(xf1.position.y);
                                             if(!(_loc27_ && edge1))
                                             {
                                                §§push(tMat.col1.y);
                                                if(_loc26_ || edge1)
                                                {
                                                   §§push(tVec.x);
                                                   if(!_loc27_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc26_)
                                                      {
                                                         §§push(tMat.col2.y);
                                                         if(_loc26_ || edge1)
                                                         {
                                                         }
                                                         addr574:
                                                         §§push(§§pop() + §§pop());
                                                      }
                                                   }
                                                   §§goto(addr574);
                                                   §§push(§§pop() * tVec.y);
                                                }
                                                §§push(§§pop() + §§pop());
                                                if(_loc26_ || xf1)
                                                {
                                                }
                                                addr584:
                                                var v1Y:* = §§pop();
                                                if(_loc27_ && xf1)
                                                {
                                                }
                                                tVec = vertices2[index];
                                                if(!_loc26_)
                                                {
                                                }
                                                tMat = xf2.R;
                                                if(_loc26_ || edge1)
                                                {
                                                }
                                                §§push(xf2.position.x);
                                                if(!(_loc27_ && edge1))
                                                {
                                                   §§push(tMat.col1.x);
                                                   if(_loc26_ || poly1)
                                                   {
                                                      §§push(tVec.x);
                                                      if(_loc26_)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc26_ || b2Collision)
                                                         {
                                                            §§push(tMat.col2.x);
                                                            if(_loc26_)
                                                            {
                                                               §§push(§§pop() * tVec.y);
                                                            }
                                                         }
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                   if(_loc26_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                   }
                                                }
                                                var v2X:* = §§pop();
                                                if(_loc26_ || poly1)
                                                {
                                                }
                                                §§push(xf2.position.y);
                                                if(_loc26_)
                                                {
                                                   §§push(tMat.col1.y);
                                                   if(!_loc27_)
                                                   {
                                                      §§push(tVec.x);
                                                      if(!_loc27_)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc26_ || edge1)
                                                         {
                                                            §§push(tMat.col2.y);
                                                            if(!_loc26_)
                                                            {
                                                            }
                                                            addr697:
                                                            §§push(§§pop() + §§pop());
                                                         }
                                                      }
                                                      §§goto(addr697);
                                                      §§push(§§pop() * tVec.y);
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                   if(_loc26_ || b2Collision)
                                                   {
                                                      §§push(Number(§§pop()));
                                                   }
                                                }
                                                var v2Y:* = §§pop();
                                                if(_loc26_)
                                                {
                                                   if(_loc26_)
                                                   {
                                                      §§push(v2X);
                                                      §§push(v1X);
                                                      if(_loc26_ || xf1)
                                                      {
                                                         §§push(§§pop() - §§pop());
                                                         if(!(_loc27_ && xf1))
                                                         {
                                                            §§push(Number(§§pop()));
                                                            if(_loc26_ || xf1)
                                                            {
                                                               v2X = §§pop();
                                                               if(_loc27_)
                                                               {
                                                               }
                                                            }
                                                            addr754:
                                                            v2Y = Number(§§pop());
                                                            addr764:
                                                            if(_loc27_ && edge1)
                                                            {
                                                            }
                                                            §§push(v2X);
                                                            §§push(normal1WorldX);
                                                            if(_loc26_)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(!(_loc27_ && xf1))
                                                               {
                                                                  §§push(v2Y);
                                                                  if(!_loc26_)
                                                                  {
                                                                  }
                                                                  addr781:
                                                                  §§push(§§pop() + §§pop());
                                                               }
                                                               var separation:Number = §§pop();
                                                               if(_loc27_ && xf1)
                                                               {
                                                               }
                                                               return separation;
                                                            }
                                                         }
                                                         addr750:
                                                         §§push(v1Y);
                                                         if(_loc26_)
                                                         {
                                                            §§goto(addr754);
                                                            §§push(§§pop() - §§pop());
                                                         }
                                                         §§goto(addr781);
                                                      }
                                                      §§goto(addr781);
                                                      §§push(§§pop() * normal1WorldY);
                                                   }
                                                   if(!(_loc27_ && edge1))
                                                   {
                                                      §§goto(addr750);
                                                      §§push(v2Y);
                                                   }
                                                   §§goto(addr764);
                                                }
                                                §§goto(addr764);
                                             }
                                             §§goto(addr584);
                                             §§push(Number(§§pop()));
                                          }
                                          addr525:
                                          §§goto(addr526);
                                          §§push(§§pop() + §§pop());
                                       }
                                       §§push(tMat.col2.x);
                                       if(!_loc27_)
                                       {
                                          §§push(§§pop() * tVec.y);
                                       }
                                       §§goto(addr525);
                                    }
                                    §§goto(addr530);
                                    §§push(Number(§§pop()));
                                 }
                                 else
                                 {
                                    if(!(_loc27_ && b2Collision))
                                    {
                                       if(!_loc26_)
                                       {
                                          break;
                                       }
                                    }
                                    tVec = vertices2[i];
                                    if(_loc26_)
                                    {
                                       if(_loc26_)
                                       {
                                          §§push(tVec.x);
                                          §§push(normal1X);
                                          if(_loc26_ || b2Collision)
                                          {
                                             §§push(§§pop() * §§pop());
                                             §§push(tVec.y);
                                             if(_loc26_)
                                             {
                                                §§push(§§pop() * normal1Y);
                                                if(_loc27_)
                                                {
                                                }
                                             }
                                             §§push(Number(§§pop() + §§pop()));
                                             if(_loc26_)
                                             {
                                                dot = §§pop();
                                                if(_loc26_ || xf1)
                                                {
                                                   §§push(dot);
                                                }
                                                addr450:
                                                if(_loc26_)
                                                {
                                                   addr453:
                                                   i++;
                                                }
                                                continue;
                                             }
                                             §§push(minDot);
                                          }
                                          if(§§pop() < §§pop())
                                          {
                                             if(_loc27_)
                                             {
                                             }
                                          }
                                          §§goto(addr453);
                                       }
                                       minDot = dot;
                                       if(!(_loc27_ && b2Collision))
                                       {
                                          if(_loc26_ || edge1)
                                          {
                                          }
                                          §§goto(addr453);
                                       }
                                       else
                                       {
                                          continue;
                                       }
                                    }
                                    §§push(i);
                                    if(_loc26_)
                                    {
                                       §§push(int(§§pop()));
                                    }
                                    index = §§pop();
                                    §§goto(addr450);
                                 }
                              }
                              §§goto(addr465);
                           }
                           addr327:
                           §§push(§§pop() + §§pop());
                           if(_loc26_)
                           {
                              §§push(Number(§§pop()));
                           }
                           §§goto(addr331);
                        }
                        §§push(tMat.col2.y);
                        if(_loc26_)
                        {
                           §§push(§§pop() * normal1WorldY);
                        }
                        §§goto(addr327);
                     }
                     addr243:
                     §§push(§§pop() + §§pop());
                     if(!_loc27_)
                     {
                        §§push(Number(§§pop()));
                     }
                     §§goto(addr247);
                  }
                  §§push(tMat.col2.y);
                  if(!(_loc27_ && xf1))
                  {
                     §§push(§§pop() * tVec.y);
                  }
                  §§goto(addr243);
               }
               addr75:
               if(!(_loc27_ && edge1))
               {
                  §§goto(addr85);
               }
               §§goto(addr85);
            }
            if(_loc26_ || xf1)
            {
            }
            §§goto(addr95);
         }
         §§goto(addr75);
      }
      
      public static function b2TestOverlap(a:b2AABB, b:b2AABB) : Boolean
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         if(_loc10_ || b2Collision)
         {
         }
         if(!_loc9_)
         {
            if(!_loc10_)
            {
            }
         }
         if(_loc9_ && a)
         {
         }
         if(_loc10_)
         {
            if(!_loc10_)
            {
            }
            addr47:
            var t1:b2Vec2 = b.lowerBound;
            if(_loc9_ && b)
            {
            }
            var t2:b2Vec2 = a.upperBound;
            if(_loc9_ && b2Collision)
            {
            }
            §§push(t1.x);
            if(!_loc9_)
            {
               §§push(§§pop() - t2.x);
               if(_loc10_ || a)
               {
                  §§push(Number(§§pop()));
               }
            }
            var d1X:* = §§pop();
            if(_loc9_ && a)
            {
            }
            §§push(t1.y);
            if(!_loc9_)
            {
               §§push(§§pop() - t2.y);
               if(_loc10_ || t1)
               {
                  §§push(Number(§§pop()));
               }
            }
            var d1Y:* = §§pop();
            if(_loc10_ || b2Collision)
            {
            }
            t1 = a.lowerBound;
            if(_loc10_ || b)
            {
            }
            t2 = b.upperBound;
            if(_loc9_)
            {
            }
            §§push(t1.x);
            if(!(_loc9_ && t1))
            {
               §§push(§§pop() - t2.x);
               if(_loc10_ || b2Collision)
               {
               }
               addr165:
               var d2X:* = §§pop();
               if(_loc9_ && b2Collision)
               {
               }
               §§push(t1.y);
               if(_loc10_)
               {
                  §§push(§§pop() - t2.y);
                  if(!(_loc9_ && b))
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var d2Y:* = §§pop();
               if(!_loc9_)
               {
                  §§push(d1X);
                  if(_loc10_ || t1)
                  {
                     §§push(0);
                     if(_loc10_ || b)
                     {
                        §§push(§§pop() > §§pop());
                        if(_loc10_)
                        {
                           §§push(§§pop());
                           if(_loc10_)
                           {
                              if(!§§pop())
                              {
                                 if(!_loc9_)
                                 {
                                    §§pop();
                                    §§push(d1Y);
                                    if(_loc9_)
                                    {
                                    }
                                    addr257:
                                    addr278:
                                    if(§§pop() <= 0)
                                    {
                                       §§push(true);
                                    }
                                    return §§pop();
                                 }
                              }
                              addr231:
                              if(§§pop())
                              {
                                 if(!(_loc9_ && a))
                                 {
                                    return false;
                                 }
                                 addr255:
                                 §§push(d2Y);
                              }
                              else
                              {
                                 §§push(d2X);
                                 if(!_loc9_)
                                 {
                                    §§push(0);
                                    if(!_loc9_)
                                    {
                                       addr251:
                                       §§push(§§pop() > §§pop());
                                       §§push(§§pop() > §§pop());
                                    }
                                    §§goto(addr257);
                                 }
                              }
                              §§goto(addr257);
                           }
                           if(§§pop())
                           {
                           }
                           §§goto(addr257);
                        }
                        §§pop();
                        §§goto(addr255);
                     }
                     addr230:
                     §§goto(addr231);
                     §§push(§§pop() > §§pop());
                  }
                  §§push(0);
                  if(_loc10_ || a)
                  {
                     §§goto(addr230);
                  }
                  §§goto(addr251);
               }
               §§push(false);
               if(!(_loc9_ && a))
               {
                  return §§pop();
               }
               §§goto(addr278);
            }
            §§goto(addr165);
            §§push(Number(§§pop()));
         }
         §§goto(addr47);
      }
      
      public static function FindIncidentEdge(c:Array, poly1:b2PolygonShape, xf1:b2XForm, edge1:int, poly2:b2PolygonShape, xf2:b2XForm) : void
      {
         var _loc24_:Boolean = true;
         var _loc25_:Boolean = false;
         if(!_loc24_)
         {
         }
         var tMat:b2Mat22 = null;
         var tVec:b2Vec2 = null;
         var tClip:ClipVertex = null;
         var dot:* = NaN;
         if(_loc24_ || xf1)
         {
         }
         if(_loc24_)
         {
            if(_loc24_)
            {
               if(!_loc24_)
               {
               }
               addr75:
               §§push(poly1.m_vertexCount);
               if(!_loc25_)
               {
                  §§push(int(§§pop()));
               }
               var count1:* = §§pop();
               if(_loc24_ || b2Collision)
               {
               }
               var normals1:Array = poly1.m_normals;
               if(_loc24_ || c)
               {
               }
               §§push(poly2.m_vertexCount);
               if(_loc24_)
               {
                  §§push(int(§§pop()));
               }
               var count2:* = §§pop();
               if(!_loc24_)
               {
               }
               var vertices2:Array = poly2.m_vertices;
               if(_loc25_ && c)
               {
               }
               var normals2:Array = poly2.m_normals;
               if(!_loc24_)
               {
               }
               tMat = xf1.R;
               if(_loc25_ && b2Collision)
               {
               }
               tVec = normals1[edge1];
               if(_loc25_ && poly1)
               {
               }
               §§push(tMat.col1.x);
               if(_loc24_ || poly1)
               {
                  §§push(tVec.x);
                  if(!(_loc25_ && b2Collision))
                  {
                     §§push(§§pop() * §§pop());
                     if(_loc24_ || xf1)
                     {
                        §§push(tMat.col2.x);
                        if(_loc25_)
                        {
                        }
                        addr189:
                        §§push(§§pop() + §§pop());
                        if(_loc24_)
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                  }
                  §§goto(addr189);
                  §§push(§§pop() * tVec.y);
               }
               var normal1X:* = §§pop();
               if(_loc25_)
               {
               }
               §§push(tMat.col1.y);
               if(_loc24_)
               {
                  §§push(tVec.x);
                  if(!_loc25_)
                  {
                     §§push(§§pop() * §§pop());
                     if(_loc25_)
                     {
                     }
                     addr226:
                     var normal1Y:* = §§pop();
                     if(_loc25_ && b2Collision)
                     {
                     }
                     tMat = xf2.R;
                     if(_loc25_ && b2Collision)
                     {
                     }
                     §§push(tMat.col1.x);
                     if(!_loc25_)
                     {
                        §§push(normal1X);
                        if(_loc24_ || c)
                        {
                           §§push(§§pop() * §§pop());
                           if(!_loc25_)
                           {
                              §§push(tMat.col1.y);
                              if(!_loc24_)
                              {
                              }
                              addr270:
                              §§push(§§pop() + §§pop());
                              if(_loc25_ && c)
                              {
                              }
                           }
                           §§push(Number(§§pop()));
                        }
                        §§goto(addr270);
                        §§push(§§pop() * normal1Y);
                     }
                     var tX:* = §§pop();
                     if(_loc24_ || b2Collision)
                     {
                        if(!(_loc25_ && b2Collision))
                        {
                           §§push(tMat.col2.x);
                           if(!_loc25_)
                           {
                              §§push(normal1X);
                              if(!(_loc25_ && b2Collision))
                              {
                                 §§push(§§pop() * §§pop());
                                 if(!(_loc25_ && xf1))
                                 {
                                    §§push(tMat.col2.y);
                                    if(_loc24_ || c)
                                    {
                                    }
                                    addr328:
                                    §§push(§§pop() + §§pop());
                                    if(!(_loc25_ && xf1))
                                    {
                                       §§push(Number(§§pop()));
                                       if(_loc25_)
                                       {
                                       }
                                    }
                                 }
                                 normal1Y = §§pop();
                                 if(_loc24_ || b2Collision)
                                 {
                                 }
                                 addr350:
                                 §§push(tX);
                                 if(_loc24_)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                              }
                              §§goto(addr328);
                              §§push(§§pop() * normal1Y);
                           }
                           normal1X = §§pop();
                           if(!_loc24_)
                           {
                           }
                        }
                        addr358:
                        var index:* = 0;
                        if(_loc25_)
                        {
                        }
                        var minDot:* = Number(Number.MAX_VALUE);
                        if(_loc25_ && poly1)
                        {
                        }
                        var i:int = 0;
                        while(true)
                        {
                           §§push(i);
                           if(_loc24_ || b2Collision)
                           {
                              if(§§pop() >= count2)
                              {
                                 if(!_loc24_)
                                 {
                                 }
                                 addr469:
                                 §§push(index);
                                 if(_loc24_)
                                 {
                                    §§push(int(§§pop()));
                                    break;
                                 }
                                 break;
                              }
                              if(_loc24_ || poly1)
                              {
                                 if(_loc24_)
                                 {
                                    tVec = normals2[i];
                                    §§push(normal1X);
                                    §§push(tVec.x);
                                    if(!_loc25_)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(_loc24_)
                                       {
                                          §§push(normal1Y);
                                          if(_loc24_ || b2Collision)
                                          {
                                          }
                                          addr432:
                                          if(§§pop() < §§pop())
                                          {
                                             if(_loc24_)
                                             {
                                                §§push(dot);
                                                if(_loc24_)
                                                {
                                                   §§push(Number(§§pop()));
                                                }
                                             }
                                             else
                                             {
                                                continue;
                                             }
                                          }
                                          addr455:
                                          i++;
                                          continue;
                                       }
                                       minDot = §§pop();
                                       addr441:
                                       §§push(i);
                                       if(_loc24_ || xf1)
                                       {
                                          §§push(int(§§pop()));
                                       }
                                       index = §§pop();
                                       if(_loc24_)
                                       {
                                          §§goto(addr455);
                                       }
                                       else
                                       {
                                          continue;
                                       }
                                    }
                                    §§push(§§pop() * tVec.y);
                                    if(!_loc25_)
                                    {
                                       §§push(Number(§§pop() + §§pop()));
                                       if(!_loc25_)
                                       {
                                          dot = §§pop();
                                          if(!(_loc25_ && xf1))
                                          {
                                             §§push(dot);
                                          }
                                          §§goto(addr441);
                                       }
                                       §§push(minDot);
                                    }
                                    §§goto(addr432);
                                 }
                              }
                              §§goto(addr469);
                              §§goto(addr469);
                           }
                           break;
                        }
                        var i1:* = §§pop();
                        if(!_loc25_)
                        {
                           if(_loc24_)
                           {
                              §§push(i1);
                              if(!_loc25_)
                              {
                                 §§push(1);
                                 if(!_loc25_)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(!(_loc25_ && xf1))
                                    {
                                       if(§§pop() >= count2)
                                       {
                                          §§push(0);
                                          if(!_loc25_)
                                          {
                                             addr515:
                                             §§push(int(§§pop()));
                                          }
                                       }
                                    }
                                    addr508:
                                    §§push(int(§§pop()));
                                    if(!_loc24_)
                                    {
                                    }
                                    §§goto(addr515);
                                 }
                                 addr507:
                                 §§goto(addr508);
                                 §§push(§§pop() + §§pop());
                              }
                              var i2:* = §§pop();
                              if(_loc25_)
                              {
                              }
                              tClip = c[0];
                              if(!_loc24_)
                              {
                              }
                              tVec = vertices2[i1];
                              if(!_loc24_)
                              {
                              }
                              tMat = xf2.R;
                              §§push(tClip.v);
                              if(!_loc25_)
                              {
                                 §§push(xf2.position);
                                 if(!(_loc25_ && xf1))
                                 {
                                    §§push(§§pop().x);
                                    if(_loc24_ || c)
                                    {
                                       §§push(tMat.col1);
                                       if(!_loc25_)
                                       {
                                          §§push(§§pop().x);
                                          if(!(_loc25_ && b2Collision))
                                          {
                                             §§push(tVec.x);
                                             if(!(_loc25_ && xf1))
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(_loc25_ && b2Collision)
                                                {
                                                }
                                                addr676:
                                                §§push(§§pop() + §§pop());
                                             }
                                             addr674:
                                             §§goto(addr676);
                                             §§push(§§pop() + §§pop() * tVec.y);
                                          }
                                          §§push(tMat.col2);
                                          if(!(_loc25_ && b2Collision))
                                          {
                                             §§push(§§pop().x);
                                             if(!(_loc25_ && poly1))
                                             {
                                                §§push(tVec.y);
                                                if(!_loc25_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(!_loc24_)
                                                   {
                                                   }
                                                   addr659:
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc24_)
                                                   {
                                                      addr662:
                                                      §§push(tMat.col2);
                                                   }
                                                   §§goto(addr676);
                                                }
                                                §§goto(addr674);
                                             }
                                             §§push(§§pop() + §§pop());
                                             if(_loc24_ || c)
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(_loc24_ || xf1)
                                                {
                                                   §§pop().x = §§pop();
                                                   §§push(tClip.v);
                                                }
                                                addr645:
                                                §§push(tMat.col1);
                                             }
                                             §§goto(addr662);
                                          }
                                          §§push(§§pop().y);
                                          if(!(_loc25_ && b2Collision))
                                          {
                                             §§goto(addr674);
                                          }
                                          §§goto(addr674);
                                       }
                                       §§push(§§pop().y);
                                       if(!_loc25_)
                                       {
                                          §§push(tVec.x);
                                          if(!(_loc25_ && xf1))
                                          {
                                             §§goto(addr659);
                                          }
                                          §§goto(addr674);
                                       }
                                       §§goto(addr676);
                                    }
                                    addr677:
                                    §§pop().y = §§pop();
                                    §§push(tClip.id);
                                    if(!(_loc25_ && xf1))
                                    {
                                       §§push(§§pop().features);
                                       if(!(_loc25_ && b2Collision))
                                       {
                                          §§push(edge1);
                                          if(_loc24_ || c)
                                          {
                                             §§pop().referenceEdge = §§pop();
                                             if(_loc24_ || c)
                                             {
                                                §§push(tClip.id);
                                                if(_loc25_)
                                                {
                                                }
                                                addr737:
                                                §§push(§§pop().features);
                                             }
                                             addr734:
                                             §§goto(addr737);
                                             §§push(tClip.id);
                                          }
                                          addr733:
                                          §§pop().incidentEdge = §§pop();
                                          §§goto(addr734);
                                       }
                                       addr739:
                                       §§pop().incidentVertex = 0;
                                       tClip = c[1];
                                       if(!_loc24_)
                                       {
                                       }
                                       tVec = vertices2[i2];
                                       if(_loc25_ && b2Collision)
                                       {
                                       }
                                       tMat = xf2.R;
                                       §§push(tClip.v);
                                       if(!_loc25_)
                                       {
                                          §§push(xf2.position);
                                          if(!(_loc25_ && xf1))
                                          {
                                             §§push(§§pop().x);
                                             if(_loc24_ || xf1)
                                             {
                                                §§push(tMat.col1);
                                                if(_loc24_)
                                                {
                                                   §§push(§§pop().x);
                                                   if(!_loc25_)
                                                   {
                                                      §§push(tVec.x);
                                                      if(_loc24_ || b2Collision)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc24_)
                                                         {
                                                            §§push(tMat.col2);
                                                            if(!(_loc25_ && b2Collision))
                                                            {
                                                               §§push(§§pop().x);
                                                               if(_loc24_)
                                                               {
                                                                  §§push(tVec.y);
                                                                  if(_loc24_ || c)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(_loc25_ && xf1)
                                                                     {
                                                                     }
                                                                  }
                                                                  addr885:
                                                                  §§push(§§pop() * §§pop());
                                                               }
                                                               §§push(§§pop() + §§pop());
                                                               if(_loc25_)
                                                               {
                                                               }
                                                               addr871:
                                                               §§push(tVec.x);
                                                               if(!_loc25_)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(_loc24_)
                                                                  {
                                                                     §§push(tMat.col2);
                                                                  }
                                                               }
                                                               addr883:
                                                               §§goto(addr885);
                                                               §§push(tVec.y);
                                                            }
                                                            §§push(§§pop().y);
                                                            if(_loc24_)
                                                            {
                                                               §§goto(addr883);
                                                            }
                                                         }
                                                         addr887:
                                                         §§pop().y = §§pop() + §§pop();
                                                         if(_loc24_ || c)
                                                         {
                                                            §§push(tClip.id);
                                                            if(!(_loc25_ && xf1))
                                                            {
                                                               §§push(§§pop().features);
                                                               if(!_loc25_)
                                                               {
                                                                  §§push(edge1);
                                                                  if(_loc24_ || poly1)
                                                                  {
                                                                     §§pop().referenceEdge = §§pop();
                                                                     §§push(tClip.id);
                                                                     if(!_loc25_)
                                                                     {
                                                                        §§push(§§pop().features);
                                                                        if(!_loc25_)
                                                                        {
                                                                           §§push(i2);
                                                                           if(_loc25_ && xf1)
                                                                           {
                                                                           }
                                                                           addr954:
                                                                           §§pop().incidentVertex = §§pop();
                                                                        }
                                                                     }
                                                                  }
                                                                  §§pop().incidentEdge = §§pop();
                                                                  if(_loc24_ || b2Collision)
                                                                  {
                                                                     §§push(tClip.id);
                                                                  }
                                                                  addr956:
                                                                  return;
                                                               }
                                                               addr953:
                                                               §§goto(addr954);
                                                               §§push(1);
                                                            }
                                                            §§goto(addr953);
                                                            §§push(§§pop().features);
                                                         }
                                                         §§goto(addr956);
                                                      }
                                                      §§goto(addr887);
                                                      §§push(§§pop() + §§pop());
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                   if(_loc25_ && poly1)
                                                   {
                                                   }
                                                   addr861:
                                                   §§push(tMat.col1);
                                                }
                                                §§push(§§pop().y);
                                                if(_loc24_ || poly1)
                                                {
                                                   §§goto(addr871);
                                                }
                                                §§goto(addr887);
                                             }
                                             §§pop().x = §§pop();
                                             §§push(tClip.v);
                                          }
                                          addr853:
                                          §§push(§§pop().y);
                                          if(_loc24_ || poly1)
                                          {
                                             §§goto(addr861);
                                          }
                                          §§goto(addr887);
                                       }
                                       §§goto(addr853);
                                       §§push(xf2.position);
                                    }
                                    §§push(§§pop().features);
                                    if(!(_loc25_ && xf1))
                                    {
                                       §§push(i1);
                                       if(_loc24_ || c)
                                       {
                                          §§goto(addr733);
                                       }
                                       §§goto(addr739);
                                    }
                                    §§goto(addr739);
                                 }
                                 addr637:
                                 §§push(§§pop().y);
                                 if(_loc24_ || b2Collision)
                                 {
                                    §§goto(addr645);
                                 }
                                 §§goto(addr677);
                              }
                              §§goto(addr637);
                              §§push(xf2.position);
                           }
                        }
                        §§push(i1);
                        if(!_loc25_)
                        {
                           §§goto(addr507);
                           §§push(1);
                        }
                        §§goto(addr515);
                     }
                     if(_loc24_)
                     {
                        §§goto(addr350);
                     }
                     §§goto(addr358);
                  }
                  addr219:
                  §§push(§§pop() + §§pop() * tVec.y);
                  if(_loc24_)
                  {
                     §§push(Number(§§pop()));
                  }
                  §§goto(addr226);
               }
               §§push(tMat.col2.y);
               if(!(_loc25_ && c))
               {
                  §§goto(addr219);
               }
               §§goto(addr219);
            }
            addr56:
            if(_loc24_ || c)
            {
            }
            if(!_loc24_)
            {
            }
            §§goto(addr75);
         }
         if(!_loc25_)
         {
            §§goto(addr56);
         }
         §§goto(addr56);
      }
      
      public static function b2CollidePolygons(manifold:b2Manifold, polyA:b2PolygonShape, xfA:b2XForm, polyB:b2PolygonShape, xfB:b2XForm) : void
      {
         /*
          * Error de decompilación
          * Tiempo de espera (1 minuto) alcanzado
          * Instruction count: 1006
          */
         throw new flash.errors.IllegalOperationError("No decompilado debido al tiempo de espera");
      }
      
      public static function FindMaxSeparation(edgeIndex:Array, poly1:b2PolygonShape, xf1:b2XForm, poly2:b2PolygonShape, xf2:b2XForm) : Number
      {
         var _loc26_:Boolean = false;
         var _loc27_:Boolean = true;
         if(_loc27_ || xf1)
         {
         }
         var tVec:b2Vec2 = null;
         var tMat:b2Mat22 = null;
         var bestEdge:* = 0;
         var bestSeparation:* = NaN;
         var increment:* = 0;
         var dot:Number = NaN;
         if(!(_loc26_ && edgeIndex))
         {
            if(!_loc26_)
            {
               if(_loc26_ && b2Collision)
               {
               }
               addr80:
               addr91:
               if(_loc27_ || xf1)
               {
               }
               §§push(poly1.m_vertexCount);
               if(_loc27_)
               {
                  §§push(int(§§pop()));
               }
               var count1:* = §§pop();
               if(!_loc27_)
               {
               }
               var normals1:Array = poly1.m_normals;
               if(!_loc27_)
               {
               }
               tMat = xf2.R;
               if(_loc26_)
               {
               }
               tVec = poly2.m_centroid;
               if(_loc26_ && poly1)
               {
               }
               §§push(xf2.position.x);
               if(_loc27_)
               {
                  §§push(tMat.col1.x);
                  if(!(_loc26_ && poly1))
                  {
                     §§push(tVec.x);
                     if(_loc27_ || xf1)
                     {
                        §§push(§§pop() * §§pop());
                        if(!_loc26_)
                        {
                           §§push(tMat.col2.x);
                           if(!_loc26_)
                           {
                              §§push(§§pop() * tVec.y);
                           }
                        }
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§push(§§pop() + §§pop());
                  if(!(_loc26_ && xf1))
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var dX:* = §§pop();
               if(!_loc27_)
               {
               }
               §§push(xf2.position.y);
               if(!(_loc26_ && b2Collision))
               {
                  §§push(tMat.col1.y);
                  if(_loc27_ || edgeIndex)
                  {
                     §§push(tVec.x);
                     if(!_loc26_)
                     {
                        §§push(§§pop() * §§pop());
                        if(!(_loc26_ && poly1))
                        {
                           §§push(tMat.col2.y);
                           if(_loc27_ || b2Collision)
                           {
                           }
                           addr220:
                           §§push(§§pop() + §§pop());
                        }
                     }
                     §§goto(addr220);
                     §§push(§§pop() * tVec.y);
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc27_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var dY:* = §§pop();
               if(_loc27_ || poly1)
               {
               }
               tMat = xf1.R;
               if(!_loc27_)
               {
               }
               tVec = poly1.m_centroid;
               if(_loc27_ || poly1)
               {
                  if(!_loc26_)
                  {
                     §§push(dX);
                     §§push(xf1.position);
                     if(!(_loc26_ && xf1))
                     {
                        §§push(§§pop().x);
                        if(_loc27_)
                        {
                           §§push(tMat.col1);
                           if(!(_loc26_ && poly1))
                           {
                              §§push(§§pop().x);
                              if(!_loc26_)
                              {
                                 §§push(tVec.x);
                                 if(!(_loc26_ && b2Collision))
                                 {
                                    §§push(§§pop() * §§pop());
                                    §§push(tMat.col2);
                                    if(_loc27_)
                                    {
                                       §§push(§§pop().x);
                                       if(!(_loc26_ && b2Collision))
                                       {
                                          §§push(tVec.y);
                                          if(_loc27_ || edgeIndex)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(_loc26_ && b2Collision)
                                             {
                                             }
                                          }
                                          addr372:
                                          §§push(§§pop() * §§pop());
                                       }
                                       addr373:
                                       §§push(§§pop() - (§§pop() + (§§pop() + §§pop())));
                                       addr408:
                                       if(!(_loc26_ && b2Collision))
                                       {
                                          dY = Number(§§pop());
                                          if(!(_loc26_ && edgeIndex))
                                          {
                                             addr392:
                                          }
                                       }
                                       var dLocal1X:Number = §§pop() * xf1.R.col1.x + dY * xf1.R.col1.y;
                                       if(!_loc27_)
                                       {
                                       }
                                       §§push(dX);
                                       if(!_loc26_)
                                       {
                                          §§push(xf1.R.col2.x);
                                          if(_loc27_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(_loc26_ && edgeIndex)
                                             {
                                             }
                                             addr447:
                                             var dLocal1Y:* = §§pop();
                                             if(!_loc27_)
                                             {
                                             }
                                             var edge:* = 0;
                                             if(_loc27_ || xf1)
                                             {
                                             }
                                             §§push(-Number.MAX_VALUE);
                                             if(!_loc26_)
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                             var maxDot:* = §§pop();
                                             if(_loc26_ && xf1)
                                             {
                                             }
                                             var i:int = 0;
                                             while(true)
                                             {
                                                if(i >= count1)
                                                {
                                                   if(!(_loc26_ && poly1))
                                                   {
                                                      break;
                                                   }
                                                }
                                                else if(_loc27_ || poly1)
                                                {
                                                   if(_loc27_ || poly1)
                                                   {
                                                      tVec = normals1[i];
                                                      §§push(tVec.x);
                                                      if(!(_loc26_ && b2Collision))
                                                      {
                                                         §§push(dLocal1X);
                                                         if(_loc27_)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(!(_loc26_ && poly1))
                                                            {
                                                               §§push(tVec.y);
                                                               if(!(_loc26_ && edgeIndex))
                                                               {
                                                                  §§push(§§pop() * dLocal1Y);
                                                                  if(!_loc26_)
                                                                  {
                                                                     dot = §§pop() + §§pop();
                                                                     §§push(dot);
                                                                     if(_loc27_)
                                                                     {
                                                                        §§push(maxDot);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            addr554:
                                                            maxDot = §§pop();
                                                            §§push(i);
                                                            if(!_loc26_)
                                                            {
                                                               §§push(int(§§pop()));
                                                            }
                                                            edge = §§pop();
                                                            if(_loc27_)
                                                            {
                                                               addr564:
                                                               i++;
                                                            }
                                                            continue;
                                                         }
                                                         if(§§pop() > §§pop())
                                                         {
                                                            §§push(dot);
                                                            if(_loc26_ && b2Collision)
                                                            {
                                                            }
                                                            §§goto(addr554);
                                                         }
                                                         §§goto(addr564);
                                                      }
                                                      §§goto(addr554);
                                                      §§push(Number(§§pop()));
                                                   }
                                                }
                                                else
                                                {
                                                   break;
                                                }
                                                addr583:
                                                §§push(EdgeSeparation(poly1,xf1,edge,poly2,xf2));
                                                if(!_loc26_)
                                                {
                                                   §§push(Number(§§pop()));
                                                }
                                                var s:* = §§pop();
                                                if(_loc27_ || poly1)
                                                {
                                                   if(_loc26_ && poly1)
                                                   {
                                                   }
                                                   addr658:
                                                   §§push(edge);
                                                   if(!(_loc26_ && poly1))
                                                   {
                                                      §§push(§§pop() - 1);
                                                      if(_loc27_)
                                                      {
                                                         addr669:
                                                         §§push(int(§§pop()));
                                                         if(!_loc27_)
                                                         {
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr677:
                                                         §§push(int(§§pop()));
                                                         if(!(_loc26_ && b2Collision))
                                                         {
                                                            addr685:
                                                            §§push(int(§§pop()));
                                                         }
                                                      }
                                                      addr686:
                                                      var prevEdge:* = §§pop();
                                                      if(!_loc27_)
                                                      {
                                                      }
                                                      §§push(EdgeSeparation(poly1,xf1,prevEdge,poly2,xf2));
                                                      if(_loc27_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                      }
                                                      var sPrev:* = §§pop();
                                                      if(_loc27_ || b2Collision)
                                                      {
                                                      }
                                                      §§push(sPrev);
                                                      if(!(_loc26_ && xf1))
                                                      {
                                                         if(§§pop() > 0)
                                                         {
                                                            if(!(_loc26_ && edgeIndex))
                                                            {
                                                               if(_loc26_ && b2Collision)
                                                               {
                                                               }
                                                               addr758:
                                                               §§push(edge);
                                                               addr776:
                                                               if(_loc26_ && b2Collision)
                                                               {
                                                               }
                                                               var nextEdge:* = §§pop();
                                                               if(!_loc27_)
                                                               {
                                                               }
                                                               §§push(EdgeSeparation(poly1,xf1,nextEdge,poly2,xf2));
                                                               if(!_loc26_)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               var sNext:* = §§pop();
                                                               §§push(sNext);
                                                               §§push(0);
                                                               if(!_loc26_)
                                                               {
                                                                  if(§§pop() > §§pop())
                                                                  {
                                                                     if(_loc27_ || poly1)
                                                                     {
                                                                        return sNext;
                                                                     }
                                                                     loop13:
                                                                     while(true)
                                                                     {
                                                                        s = Number(EdgeSeparation(poly1,xf1,edge,poly2,xf2));
                                                                        if(_loc27_)
                                                                        {
                                                                           addr1098:
                                                                           while(true)
                                                                           {
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(s);
                                                                           if(!(_loc26_ && edgeIndex))
                                                                           {
                                                                              addr1107:
                                                                              while(true)
                                                                              {
                                                                                 §§push(0);
                                                                                 if(_loc27_ || b2Collision)
                                                                                 {
                                                                                    addr1115:
                                                                                    loop1:
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop() > §§pop())
                                                                                       {
                                                                                          if(_loc27_ || edgeIndex)
                                                                                          {
                                                                                             if(_loc27_)
                                                                                             {
                                                                                                §§push(s);
                                                                                             }
                                                                                          }
                                                                                          loop7:
                                                                                          while(true)
                                                                                          {
                                                                                             loop10:
                                                                                             while(true)
                                                                                             {
                                                                                                loop25:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(-1);
                                                                                                   if(!_loc26_)
                                                                                                   {
                                                                                                      if(§§pop() == §§pop())
                                                                                                      {
                                                                                                         if(_loc27_)
                                                                                                         {
                                                                                                            loop24:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(bestEdge - 1);
                                                                                                                  if(!(_loc26_ && xf1))
                                                                                                                  {
                                                                                                                     §§push(0);
                                                                                                                     if(_loc27_ || edgeIndex)
                                                                                                                     {
                                                                                                                        §§push(§§pop() >= §§pop());
                                                                                                                        if(!_loc26_)
                                                                                                                        {
                                                                                                                           addr1003:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 §§push(bestEdge - 1);
                                                                                                                                 if(_loc27_ || b2Collision)
                                                                                                                                 {
                                                                                                                                    §§push(int(§§pop()));
                                                                                                                                    if(_loc27_ || xf1)
                                                                                                                                    {
                                                                                                                                    }
                                                                                                                                    addr1032:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(int(§§pop()));
                                                                                                                                       if(!_loc27_)
                                                                                                                                       {
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§push(count1);
                                                                                                                                 if(!(_loc26_ && xf1))
                                                                                                                                 {
                                                                                                                                    addr1031:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§goto(addr1032);
                                                                                                                                    }
                                                                                                                                    §§push(§§pop() - 1);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 edge = §§pop();
                                                                                                                                 if(_loc26_ && xf1)
                                                                                                                                 {
                                                                                                                                 }
                                                                                                                                 continue loop13;
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr1142:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           bestSeparation = Number(§§pop());
                                                                                                                           continue loop7;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr1058:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr1059:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           addr1062:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                           }
                                                                                                                           §§push(bestEdge);
                                                                                                                           §§push(1);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§push(0);
                                                                                                                           if(_loc27_ || edgeIndex)
                                                                                                                           {
                                                                                                                           }
                                                                                                                           addr1137:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              bestEdge = §§pop();
                                                                                                                              if(!_loc26_)
                                                                                                                              {
                                                                                                                                 §§goto(addr1142);
                                                                                                                                 §§push(s);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           return bestSeparation;
                                                                                                                        }
                                                                                                                        addr1075:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(int(§§pop()));
                                                                                                                           if(_loc26_)
                                                                                                                           {
                                                                                                                              §§goto(addr1137);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(int(§§pop()));
                                                                                                                     if(_loc26_)
                                                                                                                     {
                                                                                                                     }
                                                                                                                     §§goto(addr1075);
                                                                                                                  }
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     §§push(Number(sPrev));
                                                                                                                     if(_loc27_ || xf1)
                                                                                                                     {
                                                                                                                        bestSeparation = §§pop();
                                                                                                                        if(!_loc26_)
                                                                                                                        {
                                                                                                                           continue loop10;
                                                                                                                        }
                                                                                                                        continue loop10;
                                                                                                                     }
                                                                                                                     addr893:
                                                                                                                     §§push(s);
                                                                                                                     if(_loc27_ || b2Collision)
                                                                                                                     {
                                                                                                                        addr901:
                                                                                                                        if(§§pop() > §§pop())
                                                                                                                        {
                                                                                                                           if(!_loc26_)
                                                                                                                           {
                                                                                                                              §§push(1);
                                                                                                                              if(_loc27_)
                                                                                                                              {
                                                                                                                                 increment = §§pop();
                                                                                                                                 §§push(nextEdge);
                                                                                                                                 if(_loc27_ || edgeIndex)
                                                                                                                                 {
                                                                                                                                    §§push(int(§§pop()));
                                                                                                                                    if(_loc27_ || xf1)
                                                                                                                                    {
                                                                                                                                       bestEdge = §§pop();
                                                                                                                                       addr929:
                                                                                                                                       bestSeparation = Number(sNext);
                                                                                                                                       continue loop10;
                                                                                                                                    }
                                                                                                                                    §§goto(addr1137);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§goto(addr1032);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 continue loop25;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              continue loop13;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§push(edgeIndex);
                                                                                                                           if(!(_loc26_ && b2Collision))
                                                                                                                           {
                                                                                                                              §§push(0);
                                                                                                                              if(_loc27_ || b2Collision)
                                                                                                                              {
                                                                                                                                 §§push(edge);
                                                                                                                                 if(!(_loc26_ && poly1))
                                                                                                                                 {
                                                                                                                                    §§pop()[§§pop()] = §§pop();
                                                                                                                                    §§push(_loc26_);
                                                                                                                                    if(_loc26_)
                                                                                                                                    {
                                                                                                                                       §§pop();
                                                                                                                                       §§push(Boolean(xf1));
                                                                                                                                       continue loop24;
                                                                                                                                    }
                                                                                                                                    continue loop24;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr1160:
                                                                                                                              §§pop()[§§pop()] = §§pop();
                                                                                                                              if(_loc27_)
                                                                                                                              {
                                                                                                                                 addr1163:
                                                                                                                              }
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              addr1158:
                                                                                                                              §§push(0);
                                                                                                                           }
                                                                                                                           §§goto(addr1160);
                                                                                                                           §§push(bestEdge);
                                                                                                                        }
                                                                                                                        §§goto(addr1164);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        continue loop1;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     continue;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr1135:
                                                                                                            while(true)
                                                                                                            {
                                                                                                            }
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§goto(addr1137);
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§push(bestEdge);
                                                                                                         if(!(_loc26_ && edgeIndex))
                                                                                                         {
                                                                                                            §§push(1);
                                                                                                            if(!_loc27_)
                                                                                                            {
                                                                                                            }
                                                                                                            §§goto(addr1062);
                                                                                                         }
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         edge = §§pop();
                                                                                                         if(_loc27_ || edgeIndex)
                                                                                                         {
                                                                                                            continue loop13;
                                                                                                         }
                                                                                                         continue loop7;
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr1058);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§push(s);
                                                                                          §§push(bestSeparation);
                                                                                       }
                                                                                       addr1132:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc26_)
                                                                                          {
                                                                                             §§goto(addr1135);
                                                                                          }
                                                                                          §§goto(addr1164);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop() > §§pop())
                                                                                    {
                                                                                       §§goto(addr1132);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push(edgeIndex);
                                                                                    }
                                                                                    §§goto(addr1164);
                                                                                 }
                                                                              }
                                                                           }
                                                                           return §§pop();
                                                                        }
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(sPrev);
                                                                     §§push(s);
                                                                     if(!_loc26_)
                                                                     {
                                                                        §§push(§§pop() > §§pop());
                                                                        if(!(_loc26_ && b2Collision))
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(_loc27_ || edgeIndex)
                                                                              {
                                                                                 §§pop();
                                                                                 §§push(sPrev);
                                                                                 if(!_loc26_)
                                                                                 {
                                                                                    §§push(sNext);
                                                                                    if(_loc26_ && b2Collision)
                                                                                    {
                                                                                    }
                                                                                    §§goto(addr1115);
                                                                                 }
                                                                                 §§goto(addr1107);
                                                                              }
                                                                           }
                                                                           addr844:
                                                                           if(§§pop())
                                                                           {
                                                                              if(!_loc26_)
                                                                              {
                                                                                 increment = -1;
                                                                                 if(!_loc26_)
                                                                                 {
                                                                                    bestEdge = int(prevEdge);
                                                                                    if(!(_loc26_ && xf1))
                                                                                    {
                                                                                       §§goto(addr870);
                                                                                       §§push(_loc27_ || poly1);
                                                                                    }
                                                                                    §§goto(addr1163);
                                                                                 }
                                                                              }
                                                                              §§goto(addr1098);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(sNext);
                                                                              if(!(_loc26_ && poly1))
                                                                              {
                                                                                 §§goto(addr893);
                                                                              }
                                                                           }
                                                                           §§goto(addr929);
                                                                        }
                                                                        §§goto(addr1059);
                                                                     }
                                                                     §§goto(addr901);
                                                                  }
                                                                  §§goto(addr1158);
                                                               }
                                                               §§push(§§pop() > §§pop());
                                                               if(_loc27_)
                                                               {
                                                                  §§goto(addr844);
                                                               }
                                                               §§goto(addr1003);
                                                            }
                                                            §§push(sPrev);
                                                            if(_loc27_)
                                                            {
                                                               return §§pop();
                                                            }
                                                            addr755:
                                                            if(§§pop() < count1)
                                                            {
                                                               §§goto(addr758);
                                                            }
                                                            else
                                                            {
                                                               §§push(0);
                                                               if(!_loc26_)
                                                               {
                                                                  addr775:
                                                                  §§push(int(§§pop()));
                                                               }
                                                            }
                                                            §§goto(addr776);
                                                         }
                                                         else
                                                         {
                                                            §§push(edge);
                                                            if(!_loc26_)
                                                            {
                                                               §§push(1);
                                                               if(_loc27_)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  if(_loc27_ || poly1)
                                                                  {
                                                                     §§goto(addr755);
                                                                  }
                                                               }
                                                               addr767:
                                                               §§push(§§pop() + §§pop());
                                                            }
                                                         }
                                                         §§goto(addr767);
                                                         §§push(1);
                                                      }
                                                      §§push(int(§§pop()));
                                                      if(_loc26_)
                                                      {
                                                      }
                                                      §§goto(addr775);
                                                   }
                                                   §§goto(addr685);
                                                }
                                                §§push(s);
                                                if(_loc27_ || poly1)
                                                {
                                                   if(§§pop() > 0)
                                                   {
                                                      if(_loc26_ && edgeIndex)
                                                      {
                                                      }
                                                      §§push(s);
                                                      if(!(_loc26_ && poly1))
                                                      {
                                                         return §§pop();
                                                      }
                                                      §§goto(addr669);
                                                   }
                                                   else
                                                   {
                                                      §§push(edge);
                                                      if(!(_loc26_ && poly1))
                                                      {
                                                         §§push(§§pop() - 1);
                                                         if(_loc26_ && poly1)
                                                         {
                                                         }
                                                         §§goto(addr669);
                                                      }
                                                   }
                                                   §§goto(addr685);
                                                }
                                                if(§§pop() >= 0)
                                                {
                                                   §§goto(addr658);
                                                }
                                                else
                                                {
                                                   §§push(count1);
                                                   if(_loc27_)
                                                   {
                                                      §§goto(addr677);
                                                      §§push(§§pop() - 1);
                                                   }
                                                }
                                                §§goto(addr686);
                                             }
                                             §§goto(addr583);
                                          }
                                          addr438:
                                          §§push(§§pop() + §§pop());
                                          if(!(_loc26_ && b2Collision))
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                          §§goto(addr447);
                                       }
                                       §§push(dY);
                                       if(_loc27_)
                                       {
                                          §§push(§§pop() * xf1.R.col2.y);
                                       }
                                       §§goto(addr438);
                                    }
                                    addr362:
                                    §§push(§§pop().y);
                                    if(_loc27_ || xf1)
                                    {
                                       §§goto(addr372);
                                       §§push(tVec.y);
                                    }
                                    §§goto(addr373);
                                 }
                                 dX = Number(§§pop() - (§§pop() + (§§pop() + §§pop())));
                                 if(_loc27_)
                                 {
                                    if(_loc27_ || b2Collision)
                                    {
                                       §§push(dY);
                                       if(_loc27_ || xf1)
                                       {
                                          §§push(xf1.position);
                                       }
                                       §§goto(addr408);
                                    }
                                 }
                                 §§goto(addr392);
                              }
                              addr360:
                              §§goto(addr362);
                              §§push(tMat.col2);
                           }
                           addr349:
                           §§push(§§pop().y);
                           §§push(tVec.x);
                           if(_loc27_ || poly1)
                           {
                              §§goto(addr360);
                              §§push(§§pop() * §§pop());
                           }
                           §§goto(addr373);
                        }
                        addr345:
                        §§push(tMat.col1);
                        if(!_loc26_)
                        {
                           §§goto(addr349);
                        }
                        §§goto(addr408);
                     }
                     §§goto(addr345);
                     §§push(§§pop().y);
                  }
               }
               §§push(dX);
               if(_loc27_)
               {
                  §§goto(addr408);
               }
               §§goto(addr408);
            }
            if(_loc26_)
            {
            }
            addr71:
            if(!_loc26_)
            {
               if(_loc26_)
               {
               }
               §§goto(addr80);
            }
            §§goto(addr91);
         }
         §§goto(addr71);
      }
      
      public static function ClipSegmentToLine(vOut:Array, vIn:Array, normal:b2Vec2, offset:Number) : int
      {
         var _loc15_:Boolean = true;
         var _loc16_:Boolean = false;
         if(_loc16_ && vOut)
         {
         }
         var cv:ClipVertex = null;
         var numOut:* = 0;
         var vIn0:b2Vec2 = null;
         var vIn1:b2Vec2 = null;
         var distance0:* = NaN;
         var interp:* = NaN;
         var tVec:b2Vec2 = null;
         var cv2:ClipVertex = null;
         if(_loc16_ && vOut)
         {
         }
         if(!_loc16_)
         {
            if(!_loc15_)
            {
            }
            addr76:
            if(_loc15_ || b2Collision)
            {
               if(_loc15_)
               {
                  if(!_loc16_)
                  {
                     numOut = 0;
                  }
               }
               addr93:
               cv = vIn[0];
               if(_loc15_ || vIn)
               {
               }
               vIn0 = cv.v;
               if(_loc16_ && vOut)
               {
               }
               cv = vIn[1];
               if(_loc15_ || normal)
               {
               }
               vIn1 = cv.v;
               if(_loc15_)
               {
                  if(_loc16_)
                  {
                  }
                  addr179:
                  §§push(b2Math.b2Dot(normal,vIn1));
                  addr195:
                  if(_loc15_ || vOut)
                  {
                     addr191:
                     §§push(§§pop() - offset);
                     if(_loc15_)
                     {
                        addr194:
                        §§push(Number(§§pop()));
                     }
                  }
                  var distance1:* = §§pop();
                  §§push(distance0);
                  §§push(0);
                  if(_loc15_)
                  {
                     if(§§pop() <= §§pop())
                     {
                        §§push(vOut);
                        if(_loc15_ || normal)
                        {
                           §§push(numOut);
                           if(!_loc16_)
                           {
                              §§push(§§pop());
                              if(_loc15_ || vIn)
                              {
                                 §§push(§§pop() + 1);
                                 if(_loc16_ && vOut)
                                 {
                                 }
                                 addr305:
                                 §§push(§§pop() + 1);
                                 addr312:
                                 if(!_loc16_)
                                 {
                                    addr308:
                                    numOut = §§pop();
                                    if(!_loc16_)
                                    {
                                       §§push(§§pop());
                                    }
                                 }
                                 addr315:
                                 §§pop()[§§pop()] = vIn[1];
                                 addr317:
                                 if(_loc15_)
                                 {
                                    addr321:
                                    §§push(distance0);
                                    if(_loc15_ || b2Collision)
                                    {
                                       §§push(distance1);
                                       if(_loc15_)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(!(_loc16_ && normal))
                                          {
                                             §§push(0);
                                             if(!_loc16_)
                                             {
                                                if(§§pop() < §§pop())
                                                {
                                                   if(_loc15_)
                                                   {
                                                      if(_loc15_ || vIn)
                                                      {
                                                      }
                                                   }
                                                }
                                                addr578:
                                                return numOut;
                                             }
                                          }
                                          addr376:
                                          §§push(Number(§§pop()));
                                       }
                                       addr373:
                                       §§push(§§pop() - distance1);
                                    }
                                    interp = §§pop();
                                    if(!(_loc16_ && normal))
                                    {
                                       addr385:
                                    }
                                    addr387:
                                    §§push(vOut);
                                    §§push(numOut);
                                 }
                                 §§push(distance0);
                                 if(!(_loc16_ && vOut))
                                 {
                                    §§push(distance0);
                                    if(!(_loc16_ && b2Collision))
                                    {
                                       §§goto(addr373);
                                    }
                                 }
                                 §§goto(addr376);
                              }
                              numOut = §§pop();
                              if(!_loc16_)
                              {
                                 §§push(§§pop());
                                 if(_loc15_ || vIn)
                                 {
                                    if(_loc15_)
                                    {
                                       §§push(vIn);
                                       if(!(_loc16_ && vOut))
                                       {
                                          §§push(0);
                                          if(!(_loc16_ && vOut))
                                          {
                                             §§pop()[§§pop()] = §§pop()[§§pop()];
                                             if(!_loc16_)
                                             {
                                                if(_loc16_)
                                                {
                                                }
                                                addr291:
                                                §§push(vOut);
                                                if(_loc16_)
                                                {
                                                }
                                                §§goto(addr387);
                                             }
                                             §§goto(addr317);
                                          }
                                          §§goto(addr315);
                                       }
                                       §§goto(addr315);
                                    }
                                    §§goto(addr315);
                                 }
                                 §§goto(addr308);
                              }
                           }
                           addr388:
                           cv = §§pop()[§§pop()];
                           if(_loc16_ && vIn)
                           {
                           }
                           tVec = cv.v;
                           if(!_loc16_)
                           {
                              if(_loc15_)
                              {
                                 §§push(tVec);
                                 §§push(vIn0.x);
                                 if(_loc15_ || vOut)
                                 {
                                    §§push(interp);
                                    if(!_loc16_)
                                    {
                                       §§push(vIn1.x);
                                       if(_loc15_ || normal)
                                       {
                                          §§push(§§pop() - vIn0.x);
                                       }
                                       §§push(§§pop() * §§pop());
                                    }
                                    §§push(§§pop() + §§pop());
                                 }
                                 §§pop().x = §§pop();
                                 if(!_loc15_)
                                 {
                                 }
                              }
                              if(_loc16_)
                              {
                              }
                              addr472:
                              cv = vOut[numOut];
                              if(!_loc16_)
                              {
                                 if(!(_loc16_ && vIn))
                                 {
                                    if(distance0 > 0)
                                    {
                                       if(_loc16_ && normal)
                                       {
                                       }
                                    }
                                    else
                                    {
                                       §§push(vIn);
                                    }
                                    addr536:
                                    cv2 = §§pop()[1];
                                    if(_loc15_ || normal)
                                    {
                                       if(!(_loc16_ && vIn))
                                       {
                                          cv.id = cv2.id;
                                          if(!_loc15_)
                                          {
                                          }
                                       }
                                       addr562:
                                       numOut++;
                                       if(_loc15_ || normal)
                                       {
                                          addr577:
                                       }
                                       §§goto(addr578);
                                    }
                                    §§goto(addr562);
                                 }
                                 addr498:
                                 §§push(vIn);
                                 if(!(_loc16_ && normal))
                                 {
                                    §§push(0);
                                    if(_loc15_)
                                    {
                                       cv2 = §§pop()[§§pop()];
                                       if(!(_loc16_ && vIn))
                                       {
                                          if(_loc15_ || vOut)
                                          {
                                             cv.id = cv2.id;
                                             if(_loc16_)
                                             {
                                             }
                                             §§goto(addr577);
                                          }
                                          §§goto(addr578);
                                       }
                                    }
                                    §§goto(addr562);
                                 }
                                 else
                                 {
                                    §§goto(addr536);
                                 }
                                 §§goto(addr536);
                              }
                              §§goto(addr498);
                           }
                           §§push(tVec);
                           §§push(vIn0.y);
                           if(_loc15_)
                           {
                              §§push(interp);
                              if(_loc15_ || vOut)
                              {
                                 §§push(vIn1.y);
                                 if(_loc15_ || b2Collision)
                                 {
                                    §§push(§§pop() - vIn0.y);
                                 }
                                 §§push(§§pop() * §§pop());
                              }
                              §§push(§§pop() + §§pop());
                           }
                           §§pop().y = §§pop();
                           if(_loc16_)
                           {
                           }
                           §§goto(addr472);
                        }
                        §§push(numOut);
                        if(!_loc16_)
                        {
                           §§push(§§pop());
                           if(_loc15_ || normal)
                           {
                              §§goto(addr305);
                           }
                           §§goto(addr312);
                        }
                        §§goto(addr388);
                     }
                     §§push(distance1);
                     §§push(0);
                     if(_loc15_ || vOut)
                     {
                        if(§§pop() <= §§pop())
                        {
                           if(_loc15_ || vIn)
                           {
                              §§goto(addr291);
                           }
                           §§goto(addr385);
                        }
                        §§goto(addr321);
                     }
                     §§goto(addr373);
                  }
                  §§goto(addr376);
                  §§push(§§pop() / §§pop());
               }
               §§push(b2Math.b2Dot(normal,vIn0));
               if(_loc15_ || vIn)
               {
                  §§push(offset);
                  if(!(_loc16_ && b2Collision))
                  {
                     §§push(§§pop() - §§pop());
                     if(_loc15_ || b2Collision)
                     {
                        §§push(Number(§§pop()));
                        if(_loc15_ || vOut)
                        {
                           distance0 = §§pop();
                           if(!_loc15_)
                           {
                           }
                           §§goto(addr179);
                        }
                     }
                     §§goto(addr195);
                  }
                  §§goto(addr191);
               }
               §§goto(addr194);
            }
            §§goto(addr93);
         }
         if(!(_loc16_ && normal))
         {
            if(_loc16_ && b2Collision)
            {
            }
            §§goto(addr93);
         }
         §§goto(addr76);
      }
      
      public static function b2CollideCircles(manifold:b2Manifold, circle1:b2CircleShape, xf1:b2XForm, circle2:b2CircleShape, xf2:b2XForm) : void
      {
         /*
          * Error de decompilación
          * Tiempo de espera (1 minuto) alcanzado
          * Instruction count: 1221
          */
         throw new flash.errors.IllegalOperationError("No decompilado debido al tiempo de espera");
      }
      
      public static function b2CollidePolygonAndCircle(manifold:b2Manifold, polygon:b2PolygonShape, xf1:b2XForm, circle:b2CircleShape, xf2:b2XForm) : void
      {
         /*
          * Error de decompilación
          * Tiempo de espera (1 minuto) alcanzado
          * Instruction count: 2417
          */
         throw new flash.errors.IllegalOperationError("No decompilado debido al tiempo de espera");
      }
   }
}
