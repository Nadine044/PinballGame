package Box2D.Collision.Shapes
{
   import Box2D.Common.Math.b2Vec2;
   import Box2D.Common.b2Settings;
   import Box2D.Dynamics.b2World;
   
   public class b2StaticEdgeChain
   {
       
      
      public var isALoop:Boolean;
      
      public var edges:Array;
      
      public function b2StaticEdgeChain(def:b2ShapeDef, world:b2World)
      {
         var _loc15_:Boolean = true;
         var _loc16_:Boolean = false;
         if(_loc16_ && world)
         {
         }
         var i:* = 0;
         var v1:b2Vec2 = null;
         var v2:b2Vec2 = null;
         var s2:b2StaticEdgeShape = null;
         var angle:* = NaN;
         var angle2:Number = NaN;
         var s:b2StaticEdgeShape = null;
         var core:b2Vec2 = null;
         var cornerDir:b2Vec2 = null;
         if(_loc15_)
         {
            if(!(_loc16_ && edgeDef))
            {
               this.edges = new Array();
               if(!_loc16_)
               {
                  if(_loc16_)
                  {
                  }
                  addr82:
                  if(_loc15_)
                  {
                     if(_loc16_ && edgeDef)
                     {
                     }
                  }
                  if(!_loc16_)
                  {
                     addr96:
                  }
               }
               super();
            }
            addr97:
            var edgeDef:b2StaticEdgeChainDef = def as b2StaticEdgeChainDef;
            this.isALoop = edgeDef.isALoop;
            if(!(_loc16_ && this))
            {
               if(edgeDef.isALoop)
               {
                  §§push(0);
                  if(!(_loc16_ && this))
                  {
                     i = §§pop();
                     if(!_loc15_)
                     {
                        addr154:
                     }
                     addr157:
                     v1 = §§pop()[0];
                     addr169:
                     if(_loc16_ && world)
                     {
                     }
                     v1 = v1.Copy();
                     while(true)
                     {
                        if(i >= edgeDef.vertexCount)
                        {
                           if(!(_loc16_ && this))
                           {
                              if(!_loc16_)
                              {
                                 if(edgeDef.isALoop)
                                 {
                                    if(_loc16_)
                                    {
                                    }
                                    addr373:
                                    §§push(this.edges);
                                    if(!(_loc16_ && def))
                                    {
                                       §§push(edgeDef.vertexCount);
                                       if(!(_loc15_ || this))
                                       {
                                          addr405:
                                          s = §§pop()[§§pop()];
                                          if(_loc15_ || def)
                                          {
                                             if(!_loc16_)
                                             {
                                                i = 1;
                                                if(_loc16_ && edgeDef)
                                                {
                                                }
                                             }
                                          }
                                       }
                                       addr428:
                                       angle = Number(Math.atan2(s.m_direction.y,s.m_direction.x));
                                       loop1:
                                       while(true)
                                       {
                                          while(§§pop() < this.edges.length)
                                          {
                                             if(!(_loc16_ && edgeDef))
                                             {
                                                if(_loc16_ && world)
                                                {
                                                   break;
                                                }
                                             }
                                             s2 = this.edges[i];
                                             if(!(_loc16_ && edgeDef))
                                             {
                                                if(!_loc15_)
                                                {
                                                }
                                                addr491:
                                                core = s2.m_direction.Copy();
                                                if(_loc16_)
                                                {
                                                }
                                                core.Multiply(Math.tan((angle2 - angle) * 0.5));
                                                core.Subtract(s2.m_normal);
                                                core.Multiply(b2Settings.b2_toiSlop);
                                                if(_loc15_ || edgeDef)
                                                {
                                                   core.Add(s2.m_v1);
                                                   if(!_loc15_)
                                                   {
                                                   }
                                                   addr533:
                                                   cornerDir = s.m_direction.Copy();
                                                   cornerDir.Add(s2.m_direction);
                                                   cornerDir.Normalize();
                                                   if(!_loc16_)
                                                   {
                                                      s.SetNextEdge(s2,core,cornerDir);
                                                   }
                                                   s2.SetPrevEdge(s,core,cornerDir);
                                                   s = s2;
                                                   if(!(_loc16_ && def))
                                                   {
                                                      if(_loc16_ && world)
                                                      {
                                                      }
                                                      addr606:
                                                      i++;
                                                      continue loop1;
                                                   }
                                                   §§push(angle2);
                                                   if(!_loc16_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                   }
                                                   angle = §§pop();
                                                   if(_loc15_ || world)
                                                   {
                                                      if(!(_loc15_ || this))
                                                      {
                                                         continue loop1;
                                                      }
                                                   }
                                                   §§goto(addr606);
                                                }
                                                §§goto(addr533);
                                             }
                                             angle2 = Math.atan2(s2.m_direction.y,s2.m_direction.x);
                                             if(_loc15_ || edgeDef)
                                             {
                                             }
                                             §§goto(addr491);
                                             s = §§pop()[§§pop() - 1];
                                             §§push(0);
                                             if(!_loc16_)
                                             {
                                                i = §§pop();
                                                §§goto(addr428);
                                             }
                                             else
                                             {
                                                continue;
                                             }
                                          }
                                          return;
                                       }
                                    }
                                    else
                                    {
                                       break;
                                    }
                                 }
                                 else
                                 {
                                    §§push(this.edges);
                                    break;
                                 }
                              }
                           }
                           addr372:
                           §§goto(addr373);
                        }
                        else
                        {
                           if(_loc15_ || this)
                           {
                              if(!(_loc15_ || world))
                              {
                                 §§goto(addr372);
                              }
                           }
                           §§push(edgeDef.vertices);
                           if(!(_loc16_ && this))
                           {
                              §§push(i);
                              if(!(_loc16_ && world))
                              {
                                 v2 = §§pop()[§§pop()];
                                 if(_loc16_ && this)
                                 {
                                 }
                                 v2 = v2.Copy();
                                 if(!_loc15_)
                                 {
                                 }
                                 s = new b2StaticEdgeShape(v1,v2,edgeDef);
                                 if(_loc15_ || def)
                                 {
                                    this.edges.push(s);
                                    if(!_loc16_)
                                    {
                                       s.m_chain = this;
                                    }
                                    if(_loc15_)
                                    {
                                       s.m_next = world.m_groundBody.m_shapeList;
                                       if(_loc15_ || this)
                                       {
                                          §§push(world.m_groundBody);
                                          if(_loc15_)
                                          {
                                             §§pop().m_shapeList = s;
                                          }
                                          addr283:
                                          §§push(_loc13_.m_shapeCount);
                                          if(_loc15_ || def)
                                          {
                                             §§push(§§pop() + 1);
                                          }
                                          addr315:
                                          if(_loc15_ || edgeDef)
                                          {
                                             _loc13_.m_shapeCount = _loc14_;
                                          }
                                          s.m_body = world.m_groundBody;
                                          if(_loc16_ && def)
                                          {
                                          }
                                          addr344:
                                          v1 = v2;
                                          if(!_loc16_)
                                          {
                                             if(_loc16_)
                                             {
                                                continue;
                                             }
                                          }
                                          i++;
                                          continue;
                                       }
                                       if(_loc15_)
                                       {
                                          s.CreateProxy(world.m_broadPhase,world.m_groundBody.m_xf);
                                       }
                                       s.UpdateSweepRadius(world.m_groundBody.m_sweep.localCenter);
                                       §§goto(addr344);
                                    }
                                 }
                                 if(_loc15_ || def)
                                 {
                                    §§goto(addr283);
                                    §§push(world.m_groundBody);
                                 }
                                 §§goto(addr315);
                              }
                           }
                           else
                           {
                              break;
                           }
                        }
                        §§goto(addr391);
                     }
                     §§goto(addr405);
                     §§push(0);
                  }
                  addr155:
                  §§goto(addr157);
                  §§push(edgeDef.vertices);
               }
               else
               {
                  §§push(1);
               }
               i = §§pop();
               if(_loc15_)
               {
                  §§goto(addr154);
               }
               §§goto(addr155);
            }
            §§push(edgeDef.vertices);
            if(_loc15_)
            {
               §§push(edgeDef.vertexCount);
               if(_loc15_ || edgeDef)
               {
                  v1 = §§pop()[§§pop() - 1];
               }
               §§goto(addr169);
            }
            else
            {
               §§goto(addr157);
            }
            §§goto(addr157);
         }
         if(!_loc16_)
         {
            if(_loc15_ || def)
            {
               §§goto(addr82);
            }
            §§goto(addr96);
         }
         §§goto(addr97);
      }
   }
}
