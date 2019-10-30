package Box2D.Dynamics
{
   import Box2D.Common.Math.b2Vec2;
   import Box2D.Common.Math.b2XForm;
   import Box2D.Common.b2Color;
   import flash.display.Sprite;
   
   public class b2DebugDraw
   {
      
      public static var e_coreShapeBit:uint = 4;
      
      public static var e_shapeBit:uint = 1;
      
      public static var e_centerOfMassBit:uint = 64;
      
      public static var e_aabbBit:uint = 8;
      
      public static var e_obbBit:uint = 16;
      
      public static var e_pairBit:uint = 32;
      
      public static var e_jointBit:uint = 2;
      
      {
         var e_shapeBit:Boolean = false;
         var e_jointBit:Boolean = true;
         if(!e_shapeBit)
         {
            e_coreShapeBit = 4;
            e_aabbBit = 8;
            if(!e_jointBit)
            {
            }
            addr62:
            return;
         }
         if(e_jointBit)
         {
            e_pairBit = 32;
         }
         §§goto(addr62);
      }
      
      public var m_xformScale:Number = 1.0;
      
      public var m_fillAlpha:Number = 1.0;
      
      public var m_alpha:Number = 1.0;
      
      public var m_lineThickness:Number = 1.0;
      
      public var m_drawFlags:uint;
      
      public var m_drawScale:Number = 1.0;
      
      public var m_sprite:Sprite;
      
      public function b2DebugDraw()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         if(_loc1_ || this)
         {
            if(_loc1_)
            {
               super();
               if(_loc1_ || _loc1_)
               {
                  if(_loc1_ || _loc2_)
                  {
                  }
               }
               addr69:
               return;
            }
            addr68:
            §§goto(addr69);
         }
         this.m_drawFlags = 0;
         if(!(_loc2_ && _loc2_))
         {
            §§goto(addr68);
         }
         §§goto(addr69);
      }
      
      public function DrawPolyline(vertices:Array, vertexCount:int, color:b2Color) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc6_)
         {
         }
         if(_loc5_)
         {
            if(_loc5_ || color)
            {
               if(_loc5_ || color)
               {
               }
               addr56:
               this.m_sprite.graphics.moveTo(vertices[0].x * this.m_drawScale,vertices[0].y * this.m_drawScale);
               if(_loc5_)
               {
                  addr83:
               }
               var i:int = 1;
               while(true)
               {
                  if(i >= vertexCount)
                  {
                     if(_loc5_ || vertices)
                     {
                        break;
                     }
                     break;
                  }
                  if(!(_loc6_ && vertexCount))
                  {
                     this.m_sprite.graphics.lineTo(vertices[i].x * this.m_drawScale,vertices[i].y * this.m_drawScale);
                     if(!(_loc5_ || color))
                     {
                        continue;
                     }
                  }
                  if(_loc5_ || this)
                  {
                     i++;
                     if(_loc5_)
                     {
                        continue;
                     }
                     break;
                  }
                  break;
               }
               return;
            }
         }
         this.m_sprite.graphics.lineStyle(this.m_lineThickness,color.color,this.m_alpha);
         if(!(_loc6_ && vertexCount))
         {
            §§goto(addr56);
         }
         §§goto(addr83);
      }
      
      public function DrawConcaveArc(vertices:Array, vertexCount:int, center:b2Vec2, color:b2Color) : void
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         if(_loc15_ && vertices)
         {
         }
         if(!_loc15_)
         {
            if(_loc14_ || vertexCount)
            {
            }
            addr58:
            if(_loc14_ || vertexCount)
            {
               this.m_sprite.graphics.lineStyle(this.m_lineThickness,color.color,this.m_alpha);
               if(_loc14_ || vertexCount)
               {
                  addr83:
               }
               addr103:
               var s_numSegs:Number = 16;
               if(!_loc14_)
               {
               }
               §§push(vertices[0].x - center.x);
               if(_loc14_ || center)
               {
                  §§push(Number(§§pop()));
               }
               var dx:* = §§pop();
               if(_loc14_ || this)
               {
               }
               §§push(vertices[0].y - center.y);
               if(_loc14_ || vertexCount)
               {
                  §§push(Number(§§pop()));
               }
               var dy:* = §§pop();
               if(!_loc14_)
               {
               }
               var theta1:Number = Math.atan2(dy,dx);
               if(!_loc14_)
               {
               }
               var theta2:Number = Math.atan2(vertices[1].y - center.y,vertices[1].x - center.x);
               if(_loc14_ || vertices)
               {
               }
               var r:Number = Math.sqrt(dx * dx + dy * dy);
               continue loop0;
            }
            this.m_sprite.graphics.moveTo(vertices[0].x * this.m_drawScale,vertices[0].y * this.m_drawScale);
            §§goto(addr103);
         }
         if(!(_loc15_ && center))
         {
            if(_loc15_ && center)
            {
            }
            §§goto(addr83);
         }
         §§goto(addr58);
      }
      
      public function DrawSolidConcaveArc(vertices:Array, vertexCount:int, center:b2Vec2, color:b2Color) : void
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         if(_loc14_)
         {
         }
         if(_loc15_ || this)
         {
            if(_loc15_ || this)
            {
               if(_loc15_)
               {
                  if(!_loc15_)
                  {
                  }
               }
               addr56:
               this.m_sprite.graphics.lineStyle(this.m_lineThickness,color.color,this.m_alpha);
               if(_loc15_)
               {
                  addr70:
                  this.m_sprite.graphics.moveTo(vertices[0].x * this.m_drawScale,vertices[0].y * this.m_drawScale);
                  if(_loc15_ || vertexCount)
                  {
                  }
               }
               addr106:
               var s_numSegs:Number = 16;
               if(_loc14_ && vertexCount)
               {
               }
               §§push(vertices[0].x - center.x);
               if(!_loc14_)
               {
                  §§push(Number(§§pop()));
               }
               var dx:* = §§pop();
               if(_loc14_ && center)
               {
               }
               §§push(vertices[0].y - center.y);
               if(!_loc14_)
               {
                  §§push(Number(§§pop()));
               }
               var dy:* = §§pop();
               if(_loc15_ || this)
               {
               }
               var theta1:Number = Math.atan2(dy,dx);
               if(_loc15_ || center)
               {
               }
               var theta2:Number = Math.atan2(vertices[1].y - center.y,vertices[1].x - center.x);
               if(_loc14_ && vertexCount)
               {
               }
               var r:Number = Math.sqrt(dx * dx + dy * dy);
               continue loop0;
            }
            this.m_sprite.graphics.beginFill(color.color,this.m_fillAlpha);
            if(_loc15_)
            {
               §§goto(addr106);
            }
            §§goto(addr106);
         }
         if(!(_loc14_ && vertices))
         {
            §§goto(addr56);
         }
         §§goto(addr70);
      }
      
      public function DrawSolidPolygon(vertices:Array, vertexCount:int, color:b2Color) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc5_)
         {
         }
         if(!_loc5_)
         {
            if(_loc6_)
            {
               if(!(_loc5_ && color))
               {
                  if(_loc6_ || color)
                  {
                  }
                  this.m_sprite.graphics.lineStyle(this.m_lineThickness,color.color,this.m_alpha);
                  if(_loc6_)
                  {
                     this.m_sprite.graphics.moveTo(vertices[0].x * this.m_drawScale,vertices[0].y * this.m_drawScale);
                     if(_loc6_ || vertices)
                     {
                        if(_loc6_ || vertices)
                        {
                           this.m_sprite.graphics.beginFill(color.color,this.m_fillAlpha);
                           if(_loc5_ && vertices)
                           {
                           }
                        }
                     }
                     addr110:
                     for(var i:int = 1; i < vertexCount; )
                     {
                        this.m_sprite.graphics.lineTo(vertices[i].x * this.m_drawScale,vertices[i].y * this.m_drawScale);
                        if(_loc6_ || vertexCount)
                        {
                           i++;
                           if(!_loc5_)
                           {
                              continue;
                           }
                           break;
                        }
                        break;
                     }
                     this.m_sprite.graphics.lineTo(vertices[0].x * this.m_drawScale,vertices[0].y * this.m_drawScale);
                     if(!(_loc5_ && vertexCount))
                     {
                        this.m_sprite.graphics.endFill();
                        if(_loc5_)
                        {
                        }
                        addr188:
                        return;
                     }
                     §§goto(addr188);
                  }
               }
            }
         }
         §§goto(addr110);
      }
      
      public function DrawCircle(center:b2Vec2, radius:Number, color:b2Color) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc5_)
         {
         }
         this.m_sprite.graphics.lineStyle(this.m_lineThickness,color.color,this.m_alpha);
         if(_loc5_ || color)
         {
         }
         this.m_sprite.graphics.drawCircle(center.x * this.m_drawScale,center.y * this.m_drawScale,radius * this.m_drawScale);
         if(_loc4_)
         {
         }
      }
      
      public function DrawSolidCircle(center:b2Vec2, radius:Number, axis:b2Vec2, color:b2Color) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc6_)
         {
         }
         if(!_loc6_)
         {
            if(_loc5_ || this)
            {
               this.m_sprite.graphics.lineStyle(this.m_lineThickness,color.color,this.m_alpha);
               if(_loc5_ || radius)
               {
                  if(!(_loc6_ && center))
                  {
                     this.m_sprite.graphics.moveTo(0,0);
                     if(!(_loc6_ && this))
                     {
                        this.m_sprite.graphics.beginFill(color.color,this.m_fillAlpha);
                        if(!_loc6_)
                        {
                           this.m_sprite.graphics.drawCircle(center.x * this.m_drawScale,center.y * this.m_drawScale,radius * this.m_drawScale);
                           if(!(_loc6_ && center))
                           {
                              if(!_loc5_)
                              {
                              }
                              addr149:
                           }
                        }
                     }
                     this.m_sprite.graphics.endFill();
                     if(_loc6_ && axis)
                     {
                     }
                  }
               }
               if(!(_loc6_ && radius))
               {
                  this.m_sprite.graphics.moveTo(center.x * this.m_drawScale,center.y * this.m_drawScale);
                  §§goto(addr149);
               }
               addr181:
            }
            return;
         }
         this.m_sprite.graphics.lineTo((center.x + axis.x * radius) * this.m_drawScale,(center.y + axis.y * radius) * this.m_drawScale);
         §§goto(addr181);
      }
      
      public function DrawXForm(xf:b2XForm) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_ && this)
         {
         }
         if(!(_loc2_ && xf))
         {
            if(!_loc2_)
            {
               this.m_sprite.graphics.lineStyle(this.m_lineThickness,16711680,this.m_alpha);
               this.m_sprite.graphics.moveTo(xf.position.x * this.m_drawScale,xf.position.y * this.m_drawScale);
               this.m_sprite.graphics.lineTo((xf.position.x + this.m_xformScale * xf.R.col1.x) * this.m_drawScale,(xf.position.y + this.m_xformScale * xf.R.col1.y) * this.m_drawScale);
               if(!_loc2_)
               {
                  if(!_loc2_)
                  {
                     this.m_sprite.graphics.lineStyle(this.m_lineThickness,65280,this.m_alpha);
                     if(_loc2_)
                     {
                     }
                  }
               }
               this.m_sprite.graphics.moveTo(xf.position.x * this.m_drawScale,xf.position.y * this.m_drawScale);
            }
         }
         this.m_sprite.graphics.lineTo((xf.position.x + this.m_xformScale * xf.R.col2.x) * this.m_drawScale,(xf.position.y + this.m_xformScale * xf.R.col2.y) * this.m_drawScale);
         if(_loc2_ && xf)
         {
         }
      }
      
      public function ClearFlags(flags:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_ && flags)
         {
         }
         if(_loc3_)
         {
            if(_loc2_)
            {
            }
            addr60:
            return;
         }
         if(!_loc2_)
         {
            this.m_drawFlags = this.m_drawFlags & ~flags;
            if(_loc2_ && _loc3_)
            {
            }
         }
         §§goto(addr60);
      }
      
      public function SetFlags(flags:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
         }
         if(_loc3_ || this)
         {
            if(!(_loc2_ && _loc2_))
            {
               if(!_loc2_)
               {
                  this.m_drawFlags = flags;
                  if(_loc2_ && this)
                  {
                  }
               }
            }
            addr66:
            return;
         }
         §§goto(addr66);
      }
      
      public function DrawCurve(p1:b2Vec2, p2:b2Vec2, center:b2Vec2, color:b2Color) : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         if(_loc13_ && p1)
         {
         }
         if(_loc14_)
         {
            if(_loc14_ || p2)
            {
               if(_loc14_)
               {
                  if(_loc13_)
                  {
                  }
               }
               addr54:
               var s_numSegs:Number = 16;
               if(!_loc14_)
               {
               }
               §§push(p1.x);
               if(!_loc13_)
               {
                  §§push(§§pop() - center.x);
                  if(!_loc14_)
                  {
                  }
                  addr72:
                  var dx:* = §§pop();
                  if(_loc13_ && p2)
                  {
                  }
                  §§push(p1.y);
                  if(_loc14_ || this)
                  {
                     §§push(§§pop() - center.y);
                     if(_loc13_)
                     {
                     }
                     addr96:
                     var dy:* = §§pop();
                     if(_loc13_)
                     {
                     }
                     var theta1:Number = Math.atan2(dy,dx);
                     if(_loc13_ && p2)
                     {
                     }
                     var theta2:* = Number(Math.atan2(p2.y - center.y,p2.x - center.x));
                     if(_loc13_)
                     {
                     }
                     var r:Number = Math.sqrt(dx * dx + dy * dy);
                     while(true)
                     {
                        §§push(theta2);
                        §§push(theta1);
                        if(!_loc13_)
                        {
                           if(§§pop() >= §§pop())
                           {
                              if(!_loc13_)
                              {
                                 addr195:
                              }
                           }
                           else if(!(_loc13_ && this))
                           {
                              §§push(theta2);
                              if(_loc14_)
                              {
                                 §§push(Math.PI * 2);
                                 if(_loc14_)
                                 {
                                    §§push(Number(§§pop() + §§pop()));
                                    if(_loc14_ || center)
                                    {
                                    }
                                    addr197:
                                    §§push(theta1);
                                    if(_loc14_)
                                    {
                                       break;
                                    }
                                 }
                                 addr202:
                                 var dtheta:Number = §§pop() / §§pop();
                                 if(_loc14_)
                                 {
                                    if(_loc14_ || this)
                                    {
                                       this.m_sprite.graphics.lineStyle(this.m_lineThickness,color.color,this.m_alpha);
                                       if(_loc13_)
                                       {
                                       }
                                       addr257:
                                       §§push(theta1);
                                       if(!_loc13_)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                       var theta:* = §§pop();
                                       if(_loc14_ || p2)
                                       {
                                          addr333:
                                          while(true)
                                          {
                                             addr334:
                                             while(true)
                                             {
                                                addr342:
                                                while(true)
                                                {
                                                   if(§§pop() > §§pop())
                                                   {
                                                      if(!(_loc13_ && p1))
                                                      {
                                                         break;
                                                      }
                                                      addr351:
                                                      return;
                                                   }
                                                   if(_loc14_)
                                                   {
                                                      this.m_sprite.graphics.lineTo((center.x + r * Math.cos(theta)) * this.m_drawScale,(center.y + r * Math.sin(theta)) * this.m_drawScale);
                                                   }
                                                }
                                                §§goto(addr351);
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          if(!(_loc13_ && center))
                                          {
                                             §§push(theta);
                                             if(_loc14_)
                                             {
                                                §§push(dtheta);
                                                if(!_loc13_)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   if(_loc13_ && center)
                                                   {
                                                   }
                                                   addr330:
                                                   theta = §§pop();
                                                   if(_loc14_)
                                                   {
                                                      §§goto(addr333);
                                                   }
                                                }
                                                §§goto(addr342);
                                             }
                                             §§push(Number(§§pop()));
                                             if(!(_loc13_ && this))
                                             {
                                                §§goto(addr330);
                                             }
                                             §§goto(addr334);
                                          }
                                          §§goto(addr350);
                                       }
                                    }
                                    addr235:
                                    this.m_sprite.graphics.moveTo(p1.x * this.m_drawScale,p1.y * this.m_drawScale);
                                    if(_loc13_ && p1)
                                    {
                                    }
                                    §§goto(addr257);
                                 }
                                 if(!(_loc13_ && center))
                                 {
                                    §§goto(addr235);
                                 }
                                 §§goto(addr257);
                              }
                              theta2 = §§pop();
                              if(_loc14_ || p2)
                              {
                                 if(!_loc13_)
                                 {
                                    continue;
                                 }
                              }
                              §§goto(addr195);
                           }
                           §§goto(addr197);
                           §§push(theta2);
                        }
                        break;
                     }
                     §§goto(addr202);
                     §§push(§§pop() - §§pop());
                     §§push(s_numSegs);
                  }
                  §§goto(addr96);
                  §§push(Number(§§pop()));
               }
               §§goto(addr72);
               §§push(Number(§§pop()));
            }
         }
         if(_loc14_ || p2)
         {
            §§goto(addr54);
         }
         §§goto(addr54);
      }
      
      public function AppendFlags(flags:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc3_)
         {
         }
         if(_loc3_)
         {
            if(!_loc2_)
            {
               if(!_loc2_)
               {
                  this.m_drawFlags = this.m_drawFlags | flags;
                  if(_loc3_ || _loc3_)
                  {
                  }
                  addr54:
                  return;
               }
            }
         }
         §§goto(addr54);
      }
      
      public function DrawSegment(p1:b2Vec2, p2:b2Vec2, color:b2Color) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc5_)
         {
         }
         this.m_sprite.graphics.lineStyle(this.m_lineThickness,color.color,this.m_alpha);
         if(_loc4_ || color)
         {
            this.m_sprite.graphics.moveTo(p1.x * this.m_drawScale,p1.y * this.m_drawScale);
            if(_loc4_ || p1)
            {
            }
            addr97:
            return;
         }
         this.m_sprite.graphics.lineTo(p2.x * this.m_drawScale,p2.y * this.m_drawScale);
         if(_loc5_ && this)
         {
         }
         §§goto(addr97);
      }
      
      public function GetFlags() : uint
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
         }
         if(_loc1_ || _loc2_)
         {
         }
         return this.m_drawFlags;
      }
      
      public function DrawPolygon(vertices:Array, vertexCount:int, color:b2Color) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc5_)
         {
         }
         if(!(_loc6_ && vertexCount))
         {
            if(_loc6_)
            {
            }
            addr41:
            this.m_sprite.graphics.moveTo(vertices[0].x * this.m_drawScale,vertices[0].y * this.m_drawScale);
            var i:int = 1;
            while(true)
            {
               if(i >= vertexCount)
               {
                  if(_loc5_ || vertices)
                  {
                     this.m_sprite.graphics.lineTo(vertices[0].x * this.m_drawScale,vertices[0].y * this.m_drawScale);
                     break;
                  }
                  break;
               }
               if(!(_loc6_ && color))
               {
                  this.m_sprite.graphics.lineTo(vertices[i].x * this.m_drawScale,vertices[i].y * this.m_drawScale);
                  i++;
                  continue;
               }
               break;
            }
            return;
         }
         this.m_sprite.graphics.lineStyle(this.m_lineThickness,color.color,this.m_alpha);
         §§goto(addr41);
      }
   }
}
