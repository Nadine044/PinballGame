package Box2D.Collision.Shapes
{
   import Box2D.Collision.b2AABB;
   import Box2D.Collision.b2Segment;
   import Box2D.Common.Math.b2Mat22;
   import Box2D.Common.Math.b2Vec2;
   import Box2D.Common.Math.b2XForm;
   import Box2D.Common.b2Settings;
   
   public class b2CircleShape extends b2Shape
   {
       
      
      public var m_localPosition:b2Vec2;
      
      public var m_radius:Number;
      
      public function b2CircleShape(def:b2ShapeDef)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc3_ && _loc3_)
         {
         }
         if(!_loc3_)
         {
            if(_loc4_)
            {
               this.m_localPosition = new b2Vec2();
               if(_loc3_ && this)
               {
               }
               addr49:
               super(def);
            }
            §§goto(addr49);
         }
         var circleDef:b2CircleDef = def as b2CircleDef;
         if(_loc4_)
         {
            m_type = e_circleShape;
            this.m_localPosition.SetV(circleDef.localPosition);
            this.m_radius = circleDef.radius;
         }
      }
      
      override public function TestSegment(transform:b2XForm, lambda:Array, normal:b2Vec2, segment:b2Segment, maxLambda:Number) : Boolean
      {
         /*
          * Error de decompilación
          * Tiempo de espera (1 minuto) alcanzado
          * Instruction count: 718
          */
         throw new flash.errors.IllegalOperationError("No decompilado debido al tiempo de espera");
      }
      
      public function GetLocalPosition() : b2Vec2
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && this)
         {
         }
         if(_loc1_)
         {
         }
         return this.m_localPosition;
      }
      
      public function GetRadius() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(_loc1_ && _loc2_)
         {
         }
         return this.m_radius;
      }
      
      override public function ComputeSweptAABB(aabb:b2AABB, transform1:b2XForm, transform2:b2XForm) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         if(!_loc10_)
         {
         }
         var tMat:b2Mat22 = null;
         if(!(_loc9_ && this))
         {
            if(_loc9_)
            {
            }
            addr40:
            tMat = transform1.R;
            if(_loc9_)
            {
            }
            §§push(transform1.position.x);
            if(!_loc9_)
            {
               §§push(tMat.col1.x);
               if(!_loc9_)
               {
                  §§push(this.m_localPosition.x);
                  if(_loc10_ || transform1)
                  {
                     §§push(§§pop() * §§pop());
                     if(_loc10_ || aabb)
                     {
                     }
                     addr91:
                     §§push(§§pop() + §§pop());
                     if(!_loc9_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  addr86:
                  §§goto(addr91);
                  §§push(§§pop() + §§pop() * this.m_localPosition.y);
               }
               §§push(tMat.col2.x);
               if(!(_loc9_ && this))
               {
                  §§goto(addr86);
               }
               §§goto(addr86);
            }
            var p1X:* = §§pop();
            if(_loc10_ || this)
            {
            }
            §§push(transform1.position.y);
            if(_loc10_ || this)
            {
               §§push(tMat.col1.y);
               if(_loc10_)
               {
                  §§push(this.m_localPosition.x);
                  if(!(_loc9_ && aabb))
                  {
                     §§push(§§pop() * §§pop());
                     if(!(_loc9_ && this))
                     {
                        §§push(tMat.col2.y);
                        if(_loc10_ || transform1)
                        {
                        }
                        addr151:
                        §§push(§§pop() + §§pop());
                     }
                  }
                  §§goto(addr151);
                  §§push(§§pop() * this.m_localPosition.y);
               }
               §§push(§§pop() + §§pop());
               if(_loc9_ && this)
               {
               }
               addr161:
               var p1Y:* = §§pop();
               if(_loc9_)
               {
               }
               tMat = transform2.R;
               if(_loc10_ || transform2)
               {
               }
               §§push(transform2.position.x);
               if(_loc10_)
               {
                  §§push(tMat.col1.x);
                  if(!_loc9_)
                  {
                     §§push(this.m_localPosition.x);
                     if(_loc10_)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc10_ || transform2)
                        {
                           §§push(tMat.col2.x);
                           if(_loc9_ && transform2)
                           {
                           }
                           addr221:
                           §§push(§§pop() + §§pop());
                        }
                     }
                     §§goto(addr221);
                     §§push(§§pop() * this.m_localPosition.y);
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc9_ && transform1)
                  {
                  }
                  addr231:
                  var p2X:* = §§pop();
                  if(!_loc10_)
                  {
                  }
                  §§push(transform2.position.y);
                  if(!_loc9_)
                  {
                     §§push(tMat.col1.y);
                     if(_loc10_ || transform1)
                     {
                        §§push(this.m_localPosition.x);
                        if(!_loc9_)
                        {
                           §§push(§§pop() * §§pop());
                           if(!(_loc9_ && this))
                           {
                              §§push(tMat.col2.y);
                              if(_loc10_ || transform2)
                              {
                                 §§push(§§pop() * this.m_localPosition.y);
                              }
                           }
                        }
                        §§push(§§pop() + §§pop());
                     }
                     §§push(§§pop() + §§pop());
                     if(!_loc9_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  var p2Y:* = §§pop();
                  if(_loc10_ || transform2)
                  {
                     if(!(_loc9_ && aabb))
                     {
                        §§push(aabb.lowerBound);
                        if(!(_loc9_ && this))
                        {
                           §§push(p1X);
                           if(!_loc9_)
                           {
                              §§push(p2X);
                              if(_loc10_)
                              {
                                 if(§§pop() >= §§pop())
                                 {
                                    §§push(p2X);
                                    if(_loc10_ || transform2)
                                    {
                                       addr329:
                                       §§push(§§pop() - this.m_radius);
                                       if(_loc9_)
                                       {
                                       }
                                       addr345:
                                       §§push(p1Y);
                                       addr367:
                                       addr441:
                                       if(_loc10_ || aabb)
                                       {
                                          addr364:
                                          §§push(§§pop() - this.m_radius);
                                       }
                                       §§pop().Set(§§pop(),§§pop());
                                       if(_loc9_ && this)
                                       {
                                       }
                                       return;
                                    }
                                 }
                                 §§push(p1Y);
                                 if(!(_loc9_ && transform2))
                                 {
                                    if(§§pop() < p2Y)
                                    {
                                       §§goto(addr345);
                                    }
                                    else
                                    {
                                       §§push(p2Y);
                                       if(_loc10_ || aabb)
                                       {
                                       }
                                    }
                                 }
                                 §§goto(addr367);
                              }
                              §§goto(addr364);
                              §§push(§§pop());
                           }
                           addr318:
                           §§goto(addr329);
                           §§push(§§pop());
                        }
                        §§push(p1X);
                        if(!_loc9_)
                        {
                           §§goto(addr318);
                        }
                        else
                        {
                           §§goto(addr329);
                        }
                        §§goto(addr329);
                     }
                  }
                  if(!_loc9_)
                  {
                     §§push(aabb.upperBound);
                     if(!(_loc9_ && this))
                     {
                        §§push(p1X);
                        if(_loc10_ || aabb)
                        {
                           if(§§pop() <= p2X)
                           {
                              §§push(p2X);
                           }
                           addr410:
                           §§pop().Set(§§pop() + this.m_radius,(p1Y > p2Y?p1Y:p2Y) + this.m_radius);
                           if(_loc9_ && transform2)
                           {
                           }
                           §§goto(addr441);
                        }
                        addr406:
                        §§goto(addr410);
                        §§push(§§pop());
                     }
                     §§push(p1X);
                     if(_loc10_ || transform2)
                     {
                        §§goto(addr406);
                     }
                     else
                     {
                        §§goto(addr410);
                     }
                     §§goto(addr410);
                  }
                  §§goto(addr441);
               }
               §§goto(addr231);
               §§push(Number(§§pop()));
            }
            §§goto(addr161);
            §§push(Number(§§pop()));
         }
         if(_loc9_)
         {
         }
         §§goto(addr40);
      }
      
      override public function ComputeMass(massData:b2MassData) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_)
         {
         }
         if(_loc3_)
         {
            §§push(massData);
            §§push(m_density * b2Settings.b2_pi);
            if(!(_loc2_ && this))
            {
               §§push(this.m_radius);
               if(_loc3_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc3_ || _loc3_)
                  {
                     §§push(this.m_radius);
                  }
               }
               §§push(§§pop() * §§pop());
            }
            §§pop().mass = §§pop();
            if(!_loc3_)
            {
            }
            addr155:
            return;
         }
         massData.center.SetV(this.m_localPosition);
         §§push(massData);
         §§push(massData.mass);
         if(_loc3_)
         {
            §§push(0.5);
            if(!_loc2_)
            {
               §§push(this.m_radius);
               if(!(_loc2_ && _loc2_))
               {
                  §§push(§§pop() * §§pop());
                  if(_loc3_ || _loc3_)
                  {
                  }
                  addr139:
                  §§push(§§pop() * §§pop());
               }
               addr95:
               §§push(§§pop() * §§pop());
               if(_loc3_)
               {
                  §§push(this.m_localPosition.x);
                  if(_loc3_ || massData)
                  {
                     addr108:
                     §§push(this.m_localPosition);
                     if(_loc3_)
                     {
                        §§push(§§pop().x);
                        if(_loc3_)
                        {
                           §§push(§§pop() * §§pop());
                           if(!(_loc2_ && this))
                           {
                              §§push(this.m_localPosition);
                           }
                        }
                        addr137:
                        §§push(§§pop() + §§pop());
                     }
                     §§push(§§pop().y);
                     if(!(_loc2_ && _loc2_))
                     {
                        §§push(§§pop() * this.m_localPosition.y);
                     }
                     §§goto(addr137);
                  }
                  §§push(§§pop() + §§pop());
               }
               §§goto(addr139);
            }
            §§push(this.m_radius);
            if(!_loc2_)
            {
               §§goto(addr95);
            }
            §§goto(addr108);
         }
         §§pop().I = §§pop();
         if(!(_loc2_ && _loc3_))
         {
            §§goto(addr155);
         }
         §§goto(addr155);
      }
      
      override public function UpdateSweepRadius(center:b2Vec2) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc5_ && dX)
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
            addr34:
            §§push(this.m_localPosition.x);
            if(!(_loc5_ && center))
            {
               §§push(§§pop() - center.x);
               if(!(_loc5_ && this))
               {
                  §§push(Number(§§pop()));
               }
            }
            var dX:* = §§pop();
            if(_loc5_)
            {
            }
            §§push(this.m_localPosition.y);
            if(!(_loc5_ && dY))
            {
               §§push(§§pop() - center.y);
               if(_loc5_)
               {
               }
               addr82:
               var dY:* = §§pop();
               if(!(_loc5_ && center))
               {
                  if(_loc4_ || dX)
                  {
                     dX = Number(Math.sqrt(dX * dX + dY * dY));
                     if(!_loc4_)
                     {
                     }
                     addr144:
                     return;
                  }
                  addr114:
                  §§push();
                  §§push(dX);
                  if(!_loc5_)
                  {
                     §§push(this.m_radius);
                     if(!(_loc5_ && center))
                     {
                        §§push(§§pop() + §§pop());
                        if(_loc4_)
                        {
                           §§push(b2Settings.b2_toiSlop);
                        }
                     }
                     §§push(§§pop() - §§pop());
                  }
                  §§pop().m_sweepRadius = §§pop();
                  if(!_loc5_)
                  {
                     addr143:
                  }
                  §§goto(addr144);
               }
               if(!_loc5_)
               {
                  §§goto(addr114);
               }
               §§goto(addr143);
            }
            §§goto(addr82);
            §§push(Number(§§pop()));
         }
         if(!_loc4_)
         {
         }
         §§goto(addr34);
      }
      
      override public function ComputeAABB(aabb:b2AABB, transform:b2XForm) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc6_)
         {
         }
         if(_loc6_)
         {
            if(_loc6_ || this)
            {
               if(!_loc6_)
               {
               }
               addr37:
               var tMat:b2Mat22 = transform.R;
               if(!_loc6_)
               {
               }
               §§push(transform.position.x);
               if(_loc6_ || aabb)
               {
                  §§push(tMat.col1.x);
                  if(!_loc7_)
                  {
                     §§push(this.m_localPosition.x);
                     if(!(_loc7_ && tMat))
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc6_ || transform)
                        {
                        }
                        addr88:
                        §§push(§§pop() + §§pop());
                        addr97:
                        if(_loc6_ || aabb)
                        {
                        }
                        var pX:* = §§pop();
                        if(_loc7_ && tMat)
                        {
                        }
                        §§push(transform.position.y);
                        if(_loc6_ || transform)
                        {
                           §§push(tMat.col1.y);
                           if(!(_loc7_ && this))
                           {
                              §§push(this.m_localPosition.x);
                              if(!(_loc7_ && transform))
                              {
                                 §§push(§§pop() * §§pop());
                                 if(_loc6_ || this)
                                 {
                                    §§push(tMat.col2.y);
                                    if(_loc6_)
                                    {
                                       §§push(§§pop() * this.m_localPosition.y);
                                    }
                                 }
                              }
                              §§push(§§pop() + §§pop());
                           }
                           §§push(§§pop() + §§pop());
                           if(_loc6_ || tMat)
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                        var pY:* = §§pop();
                        if(_loc6_)
                        {
                           if(_loc6_)
                           {
                              §§push(aabb.lowerBound);
                              §§push(pX);
                              if(!_loc7_)
                              {
                                 §§push(this.m_radius);
                                 if(!(_loc7_ && transform))
                                 {
                                    §§push(§§pop() - §§pop());
                                 }
                                 addr199:
                                 §§pop().Set(§§pop(),§§pop() - this.m_radius);
                                 addr250:
                                 if(_loc6_ || transform)
                                 {
                                    if(_loc6_ || tMat)
                                    {
                                    }
                                 }
                                 return;
                              }
                              §§push(pY);
                              if(!(_loc7_ && tMat))
                              {
                                 §§goto(addr199);
                              }
                              §§goto(addr199);
                           }
                           §§push(aabb.upperBound);
                           §§push(pX);
                           if(_loc6_)
                           {
                              §§push(this.m_radius);
                              if(!_loc7_)
                              {
                                 §§push(§§pop() + §§pop());
                              }
                              addr246:
                              §§pop().Set(§§pop(),§§pop());
                              if(_loc7_)
                              {
                              }
                              §§goto(addr250);
                           }
                           §§push(pY);
                           if(!(_loc7_ && transform))
                           {
                              §§push(§§pop() + this.m_radius);
                           }
                           §§goto(addr246);
                        }
                        §§goto(addr250);
                     }
                     addr87:
                     §§goto(addr88);
                     §§push(§§pop() + §§pop());
                  }
                  §§push(tMat.col2.x);
                  if(!_loc7_)
                  {
                     §§push(§§pop() * this.m_localPosition.y);
                  }
                  §§goto(addr87);
               }
               §§goto(addr97);
               §§push(Number(§§pop()));
            }
            addr34:
            if(!_loc7_)
            {
               §§goto(addr37);
            }
            §§goto(addr37);
         }
         if(_loc6_)
         {
            §§goto(addr34);
         }
         §§goto(addr37);
      }
      
      override public function TestPoint(transform:b2XForm, p:b2Vec2) : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc7_)
         {
         }
         if(_loc7_ && p)
         {
         }
         if(_loc6_)
         {
            if(_loc6_ || tMat)
            {
            }
            addr39:
            var tMat:b2Mat22 = transform.R;
            if(_loc6_ || transform)
            {
            }
            §§push(transform.position.x);
            if(!_loc7_)
            {
               §§push(tMat.col1.x);
               if(!_loc7_)
               {
                  §§push(this.m_localPosition.x);
                  if(!_loc7_)
                  {
                     §§push(§§pop() * §§pop());
                     if(_loc6_ || p)
                     {
                        §§push(tMat.col2.x);
                        if(_loc6_)
                        {
                           §§push(§§pop() * this.m_localPosition.y);
                        }
                     }
                  }
                  §§push(§§pop() + §§pop());
               }
               §§push(§§pop() + §§pop());
               if(_loc6_ || transform)
               {
                  §§push(Number(§§pop()));
               }
            }
            var dX:* = §§pop();
            if(!_loc6_)
            {
            }
            §§push(transform.position.y);
            if(!(_loc7_ && this))
            {
               §§push(tMat.col1.y);
               if(_loc6_)
               {
                  §§push(this.m_localPosition.x);
                  if(!(_loc7_ && tMat))
                  {
                     §§push(§§pop() * §§pop());
                     if(_loc6_ || p)
                     {
                     }
                     addr152:
                     §§push(§§pop() + §§pop());
                     addr156:
                     if(!_loc6_)
                     {
                     }
                     var dY:* = §§pop();
                     if(_loc6_ || p)
                     {
                        if(!(_loc7_ && tMat))
                        {
                           §§push(p.x);
                           if(!(_loc7_ && tMat))
                           {
                              §§push(dX);
                              if(!_loc7_)
                              {
                                 §§push(§§pop() - §§pop());
                                 if(_loc6_ || p)
                                 {
                                    §§push(Number(§§pop()));
                                    if(!_loc7_)
                                    {
                                       dX = §§pop();
                                       if(_loc6_ || transform)
                                       {
                                          if(_loc7_ && p)
                                          {
                                          }
                                       }
                                       §§push(p.y);
                                       if(!_loc6_)
                                       {
                                       }
                                       addr226:
                                       §§push(Number(§§pop()));
                                       if(_loc6_ || p)
                                       {
                                       }
                                    }
                                    addr248:
                                    §§push(dY);
                                 }
                                 §§push(dY);
                                 if(!_loc7_)
                                 {
                                    §§push(§§pop() - §§pop());
                                    if(_loc6_ || transform)
                                    {
                                       §§goto(addr226);
                                    }
                                    §§goto(addr248);
                                 }
                                 addr266:
                                 return §§pop() <= §§pop();
                              }
                              §§push(dY);
                              if(_loc6_)
                              {
                                 addr261:
                                 §§push(§§pop() + §§pop() * §§pop());
                                 §§push(this.m_radius);
                                 §§push(this.m_radius);
                              }
                              §§goto(addr266);
                              §§push(§§pop() * §§pop());
                           }
                           dY = §§pop();
                           if(!_loc6_)
                           {
                           }
                        }
                     }
                     §§push(dX);
                     if(!(_loc7_ && tMat))
                     {
                        §§goto(addr248);
                        §§push(§§pop() * dX);
                     }
                     §§goto(addr261);
                  }
                  addr151:
                  §§goto(addr152);
                  §§push(§§pop() + §§pop());
               }
               §§push(tMat.col2.y);
               if(!(_loc7_ && p))
               {
                  §§push(§§pop() * this.m_localPosition.y);
               }
               §§goto(addr151);
            }
            §§goto(addr156);
            §§push(Number(§§pop()));
         }
         §§goto(addr39);
      }
   }
}
