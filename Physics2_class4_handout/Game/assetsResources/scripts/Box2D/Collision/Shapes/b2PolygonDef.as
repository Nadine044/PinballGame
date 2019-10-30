package Box2D.Collision.Shapes
{
   import Box2D.Common.Math.b2Mat22;
   import Box2D.Common.Math.b2Vec2;
   import Box2D.Common.b2Settings;
   
   public class b2PolygonDef extends b2ShapeDef
   {
      
      private static var s_mat:b2Mat22 = new b2Mat22();
      
      {
         var s_mat:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(_loc2_)
            {
            }
            addr22:
            return;
         }
         §§goto(addr22);
      }
      
      public var vertices:Array;
      
      public var vertexCount:int;
      
      public function b2PolygonDef()
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_)
         {
         }
         if(!_loc2_)
         {
            this.vertices = new Array(b2Settings.b2_maxPolygonVertices);
         }
         if(!(_loc2_ && i))
         {
            super();
         }
         type = b2Shape.e_polygonShape;
         if(_loc3_ || this)
         {
         }
         this.vertexCount = 0;
         if(_loc2_ && this)
         {
         }
         var i:int = 0;
         while(true)
         {
            if(i >= b2Settings.b2_maxPolygonVertices)
            {
               if(_loc2_ && _loc3_)
               {
               }
               break;
            }
            if(!(_loc2_ && i))
            {
               this.vertices[i] = new b2Vec2();
               if(!(_loc2_ && _loc2_))
               {
                  if(_loc3_ || i)
                  {
                     i++;
                     if(!_loc2_)
                     {
                        continue;
                     }
                     break;
                  }
                  continue;
               }
            }
            break;
         }
      }
      
      public function SetAsOrientedBox(hx:Number, hy:Number, center:b2Vec2 = null, angle:Number = 0.0) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc9_)
         {
         }
         var xfPosition:b2Vec2 = null;
         var xfR:b2Mat22 = null;
         var i:int = 0;
         if(!_loc9_)
         {
            if(_loc8_)
            {
               if(_loc8_ || hx)
               {
                  this.vertexCount = 4;
               }
               if(_loc8_ || center)
               {
                  §§push(this.vertices);
                  if(!(_loc9_ && hy))
                  {
                     §§push(0);
                     if(!_loc9_)
                     {
                        §§pop()[§§pop()].Set(-hx,-hy);
                        if(!_loc9_)
                        {
                           §§push(this.vertices);
                           if(_loc8_)
                           {
                              §§push(1);
                              if(!_loc9_)
                              {
                                 §§pop()[§§pop()].Set(hx,-hy);
                              }
                           }
                           addr114:
                           §§push(3);
                        }
                     }
                     addr115:
                     §§pop()[§§pop()].Set(-hx,hy);
                     addr139:
                     if(!(_loc9_ && this))
                     {
                        if(center)
                        {
                           if(!_loc8_)
                           {
                           }
                           addr136:
                           if(_loc9_)
                           {
                           }
                        }
                        addr303:
                        return;
                     }
                     addr139:
                  }
                  addr95:
                  §§push(2);
                  if(!_loc9_)
                  {
                     §§pop()[§§pop()].Set(hx,hy);
                     if(!(_loc9_ && center))
                     {
                        if(_loc9_)
                        {
                        }
                        §§goto(addr139);
                     }
                     §§goto(addr114);
                     §§push(this.vertices);
                  }
                  §§goto(addr115);
               }
               §§push(this.vertices);
               if(_loc8_ || hx)
               {
                  §§goto(addr95);
               }
               §§goto(addr114);
            }
            xfPosition = center;
            if(_loc8_ || center)
            {
            }
            xfR = s_mat;
            if(!(_loc9_ && this))
            {
               if(_loc9_)
               {
               }
               addr179:
               addr181:
               i = 0;
               while(true)
               {
                  if(i >= this.vertexCount)
                  {
                     if(_loc8_)
                     {
                        break;
                     }
                     break;
                  }
                  if(_loc8_)
                  {
                     center = this.vertices[i];
                     if(!_loc8_)
                     {
                     }
                     §§push(xfPosition.x);
                     if(!_loc9_)
                     {
                        §§push(xfR.col1.x);
                        if(_loc8_ || this)
                        {
                           §§push(center.x);
                           if(_loc8_ || hy)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc9_)
                              {
                              }
                              addr235:
                              §§push(§§pop() + §§pop());
                              if(!_loc9_)
                              {
                                 §§push(Number(§§pop()));
                              }
                           }
                           addr234:
                           §§goto(addr235);
                           §§push(§§pop() + §§pop());
                        }
                        §§push(xfR.col2.x);
                        if(_loc8_ || hx)
                        {
                           §§push(§§pop() * center.y);
                        }
                        §§goto(addr234);
                     }
                     hx = §§pop();
                     if(!_loc9_)
                     {
                        §§push(center);
                        §§push(xfPosition.y);
                        if(_loc8_)
                        {
                           §§push(xfR.col1.y);
                           if(_loc8_ || this)
                           {
                              §§push(center.x);
                              if(_loc8_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(_loc8_)
                                 {
                                    §§push(xfR.col2.y);
                                    if(_loc8_ || hy)
                                    {
                                       §§push(§§pop() * center.y);
                                    }
                                 }
                              }
                              §§push(§§pop() + §§pop());
                           }
                           §§push(§§pop() + §§pop());
                        }
                        §§pop().y = §§pop();
                        if(_loc8_)
                        {
                           center.x = hx;
                        }
                        else
                        {
                           continue;
                        }
                     }
                     i++;
                     continue;
                  }
                  break;
               }
               §§goto(addr303);
            }
            xfR.Set(angle);
            if(!_loc9_)
            {
               if(!_loc9_)
               {
                  §§goto(addr179);
               }
            }
            §§goto(addr181);
         }
         if(_loc8_)
         {
            §§goto(addr136);
         }
         §§goto(addr139);
      }
      
      public function SetAsBox(hx:Number, hy:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc3_)
         {
         }
         if(_loc3_)
         {
            if(_loc3_)
            {
               this.vertexCount = 4;
            }
            addr90:
            §§push(this.vertices);
            addr121:
            if(_loc3_)
            {
               §§push(2);
               if(!(_loc4_ && this))
               {
                  §§pop()[§§pop()].Set(hx,hy);
                  if(_loc3_)
                  {
                     if(!_loc4_)
                     {
                        addr112:
                        §§push(this.vertices);
                     }
                  }
                  addr130:
                  return;
               }
               addr122:
               §§pop()[§§pop()].Set(-hx,hy);
               if(_loc4_)
               {
               }
               §§goto(addr130);
            }
            §§goto(addr122);
            §§push(3);
         }
         §§push(this.vertices);
         if(!(_loc4_ && this))
         {
            §§push(0);
            if(!(_loc4_ && hy))
            {
               §§pop()[§§pop()].Set(-hx,-hy);
               if(!(_loc4_ && hx))
               {
                  if(_loc3_ || hx)
                  {
                     §§push(this.vertices);
                     if(_loc3_)
                     {
                        §§push(1);
                        if(!(_loc4_ && hy))
                        {
                           §§pop()[§§pop()].Set(hx,-hy);
                        }
                     }
                  }
                  §§goto(addr112);
               }
               §§goto(addr90);
            }
            §§goto(addr122);
         }
         §§goto(addr121);
      }
   }
}
