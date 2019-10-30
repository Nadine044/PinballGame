package Box2D.Collision.Shapes
{
   import Box2D.Collision.b2AABB;
   import Box2D.Collision.b2Segment;
   import Box2D.Common.Math.b2Vec2;
   import Box2D.Common.Math.b2XForm;
   import Box2D.Common.b2Settings;
   
   public class b2StaticEdgeShape extends b2Shape
   {
       
      
      public var m_normal:b2Vec2;
      
      public var m_cornerDir1:b2Vec2;
      
      public var m_v1:b2Vec2;
      
      public var m_coreV1:b2Vec2;
      
      public var m_coreV2:b2Vec2;
      
      public var m_v2:b2Vec2;
      
      public var m_cornerDir2:b2Vec2;
      
      public var m_nextEdge:b2StaticEdgeShape;
      
      public var m_direction:b2Vec2;
      
      public var m_prevEdge:b2StaticEdgeShape;
      
      public var m_chain:b2StaticEdgeChain;
      
      public var m_length:Number;
      
      public function b2StaticEdgeShape(v1:b2Vec2, v2:b2Vec2, edgeDef:b2StaticEdgeChainDef)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc5_)
         {
         }
         if(!(_loc5_ && edgeDef))
         {
            if(!(_loc5_ && v2))
            {
               if(!_loc5_)
               {
                  super(edgeDef);
               }
               if(!_loc5_)
               {
                  m_type = e_staticEdgeShape;
               }
               this.m_v1 = v1;
               this.m_v2 = v2;
               if(_loc4_ || v1)
               {
                  this.m_direction = this.m_v2.Copy();
                  if(!_loc5_)
                  {
                     this.m_direction.Subtract(this.m_v1);
                     if(!(_loc5_ && edgeDef))
                     {
                        if(!_loc5_)
                        {
                           this.m_length = this.m_direction.Normalize();
                           if(_loc4_ || v1)
                           {
                              if(_loc4_ || edgeDef)
                              {
                              }
                           }
                        }
                        addr206:
                        §§push(this.m_coreV2);
                        if(_loc4_)
                        {
                           addr210:
                           §§push(b2Settings.b2_toiSlop);
                           if(_loc4_ || this)
                           {
                              §§push(-§§pop());
                           }
                           §§pop().Multiply(§§pop());
                           §§push(this.m_coreV2);
                        }
                        §§pop().Add(this.m_v2);
                        if(!(_loc5_ && this))
                        {
                           this.m_cornerDir1 = this.m_normal;
                           if(_loc5_)
                           {
                           }
                           addr244:
                           this.m_cornerDir2 = this.m_normal.Copy();
                        }
                        addr270:
                        if(_loc4_)
                        {
                           §§goto(addr244);
                        }
                        return;
                     }
                     addr186:
                     this.m_coreV1.Add(this.m_v1);
                     addr198:
                     this.m_coreV2 = this.m_normal.Copy();
                     §§push(this.m_coreV2);
                     if(_loc4_)
                     {
                        §§pop().Add(this.m_direction);
                        §§goto(addr206);
                     }
                     §§goto(addr210);
                  }
                  §§push(this);
                  §§push();
                  §§push(this.m_direction.y);
                  §§push(this.m_direction.x);
                  if(_loc4_)
                  {
                     §§push(-§§pop());
                  }
                  §§pop().m_normal = new §§pop().b2Vec2(§§pop(),§§pop());
                  if(!_loc4_)
                  {
                  }
                  addr126:
                  addr156:
                  if(_loc4_ || v1)
                  {
                  }
                  §§push(this.m_coreV1);
                  if(_loc4_ || this)
                  {
                     addr165:
                     §§push(b2Settings.b2_toiSlop);
                     if(!(_loc5_ && this))
                     {
                        §§push(-§§pop());
                     }
                     §§pop().Multiply(§§pop());
                     if(!(_loc5_ && v2))
                     {
                        addr183:
                        if(_loc4_)
                        {
                           §§goto(addr186);
                        }
                        §§goto(addr198);
                     }
                     §§goto(addr270);
                  }
                  §§goto(addr186);
               }
               this.m_coreV1 = this.m_normal.Copy();
               §§goto(addr126);
            }
            if(_loc4_ || edgeDef)
            {
               this.m_cornerDir2.Multiply(-1);
               if(_loc5_)
               {
               }
               §§goto(addr270);
            }
            §§goto(addr270);
         }
         §§push(this.m_coreV1);
         if(_loc4_)
         {
            §§pop().Subtract(this.m_direction);
            if(_loc4_ || this)
            {
               §§goto(addr156);
            }
            §§goto(addr183);
         }
         §§goto(addr165);
      }
      
      public function GetDirectionVector() : b2Vec2
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && this)
         {
         }
         if(_loc1_ || this)
         {
         }
         return this.m_direction;
      }
      
      override public function ComputeSweptAABB(aabb:b2AABB, transform1:b2XForm, transform2:b2XForm) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc4_)
         {
         }
         if(_loc5_ || transform1)
         {
            if(!(_loc4_ && transform2))
            {
               if(_loc4_)
               {
               }
               addr54:
               return this.ComputeAABB(aabb,transform1);
            }
            addr53:
            §§goto(addr54);
         }
         if(!_loc4_)
         {
            §§goto(addr53);
         }
         §§goto(addr54);
      }
      
      public function GetFirstVertex(xf:b2XForm) : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc3_)
         {
         }
         if(!_loc2_)
         {
            if(_loc2_ && _loc2_)
            {
            }
            addr43:
            return this.m_coreV1;
         }
         §§goto(addr43);
      }
      
      public function GetNormalVector() : b2Vec2
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         if(_loc2_ && _loc1_)
         {
         }
         return this.m_normal;
      }
      
      override public function TestSegment(transform:b2XForm, lambda:Array, normal:b2Vec2, segment:b2Segment, maxLambda:Number) : Boolean
      {
         /*
          * Error de decompilación
          * Tiempo de espera (1 minuto) alcanzado
          * Instruction count: 553
          */
         throw new flash.errors.IllegalOperationError("No decompilado debido al tiempo de espera");
      }
      
      public function GetParentChain() : b2StaticEdgeChain
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && _loc1_)
         {
         }
         if(_loc2_ && _loc1_)
         {
         }
         return this.m_chain;
      }
      
      public function Support(xf:b2XForm, dX:Number, dY:Number) : b2Vec2
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc5_)
         {
         }
         if(_loc5_)
         {
            if(!_loc4_)
            {
               if(_loc4_ && dY)
               {
               }
            }
            if(!_loc4_)
            {
               if(_loc5_ || this)
               {
                  §§push(this.m_coreV1);
                  if(!_loc4_)
                  {
                     §§push(§§pop().x);
                     if(!(_loc4_ && dX))
                     {
                        §§push(dX);
                        if(_loc5_ || xf)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc4_ && xf)
                           {
                           }
                           addr94:
                           §§push(this.m_coreV2.x);
                           addr115:
                           if(_loc4_)
                           {
                           }
                           addr115:
                           addr144:
                           §§push(this.m_coreV2.y);
                           addr135:
                           if(_loc5_ || dY)
                           {
                              addr125:
                              §§push(§§pop() * dY);
                           }
                           if(§§pop() <= §§pop() + §§pop())
                           {
                              §§push(this.m_coreV2);
                           }
                           return §§pop();
                        }
                        addr99:
                        §§push(dX);
                        if(_loc5_ || xf)
                        {
                           addr107:
                           §§push(§§pop() * §§pop());
                           if(!(_loc4_ && this))
                           {
                              §§goto(addr115);
                           }
                           §§goto(addr135);
                        }
                        §§goto(addr125);
                     }
                     §§push(this.m_coreV1.y);
                     if(_loc5_ || dY)
                     {
                        §§push(dY);
                        if(_loc5_)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc5_)
                           {
                              §§goto(addr94);
                              §§push(§§pop() + §§pop());
                           }
                           §§goto(addr115);
                        }
                        §§goto(addr107);
                     }
                     §§goto(addr99);
                  }
                  addr139:
                  §§goto(addr144);
                  §§push(§§pop());
               }
            }
         }
         §§goto(addr139);
      }
      
      public function SetPrevEdge(edge:b2StaticEdgeShape, core:b2Vec2, cornerDir:b2Vec2) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc5_)
         {
         }
         this.m_prevEdge = edge;
         this.m_coreV1 = core;
         this.m_cornerDir1 = cornerDir;
      }
      
      override public function UpdateSweepRadius(center:b2Vec2) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || center)
         {
         }
         if(!_loc7_)
         {
            if(!_loc6_)
            {
            }
            addr32:
            §§push(this.m_v1.x);
            if(_loc6_)
            {
               §§push(§§pop() - center.x);
               if(!_loc6_)
               {
               }
               addr43:
               var dX:* = §§pop();
               if(_loc7_)
               {
               }
               §§push(this.m_v1.y);
               if(_loc6_ || dX)
               {
                  §§push(§§pop() - center.y);
                  if(_loc6_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var dY:* = §§pop();
               if(_loc6_ || dY)
               {
               }
               §§push(dX);
               if(!(_loc7_ && dX))
               {
                  §§push(dX);
                  if(!(_loc7_ && dX))
                  {
                     §§push(§§pop() * §§pop());
                     if(!_loc6_)
                     {
                     }
                     addr105:
                     var d1:* = §§pop();
                     if(!_loc7_)
                     {
                        if(_loc6_ || dY)
                        {
                           §§push(this.m_v2);
                           if(!_loc7_)
                           {
                              §§push(§§pop().x);
                              §§push(center.x);
                              if(!_loc7_)
                              {
                                 §§push(§§pop() - §§pop());
                                 if(_loc6_ || this)
                                 {
                                    §§push(Number(§§pop()));
                                    if(_loc6_)
                                    {
                                       dX = §§pop();
                                       if(_loc6_)
                                       {
                                          if(_loc7_)
                                          {
                                          }
                                          addr178:
                                          §§push(dX);
                                       }
                                    }
                                    §§push(dX);
                                    if(_loc6_ || dX)
                                    {
                                       addr188:
                                       §§push(§§pop() * §§pop());
                                       §§push(dY);
                                       if(_loc6_)
                                       {
                                          §§push(§§pop() * dY);
                                       }
                                    }
                                 }
                                 addr169:
                                 dY = §§pop();
                                 if(_loc7_ && dY)
                                 {
                                 }
                                 §§goto(addr178);
                              }
                              addr193:
                              var d2:Number = §§pop() + §§pop();
                              if(_loc6_ || dX)
                              {
                                 if(_loc6_)
                                 {
                                    dX = Number(Math.sqrt(d1 > d2?Number(d1):Number(d2)));
                                    if(_loc7_)
                                    {
                                    }
                                    addr224:
                                    m_sweepRadius = dX;
                                    addr242:
                                    if(_loc7_ && dX)
                                    {
                                    }
                                    return;
                                 }
                              }
                              if(_loc6_)
                              {
                                 §§goto(addr224);
                              }
                              §§goto(addr242);
                           }
                           addr151:
                           §§push(§§pop().y);
                           if(!_loc7_)
                           {
                              §§push(center.y);
                              if(!_loc7_)
                              {
                                 §§push(§§pop() - §§pop());
                                 if(_loc6_ || center)
                                 {
                                    §§push(Number(§§pop()));
                                    if(_loc7_)
                                    {
                                    }
                                 }
                                 §§goto(addr188);
                              }
                              §§goto(addr193);
                           }
                           §§goto(addr169);
                        }
                        §§goto(addr178);
                     }
                     §§goto(addr151);
                     §§push(this.m_v2);
                  }
                  addr101:
                  §§push(§§pop() + §§pop());
                  if(!_loc7_)
                  {
                     §§push(Number(§§pop()));
                  }
                  §§goto(addr105);
               }
               §§push(dY);
               if(!(_loc7_ && this))
               {
                  §§push(§§pop() * dY);
               }
               §§goto(addr101);
            }
            §§goto(addr43);
            §§push(Number(§§pop()));
         }
         §§goto(addr32);
      }
      
      public function GetVertex1() : b2Vec2
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
         }
         if(_loc1_ || this)
         {
         }
         return this.m_v1;
      }
      
      public function SetNextEdge(edge:b2StaticEdgeShape, core:b2Vec2, cornerDir:b2Vec2) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || cornerDir)
         {
         }
         if(!(_loc4_ && this))
         {
            if(_loc4_ && this)
            {
            }
            addr48:
            this.m_nextEdge = edge;
            if(!_loc4_)
            {
               if(!_loc5_)
               {
               }
               addr68:
               this.m_cornerDir2 = cornerDir;
               return;
            }
            this.m_coreV2 = core;
            if(!_loc4_)
            {
               §§goto(addr68);
            }
            §§goto(addr68);
         }
         §§goto(addr48);
      }
      
      public function GetLength() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
         }
         if(!_loc2_)
         {
         }
         return this.m_length;
      }
      
      override public function ComputeAABB(aabb:b2AABB, transform:b2XForm) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc3_)
         {
         }
         if(_loc4_ || _loc3_)
         {
            §§push(this.m_v1);
            if(!(_loc3_ && this))
            {
               §§push(§§pop().x);
               if(_loc4_ || this)
               {
                  §§push(this.m_v2);
                  if(!_loc3_)
                  {
                     §§push(§§pop().x);
                     if(!_loc3_)
                     {
                        if(§§pop() < §§pop())
                        {
                           §§push(aabb.lowerBound);
                           if(_loc4_ || this)
                           {
                              §§push(this.m_v1);
                              if(_loc4_)
                              {
                                 §§push(§§pop().x);
                                 if(!_loc3_)
                                 {
                                    §§pop().x = §§pop();
                                    §§push(aabb.upperBound);
                                    if(_loc4_)
                                    {
                                       §§push(this.m_v2);
                                       if(_loc4_)
                                       {
                                          §§push(§§pop().x);
                                          if(!_loc3_)
                                          {
                                             §§pop().x = §§pop();
                                             addr141:
                                             §§push(this.m_v1);
                                          }
                                          addr214:
                                          addr216:
                                          §§pop().y = §§pop();
                                          return;
                                       }
                                       addr180:
                                       §§push(§§pop().y);
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          addr188:
                                          §§pop().y = §§pop();
                                          if(!_loc4_)
                                          {
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr214);
                                       }
                                       §§goto(addr216);
                                    }
                                    else
                                    {
                                       addr132:
                                       §§push(this.m_v1);
                                       if(!_loc3_)
                                       {
                                          §§push(§§pop().x);
                                          if(!_loc3_)
                                          {
                                             §§pop().x = §§pop();
                                             §§goto(addr141);
                                          }
                                          §§goto(addr188);
                                       }
                                    }
                                    addr213:
                                    §§goto(addr214);
                                    §§push(§§pop().y);
                                 }
                                 addr170:
                                 §§pop().y = §§pop();
                                 if(!_loc3_)
                                 {
                                    §§push(aabb.upperBound);
                                    if(!_loc3_)
                                    {
                                       §§goto(addr180);
                                       §§push(this.m_v2);
                                    }
                                    else
                                    {
                                       addr211:
                                       §§goto(addr213);
                                       §§push(this.m_v1);
                                    }
                                    §§goto(addr214);
                                 }
                                 §§goto(addr216);
                              }
                              addr162:
                              §§push(§§pop().y);
                              if(_loc4_ || aabb)
                              {
                                 §§goto(addr170);
                              }
                              else
                              {
                                 addr198:
                                 §§pop().y = §§pop();
                              }
                              §§goto(addr216);
                           }
                           addr197:
                           §§goto(addr198);
                           §§push(this.m_v2.y);
                        }
                        else
                        {
                           §§push(aabb.lowerBound);
                           if(!(_loc3_ && this))
                           {
                              §§push(this.m_v2);
                              if(_loc4_ || aabb)
                              {
                                 §§push(§§pop().x);
                                 if(_loc4_ || transform)
                                 {
                                    §§pop().x = §§pop();
                                    if(_loc4_)
                                    {
                                       §§push(aabb.upperBound);
                                       if(!(_loc3_ && this))
                                       {
                                          §§goto(addr132);
                                       }
                                       §§goto(addr211);
                                    }
                                    §§goto(addr216);
                                 }
                                 §§goto(addr198);
                              }
                              §§goto(addr197);
                           }
                        }
                        addr160:
                        §§goto(addr162);
                        §§push(this.m_v1);
                     }
                     addr147:
                     if(§§pop() < §§pop())
                     {
                        if(_loc3_ && aabb)
                        {
                        }
                        §§push(aabb.lowerBound);
                        if(!_loc3_)
                        {
                           §§goto(addr160);
                        }
                        §§goto(addr198);
                     }
                     else
                     {
                        §§push(aabb.lowerBound);
                     }
                     §§goto(addr197);
                  }
                  addr146:
                  §§goto(addr147);
                  §§push(§§pop().y);
               }
               addr144:
               §§goto(addr146);
               §§push(this.m_v2);
            }
            §§goto(addr144);
            §§push(§§pop().y);
         }
         if(!_loc3_)
         {
            §§goto(addr211);
            §§push(aabb.upperBound);
         }
         §§goto(addr216);
      }
      
      public function GetVertex2() : b2Vec2
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(_loc2_ || this)
         {
         }
         return this.m_v2;
      }
   }
}
