package Box2D.Collision
{
   import Box2D.Collision.Shapes.b2CircleShape;
   import Box2D.Collision.Shapes.b2ConcaveArcShape;
   import Box2D.Collision.Shapes.b2PolygonShape;
   import Box2D.Collision.Shapes.b2Shape;
   import Box2D.Collision.Shapes.b2StaticEdgeShape;
   import Box2D.Common.Math.b2Mat22;
   import Box2D.Common.Math.b2Math;
   import Box2D.Common.Math.b2Vec2;
   import Box2D.Common.Math.b2XForm;
   import Box2D.Common.b2Settings;
   
   public class b2Distance
   {
      
      public static var s_initialized:Boolean = false;
      
      public static var g_GJK_Iterations:int = 0;
      
      private static var s_p1s:Array = [new b2Vec2(),new b2Vec2(),new b2Vec2()];
      
      public static var s_registers:Array;
      
      private static var s_p2s:Array = [new b2Vec2(),new b2Vec2(),new b2Vec2()];
      
      private static var gPoint:b2Point;
      
      private static var s_points:Array;
      
      public static var t:Number = -1;
      
      {
         var s_p1s:Boolean = false;
         var s_p2s:Boolean = true;
         if(s_p2s || s_p1s)
         {
            if(!s_p1s)
            {
               s_points = [new b2Vec2(),new b2Vec2(),new b2Vec2()];
            }
            if(s_p2s)
            {
               gPoint = new b2Point();
               if(s_p2s || s_p1s)
               {
                  if(!s_p2s)
                  {
                  }
               }
               addr80:
               g_GJK_Iterations = 0;
               if(s_p1s)
               {
               }
               addr98:
               return;
            }
            s_initialized = false;
            §§goto(addr98);
         }
         §§goto(addr80);
      }
      
      public function b2Distance()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
         if(_loc1_ || this)
         {
            super();
            if(_loc2_ && _loc1_)
            {
            }
         }
      }
      
      public static function DistanceGeneric(x1:b2Vec2, x2:b2Vec2, shape1:*, xf1:b2XForm, shape2:*, xf2:b2XForm) : Number
      {
         /*
          * Error de decompilación
          * Tiempo de espera (1 minuto) alcanzado
          * Instruction count: 1094
          */
         throw new flash.errors.IllegalOperationError("No decompilado debido al tiempo de espera");
      }
      
      public static function InPoints(w:b2Vec2, points:Array, pointCount:int) : Boolean
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         if(_loc11_ || points)
         {
         }
         var points_i:b2Vec2 = null;
         var dX:* = NaN;
         var dY:* = NaN;
         var mX:* = NaN;
         var mY:* = NaN;
         if(_loc11_ || w)
         {
            if(_loc11_ || pointCount)
            {
            }
            addr54:
            §§push(100 * Number.MIN_VALUE);
            if(_loc11_)
            {
               §§push(Number(§§pop()));
            }
            var k_tolerance:* = §§pop();
            if(_loc11_ || pointCount)
            {
            }
            var i:int = 0;
            while(true)
            {
               if(i < pointCount)
               {
                  if(!_loc12_)
                  {
                     if(!_loc11_)
                     {
                     }
                  }
                  points_i = points[i];
                  if(_loc11_)
                  {
                     §§push(Number(Math.abs(w.x - points_i.x)));
                     if(_loc11_ || w)
                     {
                        dX = §§pop();
                     }
                     addr149:
                     mX = §§pop();
                     if(_loc11_ || pointCount)
                     {
                        §§push(Number(Math.max(Math.abs(w.y),Math.abs(points_i.y))));
                        if(!(_loc12_ && w))
                        {
                           addr176:
                           mY = §§pop();
                           if(!_loc11_)
                           {
                              continue;
                           }
                        }
                        addr215:
                        §§push(k_tolerance);
                        if(_loc11_ || w)
                        {
                           addr223:
                           §§push(mY);
                           if(!_loc12_)
                           {
                              addr227:
                              §§push(§§pop() + 1);
                           }
                           addr228:
                           §§push(§§pop() * §§pop());
                        }
                        addr229:
                        §§push(§§pop() < §§pop());
                        if(!_loc12_)
                        {
                           addr232:
                           if(§§pop())
                           {
                              if(!_loc11_)
                              {
                              }
                              §§push(true);
                              break;
                           }
                           i++;
                           continue;
                        }
                        break;
                     }
                     if(_loc11_)
                     {
                        §§push(dX);
                        if(_loc11_)
                        {
                           §§push(k_tolerance);
                           if(_loc11_)
                           {
                              §§push(mX);
                              if(_loc11_)
                              {
                                 §§push(1);
                                 if(_loc11_)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(_loc11_)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(!_loc12_)
                                       {
                                          §§push(§§pop() < §§pop());
                                          if(_loc11_)
                                          {
                                             if(§§pop())
                                             {
                                                if(!(_loc12_ && b2Distance))
                                                {
                                                   §§pop();
                                                   addr213:
                                                }
                                                break;
                                             }
                                          }
                                          §§goto(addr232);
                                       }
                                       §§goto(addr229);
                                    }
                                    §§goto(addr228);
                                 }
                                 §§goto(addr227);
                              }
                              §§goto(addr227);
                           }
                           §§goto(addr223);
                        }
                        §§goto(addr215);
                     }
                     §§goto(addr215);
                     §§push(dY);
                  }
                  §§push(Number(Math.abs(w.y - points_i.y)));
                  if(_loc11_ || pointCount)
                  {
                     dY = §§pop();
                     if(!_loc12_)
                     {
                        §§push(Number(Math.max(Math.abs(w.x),Math.abs(points_i.x))));
                        if(_loc11_)
                        {
                           §§goto(addr149);
                        }
                        §§goto(addr215);
                     }
                     §§goto(addr213);
                  }
                  §§goto(addr176);
               }
               return false;
            }
            return §§pop();
         }
         if(!_loc12_)
         {
            §§goto(addr54);
         }
         §§goto(addr54);
      }
      
      public static function ProcessThree(x1:b2Vec2, x2:b2Vec2, p1s:Array, p2s:Array, points:Array) : int
      {
         /*
          * Error de decompilación
          * Tiempo de espera (1 minuto) alcanzado
          * Instruction count: 1846
          */
         throw new flash.errors.IllegalOperationError("No decompilado debido al tiempo de espera");
      }
      
      public static function Distance(x1:b2Vec2, x2:b2Vec2, shape1:b2Shape, xf1:b2XForm, shape2:b2Shape, xf2:b2XForm) : Number
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         if(_loc11_)
         {
         }
         if(!(_loc11_ && b2Distance))
         {
            if(_loc10_)
            {
               if(_loc10_ || b2Distance)
               {
               }
               addr54:
               if(!_loc11_)
               {
                  addr57:
               }
               §§push(shape1.GetType());
               if(!_loc11_)
               {
                  §§push(int(§§pop()));
               }
               var type1:* = §§pop();
               if(_loc10_ || shape1)
               {
               }
               §§push(shape2.GetType());
               if(!_loc11_)
               {
                  §§push(int(§§pop()));
               }
               var type2:* = §§pop();
               if(_loc10_ || shape1)
               {
               }
               var register:b2DistanceRegister = s_registers[type1 + type2 * b2Shape.e_shapeTypeCount];
               if(register != null)
               {
                  if(_loc10_ || shape1)
                  {
                     if(_loc10_)
                     {
                        if(!register.primary)
                        {
                           return register.fcn(x2,x1,shape2,xf2,shape1,xf1);
                        }
                     }
                     addr122:
                     return register.fcn(x1,x2,shape1,xf1,shape2,xf2);
                  }
                  §§goto(addr122);
               }
               else
               {
                  return 0;
               }
            }
         }
         if(!(_loc11_ && shape1))
         {
            if(_loc10_ || x1)
            {
               §§goto(addr54);
            }
         }
         §§goto(addr57);
      }
      
      public static function DistancePC(x1:b2Vec2, x2:b2Vec2, polygon:b2PolygonShape, xf1:b2XForm, circle:b2CircleShape, xf2:b2XForm) : Number
      {
         var _loc15_:Boolean = true;
         var _loc16_:Boolean = false;
         if(_loc16_)
         {
         }
         var tMat:b2Mat22 = null;
         var tVec:b2Vec2 = null;
         var dX:Number = NaN;
         var dY:Number = NaN;
         var dLen:Number = NaN;
         if(_loc15_ || x1)
         {
            if(_loc15_)
            {
               if(!(_loc16_ && x1))
               {
                  if(!_loc15_)
                  {
                  }
                  addr59:
                  var point:b2Point = gPoint;
                  if(_loc16_ && polygon)
                  {
                  }
                  tVec = circle.m_localPosition;
                  if(!_loc15_)
                  {
                  }
                  tMat = xf2.R;
                  if(!(_loc16_ && x1))
                  {
                     if(_loc15_)
                     {
                        §§push(point.p);
                        if(_loc15_ || b2Distance)
                        {
                           §§push(xf2.position);
                           if(_loc15_)
                           {
                              §§push(§§pop().x);
                              if(!_loc16_)
                              {
                                 §§push(tMat.col1);
                                 if(!_loc16_)
                                 {
                                    §§push(§§pop().x);
                                    if(_loc15_)
                                    {
                                       §§push(tVec.x);
                                       if(!_loc16_)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(!_loc16_)
                                          {
                                             §§push(tMat.col2);
                                             if(!_loc16_)
                                             {
                                                §§push(§§pop().x);
                                                if(!_loc16_)
                                                {
                                                   §§push(tVec.y);
                                                   if(!_loc16_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc15_)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(!(_loc16_ && polygon))
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(_loc15_ || b2Distance)
                                                            {
                                                               §§pop().x = §§pop();
                                                               if(_loc16_)
                                                               {
                                                               }
                                                            }
                                                            addr196:
                                                            §§pop().y = §§pop();
                                                            if(_loc16_)
                                                            {
                                                            }
                                                         }
                                                         addr169:
                                                         §§push(tVec.x);
                                                         if(_loc16_ && b2Distance)
                                                         {
                                                         }
                                                      }
                                                   }
                                                   addr193:
                                                   §§push(§§pop() * §§pop());
                                                }
                                                §§push(§§pop() * §§pop());
                                                if(_loc16_ && x2)
                                                {
                                                }
                                             }
                                             addr188:
                                             §§push(§§pop().y);
                                             if(!_loc16_)
                                             {
                                                §§goto(addr193);
                                                §§push(tVec.y);
                                             }
                                          }
                                          addr195:
                                          §§goto(addr196);
                                          §§push(§§pop() + §§pop());
                                       }
                                       §§goto(addr195);
                                       §§push(§§pop() + §§pop());
                                    }
                                    addr186:
                                    §§goto(addr188);
                                    §§push(tMat.col2);
                                 }
                                 addr166:
                                 §§push(§§pop().y);
                                 if(_loc15_)
                                 {
                                    §§goto(addr169);
                                 }
                                 §§goto(addr186);
                              }
                              addr164:
                              §§goto(addr166);
                              §§push(tMat.col1);
                           }
                           addr161:
                           §§push(§§pop().y);
                           if(!_loc16_)
                           {
                              §§goto(addr164);
                           }
                           §§goto(addr196);
                        }
                        addr159:
                        §§goto(addr161);
                        §§push(xf2.position);
                     }
                     if(_loc15_)
                     {
                        §§goto(addr159);
                        §§push(point.p);
                     }
                  }
                  §§push(DistanceGeneric(x1,x2,polygon,xf1,point,b2Math.b2XForm_identity));
                  if(!_loc16_)
                  {
                     §§push(Number(§§pop()));
                  }
                  var distance:* = §§pop();
                  if(!_loc15_)
                  {
                  }
                  §§push(circle.m_radius);
                  if(!(_loc16_ && x2))
                  {
                     §§push(§§pop() - b2Settings.b2_toiSlop);
                     if(_loc15_ || polygon)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  var r:* = §§pop();
                  if(_loc15_ || polygon)
                  {
                     §§push(distance);
                     if(_loc15_ || x1)
                     {
                        §§push(r);
                        if(!_loc16_)
                        {
                           if(§§pop() > §§pop())
                           {
                              if(_loc15_ || polygon)
                              {
                                 if(!_loc16_)
                                 {
                                    if(!(_loc16_ && polygon))
                                    {
                                       if(!(_loc16_ && polygon))
                                       {
                                          §§push(distance);
                                          if(_loc15_ || b2Distance)
                                          {
                                             §§push(r);
                                             if(_loc16_ && b2Distance)
                                             {
                                             }
                                             addr395:
                                             §§push(§§pop() / §§pop());
                                             if(!_loc16_)
                                             {
                                                addr399:
                                                dX = §§pop();
                                             }
                                          }
                                          addr351:
                                          dY = §§pop();
                                          if(_loc15_ || x1)
                                          {
                                             dLen = Math.sqrt(dX * dX + dY * dY);
                                             if(!(_loc16_ && x2))
                                             {
                                                if(!(_loc16_ && x2))
                                                {
                                                   §§push(dX);
                                                   §§push(dLen);
                                                   if(!(_loc16_ && x1))
                                                   {
                                                      §§goto(addr395);
                                                   }
                                                   addr405:
                                                   dY = §§pop() / §§pop();
                                                   addr465:
                                                   if(_loc16_ && b2Distance)
                                                   {
                                                   }
                                                   addr465:
                                                   addr485:
                                                   x2.x = x1.x;
                                                   if(!_loc15_)
                                                   {
                                                   }
                                                   addr485:
                                                   x2.y = x1.y;
                                                }
                                                addr457:
                                             }
                                             if(_loc15_)
                                             {
                                                addr418:
                                                §§push(x2);
                                                §§push(x2.x);
                                                if(!(_loc16_ && b2Distance))
                                                {
                                                   §§push(r);
                                                   if(_loc15_)
                                                   {
                                                      §§push(§§pop() * dX);
                                                   }
                                                   §§push(§§pop() - §§pop());
                                                }
                                                §§pop().x = §§pop();
                                                if(!_loc16_)
                                                {
                                                   if(_loc15_ || b2Distance)
                                                   {
                                                   }
                                                }
                                                §§goto(addr465);
                                             }
                                             §§goto(addr485);
                                          }
                                          addr462:
                                          if(!_loc16_)
                                          {
                                             §§goto(addr465);
                                          }
                                       }
                                    }
                                    addr486:
                                    return distance;
                                 }
                                 addr400:
                                 §§push(dY);
                                 if(_loc15_)
                                 {
                                    §§goto(addr405);
                                    §§push(dLen);
                                 }
                                 §§goto(addr486);
                              }
                              §§push(x2);
                              §§push(x2.y);
                              if(_loc15_)
                              {
                                 §§push(r);
                                 if(_loc15_)
                                 {
                                    §§push(§§pop() * dY);
                                 }
                                 §§push(§§pop() - §§pop());
                              }
                              §§pop().y = §§pop();
                              §§goto(addr457);
                           }
                           else
                           {
                              §§push(0);
                           }
                           distance = Number(§§pop());
                           §§goto(addr462);
                        }
                        distance = Number(§§pop() - §§pop());
                        if(_loc15_)
                        {
                           if(!_loc16_)
                           {
                              §§push(x2.x);
                              if(!_loc15_)
                              {
                              }
                              §§goto(addr351);
                           }
                           addr330:
                           if(!(_loc16_ && b2Distance))
                           {
                              §§push(x2.y);
                              §§push(x1.y);
                              if(_loc15_ || polygon)
                              {
                                 addr349:
                                 §§goto(addr351);
                                 §§push(§§pop() - §§pop());
                              }
                              §§goto(addr405);
                           }
                           §§goto(addr400);
                        }
                        §§goto(addr465);
                     }
                     §§push(x1.x);
                     if(_loc15_)
                     {
                        §§push(§§pop() - §§pop());
                        if(!_loc16_)
                        {
                           dX = §§pop();
                           if(_loc15_)
                           {
                              §§goto(addr330);
                           }
                           §§goto(addr418);
                        }
                        §§goto(addr399);
                     }
                     §§goto(addr349);
                  }
                  if(_loc15_)
                  {
                     §§goto(addr465);
                  }
                  §§goto(addr485);
               }
               addr56:
               §§goto(addr59);
            }
            addr55:
            §§goto(addr56);
         }
         §§goto(addr55);
      }
      
      public static function AddType(fcn:Function, type1:int, type2:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || b2Distance)
         {
         }
         if(!_loc4_)
         {
            §§push(s_registers);
            if(_loc5_)
            {
               §§push(type1);
               if(!_loc4_)
               {
                  §§push(type2);
                  if(!(_loc4_ && type1))
                  {
                     §§push(b2Shape.e_shapeTypeCount);
                     if(_loc5_ || fcn)
                     {
                        §§push(§§pop() * §§pop());
                        if(!_loc4_)
                        {
                           §§push(§§pop() + §§pop());
                           if(!_loc4_)
                           {
                              §§pop()[§§pop()] = new b2DistanceRegister(fcn,true);
                              if(!_loc4_)
                              {
                                 if(type1 != type2)
                                 {
                                 }
                                 addr104:
                                 return;
                              }
                           }
                           addr84:
                           §§pop()[§§pop()] = new b2DistanceRegister(fcn,false);
                           if(_loc5_ || type2)
                           {
                           }
                           §§goto(addr104);
                        }
                        addr83:
                        §§goto(addr84);
                        §§push(§§pop() + §§pop());
                     }
                     addr82:
                     §§goto(addr83);
                     §§push(§§pop() * §§pop());
                  }
                  addr80:
                  §§goto(addr82);
                  §§push(b2Shape.e_shapeTypeCount);
               }
               addr79:
               §§goto(addr80);
               §§push(type1);
            }
            addr78:
            §§goto(addr79);
            §§push(type2);
         }
         §§goto(addr78);
      }
      
      public static function DistanceSeC(x1:b2Vec2, x2:b2Vec2, edge:b2StaticEdgeShape, xf1:b2XForm, circle:b2CircleShape, xf2:b2XForm) : Number
      {
         /*
          * Error de decompilación
          * Tiempo de espera (1 minuto) alcanzado
          * Instruction count: 1048
          */
         throw new flash.errors.IllegalOperationError("No decompilado debido al tiempo de espera");
      }
      
      public static function DistanceCcaC(x1:b2Vec2, x2:b2Vec2, polygon:b2ConcaveArcShape, xf1:b2XForm, circle:b2CircleShape, xf2:b2XForm) : Number
      {
         /*
          * Error de decompilación
          * Tiempo de espera (1 minuto) alcanzado
          * Instruction count: 1164
          */
         throw new flash.errors.IllegalOperationError("No decompilado debido al tiempo de espera");
      }
      
      public static function InitializeRegisters() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         if(!_loc2_)
         {
            if(!(_loc2_ && _loc1_))
            {
               if(s_initialized == true)
               {
                  if(_loc1_)
                  {
                     return;
                  }
               }
               else
               {
                  s_initialized = true;
                  if(_loc1_)
                  {
                     s_registers = new Array(b2Shape.e_shapeTypeCount * b2Shape.e_shapeTypeCount);
                     if(_loc2_)
                     {
                     }
                  }
                  addr70:
                  if(!_loc2_)
                  {
                     AddType(b2Distance.DistancePC,b2Shape.e_polygonShape,b2Shape.e_circleShape);
                     if(_loc1_ || _loc1_)
                     {
                        AddType(b2Distance.DistanceGeneric,b2Shape.e_polygonShape,b2Shape.e_polygonShape);
                        if(_loc2_ && b2Distance)
                        {
                        }
                        addr125:
                        AddType(b2Distance.DistancePCca,b2Shape.e_polygonShape,b2Shape.e_concaveArcShape);
                        addr142:
                        AddType(b2Distance.DistanceSeC,b2Shape.e_staticEdgeShape,b2Shape.e_circleShape);
                        addr173:
                        if(!(_loc2_ && _loc2_))
                        {
                           AddType(b2Distance.DistanceGeneric,b2Shape.e_polygonShape,b2Shape.e_staticEdgeShape);
                           if(_loc2_ && b2Distance)
                           {
                           }
                        }
                        return;
                     }
                     addr122:
                     if(!_loc2_)
                     {
                        §§goto(addr125);
                     }
                     §§goto(addr173);
                  }
               }
               §§goto(addr173);
            }
            AddType(b2Distance.DistanceCC,b2Shape.e_circleShape,b2Shape.e_circleShape);
            if(_loc1_)
            {
               §§goto(addr70);
            }
            §§goto(addr173);
         }
         AddType(b2Distance.DistanceCcaC,b2Shape.e_concaveArcShape,b2Shape.e_circleShape);
         if(_loc1_)
         {
            §§goto(addr122);
         }
         §§goto(addr142);
      }
      
      public static function DistancePCca(x1:b2Vec2, x2:b2Vec2, polygon:b2PolygonShape, xf1:b2XForm, arc:b2ConcaveArcShape, xf2:b2XForm) : Number
      {
         var _loc27_:Boolean = false;
         var _loc28_:Boolean = true;
         if(!_loc28_)
         {
         }
         var dist2:Number = NaN;
         var dist:* = NaN;
         var norm:* = NaN;
         if(!(_loc27_ && x2))
         {
            if(_loc28_ || x2)
            {
               if(!(_loc27_ && x2))
               {
                  if(_loc28_ || x1)
                  {
                  }
                  addr82:
                  if(_loc28_)
                  {
                     if(_loc28_ || x1)
                     {
                        addr95:
                        if(_loc28_ || x1)
                        {
                        }
                     }
                  }
                  t = -1;
                  §§push(DistanceGeneric(x1,x2,polygon,xf1,arc,xf2));
                  if(_loc28_ || x1)
                  {
                     §§push(Number(§§pop()));
                  }
                  var gd:* = §§pop();
                  if(_loc27_)
                  {
                  }
                  var vx0:b2Vec2 = b2Math.b2MulX(xf2,arc.m_coreVertices[0]);
                  if(!_loc28_)
                  {
                  }
                  var normal:b2Vec2 = b2Math.b2MulMV(xf2.R,arc.m_normals[0]);
                  if(!_loc28_)
                  {
                  }
                  §§push(x2.x);
                  if(_loc28_)
                  {
                     §§push(vx0.x);
                     if(_loc28_ || b2Distance)
                     {
                        §§push(§§pop() - §§pop());
                        if(!_loc27_)
                        {
                           §§push(normal.x);
                           if(!(_loc27_ && x2))
                           {
                              §§push(§§pop() * §§pop());
                              if(!(_loc27_ && b2Distance))
                              {
                                 §§push(x2.y);
                                 if(_loc27_)
                                 {
                                 }
                                 addr200:
                                 §§push(§§pop() * normal.y);
                              }
                              addr212:
                              var n:* = §§pop();
                              if(_loc27_ && x2)
                              {
                              }
                              §§push(n);
                              if(!(_loc27_ && x1))
                              {
                                 §§push(b2Settings.b2_linearSlop);
                                 if(_loc28_ || x2)
                                 {
                                    §§push(-§§pop());
                                    if(!_loc28_)
                                    {
                                    }
                                    addr243:
                                    §§push(§§pop() < §§pop());
                                    if(!(_loc27_ && polygon))
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc28_ || b2Distance)
                                          {
                                             §§pop();
                                             §§push(gd);
                                             if(!_loc27_)
                                             {
                                                §§push(§§pop() > 0);
                                             }
                                          }
                                       }
                                    }
                                    if(§§pop())
                                    {
                                       t = 0;
                                       §§push(gd);
                                    }
                                    else
                                    {
                                       var vx1:b2Vec2 = b2Math.b2MulX(xf2,arc.m_coreVertices[1]);
                                       if(_loc27_)
                                       {
                                       }
                                       var tVec:b2Vec2 = new b2Vec2();
                                       if(_loc27_)
                                       {
                                       }
                                       §§push(b2Settings.b2_linearSlop);
                                       if(_loc28_ || polygon)
                                       {
                                          §§push(§§pop() * b2Settings.b2_linearSlop);
                                          if(_loc28_ || polygon)
                                          {
                                          }
                                          addr314:
                                          var tolerance:* = §§pop();
                                          §§push(tVec);
                                          §§push(vx0.x);
                                          if(!(_loc27_ && x1))
                                          {
                                             §§push(§§pop() - x2.x);
                                          }
                                          §§pop().x = §§pop();
                                          §§push(tVec);
                                          §§push(vx0.y);
                                          if(_loc28_ || polygon)
                                          {
                                             §§push(§§pop() - x2.y);
                                          }
                                          §§pop().y = §§pop();
                                          if(!_loc27_)
                                          {
                                             §§push(tVec.x);
                                             §§push(tVec.x);
                                             if(_loc28_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(_loc28_ || polygon)
                                                {
                                                   §§push(tVec.y);
                                                   §§push(tVec.y);
                                                   if(!_loc27_)
                                                   {
                                                      §§push(§§pop() + §§pop() * §§pop());
                                                      §§push(tolerance);
                                                      if(_loc28_ || x2)
                                                      {
                                                         if(§§pop() < §§pop())
                                                         {
                                                            t = 1;
                                                            if(_loc28_ || x2)
                                                            {
                                                               if(_loc27_)
                                                               {
                                                                  addr455:
                                                                  t = 2;
                                                               }
                                                            }
                                                            return gd;
                                                         }
                                                         §§push(tVec);
                                                         §§push(vx1.x);
                                                         if(!_loc27_)
                                                         {
                                                            §§push(§§pop() - x2.x);
                                                         }
                                                         §§pop().x = §§pop();
                                                         addr459:
                                                         return gd;
                                                      }
                                                   }
                                                   addr448:
                                                   if(§§pop() + §§pop() * §§pop() < tolerance)
                                                   {
                                                      if(!_loc27_)
                                                      {
                                                         §§goto(addr455);
                                                      }
                                                      §§goto(addr459);
                                                   }
                                                   else
                                                   {
                                                      var localCenter:b2Vec2 = b2Math.b2MulXT(xf1,b2Math.b2MulX(xf2,arc.m_arcCenter));
                                                      if(_loc27_ && polygon)
                                                      {
                                                      }
                                                      var localNorm:b2Vec2 = b2Math.b2MulTMV(xf1.R,normal);
                                                      if(_loc28_ || b2Distance)
                                                      {
                                                      }
                                                      var maxDist2:* = Number(-1);
                                                      if(!_loc28_)
                                                      {
                                                      }
                                                      var bestVx:* = Number(-1);
                                                      if(_loc27_ && b2Distance)
                                                      {
                                                      }
                                                      var separation:* = Number(Number.MAX_VALUE);
                                                      if(!_loc28_)
                                                      {
                                                      }
                                                      var i:Number = 0;
                                                      loop0:
                                                      while(true)
                                                      {
                                                         while(true)
                                                         {
                                                            if(§§pop() >= §§pop())
                                                            {
                                                               if(_loc28_)
                                                               {
                                                                  break;
                                                               }
                                                            }
                                                            else
                                                            {
                                                               if(!_loc27_)
                                                               {
                                                                  tVec.x = polygon.m_coreVertices[i].x - localCenter.x;
                                                                  if(_loc28_)
                                                                  {
                                                                     tVec.y = polygon.m_coreVertices[i].y - localCenter.y;
                                                                  }
                                                                  addr886:
                                                                  §§push(tVec);
                                                                  §§push(tVec.x);
                                                                  if(!(_loc27_ && b2Distance))
                                                                  {
                                                                     §§push(§§pop() + localCenter.x);
                                                                  }
                                                                  addr901:
                                                                  §§pop().x = §§pop();
                                                                  if(_loc28_ || b2Distance)
                                                                  {
                                                                     §§push(tVec);
                                                                     §§push(tVec.y);
                                                                     if(_loc28_)
                                                                     {
                                                                        §§push(§§pop() + localCenter.y);
                                                                     }
                                                                     §§pop().y = §§pop();
                                                                     if(_loc27_ && polygon)
                                                                     {
                                                                     }
                                                                  }
                                                                  x2.SetV(b2Math.b2MulX(xf1,tVec));
                                                                  if(!_loc27_)
                                                                  {
                                                                     t = 3;
                                                                     addr938:
                                                                     if(_loc28_ || polygon)
                                                                     {
                                                                        addr946:
                                                                        i++;
                                                                        if(_loc28_)
                                                                        {
                                                                           continue loop0;
                                                                        }
                                                                        break;
                                                                     }
                                                                     break;
                                                                  }
                                                                  break;
                                                               }
                                                               §§push(tVec.x);
                                                               if(!(_loc27_ && x1))
                                                               {
                                                                  §§push(§§pop() * localNorm.y);
                                                                  §§push(tVec.y);
                                                                  §§push(localNorm.x);
                                                                  if(_loc28_)
                                                                  {
                                                                     §§push(Number(§§pop() - §§pop() * §§pop()));
                                                                     if(!(_loc27_ && polygon))
                                                                     {
                                                                        norm = §§pop();
                                                                        §§push(tVec.x);
                                                                        if(!(_loc27_ && x1))
                                                                        {
                                                                           §§push(§§pop() * tVec.x);
                                                                           §§push(tVec.y);
                                                                           §§push(tVec.y);
                                                                           if(_loc28_)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              if(_loc28_)
                                                                              {
                                                                                 dist2 = §§pop() + §§pop();
                                                                                 §§push(norm);
                                                                                 if(_loc28_ || x1)
                                                                                 {
                                                                                    §§push(§§pop() * norm);
                                                                                    §§push(arc.m_norm);
                                                                                    §§push(arc.m_norm);
                                                                                    if(!_loc27_)
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(_loc28_ || b2Distance)
                                                                                       {
                                                                                          §§push(dist2);
                                                                                          if(!(_loc27_ && x1))
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(_loc28_)
                                                                                             {
                                                                                                §§push(§§pop() < §§pop());
                                                                                                if(!(_loc27_ && x2))
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      if(_loc28_)
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         §§push(tVec.x * localNorm.x);
                                                                                                         if(_loc28_ || b2Distance)
                                                                                                         {
                                                                                                            §§push(tVec.y);
                                                                                                            if(_loc28_ || polygon)
                                                                                                            {
                                                                                                               §§push(localNorm.y);
                                                                                                            }
                                                                                                            addr770:
                                                                                                            §§push(§§pop() - §§pop());
                                                                                                         }
                                                                                                         addr716:
                                                                                                         maxDist2 = §§pop();
                                                                                                         if(_loc28_ || x1)
                                                                                                         {
                                                                                                            §§push(i);
                                                                                                            if(_loc28_)
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                               if(!(_loc27_ && polygon))
                                                                                                               {
                                                                                                                  addr736:
                                                                                                                  bestVx = §§pop();
                                                                                                                  if(_loc28_ || polygon)
                                                                                                                  {
                                                                                                                     if(_loc28_ || polygon)
                                                                                                                     {
                                                                                                                        §§push(Number(Math.sqrt(dist2)));
                                                                                                                     }
                                                                                                                     §§goto(addr938);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     addr810:
                                                                                                                     §§push(tVec);
                                                                                                                     §§push(tVec.x);
                                                                                                                     if(!(_loc27_ && x2))
                                                                                                                     {
                                                                                                                        §§push(arc.m_radius);
                                                                                                                        if(!(_loc27_ && polygon))
                                                                                                                        {
                                                                                                                           §§push(b2Settings.b2_toiSlop);
                                                                                                                           if(_loc28_ || x2)
                                                                                                                           {
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              if(!_loc28_)
                                                                                                                              {
                                                                                                                              }
                                                                                                                              addr844:
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                           }
                                                                                                                           addr843:
                                                                                                                           §§goto(addr844);
                                                                                                                           §§push(§§pop() / §§pop());
                                                                                                                        }
                                                                                                                        §§goto(addr843);
                                                                                                                        §§push(dist);
                                                                                                                     }
                                                                                                                     §§pop().x = §§pop();
                                                                                                                     if(_loc27_)
                                                                                                                     {
                                                                                                                     }
                                                                                                                     addr849:
                                                                                                                     §§push(tVec);
                                                                                                                     §§push(tVec.y);
                                                                                                                     if(!(_loc27_ && x1))
                                                                                                                     {
                                                                                                                        §§push(arc.m_radius);
                                                                                                                        if(_loc28_)
                                                                                                                        {
                                                                                                                           §§push(b2Settings.b2_toiSlop);
                                                                                                                           if(_loc28_ || x2)
                                                                                                                           {
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              if(_loc28_)
                                                                                                                              {
                                                                                                                                 §§push(dist);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§push(§§pop() / §§pop());
                                                                                                                        }
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                     }
                                                                                                                     §§pop().y = §§pop();
                                                                                                                     if(!(_loc27_ && polygon))
                                                                                                                     {
                                                                                                                        §§goto(addr886);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        continue loop0;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr901);
                                                                                                               }
                                                                                                            }
                                                                                                            addr769:
                                                                                                            §§goto(addr770);
                                                                                                            §§push(dist);
                                                                                                         }
                                                                                                         §§goto(addr849);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                addr699:
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   §§push(dist2);
                                                                                                   if(_loc28_ || x2)
                                                                                                   {
                                                                                                      §§push(maxDist2);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr946);
                                                                                             }
                                                                                             addr694:
                                                                                             §§push(§§pop() + §§pop());
                                                                                          }
                                                                                       }
                                                                                       if(§§pop() > §§pop())
                                                                                       {
                                                                                          §§push(dist2);
                                                                                          if(!_loc27_)
                                                                                          {
                                                                                             §§goto(addr716);
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                          §§goto(addr736);
                                                                                       }
                                                                                       §§goto(addr946);
                                                                                    }
                                                                                 }
                                                                                 dist = §§pop();
                                                                                 if(_loc28_)
                                                                                 {
                                                                                    §§push(arc.m_radius);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr938);
                                                                                 }
                                                                                 §§goto(addr946);
                                                                              }
                                                                              addr766:
                                                                              §§push(§§pop() + §§pop());
                                                                              if(!_loc27_)
                                                                              {
                                                                                 §§goto(addr769);
                                                                              }
                                                                              §§goto(addr946);
                                                                           }
                                                                        }
                                                                        §§push(0);
                                                                        if(!_loc27_)
                                                                        {
                                                                           §§goto(addr699);
                                                                           §§push(§§pop() < §§pop());
                                                                        }
                                                                        else
                                                                        {
                                                                           addr792:
                                                                           if(§§pop() < §§pop())
                                                                           {
                                                                              §§push(Number(0));
                                                                              if(!_loc27_)
                                                                              {
                                                                                 separation = §§pop();
                                                                              }
                                                                              §§goto(addr946);
                                                                           }
                                                                           x1.SetV(b2Math.b2MulX(xf1,polygon.m_coreVertices[i]));
                                                                           if(!_loc27_)
                                                                           {
                                                                              §§goto(addr810);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§push(b2Settings.b2_toiSlop);
                                                                     if(_loc28_)
                                                                     {
                                                                        §§goto(addr766);
                                                                     }
                                                                     §§goto(addr770);
                                                                  }
                                                                  §§push(§§pop() * §§pop());
                                                                  if(_loc28_ || polygon)
                                                                  {
                                                                     §§goto(addr694);
                                                                  }
                                                                  §§goto(addr766);
                                                               }
                                                               separation = Number(§§pop());
                                                               if(!(_loc27_ && x1))
                                                               {
                                                                  §§push(separation);
                                                                  if(!_loc27_)
                                                                  {
                                                                     §§push(0);
                                                                     §§push(_loc27_);
                                                                     if(_loc27_)
                                                                     {
                                                                        §§pop();
                                                                        §§push(Boolean(polygon));
                                                                        continue;
                                                                     }
                                                                     continue;
                                                                  }
                                                                  §§goto(addr946);
                                                               }
                                                               break;
                                                            }
                                                            addr959:
                                                            var sx1:b2Vec2 = new b2Vec2();
                                                            if(_loc28_ || b2Distance)
                                                            {
                                                            }
                                                            var sx2:b2Vec2 = new b2Vec2();
                                                            if(_loc27_)
                                                            {
                                                            }
                                                            var point:b2Point = gPoint;
                                                            if(!_loc27_)
                                                            {
                                                               if(!_loc27_)
                                                               {
                                                                  point.p.SetV(vx0);
                                                                  if(_loc27_ && b2Distance)
                                                                  {
                                                                  }
                                                               }
                                                            }
                                                            §§push(DistanceGeneric(sx1,sx2,polygon,xf1,point,b2Math.b2XForm_identity));
                                                            if(!(_loc27_ && x2))
                                                            {
                                                               §§push(Number(§§pop()));
                                                            }
                                                            var anotherDistance:* = §§pop();
                                                            if(!_loc27_)
                                                            {
                                                               §§push(anotherDistance);
                                                               §§push(separation);
                                                               if(_loc28_)
                                                               {
                                                                  if(§§pop() < §§pop())
                                                                  {
                                                                     if(_loc28_ || polygon)
                                                                     {
                                                                        t = 4;
                                                                        separation = Number(anotherDistance);
                                                                        if(_loc28_)
                                                                        {
                                                                           x1.SetV(sx1);
                                                                           if(_loc27_)
                                                                           {
                                                                           }
                                                                        }
                                                                     }
                                                                     addr1109:
                                                                     addr1126:
                                                                     if(!_loc27_)
                                                                     {
                                                                        x2.SetV(sx2);
                                                                        if(_loc28_)
                                                                        {
                                                                           addr1124:
                                                                        }
                                                                     }
                                                                     return separation;
                                                                  }
                                                                  addr1052:
                                                                  point.p.SetV(vx1);
                                                                  anotherDistance = Number(DistanceGeneric(sx1,sx2,polygon,xf1,point,b2Math.b2XForm_identity));
                                                                  if(!(_loc27_ && polygon))
                                                                  {
                                                                     §§push(anotherDistance);
                                                                     §§push(separation);
                                                                  }
                                                                  §§goto(addr1124);
                                                               }
                                                               if(§§pop() < §§pop())
                                                               {
                                                                  if(_loc27_ && polygon)
                                                                  {
                                                                  }
                                                                  t = 5;
                                                                  §§push(Number(anotherDistance));
                                                                  if(_loc28_ || b2Distance)
                                                                  {
                                                                     separation = §§pop();
                                                                     if(!_loc27_)
                                                                     {
                                                                        x1.SetV(sx1);
                                                                        if(_loc28_)
                                                                        {
                                                                           §§goto(addr1109);
                                                                        }
                                                                        §§goto(addr1124);
                                                                     }
                                                                  }
                                                                  §§goto(addr1126);
                                                               }
                                                               §§goto(addr1126);
                                                            }
                                                            x2.SetV(sx2);
                                                            §§goto(addr1052);
                                                         }
                                                         §§goto(addr959);
                                                      }
                                                   }
                                                }
                                                addr437:
                                                §§push(tVec.y);
                                                if(!(_loc27_ && polygon))
                                                {
                                                   §§goto(addr448);
                                                   §§push(tVec.y);
                                                }
                                                §§goto(addr448);
                                             }
                                             addr436:
                                             §§goto(addr437);
                                             §§push(§§pop() * §§pop());
                                          }
                                          §§push(tVec);
                                          §§push(vx1.y);
                                          if(!_loc27_)
                                          {
                                             §§push(§§pop() - x2.y);
                                          }
                                          §§pop().y = §§pop();
                                          §§push(tVec.x);
                                          if(_loc28_)
                                          {
                                             §§push(tVec.x);
                                             if(_loc28_ || b2Distance)
                                             {
                                                §§goto(addr436);
                                             }
                                             §§goto(addr448);
                                          }
                                          §§goto(addr448);
                                       }
                                       §§goto(addr314);
                                       §§push(Number(§§pop()));
                                    }
                                 }
                                 §§goto(addr243);
                                 return §§pop() / 4;
                              }
                           }
                           addr203:
                           §§push(§§pop() + §§pop());
                           if(_loc27_ && x1)
                           {
                           }
                           §§goto(addr212);
                        }
                     }
                     §§push(vx0.y);
                     if(!_loc27_)
                     {
                        §§push(§§pop() - §§pop());
                        if(!_loc27_)
                        {
                           §§goto(addr200);
                        }
                        §§goto(addr203);
                     }
                     §§goto(addr200);
                  }
                  §§goto(addr212);
                  §§push(Number(§§pop()));
               }
               addr75:
               if(_loc27_)
               {
               }
               §§goto(addr82);
            }
            if(_loc28_ || x1)
            {
               if(!_loc27_)
               {
                  if(_loc28_)
                  {
                     §§goto(addr75);
                  }
               }
               §§goto(addr95);
            }
            §§goto(addr82);
         }
         §§goto(addr82);
      }
      
      public static function DistanceCC(x1:b2Vec2, x2:b2Vec2, circle1:b2CircleShape, xf1:b2XForm, circle2:b2CircleShape, xf2:b2XForm) : Number
      {
         /*
          * Error de decompilación
          * Tiempo de espera (1 minuto) alcanzado
          * Instruction count: 838
          */
         throw new flash.errors.IllegalOperationError("No decompilado debido al tiempo de espera");
      }
      
      public static function ProcessTwo(x1:b2Vec2, x2:b2Vec2, p1s:Array, p2s:Array, points:Array) : int
      {
         var _loc18_:Boolean = true;
         var _loc19_:Boolean = false;
         if(_loc19_ && x1)
         {
         }
         var p1s_1:b2Vec2 = null;
         var p2s_0:b2Vec2 = null;
         if(_loc18_)
         {
            if(_loc18_ || b2Distance)
            {
            }
            addr54:
            if(_loc18_ || x1)
            {
               if(_loc18_ || p1s)
               {
               }
               addr82:
               var points_0:b2Vec2 = points[0];
               if(_loc19_ && p1s)
               {
               }
               var points_1:b2Vec2 = points[1];
               if(_loc19_)
               {
               }
               var p1s_0:b2Vec2 = p1s[0];
               if(_loc19_)
               {
               }
               p1s_1 = p1s[1];
               if(_loc19_)
               {
               }
               p2s_0 = p2s[0];
               if(_loc18_ || p1s)
               {
               }
               var p2s_1:b2Vec2 = p2s[1];
               if(_loc18_ || x2)
               {
               }
               §§push(points_1.x);
               if(_loc18_ || x2)
               {
                  §§push(-§§pop());
                  if(!_loc19_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var rX:* = §§pop();
               if(_loc18_ || b2Distance)
               {
               }
               §§push(points_1.y);
               if(!_loc19_)
               {
                  §§push(-§§pop());
                  if(_loc18_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var rY:* = §§pop();
               if(_loc19_ && b2Distance)
               {
               }
               §§push(points_0.x);
               if(_loc18_)
               {
                  §§push(§§pop() - points_1.x);
                  if(_loc19_ && x2)
                  {
                  }
                  addr200:
                  var dX:* = §§pop();
                  if(_loc19_ && x1)
                  {
                  }
                  §§push(points_0.y);
                  if(!_loc19_)
                  {
                     §§push(§§pop() - points_1.y);
                     if(!_loc19_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  var dY:* = §§pop();
                  if(_loc18_ || x1)
                  {
                  }
                  var length:Number = Math.sqrt(dX * dX + dY * dY);
                  if(!(_loc19_ && x1))
                  {
                     if(!_loc19_)
                     {
                        §§push(dX);
                        §§push(length);
                        if(!(_loc19_ && x1))
                        {
                           §§push(Number(§§pop() / §§pop()));
                           if(_loc18_)
                           {
                              dX = §§pop();
                              if(_loc18_ || p1s)
                              {
                                 if(_loc18_ || p1s)
                                 {
                                    §§push(dY);
                                    §§push(length);
                                    if(_loc18_ || p1s)
                                    {
                                    }
                                    addr313:
                                    §§push(§§pop() * §§pop());
                                    §§push(rY);
                                    addr324:
                                    if(!(_loc19_ && x1))
                                    {
                                       §§push(§§pop() * dY);
                                    }
                                    §§push(§§pop() + §§pop());
                                    if(_loc18_)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                    var lambda:* = §§pop();
                                    §§push(lambda);
                                    if(!_loc19_)
                                    {
                                       §§push(0);
                                       if(_loc18_ || x1)
                                       {
                                          §§push(§§pop() <= §§pop());
                                          if(!_loc19_)
                                          {
                                             if(!§§pop())
                                             {
                                                if(_loc18_ || p1s)
                                                {
                                                   §§pop();
                                                   §§push(length);
                                                   if(!_loc19_)
                                                   {
                                                      §§push(§§pop() < Number.MIN_VALUE);
                                                   }
                                                   addr422:
                                                   lambda = §§pop();
                                                   addr423:
                                                   if(!(_loc19_ && x2))
                                                   {
                                                      §§push(x1);
                                                      §§push(p1s_1.x);
                                                      if(!_loc19_)
                                                      {
                                                         §§push(lambda);
                                                         if(!_loc19_)
                                                         {
                                                            §§push(p1s_0.x);
                                                            if(!_loc19_)
                                                            {
                                                               §§push(§§pop() - p1s_1.x);
                                                            }
                                                            §§push(§§pop() * §§pop());
                                                         }
                                                         §§push(§§pop() + §§pop());
                                                      }
                                                      §§pop().x = §§pop();
                                                      §§push(x1);
                                                      §§push(p1s_1.y);
                                                      if(!(_loc19_ && b2Distance))
                                                      {
                                                         §§push(lambda);
                                                         if(_loc18_)
                                                         {
                                                            §§push(p1s_0.y);
                                                            if(!(_loc19_ && b2Distance))
                                                            {
                                                               §§push(§§pop() - p1s_1.y);
                                                            }
                                                            §§push(§§pop() * §§pop());
                                                         }
                                                         §§push(§§pop() + §§pop());
                                                      }
                                                      §§pop().y = §§pop();
                                                      if(_loc18_ || x2)
                                                      {
                                                         addr485:
                                                         addr555:
                                                         if(_loc19_ && b2Distance)
                                                         {
                                                         }
                                                         addr555:
                                                         return 2;
                                                      }
                                                      addr554:
                                                      §§goto(addr555);
                                                   }
                                                   addr493:
                                                   §§push(x2);
                                                   §§push(p2s_1.x);
                                                   if(!(_loc19_ && p1s))
                                                   {
                                                      §§push(lambda);
                                                      if(_loc18_)
                                                      {
                                                         §§push(p2s_0.x);
                                                         if(!(_loc19_ && b2Distance))
                                                         {
                                                            §§push(§§pop() - p2s_1.x);
                                                         }
                                                         §§push(§§pop() * §§pop());
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                   }
                                                   §§pop().x = §§pop();
                                                   if(_loc18_)
                                                   {
                                                      addr523:
                                                   }
                                                   §§push(x2);
                                                   §§push(p2s_1.y);
                                                   if(_loc18_ || b2Distance)
                                                   {
                                                      §§push(lambda);
                                                      if(!_loc19_)
                                                      {
                                                         §§push(p2s_0.y);
                                                         if(_loc18_)
                                                         {
                                                            §§push(§§pop() - p2s_1.y);
                                                         }
                                                         §§push(§§pop() * §§pop());
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                   }
                                                   §§pop().y = §§pop();
                                                   §§goto(addr554);
                                                }
                                             }
                                          }
                                          if(§§pop())
                                          {
                                             x1.SetV(p1s_1);
                                             if(_loc18_)
                                             {
                                                x2.SetV(p2s_1);
                                                if(!_loc19_)
                                                {
                                                   p1s_0.SetV(p1s_1);
                                                   if(!(_loc19_ && x1))
                                                   {
                                                      p2s_0.SetV(p2s_1);
                                                      if(!_loc18_)
                                                      {
                                                      }
                                                   }
                                                   points_0.SetV(points_1);
                                                   if(_loc18_ || b2Distance)
                                                   {
                                                      if(_loc18_)
                                                      {
                                                         §§push(1);
                                                         if(!_loc19_)
                                                         {
                                                            return §§pop();
                                                         }
                                                      }
                                                      §§goto(addr555);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr485);
                                                   }
                                                   §§goto(addr555);
                                                }
                                                §§goto(addr523);
                                             }
                                             §§goto(addr493);
                                          }
                                          else
                                          {
                                             §§push(lambda);
                                             if(_loc18_)
                                             {
                                                §§push(length);
                                             }
                                          }
                                          §§goto(addr423);
                                       }
                                       §§push(§§pop() / §§pop());
                                       if(_loc18_ || p1s)
                                       {
                                       }
                                       §§goto(addr422);
                                    }
                                    §§goto(addr422);
                                    §§push(Number(§§pop()));
                                 }
                              }
                              addr301:
                           }
                           addr310:
                           §§push(dX);
                           if(!_loc19_)
                           {
                              §§goto(addr313);
                           }
                           §§goto(addr324);
                        }
                        §§push(§§pop() / §§pop());
                        if(_loc18_)
                        {
                           §§push(Number(§§pop()));
                        }
                        dY = §§pop();
                        if(_loc18_)
                        {
                           §§goto(addr301);
                        }
                     }
                  }
                  §§push(rX);
                  if(!(_loc19_ && b2Distance))
                  {
                     §§goto(addr310);
                  }
                  §§goto(addr313);
               }
               §§goto(addr200);
               §§push(Number(§§pop()));
            }
            if(!(_loc19_ && b2Distance))
            {
               addr80:
            }
            §§goto(addr82);
         }
         if(_loc18_ || x1)
         {
            §§goto(addr54);
         }
         §§goto(addr80);
      }
   }
}
