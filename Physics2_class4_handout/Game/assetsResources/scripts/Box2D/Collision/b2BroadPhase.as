package Box2D.Collision
{
   import Box2D.Common.Math.b2Math;
   import Box2D.Common.Math.b2Vec2;
   import Box2D.Common.b2Settings;
   
   public class b2BroadPhase
   {
      
      public static var s_validate:Boolean = false;
      
      public static const b2_nullEdge:uint = 65535;
      
      public static const b2_invalid:uint = 65535;
      
      {
         var s_validate:Boolean = false;
         var b2_invalid:Boolean = true;
         if(!(s_validate && s_validate))
         {
            if(b2_invalid)
            {
               s_validate = false;
               if(b2_invalid || b2BroadPhase)
               {
               }
               addr44:
               b2_invalid = b2Settings.USHRT_MAX;
               if(!s_validate)
               {
                  if(b2_invalid)
                  {
                     b2_nullEdge = b2Settings.USHRT_MAX;
                  }
               }
            }
            addr64:
            return;
         }
         if(!s_validate)
         {
            §§goto(addr44);
         }
         §§goto(addr64);
      }
      
      public var m_bounds:Array;
      
      public var m_quantizationFactor:b2Vec2;
      
      public var m_worldAABB:b2AABB;
      
      public var m_freeProxy:uint;
      
      public var m_proxyCount:int;
      
      public var m_proxyPool:Array;
      
      public var m_queryResultCount:int;
      
      public var m_pairManager:b2PairManager;
      
      public var m_timeStamp:uint;
      
      public var m_queryResults:Array;
      
      public function b2BroadPhase(worldAABB:b2AABB, callback:b2PairCallback)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc8_)
         {
         }
         var i:int = 0;
         var dY:Number = NaN;
         var tProxy:b2Proxy = null;
         var j:int = 0;
         if(_loc9_)
         {
            if(_loc9_ || this)
            {
               this.m_pairManager = new b2PairManager();
               if(!(_loc8_ && i))
               {
                  this.m_proxyPool = new Array(b2Settings.b2_maxPairs);
                  if(!(_loc8_ && this))
                  {
                     this.m_bounds = new Array(2 * b2Settings.b2_maxProxies);
                     if(!(_loc8_ && callback))
                     {
                        this.m_queryResults = new Array(b2Settings.b2_maxProxies);
                        if(_loc9_ || worldAABB)
                        {
                           if(!_loc8_)
                           {
                              this.m_quantizationFactor = new b2Vec2();
                              if(_loc9_ || i)
                              {
                              }
                              super();
                              if(_loc8_ && worldAABB)
                              {
                              }
                           }
                        }
                        addr120:
                        if(_loc8_ && i)
                        {
                        }
                        addr164:
                        if(_loc9_ || i)
                        {
                        }
                     }
                  }
                  if(!_loc8_)
                  {
                     if(!(_loc8_ && callback))
                     {
                        this.m_pairManager.Initialize(this,callback);
                        if(_loc8_)
                        {
                        }
                     }
                     addr176:
                     i = 0;
                  }
                  if(_loc9_ || worldAABB)
                  {
                     this.m_worldAABB = worldAABB;
                     if(_loc8_ && i)
                     {
                     }
                  }
                  §§goto(addr164);
               }
               §§goto(addr120);
            }
            this.m_proxyCount = 0;
            §§goto(addr176);
         }
         continue loop0;
      }
      
      public static function BinarySearch(bounds:Array, count:int, value:uint) : uint
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_ || count)
         {
         }
         var mid:* = 0;
         var bound:b2Bound = null;
         if(_loc8_ && b2BroadPhase)
         {
         }
         var low:int = 0;
         if(!_loc9_)
         {
         }
         §§push(count);
         if(!_loc8_)
         {
            §§push(int(§§pop() - 1));
         }
         var high:* = §§pop();
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               while(§§pop() <= §§pop())
               {
                  if(!_loc8_)
                  {
                     §§push(low);
                     if(_loc9_)
                     {
                        §§push(high);
                        if(_loc9_)
                        {
                           §§push(§§pop() + §§pop());
                           if(!_loc8_)
                           {
                              §§push(§§pop() / 2);
                           }
                           §§push(int(§§pop()));
                           if(!(_loc9_ || count))
                           {
                              continue loop1;
                           }
                        }
                        else
                        {
                           continue;
                        }
                     }
                     mid = §§pop();
                     if(!_loc8_)
                     {
                        bound = bounds[mid];
                        if(!_loc8_)
                        {
                           if(!_loc8_)
                           {
                              §§push(bound.value);
                              if(!(_loc8_ && count))
                              {
                                 §§push(value);
                                 if(!_loc8_)
                                 {
                                    if(§§pop() > §§pop())
                                    {
                                       if(_loc9_ || bounds)
                                       {
                                          §§push(mid);
                                          if(_loc9_ || bounds)
                                          {
                                             §§push(§§pop() - 1);
                                             if(_loc9_ || value)
                                             {
                                                §§push(int(§§pop()));
                                                if(!(_loc8_ && count))
                                                {
                                                   high = §§pop();
                                                   if(_loc8_ && b2BroadPhase)
                                                   {
                                                   }
                                                }
                                             }
                                             addr171:
                                             low = §§pop();
                                          }
                                          addr169:
                                          §§goto(addr171);
                                          §§push(§§pop() + 1);
                                       }
                                       else
                                       {
                                          addr165:
                                       }
                                    }
                                    else
                                    {
                                       §§push(bound.value);
                                    }
                                    addr173:
                                    continue loop0;
                                 }
                                 addr157:
                                 if(§§pop() < §§pop())
                                 {
                                    if(!(_loc8_ && value))
                                    {
                                       §§goto(addr165);
                                    }
                                    §§goto(addr173);
                                 }
                                 else
                                 {
                                    break loop0;
                                 }
                              }
                              §§goto(addr157);
                              §§push(value);
                           }
                           §§push(mid);
                           if(_loc9_)
                           {
                              §§goto(addr169);
                           }
                           §§goto(addr171);
                        }
                        continue loop0;
                     }
                     addr191:
                     return uint(low);
                  }
                  break;
               }
               §§goto(addr191);
            }
         }
         return uint(mid);
      }
      
      public function QueryAABB(aabb:b2AABB, userData:*, maxCount:int) : int
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         if(_loc13_)
         {
         }
         var lowerIndex:uint = 0;
         var upperIndex:uint = 0;
         var proxy:b2Proxy = null;
         if(!(_loc13_ && userData))
         {
            if(_loc13_ && userData)
            {
            }
            addr59:
            addr64:
            if(_loc13_)
            {
            }
            var lowerValues:Array = new Array();
            if(_loc13_)
            {
            }
            var upperValues:Array = new Array();
            if(!(_loc13_ && maxCount))
            {
               if(_loc13_ && aabb)
               {
               }
               addr100:
               var lowerIndexOut:Array = [lowerIndex];
               if(!_loc14_)
               {
               }
               var upperIndexOut:Array = [upperIndex];
               if(!(_loc13_ && this))
               {
                  if(_loc14_ || this)
                  {
                     this.Query(lowerIndexOut,upperIndexOut,lowerValues[0],upperValues[0],this.m_bounds[0],2 * this.m_proxyCount,0);
                     if(!(_loc13_ && maxCount))
                     {
                        if(_loc13_)
                        {
                        }
                     }
                  }
                  addr183:
                  var count:int = 0;
                  if(_loc13_)
                  {
                  }
                  var i:int = 0;
                  while(true)
                  {
                     §§push(i);
                     if(_loc14_)
                     {
                        §§push(this.m_queryResultCount);
                        if(!(_loc13_ && maxCount))
                        {
                           §§push(§§pop() < §§pop());
                           if(_loc14_ || aabb)
                           {
                              if(§§pop())
                              {
                                 if(_loc13_)
                                 {
                                 }
                              }
                              addr270:
                              if(§§pop())
                              {
                                 if(_loc14_)
                                 {
                                    proxy = this.m_proxyPool[this.m_queryResults[i]];
                                    if(!(_loc13_ && maxCount))
                                    {
                                       if(_loc14_)
                                       {
                                          userData[i] = proxy.userData;
                                          if(_loc13_ && this)
                                          {
                                          }
                                          addr231:
                                          i++;
                                          if(!_loc13_)
                                          {
                                             addr234:
                                             count++;
                                          }
                                          continue;
                                       }
                                       if(_loc14_)
                                       {
                                          §§goto(addr231);
                                       }
                                       §§goto(addr234);
                                    }
                                    else
                                    {
                                       continue;
                                    }
                                 }
                              }
                              if(_loc14_ || userData)
                              {
                                 this.m_queryResultCount = 0;
                                 this.IncrementTimeStamp();
                              }
                              §§push(count);
                              break;
                           }
                           §§pop();
                           §§push(count);
                           if(!(_loc13_ && userData))
                           {
                              §§push(maxCount);
                           }
                           break;
                        }
                        §§goto(addr270);
                        §§push(§§pop() < §§pop());
                     }
                     break;
                  }
                  return §§pop();
               }
               this.Query(lowerIndexOut,upperIndexOut,lowerValues[1],upperValues[1],this.m_bounds[1],2 * this.m_proxyCount,1);
               if(!_loc13_)
               {
                  §§goto(addr183);
               }
               §§goto(addr183);
            }
            this.ComputeBounds(lowerValues,upperValues,aabb);
            if(!_loc14_)
            {
            }
            §§goto(addr100);
         }
         if(_loc14_ || aabb)
         {
            if(_loc14_)
            {
               if(!_loc14_)
               {
               }
               §§goto(addr59);
            }
            §§goto(addr64);
         }
         §§goto(addr59);
      }
      
      public function Commit() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
         if(!(_loc2_ && this))
         {
            if(!_loc2_)
            {
               this.m_pairManager.Commit();
               if(_loc2_)
               {
               }
            }
         }
      }
      
      public function GetProxy(proxyId:int) : b2Proxy
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc4_)
         {
         }
         if(!_loc4_)
         {
            if(_loc3_)
            {
               if(_loc3_ || proxy)
               {
               }
            }
         }
         var proxy:b2Proxy = this.m_proxyPool[proxyId];
         if(_loc3_ || this)
         {
            if(_loc4_ && _loc3_)
            {
            }
            addr103:
            return null;
         }
         §§push(proxyId == b2Pair.b2_nullProxy);
         if(_loc3_)
         {
            §§push(§§pop());
            if(!(_loc4_ && this))
            {
               if(!§§pop())
               {
                  if(_loc4_ && proxyId)
                  {
                  }
               }
               addr100:
               if(§§pop())
               {
                  if(!_loc4_)
                  {
                     §§goto(addr103);
                  }
                  §§goto(addr103);
               }
               else
               {
                  return proxy;
               }
            }
            addr99:
            §§goto(addr100);
            §§push(§§pop() == §§pop());
         }
         §§pop();
         §§push(proxy.IsValid());
         if(_loc3_ || proxyId)
         {
            §§goto(addr99);
            §§push(false);
         }
         §§goto(addr100);
      }
      
      private function IncrementTimeStamp() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc4_ && this)
         {
         }
         var i:* = uint(0);
         if(!_loc4_)
         {
            if(_loc5_ || _loc2_)
            {
            }
            addr53:
            if(!(_loc4_ && _loc3_))
            {
               addr63:
               i = uint(0);
            }
            addr64:
            loop0:
            while(true)
            {
               while(true)
               {
                  if(§§pop() >= b2Settings.b2_maxProxies)
                  {
                     if(!(_loc4_ && this))
                     {
                        this.m_timeStamp = 1;
                        break;
                     }
                     break;
                  }
                  (this.m_proxyPool[i] as b2Proxy).timeStamp = 0;
                  if(_loc5_ || this)
                  {
                     if(_loc5_)
                     {
                        §§push(i);
                        if(!(_loc4_ && _loc2_))
                        {
                           §§push(uint(§§pop() + 1));
                           if(_loc5_ || this)
                           {
                              i = §§pop();
                              continue loop0;
                           }
                        }
                        continue;
                     }
                     break;
                  }
                  continue loop0;
               }
               return;
            }
         }
         §§push(this.m_timeStamp);
         if(!(_loc4_ && _loc2_))
         {
            if(§§pop() == b2Settings.USHRT_MAX)
            {
               if(!_loc4_)
               {
                  if(_loc4_)
                  {
                  }
                  §§goto(addr64);
               }
               §§goto(addr53);
            }
            else
            {
               if(!(_loc4_ && this))
               {
                  _loc2_.m_timeStamp = _loc3_;
               }
               if(_loc5_ || this)
               {
               }
            }
            §§goto(addr160);
         }
         §§goto(addr63);
      }
      
      private function Query(lowerQueryOut:Array, upperQueryOut:Array, lowerValue:uint, upperValue:uint, bounds:Array, boundCount:uint, axis:int) : void
      {
         var _loc15_:Boolean = true;
         var _loc16_:Boolean = false;
         if(!_loc15_)
         {
         }
         var bound:b2Bound = null;
         var i:* = 0;
         var s:* = 0;
         var proxy:b2Proxy = null;
         if(_loc15_)
         {
            if(_loc16_)
            {
            }
            if(_loc15_)
            {
               if(_loc15_ || lowerQueryOut)
               {
                  if(_loc16_)
                  {
                  }
               }
               addr59:
               if(_loc16_)
               {
               }
            }
            if(_loc15_ || lowerValue)
            {
               §§goto(addr59);
            }
         }
         §§push(BinarySearch(bounds,boundCount,lowerValue));
         if(_loc15_)
         {
            §§push(uint(§§pop()));
         }
         var lowerQuery:* = §§pop();
         if(_loc16_ && lowerValue)
         {
         }
         §§push(BinarySearch(bounds,boundCount,upperValue));
         if(!(_loc16_ && this))
         {
            §§push(uint(§§pop()));
         }
         var upperQuery:* = §§pop();
         if(_loc16_)
         {
         }
         §§push(lowerQuery);
         if(!_loc16_)
         {
            §§push(uint(§§pop()));
         }
         var j:* = §§pop();
         while(true)
         {
            §§push(j);
            if(_loc15_ || this)
            {
               if(§§pop() >= upperQuery)
               {
                  if(!(_loc16_ && this))
                  {
                     §§push(lowerQuery);
                     if(_loc15_)
                     {
                        break;
                     }
                     addr171:
                     i = int(§§pop() - 1);
                     if(!(_loc16_ && this))
                     {
                        if(!(_loc16_ && upperQueryOut))
                        {
                           addr196:
                           §§push(bounds);
                           if(!(_loc16_ && lowerValue))
                           {
                              §§push(i);
                              if(!_loc16_)
                              {
                                 bound = §§pop()[§§pop()];
                                 if(!_loc16_)
                                 {
                                    if(!(_loc16_ && this))
                                    {
                                       addr229:
                                       §§push(int(bound.stabbingCount));
                                       addr329:
                                       if(!(_loc16_ && lowerValue))
                                       {
                                          s = §§pop();
                                          if(_loc16_)
                                          {
                                          }
                                       }
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             if(!_loc16_)
                                             {
                                                break;
                                             }
                                             addr333:
                                             §§push(lowerQueryOut);
                                             if(_loc15_ || lowerValue)
                                             {
                                                §§push(0);
                                                if(!_loc16_)
                                                {
                                                   §§push(lowerQuery);
                                                   if(!(_loc16_ && lowerQueryOut))
                                                   {
                                                      §§pop()[§§pop()] = §§pop();
                                                      if(!_loc16_)
                                                      {
                                                         addr355:
                                                         if(_loc16_ && this)
                                                         {
                                                         }
                                                      }
                                                      addr375:
                                                      return;
                                                   }
                                                   addr373:
                                                   §§pop()[§§pop()] = §§pop();
                                                }
                                             }
                                          }
                                          else if(_loc16_ && lowerValue)
                                          {
                                             break;
                                          }
                                          §§goto(addr229);
                                       }
                                       §§goto(addr333);
                                    }
                                    while(true)
                                    {
                                       bound = bounds[i];
                                       if(bound.IsLower())
                                       {
                                          if(!(_loc16_ && lowerQueryOut))
                                          {
                                             proxy = this.m_proxyPool[bound.proxyId];
                                             if(!_loc16_)
                                             {
                                                if(lowerQuery <= proxy.upperBounds[axis])
                                                {
                                                }
                                             }
                                             if(!(_loc16_ && lowerValue))
                                             {
                                                this.IncrementOverlapCount(bound.proxyId);
                                                if(_loc15_ || lowerValue)
                                                {
                                                }
                                                addr314:
                                             }
                                             §§push(s);
                                             if(_loc15_ || lowerQueryOut)
                                             {
                                                §§push(§§pop() - 1);
                                             }
                                             s = §§pop();
                                             if(!(_loc16_ && upperQueryOut))
                                             {
                                                §§goto(addr314);
                                             }
                                          }
                                          addr328:
                                          while(true)
                                          {
                                             §§goto(addr329);
                                          }
                                       }
                                       §§push(i);
                                       if(_loc15_)
                                       {
                                          §§push(§§pop() - 1);
                                       }
                                       i = §§pop();
                                       if(_loc16_ && upperQueryOut)
                                       {
                                       }
                                       §§goto(addr328);
                                    }
                                 }
                                 §§goto(addr328);
                              }
                              addr372:
                              §§goto(addr373);
                              §§push(upperQuery);
                           }
                        }
                     }
                     §§push(upperQueryOut);
                  }
                  §§goto(addr375);
               }
               else
               {
                  §§push(bounds);
                  if(!(_loc16_ && this))
                  {
                     bound = §§pop()[j];
                     if(bound.IsLower())
                     {
                        if(_loc15_ || this)
                        {
                           this.IncrementOverlapCount(bound.proxyId);
                        }
                     }
                     §§push(j);
                     if(_loc15_)
                     {
                        §§push(uint(§§pop() + 1));
                     }
                     j = §§pop();
                     continue;
                  }
               }
               §§goto(addr372);
               §§push(0);
            }
            break;
         }
         if(§§pop() > 0)
         {
            if(_loc15_)
            {
               if(!_loc16_)
               {
                  §§goto(addr171);
                  §§push(lowerQuery);
               }
               §§goto(addr355);
            }
            §§goto(addr196);
         }
         §§goto(addr333);
      }
      
      private function TestOverlapValidate(p1:b2Proxy, p2:b2Proxy) : Boolean
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_ || p2)
         {
         }
         var bounds:Array = null;
         var bound1:b2Bound = null;
         var bound2:b2Bound = null;
         if(!(_loc7_ && this))
         {
            if(_loc7_ && p2)
            {
            }
            addr50:
            addr59:
            if(_loc7_ && p2)
            {
            }
            var axis:int = 0;
            while(true)
            {
               if(axis >= 2)
               {
                  if(_loc7_)
                  {
                  }
                  break;
               }
               if(!_loc7_)
               {
                  if(_loc7_)
                  {
                  }
               }
               if(!_loc7_)
               {
                  if(_loc8_)
                  {
                     bounds = this.m_bounds[axis];
                     if(_loc7_)
                     {
                     }
                     bound1 = bounds[p1.lowerBounds[axis]];
                     if(_loc8_ || this)
                     {
                     }
                     bound2 = bounds[p2.upperBounds[axis]];
                     if(_loc8_)
                     {
                        if(_loc8_)
                        {
                           if(bound1.value > bound2.value)
                           {
                              if(_loc7_ && axis)
                              {
                              }
                           }
                           else
                           {
                              bound1 = bounds[p1.upperBounds[axis]];
                              if(_loc8_ || this)
                              {
                              }
                              bound2 = bounds[p2.lowerBounds[axis]];
                              if(_loc8_ || this)
                              {
                                 if(bound1.value < bound2.value)
                                 {
                                    if(!_loc7_)
                                    {
                                       if(_loc7_ && p2)
                                       {
                                          continue;
                                       }
                                    }
                                    return false;
                                 }
                                 axis++;
                              }
                              continue;
                           }
                        }
                        addr133:
                        return false;
                     }
                     §§goto(addr133);
                  }
               }
               break;
            }
            return true;
         }
         if(_loc8_)
         {
            §§goto(addr50);
         }
         §§goto(addr59);
      }
      
      private function ComputeBounds(lowerValues:Array, upperValues:Array, aabb:b2AABB) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_ || lowerValues)
         {
         }
         if(!_loc8_)
         {
            if(_loc9_)
            {
               if(_loc9_)
               {
                  if(_loc9_ || this)
                  {
                     if(_loc9_)
                     {
                        if(_loc9_)
                        {
                           if(_loc8_ && lowerValues)
                           {
                           }
                        }
                     }
                  }
               }
               addr55:
               §§push(aabb.lowerBound.x);
               if(_loc9_ || lowerValues)
               {
                  §§push(Number(§§pop()));
               }
               var minVertexX:* = §§pop();
               if(_loc9_ || this)
               {
               }
               §§push(aabb.lowerBound.y);
               if(_loc9_ || lowerValues)
               {
                  §§push(Number(§§pop()));
               }
               var minVertexY:* = §§pop();
               §§push(b2Math.b2Min(minVertexX,this.m_worldAABB.upperBound.x));
               if(_loc9_)
               {
                  minVertexX = Number(§§pop());
                  if(!(_loc8_ && this))
                  {
                     minVertexY = Number(b2Math.b2Min(minVertexY,this.m_worldAABB.upperBound.y));
                     if(!(_loc8_ && aabb))
                     {
                        §§push(b2Math.b2Max(minVertexX,this.m_worldAABB.lowerBound.x));
                     }
                     addr146:
                     var maxVertexX:* = Number(aabb.upperBound.x);
                     if(!_loc9_)
                     {
                     }
                     §§push(aabb.upperBound.y);
                     if(!_loc8_)
                     {
                        §§push(Number(§§pop()));
                     }
                     var maxVertexY:* = §§pop();
                     if(_loc9_)
                     {
                        §§push(b2Math.b2Min(maxVertexX,this.m_worldAABB.upperBound.x));
                        if(_loc9_)
                        {
                           maxVertexX = Number(§§pop());
                           §§push(b2Math.b2Min(maxVertexY,this.m_worldAABB.upperBound.y));
                           if(_loc9_)
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                        maxVertexY = §§pop();
                        if(_loc8_ && this)
                        {
                        }
                        addr240:
                        §§push(lowerValues);
                        if(!_loc8_)
                        {
                           §§push(0);
                           if(!_loc8_)
                           {
                              §§push(uint(this.m_quantizationFactor.x * (minVertexX - this.m_worldAABB.lowerBound.x)) & b2Settings.USHRT_MAX - 1);
                              if(!(_loc8_ && this))
                              {
                                 §§pop()[§§pop()] = §§pop();
                                 if(_loc9_ || lowerValues)
                                 {
                                    addr278:
                                    §§push(upperValues);
                                    if(_loc9_ || lowerValues)
                                    {
                                       §§push(0);
                                       if(_loc9_)
                                       {
                                          §§push(uint(this.m_quantizationFactor.x * (maxVertexX - this.m_worldAABB.lowerBound.x)) & 65535);
                                          if(!_loc8_)
                                          {
                                             §§push(1);
                                             if(_loc9_)
                                             {
                                                §§push(§§pop() | §§pop());
                                                if(!_loc8_)
                                                {
                                                   §§pop()[§§pop()] = §§pop();
                                                   if(_loc9_ || aabb)
                                                   {
                                                      addr320:
                                                      §§push(lowerValues);
                                                      if(_loc9_ || lowerValues)
                                                      {
                                                      }
                                                   }
                                                   addr360:
                                                   §§push(upperValues);
                                                }
                                                addr386:
                                                §§push(1);
                                             }
                                             addr388:
                                             §§pop()[§§pop()] = §§pop() | §§pop();
                                          }
                                       }
                                       addr363:
                                       §§push(uint(this.m_quantizationFactor.y * (maxVertexY - this.m_worldAABB.lowerBound.y)) & 65535);
                                       if(_loc9_)
                                       {
                                          §§goto(addr386);
                                       }
                                       §§goto(addr388);
                                    }
                                    §§push(1);
                                    if(_loc9_ || lowerValues)
                                    {
                                    }
                                    §§goto(addr363);
                                 }
                                 return;
                              }
                              addr359:
                              §§pop()[§§pop()] = §§pop();
                              §§goto(addr360);
                           }
                           §§push(uint(this.m_quantizationFactor.y * (minVertexY - this.m_worldAABB.lowerBound.y)) & b2Settings.USHRT_MAX - 1);
                           if(_loc9_ || aabb)
                           {
                              §§goto(addr359);
                           }
                           §§goto(addr388);
                        }
                        §§goto(addr363);
                        §§push(1);
                     }
                     §§push(Number(b2Math.b2Max(maxVertexX,this.m_worldAABB.lowerBound.x)));
                     if(_loc9_ || aabb)
                     {
                        maxVertexX = §§pop();
                        if(_loc9_ || aabb)
                        {
                           §§push(b2Math.b2Max(maxVertexY,this.m_worldAABB.lowerBound.y));
                           if(!_loc8_)
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                        §§goto(addr278);
                     }
                     maxVertexY = §§pop();
                     if(!_loc8_)
                     {
                        §§goto(addr240);
                     }
                     §§goto(addr320);
                  }
                  addr135:
                  minVertexY = Number(b2Math.b2Max(minVertexY,this.m_worldAABB.lowerBound.y));
                  §§goto(addr146);
               }
               §§push(Number(§§pop()));
               if(!_loc8_)
               {
                  minVertexX = §§pop();
                  §§goto(addr135);
               }
               §§goto(addr146);
            }
         }
         §§goto(addr55);
      }
      
      public function CreateProxy(aabb:b2AABB, userData:*) : uint
      {
         var _loc26_:Boolean = false;
         var _loc27_:Boolean = true;
         if(!_loc27_)
         {
         }
         var index:* = uint(0);
         var proxy:b2Proxy = null;
         var bounds:Array = null;
         var lowerIndex:* = uint(0);
         var upperIndex:* = uint(0);
         var lowerIndexOut:Array = null;
         var upperIndexOut:Array = null;
         var tArr:Array = null;
         var j:* = 0;
         var tEnd:* = 0;
         var tBound1:b2Bound = null;
         var tBound2:b2Bound = null;
         var tBoundAS3:b2Bound = null;
         var tIndex:* = 0;
         var proxy2:b2Proxy = null;
         if(_loc27_)
         {
            if(_loc26_ && this)
            {
            }
            addr87:
            §§push(this.m_freeProxy);
            if(!_loc26_)
            {
               §§push(uint(§§pop()));
            }
            var proxyId:* = §§pop();
            if(_loc26_ && aabb)
            {
            }
            proxy = this.m_proxyPool[proxyId];
            if(_loc27_ || index)
            {
               this.m_freeProxy = proxy.GetNext();
               if(!_loc26_)
               {
                  if(!_loc26_)
                  {
                     proxy.overlapCount = 0;
                     proxy.userData = userData;
                     if(!_loc27_)
                     {
                     }
                     addr134:
                     var boundCount:uint = 2 * this.m_proxyCount;
                     if(!_loc27_)
                     {
                     }
                     var lowerValues:Array = new Array();
                     if(_loc27_ || aabb)
                     {
                     }
                     var upperValues:Array = new Array();
                     if(!_loc26_)
                     {
                        if(_loc27_)
                        {
                           this.ComputeBounds(lowerValues,upperValues,aabb);
                           if(_loc26_)
                           {
                           }
                        }
                     }
                     var axis:int = 0;
                     loop0:
                     while(true)
                     {
                        §§push(axis);
                        if(!(_loc26_ && this))
                        {
                           if(§§pop() >= 2)
                           {
                              if(_loc27_)
                              {
                                 §§push(this.m_proxyCount);
                                 if(_loc27_ || aabb)
                                 {
                                    §§push(§§pop() + 1);
                                 }
                                 if(_loc27_ || this)
                                 {
                                    _loc24_.m_proxyCount = _loc25_;
                                 }
                              }
                              §§push(0);
                              break;
                           }
                           if(!_loc27_)
                           {
                           }
                           if(!(_loc26_ && index))
                           {
                              if(!(_loc26_ && userData))
                              {
                                 if(_loc26_)
                                 {
                                 }
                              }
                           }
                           bounds = this.m_bounds[axis];
                           if(!_loc27_)
                           {
                           }
                           lowerIndexOut = [lowerIndex];
                           if(_loc26_)
                           {
                           }
                           upperIndexOut = [upperIndex];
                           this.Query(lowerIndexOut,upperIndexOut,lowerValues[axis],upperValues[axis],bounds,boundCount,axis);
                           §§push(uint(lowerIndexOut[0]));
                           if(!(_loc26_ && index))
                           {
                              lowerIndex = §§pop();
                              §§push(uint(upperIndexOut[0]));
                           }
                           upperIndex = §§pop();
                           if(_loc26_)
                           {
                           }
                           tArr = new Array();
                           if(_loc27_ || aabb)
                           {
                              if(_loc27_)
                              {
                                 §§push(boundCount);
                                 if(!(_loc26_ && this))
                                 {
                                    §§push(§§pop() - upperIndex);
                                    if(_loc27_ || index)
                                    {
                                       tEnd = int(§§pop());
                                       §§push(0);
                                       if(!_loc26_)
                                       {
                                          j = §§pop();
                                          addr376:
                                          while(true)
                                          {
                                             §§push(j);
                                             if(!_loc26_)
                                             {
                                                §§push(tEnd);
                                                if(_loc27_ || userData)
                                                {
                                                   if(§§pop() < §§pop())
                                                   {
                                                      tArr[j] = new b2Bound();
                                                   }
                                                   addr388:
                                                   §§push(int(tArr.length));
                                                   break;
                                                }
                                                loop2:
                                                while(§§pop() < §§pop())
                                                {
                                                   tBound2 = tArr[j];
                                                   if(_loc26_ && this)
                                                   {
                                                   }
                                                   tBound1 = bounds[int(tIndex + j)];
                                                   if(!(_loc26_ && aabb))
                                                   {
                                                      if(!(_loc26_ && index))
                                                      {
                                                         tBound1.value = tBound2.value;
                                                         tBound1.proxyId = tBound2.proxyId;
                                                         if(_loc27_ || index)
                                                         {
                                                         }
                                                         addr476:
                                                         while(true)
                                                         {
                                                            continue loop2;
                                                         }
                                                      }
                                                      tBound1.stabbingCount = tBound2.stabbingCount;
                                                   }
                                                   j++;
                                                   §§goto(addr476);
                                                }
                                                tArr = new Array();
                                                if(!(_loc26_ && aabb))
                                                {
                                                   §§push(upperIndex);
                                                   if(!(_loc26_ && this))
                                                   {
                                                      §§push(§§pop() - lowerIndex);
                                                      if(!(_loc26_ && index))
                                                      {
                                                         tEnd = int(§§pop());
                                                         if(_loc27_ || index)
                                                         {
                                                            j = 0;
                                                            loop3:
                                                            while(true)
                                                            {
                                                               §§push(j);
                                                               §§push(tEnd);
                                                               if(!_loc26_)
                                                               {
                                                                  if(§§pop() >= §§pop())
                                                                  {
                                                                     if(_loc27_ || this)
                                                                     {
                                                                        §§push(int(tArr.length));
                                                                        if(!_loc26_)
                                                                        {
                                                                           tEnd = §§pop();
                                                                        }
                                                                        addr627:
                                                                        tIndex = §§pop();
                                                                        addr629:
                                                                        §§push(0);
                                                                        addr689:
                                                                        if(_loc27_ || index)
                                                                        {
                                                                           j = §§pop();
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           break loop3;
                                                                        }
                                                                        if(_loc27_)
                                                                        {
                                                                           if(_loc26_)
                                                                           {
                                                                           }
                                                                           addr714:
                                                                           tBound1 = bounds[lowerIndex];
                                                                           if(_loc26_ && this)
                                                                           {
                                                                           }
                                                                           tBound2 = bounds[upperIndex];
                                                                           if(_loc27_ || userData)
                                                                           {
                                                                              tBound1.value = lowerValues[axis];
                                                                              if(_loc27_)
                                                                              {
                                                                                 if(_loc27_ || userData)
                                                                                 {
                                                                                    tBound1.proxyId = proxyId;
                                                                                 }
                                                                                 tBound2.value = upperValues[axis];
                                                                              }
                                                                              addr773:
                                                                              tBound2.proxyId = proxyId;
                                                                              if(_loc27_)
                                                                              {
                                                                                 addr778:
                                                                              }
                                                                              tBoundAS3 = bounds[int(lowerIndex - 1)];
                                                                              if(!(_loc26_ && aabb))
                                                                              {
                                                                                 if(_loc27_ || this)
                                                                                 {
                                                                                    §§push(tBound1);
                                                                                    if(!_loc26_)
                                                                                    {
                                                                                       §§push(lowerIndex);
                                                                                       if(_loc27_)
                                                                                       {
                                                                                          if(§§pop() != 0)
                                                                                          {
                                                                                             §§push(tBoundAS3.stabbingCount);
                                                                                             if(!_loc26_)
                                                                                             {
                                                                                                §§push(uint(§§pop()));
                                                                                             }
                                                                                          }
                                                                                          addr826:
                                                                                          §§pop().stabbingCount = §§pop();
                                                                                          if(_loc26_ && userData)
                                                                                          {
                                                                                          }
                                                                                       }
                                                                                       addr820:
                                                                                       §§goto(addr826);
                                                                                    }
                                                                                    §§push(uint(0));
                                                                                    if(!(_loc26_ && aabb))
                                                                                    {
                                                                                       §§goto(addr820);
                                                                                    }
                                                                                    §§goto(addr826);
                                                                                 }
                                                                              }
                                                                              tBoundAS3 = bounds[int(upperIndex - 1)];
                                                                              if(!(_loc26_ && index))
                                                                              {
                                                                                 tBound2.stabbingCount = tBoundAS3.stabbingCount;
                                                                                 §§push(lowerIndex);
                                                                                 if(_loc27_)
                                                                                 {
                                                                                    §§push(uint(§§pop()));
                                                                                    if(_loc27_ || userData)
                                                                                    {
                                                                                       index = §§pop();
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(index);
                                                                                          if(_loc27_)
                                                                                          {
                                                                                             §§push(upperIndex);
                                                                                             if(!_loc26_)
                                                                                             {
                                                                                                if(§§pop() >= §§pop())
                                                                                                {
                                                                                                   if(_loc26_)
                                                                                                   {
                                                                                                   }
                                                                                                   continue loop0;
                                                                                                }
                                                                                                tBoundAS3 = bounds[index];
                                                                                                if(!(_loc26_ && index))
                                                                                                {
                                                                                                   if(!_loc27_)
                                                                                                   {
                                                                                                   }
                                                                                                   addr914:
                                                                                                   §§push(index);
                                                                                                   if(_loc27_ || this)
                                                                                                   {
                                                                                                      §§push(uint(§§pop() + 1));
                                                                                                   }
                                                                                                   index = §§pop();
                                                                                                   continue;
                                                                                                }
                                                                                                if(!_loc26_)
                                                                                                {
                                                                                                   _loc24_.stabbingCount = _loc25_;
                                                                                                }
                                                                                                if(_loc27_ || index)
                                                                                                {
                                                                                                   if(_loc26_ && index)
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr914);
                                                                                             }
                                                                                             loop7:
                                                                                             while(§§pop() < §§pop() + 2)
                                                                                             {
                                                                                                tBound1 = bounds[index];
                                                                                                if(_loc26_)
                                                                                                {
                                                                                                }
                                                                                                proxy2 = this.m_proxyPool[tBound1.proxyId];
                                                                                                if(!(_loc26_ && aabb))
                                                                                                {
                                                                                                   if(tBound1.IsLower())
                                                                                                   {
                                                                                                      §§push(proxy2.lowerBounds);
                                                                                                      if(_loc27_ || this)
                                                                                                      {
                                                                                                         §§push(axis);
                                                                                                         if(!(_loc26_ && index))
                                                                                                         {
                                                                                                            §§push(index);
                                                                                                            if(!(_loc26_ && this))
                                                                                                            {
                                                                                                               §§pop()[§§pop()] = §§pop();
                                                                                                            }
                                                                                                            addr1014:
                                                                                                            §§push(index);
                                                                                                            if(!_loc26_)
                                                                                                            {
                                                                                                               §§push(uint(§§pop() + 1));
                                                                                                            }
                                                                                                            addr1019:
                                                                                                            index = §§pop();
                                                                                                            while(true)
                                                                                                            {
                                                                                                               addr1021:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  continue loop7;
                                                                                                               }
                                                                                                               §§goto(addr1019);
                                                                                                            }
                                                                                                         }
                                                                                                         addr1005:
                                                                                                         §§pop()[§§pop()] = §§pop();
                                                                                                         if(_loc27_ || aabb)
                                                                                                         {
                                                                                                         }
                                                                                                         §§goto(addr1014);
                                                                                                      }
                                                                                                      addr1004:
                                                                                                      §§goto(addr1005);
                                                                                                      §§push(index);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§push(proxy2.upperBounds);
                                                                                                   }
                                                                                                   §§goto(addr1004);
                                                                                                   §§push(axis);
                                                                                                }
                                                                                                §§goto(addr1014);
                                                                                             }
                                                                                             continue loop0;
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 addr941:
                                                                                 index = §§pop();
                                                                                 §§goto(addr1019);
                                                                              }
                                                                              §§push(lowerIndex);
                                                                              if(_loc27_)
                                                                              {
                                                                                 §§push(uint(§§pop()));
                                                                                 if(_loc26_)
                                                                                 {
                                                                                 }
                                                                                 §§goto(addr1021);
                                                                              }
                                                                              §§goto(addr941);
                                                                           }
                                                                           if(_loc27_ || aabb)
                                                                           {
                                                                              §§goto(addr773);
                                                                           }
                                                                           §§goto(addr778);
                                                                        }
                                                                     }
                                                                     addr696:
                                                                     §§push(upperIndex);
                                                                     if(_loc27_ || userData)
                                                                     {
                                                                        addr704:
                                                                        §§push(§§pop() + 1);
                                                                     }
                                                                     addr706:
                                                                     upperIndex = §§pop();
                                                                     if(!(_loc26_ && aabb))
                                                                     {
                                                                        §§goto(addr714);
                                                                     }
                                                                     §§goto(addr714);
                                                                  }
                                                                  else
                                                                  {
                                                                     tArr[j] = new b2Bound();
                                                                     if(!(_loc26_ && index))
                                                                     {
                                                                        if(!_loc26_)
                                                                        {
                                                                           tBound1 = tArr[j];
                                                                           if(_loc27_ || this)
                                                                           {
                                                                           }
                                                                           tBound2 = bounds[int(lowerIndex + j)];
                                                                           tBound1.value = tBound2.value;
                                                                           if(_loc27_ || this)
                                                                           {
                                                                              tBound1.proxyId = tBound2.proxyId;
                                                                              tBound1.stabbingCount = tBound2.stabbingCount;
                                                                              j++;
                                                                           }
                                                                           continue;
                                                                        }
                                                                        §§goto(addr629);
                                                                     }
                                                                  }
                                                                  addr688:
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr689);
                                                                  }
                                                               }
                                                               break;
                                                            }
                                                            while(true)
                                                            {
                                                               if(§§pop() >= §§pop())
                                                               {
                                                               }
                                                               §§goto(addr691);
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            tBound2 = tArr[j];
                                                            if(_loc27_ || index)
                                                            {
                                                            }
                                                            tBound1 = bounds[int(tIndex + j)];
                                                            if(!_loc26_)
                                                            {
                                                               tBound1.value = tBound2.value;
                                                               if(!_loc26_)
                                                               {
                                                                  tBound1.proxyId = tBound2.proxyId;
                                                                  if(!_loc27_)
                                                                  {
                                                                  }
                                                                  tBound1.stabbingCount = tBound2.stabbingCount;
                                                                  if(_loc26_)
                                                                  {
                                                                  }
                                                               }
                                                               j++;
                                                            }
                                                            §§goto(addr688);
                                                         }
                                                      }
                                                      addr705:
                                                      §§goto(addr706);
                                                      §§push(uint(§§pop()));
                                                   }
                                                   addr617:
                                                   §§push(§§pop() + 1);
                                                   if(_loc27_ || this)
                                                   {
                                                      §§goto(addr627);
                                                      §§push(int(§§pop()));
                                                   }
                                                   §§goto(addr705);
                                                }
                                                if(_loc27_)
                                                {
                                                   §§push(lowerIndex);
                                                   if(!_loc26_)
                                                   {
                                                      §§goto(addr617);
                                                   }
                                                   §§goto(addr704);
                                                }
                                                §§goto(addr696);
                                             }
                                             break;
                                          }
                                          tEnd = §§pop();
                                          if(!_loc26_)
                                          {
                                             §§push(upperIndex);
                                          }
                                       }
                                       addr407:
                                       tIndex = §§pop();
                                       if(!_loc26_)
                                       {
                                          addr412:
                                          j = 0;
                                       }
                                       §§goto(addr479);
                                    }
                                    addr399:
                                    §§push(int(§§pop()));
                                    if(!(_loc26_ && index))
                                    {
                                       §§goto(addr407);
                                    }
                                    §§goto(addr412);
                                 }
                                 §§goto(addr399);
                                 §§push(§§pop() + 2);
                              }
                              §§goto(addr476);
                           }
                           while(_loc27_ || aabb)
                           {
                              tBound1 = tArr[j];
                              if(_loc26_)
                              {
                              }
                              tBound2 = bounds[int(upperIndex + j)];
                              if(_loc27_)
                              {
                                 tBound1.value = tBound2.value;
                                 if(_loc27_)
                                 {
                                    if(!(_loc26_ && aabb))
                                    {
                                       tBound1.proxyId = tBound2.proxyId;
                                    }
                                 }
                                 tBound1.stabbingCount = tBound2.stabbingCount;
                                 if(_loc27_ || this)
                                 {
                                    if(_loc26_ && aabb)
                                    {
                                    }
                                 }
                                 j++;
                              }
                              §§goto(addr376);
                           }
                           §§goto(addr388);
                        }
                        break;
                     }
                     var i:* = §§pop();
                     if(!_loc26_)
                     {
                        while(true)
                        {
                           if(i >= this.m_queryResultCount)
                           {
                              if(!_loc26_)
                              {
                                 §§push(this.m_pairManager);
                                 break;
                              }
                              addr1114:
                              addr1116:
                              this.IncrementTimeStamp();
                              return proxyId;
                           }
                           §§push(this.m_pairManager);
                           if(!_loc26_)
                           {
                              §§pop().AddBufferedPair(proxyId,this.m_queryResults[i]);
                              i++;
                              continue;
                           }
                           break;
                        }
                        §§pop().Commit();
                     }
                     this.m_queryResultCount = 0;
                     if(_loc27_ || userData)
                     {
                        §§goto(addr1114);
                     }
                     §§goto(addr1116);
                  }
               }
            }
            §§goto(addr134);
         }
         if(_loc27_ || userData)
         {
         }
         §§goto(addr87);
      }
      
      public function DestroyProxy(proxyId:uint) : void
      {
         var _loc22_:Boolean = true;
         var _loc23_:Boolean = false;
         if(_loc23_ && tBound2)
         {
         }
         var tBound1:b2Bound = null;
         var tBound2:b2Bound = null;
         var bounds:Array = null;
         var lowerIndex:* = uint(0);
         var upperIndex:* = uint(0);
         var lowerValue:* = uint(0);
         var upperValue:* = uint(0);
         var tArr:Array = null;
         var j:* = 0;
         var tEnd:* = 0;
         var tIndex:* = 0;
         var index:* = uint(0);
         var index2:* = 0;
         var proxy2:b2Proxy = null;
         if(_loc22_ || this)
         {
            if(!(_loc23_ && this))
            {
               if(_loc23_)
               {
               }
               addr105:
               var proxy:b2Proxy = this.m_proxyPool[proxyId];
               if(_loc23_ && this)
               {
               }
               §§push(2);
               if(!(_loc23_ && tBound1))
               {
                  §§push(int(§§pop() * this.m_proxyCount));
               }
               var boundCount:* = §§pop();
               if(_loc23_)
               {
               }
               var axis:int = 0;
               loop0:
               while(true)
               {
                  §§push(axis);
                  if(!(_loc23_ && tBound2))
                  {
                     if(§§pop() >= 2)
                     {
                        if(_loc22_ || this)
                        {
                        }
                        §§push(0);
                        break;
                     }
                     if(!_loc23_)
                     {
                        if(_loc22_ || tBound2)
                        {
                           if(_loc22_)
                           {
                              if(!(_loc23_ && tBound2))
                              {
                                 if(_loc23_)
                                 {
                                 }
                              }
                              addr170:
                              bounds = this.m_bounds[axis];
                              if(_loc22_)
                              {
                                 if(_loc22_ || this)
                                 {
                                    §§push(proxy.lowerBounds);
                                    if(_loc22_ || this)
                                    {
                                       §§push(axis);
                                       if(_loc22_)
                                       {
                                          §§push(uint(§§pop()[§§pop()]));
                                          if(!_loc23_)
                                          {
                                             lowerIndex = §§pop();
                                             if(_loc22_)
                                             {
                                                if(_loc22_ || tBound2)
                                                {
                                                }
                                                addr227:
                                             }
                                             §§push(proxy.upperBounds);
                                          }
                                          addr219:
                                          upperIndex = §§pop();
                                          if(!(_loc23_ && proxyId))
                                          {
                                             §§goto(addr227);
                                          }
                                       }
                                       addr217:
                                       §§goto(addr219);
                                       §§push(uint(§§pop()[§§pop()]));
                                    }
                                    §§goto(addr217);
                                    §§push(axis);
                                 }
                              }
                              tBound1 = bounds[lowerIndex];
                              if(!_loc23_)
                              {
                                 if(_loc23_)
                                 {
                                 }
                                 addr252:
                                 tBound2 = bounds[upperIndex];
                                 if(_loc22_ || tBound2)
                                 {
                                    if(_loc22_)
                                    {
                                       §§push(tBound2.value);
                                       if(!(_loc23_ && this))
                                       {
                                          §§push(uint(§§pop()));
                                       }
                                       upperValue = §§pop();
                                       if(_loc23_ && tBound1)
                                       {
                                       }
                                    }
                                 }
                                 tArr = new Array();
                                 if(_loc22_)
                                 {
                                    §§push(upperIndex);
                                    if(!_loc23_)
                                    {
                                       §§push(§§pop() - lowerIndex);
                                       if(_loc22_ || tBound2)
                                       {
                                          §§push(§§pop() - 1);
                                       }
                                       tEnd = int(§§pop());
                                       if(!(_loc23_ && tBound2))
                                       {
                                          j = 0;
                                          loop1:
                                          while(true)
                                          {
                                             §§push(j);
                                             §§push(tEnd);
                                             if(!(_loc23_ && proxyId))
                                             {
                                                if(§§pop() >= §§pop())
                                                {
                                                   if(_loc22_)
                                                   {
                                                      if(!(_loc23_ && tBound1))
                                                      {
                                                         tEnd = int(tArr.length);
                                                         if(_loc23_)
                                                         {
                                                         }
                                                      }
                                                   }
                                                   if(!_loc23_)
                                                   {
                                                      §§push(lowerIndex);
                                                   }
                                                   addr440:
                                                   §§push(0);
                                                   if(!(_loc23_ && tBound1))
                                                   {
                                                      j = §§pop();
                                                      if(_loc22_ || tBound1)
                                                      {
                                                      }
                                                      addr452:
                                                      while(true)
                                                      {
                                                         tBound2 = tArr[j];
                                                         if(_loc22_ || proxyId)
                                                         {
                                                         }
                                                         tBound1 = bounds[int(tIndex + j)];
                                                         if(_loc22_)
                                                         {
                                                            if(_loc22_ || this)
                                                            {
                                                               tBound1.value = tBound2.value;
                                                            }
                                                            if(_loc22_)
                                                            {
                                                               tBound1.proxyId = tBound2.proxyId;
                                                            }
                                                         }
                                                         tBound1.stabbingCount = tBound2.stabbingCount;
                                                         if(!_loc23_)
                                                         {
                                                            if(_loc22_)
                                                            {
                                                               j++;
                                                            }
                                                         }
                                                         addr506:
                                                         while(true)
                                                         {
                                                         }
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      break loop1;
                                                      §§goto(addr440);
                                                   }
                                                   if(_loc22_ || tBound1)
                                                   {
                                                   }
                                                }
                                                else if(!(_loc23_ && proxyId))
                                                {
                                                   tArr[j] = new b2Bound();
                                                   if(!(_loc23_ && proxyId))
                                                   {
                                                      tBound1 = tArr[j];
                                                      if(!_loc22_)
                                                      {
                                                      }
                                                      tBound2 = bounds[int(lowerIndex + 1 + j)];
                                                      if(!(_loc23_ && tBound2))
                                                      {
                                                         tBound1.value = tBound2.value;
                                                         if(_loc22_)
                                                         {
                                                            tBound1.proxyId = tBound2.proxyId;
                                                            tBound1.stabbingCount = tBound2.stabbingCount;
                                                         }
                                                         else
                                                         {
                                                            continue;
                                                         }
                                                      }
                                                      j++;
                                                      continue;
                                                   }
                                                   addr425:
                                                   if(_loc22_ || this)
                                                   {
                                                      §§goto(addr440);
                                                   }
                                                }
                                                addr517:
                                                tArr = new Array();
                                                §§push(boundCount - upperIndex);
                                                if(!_loc23_)
                                                {
                                                   §§push(§§pop() - 1);
                                                   if(!(_loc23_ && this))
                                                   {
                                                      tEnd = int(§§pop());
                                                      if(_loc22_ || this)
                                                      {
                                                         j = 0;
                                                         while(true)
                                                         {
                                                            §§push(j);
                                                            if(!(_loc23_ && tBound2))
                                                            {
                                                               §§push(tEnd);
                                                               if(!(_loc23_ && tBound1))
                                                               {
                                                                  if(§§pop() >= §§pop())
                                                                  {
                                                                     §§push(int(tArr.length));
                                                                     break;
                                                                  }
                                                                  tArr[j] = new b2Bound();
                                                                  tBound1 = tArr[j];
                                                                  if(_loc22_ || tBound2)
                                                                  {
                                                                  }
                                                                  tBound2 = bounds[int(upperIndex + 1 + j)];
                                                                  if(_loc22_)
                                                                  {
                                                                     tBound1.value = tBound2.value;
                                                                     tBound1.proxyId = tBound2.proxyId;
                                                                     if(_loc22_ || tBound1)
                                                                     {
                                                                     }
                                                                     continue;
                                                                  }
                                                                  if(!_loc23_)
                                                                  {
                                                                     tBound1.stabbingCount = tBound2.stabbingCount;
                                                                     if(_loc22_ || this)
                                                                     {
                                                                     }
                                                                     continue;
                                                                  }
                                                                  continue;
                                                               }
                                                               loop5:
                                                               while(true)
                                                               {
                                                                  if(§§pop() >= §§pop())
                                                                  {
                                                                     if(!_loc23_)
                                                                     {
                                                                        §§push(boundCount);
                                                                        if(_loc22_ || tBound1)
                                                                        {
                                                                           addr740:
                                                                           §§push(2);
                                                                           if(!(_loc23_ && tBound1))
                                                                           {
                                                                              §§push(§§pop() - §§pop());
                                                                              if(_loc23_)
                                                                              {
                                                                              }
                                                                           }
                                                                           addr965:
                                                                           while(§§pop() < §§pop())
                                                                           {
                                                                              tBound1 = bounds[index2];
                                                                              if(_loc22_)
                                                                              {
                                                                                 if(!(_loc23_ && tBound1))
                                                                                 {
                                                                                    if(!(_loc23_ && tBound2))
                                                                                    {
                                                                                       _loc20_.stabbingCount = _loc21_;
                                                                                    }
                                                                                    if(_loc22_)
                                                                                    {
                                                                                       if(_loc22_ || tBound1)
                                                                                       {
                                                                                       }
                                                                                    }
                                                                                    addr963:
                                                                                    while(true)
                                                                                    {
                                                                                    }
                                                                                 }
                                                                              }
                                                                              index2++;
                                                                              §§goto(addr963);
                                                                           }
                                                                           this.Query([0],[0],lowerValue,upperValue,bounds,boundCount - 2,axis);
                                                                           if(!(_loc23_ && proxyId))
                                                                           {
                                                                              axis++;
                                                                           }
                                                                           continue loop0;
                                                                        }
                                                                     }
                                                                     addr897:
                                                                     §§push(upperIndex);
                                                                     addr907:
                                                                     if(_loc22_)
                                                                     {
                                                                        addr900:
                                                                        §§push(§§pop() - 1);
                                                                     }
                                                                     addr907:
                                                                     §§push(int(§§pop()));
                                                                     if(_loc22_ || this)
                                                                     {
                                                                        index2 = §§pop();
                                                                        addr916:
                                                                        §§goto(addr963);
                                                                     }
                                                                  }
                                                                  else if(!_loc23_)
                                                                  {
                                                                     tBound2 = tArr[j];
                                                                     if(!_loc22_)
                                                                     {
                                                                     }
                                                                     tBound1 = bounds[int(tIndex + j)];
                                                                     if(!_loc23_)
                                                                     {
                                                                        tBound1.value = tBound2.value;
                                                                     }
                                                                     tBound1.proxyId = tBound2.proxyId;
                                                                     if(_loc22_)
                                                                     {
                                                                        tBound1.stabbingCount = tBound2.stabbingCount;
                                                                     }
                                                                     j++;
                                                                     addr717:
                                                                     while(true)
                                                                     {
                                                                        §§push(j);
                                                                        if(!(_loc23_ && this))
                                                                        {
                                                                           §§push(tEnd);
                                                                           if(_loc22_)
                                                                           {
                                                                              continue loop5;
                                                                           }
                                                                           §§goto(addr965);
                                                                        }
                                                                        break;
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     break;
                                                                  }
                                                                  addr964:
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr965);
                                                                  }
                                                               }
                                                               loop9:
                                                               while(true)
                                                               {
                                                                  tBound1 = bounds[index];
                                                                  if(_loc23_ && proxyId)
                                                                  {
                                                                  }
                                                                  proxy2 = this.m_proxyPool[tBound1.proxyId];
                                                                  if(!(_loc23_ && tBound1))
                                                                  {
                                                                     if(_loc22_)
                                                                     {
                                                                        if(tBound1.IsLower())
                                                                        {
                                                                           §§push(proxy2.lowerBounds);
                                                                           if(!(_loc23_ && tBound1))
                                                                           {
                                                                              §§push(axis);
                                                                              if(_loc22_ || this)
                                                                              {
                                                                                 §§push(index);
                                                                                 if(_loc22_)
                                                                                 {
                                                                                    §§pop()[§§pop()] = §§pop();
                                                                                    if(_loc22_ || proxyId)
                                                                                    {
                                                                                    }
                                                                                 }
                                                                              }
                                                                              addr866:
                                                                              §§pop()[§§pop()] = §§pop();
                                                                           }
                                                                           addr865:
                                                                           §§goto(addr866);
                                                                           §§push(index);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(proxy2.upperBounds);
                                                                        }
                                                                        §§goto(addr865);
                                                                        §§push(axis);
                                                                     }
                                                                  }
                                                                  §§push(index);
                                                                  if(_loc22_ || this)
                                                                  {
                                                                     §§push(uint(§§pop() + 1));
                                                                  }
                                                                  addr878:
                                                                  addr879:
                                                                  index = §§pop();
                                                                  while(true)
                                                                  {
                                                                     §§push(index);
                                                                     if(!(_loc23_ && tBound1))
                                                                     {
                                                                        if(§§pop() >= tEnd)
                                                                        {
                                                                           addr889:
                                                                           addr905:
                                                                           if(_loc22_ || this)
                                                                           {
                                                                           }
                                                                           §§goto(addr907);
                                                                           §§push(lowerIndex);
                                                                        }
                                                                        else if(!(_loc23_ && this))
                                                                        {
                                                                           continue loop9;
                                                                        }
                                                                        §§goto(addr897);
                                                                     }
                                                                     break loop9;
                                                                     §§goto(addr878);
                                                                  }
                                                               }
                                                               §§goto(addr900);
                                                            }
                                                            break;
                                                         }
                                                         tEnd = §§pop();
                                                         if(_loc22_)
                                                         {
                                                            if(!_loc22_)
                                                            {
                                                            }
                                                            §§goto(addr967);
                                                         }
                                                         §§push(upperIndex);
                                                         if(!_loc23_)
                                                         {
                                                            §§push(§§pop() - 1);
                                                            if(_loc22_)
                                                            {
                                                               §§push(int(§§pop()));
                                                               if(_loc22_ || tBound2)
                                                               {
                                                                  tIndex = §§pop();
                                                                  if(!(_loc23_ && tBound1))
                                                                  {
                                                                     j = 0;
                                                                  }
                                                               }
                                                               §§goto(addr740);
                                                            }
                                                         }
                                                         §§push(uint(§§pop()));
                                                         if(_loc22_)
                                                         {
                                                            index = §§pop();
                                                            if(!(_loc23_ && tBound1))
                                                            {
                                                               §§goto(addr879);
                                                            }
                                                            §§goto(addr889);
                                                         }
                                                         §§goto(addr907);
                                                      }
                                                      §§goto(addr717);
                                                   }
                                                   §§push(int(§§pop()));
                                                   if(_loc22_)
                                                   {
                                                      tEnd = §§pop();
                                                      §§goto(addr905);
                                                   }
                                                   §§goto(addr964);
                                                }
                                                tEnd = int(§§pop());
                                                if(!(_loc23_ && proxyId))
                                                {
                                                   if(_loc22_ || tBound2)
                                                   {
                                                      §§push(lowerIndex);
                                                      if(_loc22_ || this)
                                                      {
                                                         §§goto(addr776);
                                                      }
                                                      §§goto(addr907);
                                                   }
                                                   §§goto(addr916);
                                                }
                                                else
                                                {
                                                   continue loop0;
                                                }
                                             }
                                             break;
                                          }
                                          while(true)
                                          {
                                             if(§§pop() < §§pop())
                                             {
                                                §§goto(addr452);
                                             }
                                             §§goto(addr509);
                                          }
                                       }
                                       §§goto(addr517);
                                    }
                                    tIndex = int(§§pop());
                                    if(!(_loc23_ && tBound2))
                                    {
                                       §§goto(addr425);
                                    }
                                    §§goto(addr452);
                                 }
                                 §§goto(addr506);
                              }
                              §§push(tBound1.value);
                              if(_loc22_)
                              {
                                 §§push(uint(§§pop()));
                              }
                              lowerValue = §§pop();
                              if(_loc22_ || tBound2)
                              {
                              }
                              §§goto(addr252);
                           }
                        }
                        addr169:
                        §§goto(addr170);
                     }
                     §§goto(addr169);
                  }
                  break;
               }
               var i:* = §§pop();
               while(true)
               {
                  if(i >= this.m_queryResultCount)
                  {
                     §§push(this.m_pairManager);
                  }
                  else
                  {
                     if(!_loc23_)
                     {
                        §§push(this.m_pairManager);
                        if(!(_loc23_ && tBound1))
                        {
                           §§pop().RemoveBufferedPair(proxyId,this.m_queryResults[i]);
                           i++;
                           continue;
                        }
                     }
                     break;
                  }
                  §§pop().Commit();
                  if(!(_loc23_ && this))
                  {
                     this.m_queryResultCount = 0;
                     if(!_loc23_)
                     {
                        this.IncrementTimeStamp();
                        if(_loc22_)
                        {
                           proxy.userData = null;
                        }
                        addr1147:
                        §§push(this.m_proxyCount);
                        if(!(_loc23_ && proxyId))
                        {
                           §§push(§§pop() - 1);
                        }
                        if(!(_loc23_ && tBound2))
                        {
                           _loc20_.m_proxyCount = _loc21_;
                        }
                        if(_loc23_)
                        {
                        }
                        return;
                     }
                     proxy.overlapCount = b2_invalid;
                  }
                  §§push(proxy.lowerBounds);
                  if(!_loc23_)
                  {
                     §§push(0);
                     if(_loc22_)
                     {
                        §§push(b2_invalid);
                        if(_loc22_ || tBound2)
                        {
                           §§pop()[§§pop()] = §§pop();
                           if(_loc22_)
                           {
                              §§push(proxy.lowerBounds);
                              if(_loc22_)
                              {
                                 §§push(1);
                                 if(!_loc22_)
                                 {
                                 }
                                 addr1118:
                                 §§push(b2_invalid);
                                 addr1132:
                                 if(_loc23_ && this)
                                 {
                                 }
                                 §§pop()[§§pop()] = §§pop();
                              }
                              addr1115:
                              §§push(0);
                              addr1131:
                              if(_loc22_)
                              {
                                 §§goto(addr1118);
                              }
                              §§goto(addr1132);
                              §§push(b2_invalid);
                           }
                           proxy.SetNext(this.m_freeProxy);
                           if(!_loc23_)
                           {
                              if(_loc22_)
                              {
                                 this.m_freeProxy = proxyId;
                              }
                           }
                           addr1146:
                           §§goto(addr1147);
                        }
                        §§pop()[§§pop()] = §§pop();
                        break;
                     }
                     §§push(b2_invalid);
                     if(!(_loc23_ && tBound2))
                     {
                        §§pop()[§§pop()] = §§pop();
                        if(!_loc23_)
                        {
                           if(!_loc23_)
                           {
                              §§push(proxy.upperBounds);
                              if(!(_loc23_ && this))
                              {
                                 §§goto(addr1115);
                              }
                           }
                           §§goto(addr1146);
                        }
                        break;
                     }
                     §§goto(addr1132);
                  }
                  addr1130:
                  §§goto(addr1131);
               }
               §§goto(addr1130);
               §§push(proxy.upperBounds);
            }
            if(!(_loc23_ && this))
            {
               if(_loc23_ && tBound1)
               {
               }
               if(_loc22_ || tBound1)
               {
               }
               §§goto(addr105);
            }
         }
         §§goto(addr105);
      }
      
      public function TestOverlap(b:b2BoundValues, p:b2Proxy) : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc7_ && p)
         {
         }
         var bounds:Array = null;
         var bound:b2Bound = null;
         if(_loc6_)
         {
            if(_loc6_)
            {
               if(!_loc7_)
               {
                  if(_loc7_ && p)
                  {
                  }
               }
            }
         }
         var axis:int = 0;
         while(true)
         {
            if(axis >= 2)
            {
               if(!_loc6_)
               {
               }
               break;
            }
            if(!_loc7_)
            {
               if(_loc6_)
               {
                  if(!_loc7_)
                  {
                     bounds = this.m_bounds[axis];
                     if(!_loc6_)
                     {
                     }
                     bound = bounds[p.upperBounds[axis]];
                     if(_loc6_)
                     {
                        if(!_loc7_)
                        {
                           if(b.lowerValues[axis] > bound.value)
                           {
                              if(_loc6_ || p)
                              {
                              }
                              addr102:
                              return false;
                           }
                           bound = bounds[p.lowerBounds[axis]];
                           if(_loc6_)
                           {
                              if(_loc6_ || this)
                              {
                                 if(b.upperValues[axis] < bound.value)
                                 {
                                    if(!(_loc6_ || p))
                                    {
                                       continue;
                                    }
                                 }
                                 else
                                 {
                                    axis++;
                                    continue;
                                 }
                              }
                              return false;
                           }
                           continue;
                        }
                     }
                     §§goto(addr102);
                  }
               }
            }
            break;
         }
         return true;
      }
      
      public function Validate() : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         if(!_loc12_)
         {
         }
         var pair:b2Pair = null;
         var proxy1:b2Proxy = null;
         var proxy2:b2Proxy = null;
         var overlap:Boolean = false;
         var bounds:b2Bound = null;
         var boundCount:* = uint(0);
         var stabbingCount:* = uint(0);
         var i:* = uint(0);
         var bound:b2Bound = null;
         if(!_loc11_)
         {
            if(_loc11_)
            {
            }
            addr54:
            var axis:int = 0;
            while(true)
            {
               if(axis >= 2)
               {
                  if(_loc11_)
                  {
                  }
                  break;
               }
               if(!_loc11_)
               {
                  if(_loc11_)
                  {
                  }
                  if(!(_loc11_ && proxy2))
                  {
                     bounds = this.m_bounds[axis];
                     if(_loc12_)
                     {
                        §§push(2);
                        if(!_loc11_)
                        {
                           §§push(uint(§§pop() * this.m_proxyCount));
                           if(_loc12_ || this)
                           {
                              boundCount = §§pop();
                           }
                           addr194:
                           loop1:
                           while(§§pop() < boundCount)
                           {
                              bound = bounds[i];
                              if(!_loc11_)
                              {
                                 if(bound.IsLower() == true)
                                 {
                                    if(!_loc11_)
                                    {
                                       §§push(stabbingCount);
                                       if(!(_loc11_ && proxy1))
                                       {
                                          §§push(§§pop() + 1);
                                          if(_loc12_)
                                          {
                                             §§push(uint(§§pop()));
                                             if(_loc12_)
                                             {
                                                stabbingCount = §§pop();
                                                if(_loc11_)
                                                {
                                                   addr186:
                                                }
                                             }
                                          }
                                          else
                                          {
                                             addr180:
                                             §§push(uint(§§pop()));
                                             if(!_loc12_)
                                             {
                                             }
                                          }
                                          addr192:
                                          addr193:
                                          i = §§pop();
                                          while(true)
                                          {
                                             continue loop1;
                                          }
                                       }
                                       else
                                       {
                                          addr177:
                                          §§push(§§pop() - 1);
                                          if(_loc12_)
                                          {
                                             §§goto(addr180);
                                          }
                                       }
                                       addr191:
                                       §§goto(addr192);
                                       §§push(uint(§§pop()));
                                    }
                                 }
                                 else
                                 {
                                    §§push(stabbingCount);
                                    if(_loc12_)
                                    {
                                       §§goto(addr177);
                                    }
                                 }
                                 stabbingCount = §§pop();
                                 if(!_loc11_)
                                 {
                                    §§goto(addr186);
                                 }
                                 §§goto(addr193);
                              }
                              §§push(i);
                              if(!_loc11_)
                              {
                                 §§goto(addr191);
                                 §§push(§§pop() + 1);
                              }
                              §§goto(addr192);
                           }
                           if(!_loc11_)
                           {
                              continue;
                           }
                           continue;
                        }
                        addr127:
                        §§push(uint(§§pop()));
                        if(!(_loc11_ && proxy1))
                        {
                           addr135:
                           i = §§pop();
                           §§goto(addr193);
                        }
                        §§goto(addr194);
                     }
                     §§push(0);
                     if(!_loc11_)
                     {
                        §§push(uint(§§pop()));
                        if(_loc12_ || pair)
                        {
                           stabbingCount = §§pop();
                           if(!(_loc11_ && proxy1))
                           {
                              §§push(0);
                           }
                           continue;
                        }
                        §§goto(addr135);
                     }
                     §§goto(addr127);
                  }
               }
               break;
            }
            return;
         }
         §§goto(addr54);
      }
      
      private function IncrementOverlapCount(proxyId:uint) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc6_ && proxyId)
         {
         }
         if(_loc5_ || proxyId)
         {
            if(_loc5_ || this)
            {
               if(_loc5_ || proxyId)
               {
               }
            }
         }
         var proxy:b2Proxy = this.m_proxyPool[proxyId];
         if(!(_loc6_ && proxyId))
         {
            if(proxy.timeStamp < this.m_timeStamp)
            {
               if(!_loc6_)
               {
                  proxy.timeStamp = this.m_timeStamp;
                  if(_loc6_ && proxyId)
                  {
                  }
               }
               proxy.overlapCount = 1;
            }
            else
            {
               proxy.overlapCount = 2;
               this.m_queryResults[this.m_queryResultCount] = proxyId;
            }
            addr138:
            return;
         }
         if(!(_loc6_ && proxyId))
         {
            §§push(_loc3_.m_queryResultCount);
            if(!(_loc6_ && _loc3_))
            {
               §§push(§§pop() + 1);
            }
            if(!_loc6_)
            {
               _loc3_.m_queryResultCount = _loc4_;
            }
         }
         §§goto(addr138);
      }
      
      public function InRange(aabb:b2AABB) : Boolean
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc6_ && this)
         {
         }
         var dX:Number = NaN;
         var dY:* = NaN;
         var d2X:* = NaN;
         var d2Y:* = NaN;
         if(_loc7_ || dX)
         {
            §§push(aabb.lowerBound);
            if(!_loc6_)
            {
               dX = §§pop().x;
               if(!_loc6_)
               {
                  §§push(aabb.lowerBound);
                  if(_loc6_ && dX)
                  {
                  }
                  addr140:
                  §§push(§§pop().x);
                  if(!(_loc6_ && this))
                  {
                     addr148:
                     §§push(Number(§§pop()));
                     if(_loc7_)
                     {
                        d2X = §§pop();
                        if(!(_loc6_ && dX))
                        {
                           addr163:
                           §§push(this.m_worldAABB.lowerBound.y);
                           if(!_loc7_)
                           {
                           }
                           addr226:
                           addr228:
                           d2Y = Number(§§pop());
                           addr272:
                           §§push(b2Math.b2Max(dX,d2X));
                           addr273:
                           if(!(_loc6_ && aabb))
                           {
                              addr241:
                              dX = §§pop();
                              if(_loc6_)
                              {
                              }
                           }
                           addr272:
                           return §§pop() < 0;
                        }
                        addr249:
                        §§push(Number(b2Math.b2Max(dY,d2Y)));
                        if(!_loc6_)
                        {
                           addr252:
                           dY = §§pop();
                           if(_loc7_ || dY)
                           {
                           }
                        }
                        §§goto(addr272);
                     }
                     §§push(Number(§§pop()));
                     if(_loc7_)
                     {
                        d2Y = §§pop();
                        if(!(_loc6_ && this))
                        {
                           addr177:
                           if(_loc7_)
                           {
                              §§push(d2X);
                              if(!_loc6_)
                              {
                                 §§push(aabb.upperBound);
                                 if(!(_loc6_ && aabb))
                                 {
                                    addr192:
                                    §§push(§§pop().x);
                                    if(_loc7_)
                                    {
                                       addr195:
                                       §§push(§§pop() - §§pop());
                                       if(_loc6_)
                                       {
                                       }
                                       §§goto(addr249);
                                    }
                                    §§goto(addr272);
                                 }
                                 addr215:
                                 §§push(§§pop().y);
                                 if(!_loc6_)
                                 {
                                    addr218:
                                    §§push(§§pop() - §§pop());
                                    if(!(_loc6_ && aabb))
                                    {
                                       §§goto(addr226);
                                    }
                                    §§goto(addr241);
                                 }
                                 §§goto(addr273);
                              }
                              §§push(Number(§§pop()));
                           }
                           addr202:
                           if(_loc6_ && dY)
                           {
                           }
                           §§goto(addr228);
                        }
                        §§push(d2Y);
                        if(_loc7_)
                        {
                           §§goto(addr215);
                           §§push(aabb.upperBound);
                        }
                        §§goto(addr272);
                     }
                     §§goto(addr252);
                  }
                  d2X = §§pop();
                  if(_loc7_)
                  {
                     §§goto(addr202);
                  }
                  §§goto(addr249);
               }
               §§goto(addr272);
               §§push(b2Math.b2Max(dX,dY));
            }
            dY = Number(§§pop().y);
            §§push(dX);
            if(!_loc6_)
            {
               §§push(this.m_worldAABB);
               if(_loc7_)
               {
                  §§push(§§pop().upperBound);
                  if(!_loc6_)
                  {
                     §§push(§§pop().x);
                     if(_loc7_ || aabb)
                     {
                        dX = §§pop() - §§pop();
                     }
                     §§goto(addr195);
                  }
                  addr102:
                  §§push(§§pop().y);
                  if(_loc7_ || aabb)
                  {
                     §§push(Number(§§pop() - §§pop()));
                     if(_loc7_ || dY)
                     {
                     }
                     §§goto(addr148);
                  }
                  §§goto(addr218);
               }
               addr94:
               §§push(§§pop().upperBound);
               if(!(_loc6_ && dX))
               {
                  §§goto(addr102);
               }
               §§goto(addr192);
            }
            dY = §§pop();
            §§push(this.m_worldAABB);
            if(!_loc6_)
            {
               §§push(§§pop().lowerBound);
               if(_loc7_ || this)
               {
                  §§goto(addr140);
               }
               §§goto(addr163);
            }
            §§goto(addr163);
         }
         if(_loc7_)
         {
            §§goto(addr94);
            §§push(dY);
            §§push(this.m_worldAABB);
         }
         §§goto(addr177);
      }
      
      public function MoveProxy(proxyId:uint, aabb:b2AABB) : void
      {
         var _loc27_:Boolean = true;
         var _loc28_:Boolean = false;
         if(_loc27_ || proxyId)
         {
         }
         var as3arr:Array = null;
         var as3int:* = 0;
         var axis:* = uint(0);
         var index:* = uint(0);
         var bound:b2Bound = null;
         var prevBound:b2Bound = null;
         var nextBound:b2Bound = null;
         var nextProxyId:* = uint(0);
         var nextProxy:b2Proxy = null;
         var bounds:Array = null;
         var lowerIndex:* = uint(0);
         var upperIndex:* = uint(0);
         var lowerValue:* = uint(0);
         var upperValue:* = uint(0);
         var deltaLower:int = 0;
         var deltaUpper:* = 0;
         var prevProxyId:* = uint(0);
         var prevProxy:b2Proxy = null;
         if(!(_loc28_ && aabb))
         {
            if(_loc27_ || this)
            {
               if(_loc27_ || aabb)
               {
               }
            }
         }
         if(!(_loc28_ && this))
         {
            §§push(proxyId);
            if(!_loc28_)
            {
               §§push(§§pop() == b2Pair.b2_nullProxy);
               if(_loc27_ || proxyId)
               {
                  §§push(§§pop());
                  if(_loc27_)
                  {
                     if(!§§pop())
                     {
                        if(_loc28_)
                        {
                        }
                        addr165:
                        §§push(false);
                     }
                     addr150:
                     if(§§pop())
                     {
                        if(_loc28_ && aabb)
                        {
                        }
                     }
                     else
                     {
                        §§goto(addr165);
                        §§push(aabb.IsValid());
                     }
                     addr168:
                     return;
                  }
                  if(§§pop() == §§pop())
                  {
                     §§goto(addr168);
                  }
                  else
                  {
                     addr171:
                     §§push(uint(2 * this.m_proxyCount));
                  }
               }
               §§pop();
               §§push(b2Settings.b2_maxProxies);
               if(!(_loc28_ && proxyId))
               {
                  §§push(§§pop() <= proxyId);
                  if(!_loc28_)
                  {
                     §§goto(addr150);
                  }
                  §§goto(addr165);
               }
               §§goto(addr171);
            }
            var boundCount:* = §§pop();
            if(!_loc27_)
            {
            }
            var proxy:b2Proxy = this.m_proxyPool[proxyId];
            if(_loc28_ && aabb)
            {
            }
            var newValues:b2BoundValues = new b2BoundValues();
            if(!_loc28_)
            {
               if(!(_loc28_ && this))
               {
                  this.ComputeBounds(newValues.lowerValues,newValues.upperValues,aabb);
                  if(_loc28_ && aabb)
                  {
                  }
               }
               addr222:
               var oldValues:b2BoundValues = new b2BoundValues();
               if(!(_loc28_ && as3arr))
               {
                  if(!_loc27_)
                  {
                  }
                  addr239:
                  while(true)
                  {
                     §§push(axis);
                     if(!(_loc28_ && aabb))
                     {
                        §§push(2);
                        if(_loc27_)
                        {
                           if(§§pop() >= §§pop())
                           {
                              if(_loc27_)
                              {
                                 §§push(uint(0));
                                 if(!_loc28_)
                                 {
                                    break;
                                 }
                                 addr1989:
                                 while(true)
                                 {
                                 }
                              }
                              addr1992:
                              return;
                           }
                           if(_loc27_)
                           {
                              §§push(this.m_bounds);
                              if(_loc27_)
                              {
                                 §§push(axis);
                                 if(_loc27_ || as3arr)
                                 {
                                    bound = §§pop()[§§pop()][proxy.lowerBounds[axis]];
                                    if(!(_loc28_ && this))
                                    {
                                       if(_loc27_ || proxyId)
                                       {
                                       }
                                       addr297:
                                       bound = this.m_bounds[axis][proxy.upperBounds[axis]];
                                       if(!(_loc28_ && this))
                                       {
                                          if(_loc27_)
                                          {
                                             oldValues.upperValues[axis] = bound.value;
                                             if(_loc27_)
                                             {
                                                if(!(_loc27_ || proxyId))
                                                {
                                                   continue;
                                                }
                                             }
                                             else
                                             {
                                                continue;
                                             }
                                          }
                                          else
                                          {
                                             continue;
                                          }
                                       }
                                       §§push(axis);
                                       if(!(_loc28_ && this))
                                       {
                                          §§push(uint(§§pop() + 1));
                                       }
                                       axis = §§pop();
                                       continue;
                                    }
                                    §§push(oldValues.lowerValues);
                                    if(_loc27_)
                                    {
                                       §§push(axis);
                                       if(_loc27_ || as3arr)
                                       {
                                          §§pop()[§§pop()] = bound.value;
                                          if(!_loc27_)
                                          {
                                          }
                                          §§goto(addr297);
                                       }
                                       §§goto(addr297);
                                    }
                                    §§goto(addr297);
                                 }
                                 else
                                 {
                                    addr391:
                                    while(true)
                                    {
                                       bounds = §§pop()[§§pop()];
                                       if(_loc27_ || this)
                                       {
                                          §§push(proxy.lowerBounds);
                                          if(!(_loc28_ && proxyId))
                                          {
                                             §§push(axis);
                                             if(!(_loc28_ && this))
                                             {
                                                §§push(uint(§§pop()[§§pop()]));
                                                if(_loc27_)
                                                {
                                                   lowerIndex = §§pop();
                                                   if(!(_loc28_ && aabb))
                                                   {
                                                      §§push(proxy.upperBounds);
                                                      if(!_loc27_)
                                                      {
                                                      }
                                                      addr456:
                                                      §§push(axis);
                                                      if(_loc28_)
                                                      {
                                                      }
                                                      addr473:
                                                      §§push(uint(§§pop()[§§pop()]));
                                                   }
                                                   addr470:
                                                   §§goto(addr473);
                                                   §§push(newValues.upperValues);
                                                   §§push(axis);
                                                }
                                                addr475:
                                                upperValue = §§pop();
                                                bound = bounds[lowerIndex];
                                                if(_loc27_)
                                                {
                                                   if(_loc27_ || as3arr)
                                                   {
                                                      deltaLower = lowerValue - bound.value;
                                                      if(!_loc27_)
                                                      {
                                                      }
                                                      addr503:
                                                      bound.value = lowerValue;
                                                      if(!_loc27_)
                                                      {
                                                      }
                                                   }
                                                   if(_loc27_)
                                                   {
                                                      §§goto(addr503);
                                                   }
                                                }
                                                bound = bounds[upperIndex];
                                                if(!_loc28_)
                                                {
                                                   §§push(upperValue);
                                                   if(!_loc28_)
                                                   {
                                                      §§push(bound.value);
                                                      if(_loc27_ || proxyId)
                                                      {
                                                         §§push(§§pop() - §§pop());
                                                         if(!(_loc28_ && proxyId))
                                                         {
                                                            §§push(int(§§pop()));
                                                            if(!_loc28_)
                                                            {
                                                               deltaUpper = §§pop();
                                                               bound.value = upperValue;
                                                               if(_loc27_)
                                                               {
                                                                  §§push(deltaLower);
                                                                  if(_loc27_)
                                                                  {
                                                                     §§push(0);
                                                                     if(_loc27_)
                                                                     {
                                                                        if(§§pop() < §§pop())
                                                                        {
                                                                           §§push(lowerIndex);
                                                                           if(_loc27_ || as3arr)
                                                                           {
                                                                              §§push(uint(§§pop()));
                                                                              if(!_loc27_)
                                                                              {
                                                                              }
                                                                              addr947:
                                                                              index = uint(§§pop());
                                                                              addr1955:
                                                                              if(_loc27_)
                                                                              {
                                                                                 loop2:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(index);
                                                                                    §§push(boundCount);
                                                                                    if(!_loc28_)
                                                                                    {
                                                                                       §§push(§§pop() - 1);
                                                                                       if(!(_loc28_ && proxyId))
                                                                                       {
                                                                                          §§push(§§pop() < §§pop());
                                                                                          §§push(§§pop() < §§pop());
                                                                                          if(!_loc28_)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                addr1249:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop();
                                                                                                   §§push((bounds[int(index + 1)] as b2Bound).value);
                                                                                                   §§push(upperValue);
                                                                                                   if(_loc28_)
                                                                                                   {
                                                                                                   }
                                                                                                   break;
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                }
                                                                                                if(_loc27_)
                                                                                                {
                                                                                                   if(!(_loc28_ && proxyId))
                                                                                                   {
                                                                                                      addr1643:
                                                                                                      §§push(deltaUpper);
                                                                                                      §§push(0);
                                                                                                   }
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§goto(addr1989);
                                                                                                }
                                                                                             }
                                                                                             addr1264:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   break loop2;
                                                                                                }
                                                                                                bound = bounds[index];
                                                                                                if(_loc28_)
                                                                                                {
                                                                                                }
                                                                                                nextBound = bounds[int(index + 1)];
                                                                                                if(_loc27_)
                                                                                                {
                                                                                                   if(!_loc28_)
                                                                                                   {
                                                                                                      §§push(nextBound.proxyId);
                                                                                                      if(!(_loc28_ && proxyId))
                                                                                                      {
                                                                                                         §§push(uint(§§pop()));
                                                                                                      }
                                                                                                      nextProxyId = §§pop();
                                                                                                      if(!_loc27_)
                                                                                                      {
                                                                                                      }
                                                                                                      addr997:
                                                                                                      nextProxy = this.m_proxyPool[nextProxyId];
                                                                                                      if(!(_loc28_ && this))
                                                                                                      {
                                                                                                         if(_loc27_)
                                                                                                         {
                                                                                                            nextBound.stabbingCount++;
                                                                                                         }
                                                                                                         if(_loc27_ || as3arr)
                                                                                                         {
                                                                                                            if(_loc27_)
                                                                                                            {
                                                                                                               §§push(nextBound.IsLower());
                                                                                                               if(!_loc28_)
                                                                                                               {
                                                                                                                  if(§§pop() == true)
                                                                                                                  {
                                                                                                                     if(_loc27_ || aabb)
                                                                                                                     {
                                                                                                                        §§push(this.TestOverlap(newValues,nextProxy));
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§push(nextProxy.upperBounds);
                                                                                                                  }
                                                                                                                  addr1124:
                                                                                                                  as3arr = §§pop();
                                                                                                                  if(!(_loc28_ && aabb))
                                                                                                                  {
                                                                                                                     §§push(int(as3arr[axis]));
                                                                                                                     if(_loc27_ || proxyId)
                                                                                                                     {
                                                                                                                        as3int = §§pop();
                                                                                                                        if(_loc27_)
                                                                                                                        {
                                                                                                                           §§push(as3int);
                                                                                                                           if(_loc27_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() - 1);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr1184:
                                                                                                                        as3arr = proxy.upperBounds;
                                                                                                                        as3int = int(as3arr[axis]);
                                                                                                                        as3int++;
                                                                                                                        if(!_loc27_)
                                                                                                                        {
                                                                                                                        }
                                                                                                                        as3arr[axis] = as3int;
                                                                                                                        if(!(_loc28_ && aabb))
                                                                                                                        {
                                                                                                                           bound.Swap(nextBound);
                                                                                                                           if(!_loc27_)
                                                                                                                           {
                                                                                                                           }
                                                                                                                           §§push(index);
                                                                                                                           if(!(_loc28_ && proxyId))
                                                                                                                           {
                                                                                                                              §§push(uint(§§pop() + 1));
                                                                                                                           }
                                                                                                                           index = §§pop();
                                                                                                                           if(_loc28_)
                                                                                                                           {
                                                                                                                           }
                                                                                                                        }
                                                                                                                        continue loop2;
                                                                                                                     }
                                                                                                                     as3int = §§pop();
                                                                                                                  }
                                                                                                                  if(_loc27_)
                                                                                                                  {
                                                                                                                     as3arr[axis] = as3int;
                                                                                                                     if(!(_loc28_ && aabb))
                                                                                                                     {
                                                                                                                        if(_loc27_)
                                                                                                                        {
                                                                                                                           if(_loc27_)
                                                                                                                           {
                                                                                                                              bound.stabbingCount--;
                                                                                                                           }
                                                                                                                           §§goto(addr1184);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr1184);
                                                                                                               }
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  if(_loc28_)
                                                                                                                  {
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            addr1062:
                                                                                                            §§push(nextProxy.lowerBounds);
                                                                                                            if(!_loc28_)
                                                                                                            {
                                                                                                               as3arr = §§pop();
                                                                                                               §§push(int(as3arr[axis]));
                                                                                                               if(_loc27_ || this)
                                                                                                               {
                                                                                                                  as3int = §§pop();
                                                                                                                  if(_loc27_)
                                                                                                                  {
                                                                                                                     §§push(as3int);
                                                                                                                     if(_loc27_ || this)
                                                                                                                     {
                                                                                                                     }
                                                                                                                     addr1093:
                                                                                                                     as3int = §§pop();
                                                                                                                     if(_loc27_ || as3arr)
                                                                                                                     {
                                                                                                                     }
                                                                                                                  }
                                                                                                                  as3arr[axis] = as3int;
                                                                                                                  if(!_loc28_)
                                                                                                                  {
                                                                                                                     bound.stabbingCount++;
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr1093);
                                                                                                               §§push(§§pop() - 1);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr1124);
                                                                                                            }
                                                                                                            §§goto(addr1184);
                                                                                                         }
                                                                                                      }
                                                                                                      this.m_pairManager.AddBufferedPair(proxyId,nextProxyId);
                                                                                                      §§goto(addr1062);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr997);
                                                                                             }
                                                                                          }
                                                                                          addr1603:
                                                                                          while(true)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                addr1604:
                                                                                                §§pop();
                                                                                                §§push((bounds[int(index + 1)] as b2Bound).value);
                                                                                                §§push(lowerValue);
                                                                                                if(_loc27_ || aabb)
                                                                                                {
                                                                                                   addr1630:
                                                                                                   §§push(§§pop() <= §§pop());
                                                                                                   addr1952:
                                                                                                   if(_loc28_ && aabb)
                                                                                                   {
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§pop();
                                                                                                      if(_loc28_)
                                                                                                      {
                                                                                                      }
                                                                                                      break;
                                                                                                      §§goto(addr1630);
                                                                                                   }
                                                                                                   §§goto(addr1988);
                                                                                                }
                                                                                             }
                                                                                             addr1631:
                                                                                             while(true)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   bound = bounds[index];
                                                                                                   if(_loc28_ && proxyId)
                                                                                                   {
                                                                                                   }
                                                                                                   nextBound = bounds[int(index + 1)];
                                                                                                   if(!_loc28_)
                                                                                                   {
                                                                                                      if(_loc27_ || as3arr)
                                                                                                      {
                                                                                                         §§push(nextBound.proxyId);
                                                                                                         if(!_loc28_)
                                                                                                         {
                                                                                                            §§push(uint(§§pop()));
                                                                                                         }
                                                                                                         nextProxyId = §§pop();
                                                                                                         if(!_loc27_)
                                                                                                         {
                                                                                                         }
                                                                                                         addr1339:
                                                                                                         nextProxy = this.m_proxyPool[nextProxyId];
                                                                                                         if(_loc27_ || proxyId)
                                                                                                         {
                                                                                                            nextBound.stabbingCount--;
                                                                                                         }
                                                                                                         if(_loc27_)
                                                                                                         {
                                                                                                            §§push(nextBound.IsUpper());
                                                                                                            if(!_loc28_)
                                                                                                            {
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  if(_loc27_)
                                                                                                                  {
                                                                                                                     §§push(this.TestOverlap(oldValues,nextProxy));
                                                                                                                  }
                                                                                                                  addr1380:
                                                                                                                  if(!_loc28_)
                                                                                                                  {
                                                                                                                     this.m_pairManager.RemoveBufferedPair(proxyId,nextProxyId);
                                                                                                                  }
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§push(nextProxy.lowerBounds);
                                                                                                               }
                                                                                                               addr1472:
                                                                                                               as3arr = §§pop();
                                                                                                               if(!(_loc28_ && aabb))
                                                                                                               {
                                                                                                                  §§push(int(as3arr[axis]));
                                                                                                                  if(_loc27_)
                                                                                                                  {
                                                                                                                     as3int = §§pop();
                                                                                                                     if(!(_loc28_ && aabb))
                                                                                                                     {
                                                                                                                        §§push(as3int);
                                                                                                                        if(_loc27_ || as3arr)
                                                                                                                        {
                                                                                                                           §§push(§§pop() - 1);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  as3int = §§pop();
                                                                                                                  if(!(_loc28_ && as3arr))
                                                                                                                  {
                                                                                                                     as3arr[axis] = as3int;
                                                                                                                     if(_loc28_)
                                                                                                                     {
                                                                                                                     }
                                                                                                                     addr1538:
                                                                                                                     as3arr = proxy.lowerBounds;
                                                                                                                     as3int = int(as3arr[axis]);
                                                                                                                     if(_loc27_)
                                                                                                                     {
                                                                                                                        if(!_loc28_)
                                                                                                                        {
                                                                                                                           as3int++;
                                                                                                                           if(_loc27_ || proxyId)
                                                                                                                           {
                                                                                                                              if(!(_loc28_ && as3arr))
                                                                                                                              {
                                                                                                                                 as3arr[axis] = as3int;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr1594:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§goto(addr1596);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     bound.Swap(nextBound);
                                                                                                                     if(_loc27_)
                                                                                                                     {
                                                                                                                        §§push(index);
                                                                                                                        if(!_loc28_)
                                                                                                                        {
                                                                                                                           §§push(uint(§§pop() + 1));
                                                                                                                        }
                                                                                                                        index = §§pop();
                                                                                                                        if(_loc28_ && as3arr)
                                                                                                                        {
                                                                                                                        }
                                                                                                                        §§goto(addr1594);
                                                                                                                     }
                                                                                                                     §§goto(addr1594);
                                                                                                                  }
                                                                                                                  if(!_loc28_)
                                                                                                                  {
                                                                                                                     bound.stabbingCount++;
                                                                                                                  }
                                                                                                                  if(!_loc27_)
                                                                                                                  {
                                                                                                                  }
                                                                                                                  §§goto(addr1538);
                                                                                                               }
                                                                                                               §§goto(addr1538);
                                                                                                            }
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               §§goto(addr1380);
                                                                                                            }
                                                                                                         }
                                                                                                         §§push(nextProxy.upperBounds);
                                                                                                         if(!(_loc28_ && this))
                                                                                                         {
                                                                                                            as3arr = §§pop();
                                                                                                            if(!_loc28_)
                                                                                                            {
                                                                                                               §§push(int(as3arr[axis]));
                                                                                                               if(!_loc28_)
                                                                                                               {
                                                                                                                  as3int = §§pop();
                                                                                                                  if(_loc27_ || aabb)
                                                                                                                  {
                                                                                                                     if(_loc27_)
                                                                                                                     {
                                                                                                                        §§push(as3int);
                                                                                                                        if(_loc27_ || as3arr)
                                                                                                                        {
                                                                                                                        }
                                                                                                                        addr1429:
                                                                                                                        as3int = §§pop();
                                                                                                                        if(_loc28_ && this)
                                                                                                                        {
                                                                                                                        }
                                                                                                                     }
                                                                                                                     as3arr[axis] = as3int;
                                                                                                                     if(_loc27_ || proxyId)
                                                                                                                     {
                                                                                                                     }
                                                                                                                  }
                                                                                                                  if(_loc27_ || as3arr)
                                                                                                                  {
                                                                                                                     _loc25_.stabbingCount = _loc26_;
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr1429);
                                                                                                               §§push(§§pop() - 1);
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr1472);
                                                                                                         }
                                                                                                         §§goto(addr1538);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr1339);
                                                                                                }
                                                                                                §§goto(addr1632);
                                                                                             }
                                                                                             loop4:
                                                                                             while(true)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   §§goto(addr1952);
                                                                                                }
                                                                                                addr1968:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                      addr1969:
                                                                                                      if(_loc27_ || as3arr)
                                                                                                      {
                                                                                                         break loop4;
                                                                                                      }
                                                                                                   }
                                                                                                   else if(!(_loc28_ && as3arr))
                                                                                                   {
                                                                                                      bound = bounds[index];
                                                                                                      if(_loc27_ || as3arr)
                                                                                                      {
                                                                                                      }
                                                                                                      prevBound = bounds[int(index - 1)];
                                                                                                      if(_loc27_ || proxyId)
                                                                                                      {
                                                                                                         if(_loc28_)
                                                                                                         {
                                                                                                         }
                                                                                                         addr1710:
                                                                                                         prevProxy = this.m_proxyPool[prevProxyId];
                                                                                                         if(!_loc28_)
                                                                                                         {
                                                                                                            if(_loc27_ || proxyId)
                                                                                                            {
                                                                                                               if(_loc27_)
                                                                                                               {
                                                                                                                  _loc25_.stabbingCount = _loc26_;
                                                                                                               }
                                                                                                               if(_loc27_ || aabb)
                                                                                                               {
                                                                                                                  if(!_loc28_)
                                                                                                                  {
                                                                                                                     §§push(prevBound.IsLower());
                                                                                                                     if(_loc27_)
                                                                                                                     {
                                                                                                                        if(§§pop() == true)
                                                                                                                        {
                                                                                                                           if(_loc28_ && aabb)
                                                                                                                           {
                                                                                                                           }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§push(prevProxy.upperBounds);
                                                                                                                        }
                                                                                                                        addr1836:
                                                                                                                        as3arr = §§pop();
                                                                                                                        if(!_loc28_)
                                                                                                                        {
                                                                                                                           if(!(_loc28_ && proxyId))
                                                                                                                           {
                                                                                                                              as3int = int(as3arr[axis]);
                                                                                                                              if(_loc27_ || this)
                                                                                                                              {
                                                                                                                              }
                                                                                                                              addr1874:
                                                                                                                              addr1891:
                                                                                                                              if(!_loc28_)
                                                                                                                              {
                                                                                                                                 if(_loc27_)
                                                                                                                                 {
                                                                                                                                    _loc25_.stabbingCount = _loc26_;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              as3arr = proxy.upperBounds;
                                                                                                                              if(_loc27_)
                                                                                                                              {
                                                                                                                                 §§push(int(as3arr[axis]));
                                                                                                                                 if(!(_loc28_ && proxyId))
                                                                                                                                 {
                                                                                                                                    as3int = §§pop();
                                                                                                                                    §§push(as3int);
                                                                                                                                    if(_loc27_ || proxyId)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() - 1);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 as3int = §§pop();
                                                                                                                              }
                                                                                                                              if(!(_loc28_ && this))
                                                                                                                              {
                                                                                                                                 as3arr[axis] = as3int;
                                                                                                                                 bound.Swap(prevBound);
                                                                                                                              }
                                                                                                                              §§push(index);
                                                                                                                              if(!_loc28_)
                                                                                                                              {
                                                                                                                                 §§push(uint(§§pop() - 1));
                                                                                                                              }
                                                                                                                              index = §§pop();
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(index);
                                                                                                                                 if(_loc27_)
                                                                                                                                 {
                                                                                                                                    addr1949:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       continue loop4;
                                                                                                                                    }
                                                                                                                                    §§push(0);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    addr1987:
                                                                                                                                    axis = §§pop();
                                                                                                                                 }
                                                                                                                                 index = uint(§§pop());
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        as3int++;
                                                                                                                        as3arr[axis] = as3int;
                                                                                                                        if(_loc27_ || this)
                                                                                                                        {
                                                                                                                           §§goto(addr1874);
                                                                                                                        }
                                                                                                                        §§goto(addr1891);
                                                                                                                     }
                                                                                                                     addr1768:
                                                                                                                     addr1785:
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        if(_loc27_)
                                                                                                                        {
                                                                                                                           if(!(_loc28_ && as3arr))
                                                                                                                           {
                                                                                                                              this.m_pairManager.RemoveBufferedPair(proxyId,prevProxyId);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§push(prevProxy.lowerBounds);
                                                                                                                     if(!(_loc28_ && this))
                                                                                                                     {
                                                                                                                        as3arr = §§pop();
                                                                                                                        as3int = int(as3arr[axis]);
                                                                                                                        if(!_loc28_)
                                                                                                                        {
                                                                                                                           as3int++;
                                                                                                                           if(_loc27_ || this)
                                                                                                                           {
                                                                                                                              as3arr[axis] = as3int;
                                                                                                                              if(_loc27_)
                                                                                                                              {
                                                                                                                                 _loc25_.stabbingCount = _loc26_;
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr1836);
                                                                                                                     }
                                                                                                                     §§goto(addr1891);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr1768);
                                                                                                               §§push(this.TestOverlap(oldValues,prevProxy));
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr1785);
                                                                                                      }
                                                                                                      §§push(prevBound.proxyId);
                                                                                                      if(_loc27_ || as3arr)
                                                                                                      {
                                                                                                         §§push(uint(§§pop()));
                                                                                                      }
                                                                                                      prevProxyId = §§pop();
                                                                                                      if(_loc27_)
                                                                                                      {
                                                                                                         §§goto(addr1710);
                                                                                                      }
                                                                                                      §§goto(addr1710);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      break loop4;
                                                                                                   }
                                                                                                   §§goto(addr1988);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() < §§pop());
                                                                                          if(!_loc28_)
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             if(_loc27_)
                                                                                             {
                                                                                                §§goto(addr1603);
                                                                                             }
                                                                                             §§goto(addr1951);
                                                                                          }
                                                                                          §§goto(addr1631);
                                                                                       }
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§goto(addr1264);
                                                                                    }
                                                                                 }
                                                                                 if(!_loc28_)
                                                                                 {
                                                                                    addr1268:
                                                                                    §§push(deltaLower);
                                                                                    if(_loc27_ || as3arr)
                                                                                    {
                                                                                    }
                                                                                    §§goto(addr1643);
                                                                                 }
                                                                                 §§goto(addr1988);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(upperValue);
                                                                                 if(!_loc28_)
                                                                                 {
                                                                                    §§push((bounds[int(index - 1)] as b2Bound).value);
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              §§goto(addr1987);
                                                                           }
                                                                           index = §§pop();
                                                                        }
                                                                        addr921:
                                                                        §§push(deltaUpper);
                                                                        if(!(_loc28_ && as3arr))
                                                                        {
                                                                           §§push(0);
                                                                           if(_loc27_ || proxyId)
                                                                           {
                                                                              if(§§pop() > §§pop())
                                                                              {
                                                                                 addr938:
                                                                                 §§push(upperIndex);
                                                                                 if(!(_loc28_ && this))
                                                                                 {
                                                                                    §§goto(addr947);
                                                                                 }
                                                                                 addr1294:
                                                                                 index = §§pop();
                                                                                 §§goto(addr1594);
                                                                              }
                                                                              §§goto(addr1268);
                                                                           }
                                                                        }
                                                                     }
                                                                     addr1644:
                                                                     if(§§pop() < §§pop())
                                                                     {
                                                                        addr1645:
                                                                        if(!(_loc28_ && as3arr))
                                                                        {
                                                                           §§goto(addr1654);
                                                                           §§push(upperIndex);
                                                                        }
                                                                        §§goto(addr1955);
                                                                     }
                                                                  }
                                                               }
                                                               loop12:
                                                               while(true)
                                                               {
                                                                  §§push(index);
                                                                  §§push(0);
                                                                  if(!(_loc28_ && as3arr))
                                                                  {
                                                                     §§push(§§pop() > §§pop());
                                                                     if(!(_loc28_ && this))
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(!(_loc28_ && proxyId))
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(_loc27_ || proxyId)
                                                                              {
                                                                              }
                                                                              §§goto(addr1249);
                                                                           }
                                                                           addr915:
                                                                           while(true)
                                                                           {
                                                                              if(!§§pop())
                                                                              {
                                                                                 if(_loc27_)
                                                                                 {
                                                                                    if(!_loc28_)
                                                                                    {
                                                                                       §§goto(addr921);
                                                                                    }
                                                                                    addr1287:
                                                                                    §§push(lowerIndex);
                                                                                    if(!_loc28_)
                                                                                    {
                                                                                       §§push(uint(§§pop()));
                                                                                       if(_loc27_)
                                                                                       {
                                                                                          §§goto(addr1294);
                                                                                       }
                                                                                       §§goto(addr1987);
                                                                                    }
                                                                                    §§goto(addr1654);
                                                                                 }
                                                                                 §§goto(addr938);
                                                                              }
                                                                              else
                                                                              {
                                                                                 bound = bounds[index];
                                                                                 if(_loc28_ && this)
                                                                                 {
                                                                                 }
                                                                                 prevBound = bounds[int(index - 1)];
                                                                                 if(!_loc28_)
                                                                                 {
                                                                                    if(!_loc28_)
                                                                                    {
                                                                                       §§push(prevBound.proxyId);
                                                                                       if(_loc27_)
                                                                                       {
                                                                                          §§push(uint(§§pop()));
                                                                                       }
                                                                                       prevProxyId = §§pop();
                                                                                       if(_loc28_ && aabb)
                                                                                       {
                                                                                       }
                                                                                       addr613:
                                                                                       prevProxy = this.m_proxyPool[prevBound.proxyId];
                                                                                       if(!(_loc28_ && this))
                                                                                       {
                                                                                          if(!_loc28_)
                                                                                          {
                                                                                             _loc25_.stabbingCount = _loc26_;
                                                                                          }
                                                                                          if(_loc27_ || proxyId)
                                                                                          {
                                                                                             §§push(prevBound.IsUpper());
                                                                                             if(!_loc28_)
                                                                                             {
                                                                                                if(§§pop() == true)
                                                                                                {
                                                                                                   if(!_loc27_)
                                                                                                   {
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§push(prevProxy.lowerBounds);
                                                                                                }
                                                                                                addr734:
                                                                                                as3arr = §§pop();
                                                                                                if(_loc27_)
                                                                                                {
                                                                                                   as3int = int(as3arr[axis]);
                                                                                                   if(!_loc28_)
                                                                                                   {
                                                                                                      as3int++;
                                                                                                      if(_loc27_)
                                                                                                      {
                                                                                                         as3arr[axis] = as3int;
                                                                                                         if(_loc28_ && as3arr)
                                                                                                         {
                                                                                                         }
                                                                                                         addr779:
                                                                                                         as3arr = proxy.lowerBounds;
                                                                                                         if(!(_loc28_ && proxyId))
                                                                                                         {
                                                                                                            if(!(_loc28_ && this))
                                                                                                            {
                                                                                                               §§push(int(as3arr[axis]));
                                                                                                               if(!_loc28_)
                                                                                                               {
                                                                                                                  as3int = §§pop();
                                                                                                                  if(_loc27_ || as3arr)
                                                                                                                  {
                                                                                                                     §§push(as3int);
                                                                                                                     if(_loc27_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() - 1);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr848:
                                                                                                                  continue loop12;
                                                                                                               }
                                                                                                               as3int = §§pop();
                                                                                                               if(!(_loc28_ && proxyId))
                                                                                                               {
                                                                                                                  as3arr[axis] = as3int;
                                                                                                                  if(!_loc28_)
                                                                                                                  {
                                                                                                                     bound.Swap(prevBound);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§push(index);
                                                                                                            if(_loc27_ || aabb)
                                                                                                            {
                                                                                                               §§push(uint(§§pop() - 1));
                                                                                                            }
                                                                                                            index = §§pop();
                                                                                                            §§goto(addr848);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            continue loop12;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   addr778:
                                                                                                   §§goto(addr779);
                                                                                                }
                                                                                                if(!_loc28_)
                                                                                                {
                                                                                                   _loc25_.stabbingCount = _loc26_;
                                                                                                }
                                                                                                if(_loc27_)
                                                                                                {
                                                                                                   §§goto(addr778);
                                                                                                }
                                                                                                §§goto(addr779);
                                                                                             }
                                                                                             addr669:
                                                                                             if(§§pop())
                                                                                             {
                                                                                                addr670:
                                                                                                if(!_loc27_)
                                                                                                {
                                                                                                }
                                                                                                addr678:
                                                                                             }
                                                                                             §§push(prevProxy.upperBounds);
                                                                                             if(!(_loc28_ && proxyId))
                                                                                             {
                                                                                                as3arr = §§pop();
                                                                                                if(_loc27_)
                                                                                                {
                                                                                                   as3int = int(as3arr[axis]);
                                                                                                }
                                                                                                as3int++;
                                                                                                if(!_loc28_)
                                                                                                {
                                                                                                   as3arr[axis] = as3int;
                                                                                                   if(_loc27_ || proxyId)
                                                                                                   {
                                                                                                   }
                                                                                                   addr717:
                                                                                                   addr730:
                                                                                                   if(_loc27_)
                                                                                                   {
                                                                                                      _loc25_.stabbingCount = _loc26_;
                                                                                                   }
                                                                                                }
                                                                                                if(_loc27_)
                                                                                                {
                                                                                                   §§goto(addr717);
                                                                                                }
                                                                                                §§goto(addr730);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr734);
                                                                                             }
                                                                                             §§goto(addr779);
                                                                                          }
                                                                                          this.m_pairManager.AddBufferedPair(proxyId,prevProxyId);
                                                                                          §§goto(addr678);
                                                                                       }
                                                                                       if(!(_loc28_ && as3arr))
                                                                                       {
                                                                                          §§goto(addr669);
                                                                                          §§push(this.TestOverlap(newValues,prevProxy));
                                                                                       }
                                                                                       §§goto(addr670);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr613);
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr1603);
                                                                     }
                                                                     §§pop();
                                                                     if(!(_loc28_ && proxyId))
                                                                     {
                                                                        §§push(lowerValue);
                                                                     }
                                                                     §§goto(addr938);
                                                                  }
                                                                  break;
                                                               }
                                                               §§goto(addr1949);
                                                            }
                                                            §§push(0);
                                                            if(!(_loc28_ && as3arr))
                                                            {
                                                               if(§§pop() > §§pop())
                                                               {
                                                                  if(_loc27_)
                                                                  {
                                                                     §§goto(addr1287);
                                                                  }
                                                                  §§goto(addr1645);
                                                               }
                                                               §§goto(addr1643);
                                                            }
                                                            §§goto(addr1644);
                                                         }
                                                         addr1986:
                                                         §§goto(addr1987);
                                                         §§push(uint(§§pop()));
                                                      }
                                                      addr1967:
                                                      while(true)
                                                      {
                                                         §§goto(addr1968);
                                                      }
                                                      §§goto(addr1969);
                                                   }
                                                   while(true)
                                                   {
                                                      §§push((bounds[int(index - 1)] as b2Bound).value);
                                                      if(!(_loc28_ && aabb))
                                                      {
                                                         §§push(§§pop() < §§pop());
                                                         if(_loc27_ || this)
                                                         {
                                                            §§goto(addr915);
                                                         }
                                                         §§goto(addr1604);
                                                      }
                                                      break;
                                                   }
                                                   §§goto(addr1967);
                                                }
                                                §§goto(addr1986);
                                                §§push(axis + 1);
                                             }
                                             addr459:
                                             §§push(uint(§§pop()[§§pop()]));
                                             if(_loc27_ || as3arr)
                                             {
                                                lowerValue = §§pop();
                                                addr469:
                                                §§goto(addr470);
                                             }
                                             §§goto(addr475);
                                          }
                                          §§push(axis);
                                          if(!_loc28_)
                                          {
                                             §§push(uint(§§pop()[§§pop()]));
                                             if(!_loc28_)
                                             {
                                                upperIndex = §§pop();
                                                if(_loc28_)
                                                {
                                                }
                                                §§goto(addr469);
                                             }
                                             §§goto(addr475);
                                          }
                                          §§goto(addr459);
                                       }
                                       §§push(newValues.lowerValues);
                                       if(!(_loc28_ && proxyId))
                                       {
                                          §§goto(addr456);
                                       }
                                       §§goto(addr470);
                                    }
                                 }
                              }
                              addr390:
                              while(true)
                              {
                                 §§goto(addr391);
                              }
                           }
                           addr1991:
                           §§goto(addr1992);
                        }
                        while(true)
                        {
                           if(§§pop() < §§pop())
                           {
                              if(_loc27_ || aabb)
                              {
                                 if(_loc27_)
                                 {
                                    if(!_loc27_)
                                    {
                                    }
                                    §§goto(addr1992);
                                 }
                              }
                              if(_loc27_)
                              {
                                 §§goto(addr390);
                                 §§push(this.m_bounds);
                              }
                              §§goto(addr1992);
                           }
                           §§goto(addr1991);
                        }
                     }
                     break;
                  }
                  axis = §§pop();
                  §§goto(addr1988);
               }
               axis = uint(0);
               §§goto(addr239);
            }
            §§goto(addr222);
         }
      }
   }
}
