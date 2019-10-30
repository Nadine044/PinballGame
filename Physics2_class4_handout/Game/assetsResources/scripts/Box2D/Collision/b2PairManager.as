package Box2D.Collision
{
   import Box2D.Common.b2Settings;
   
   public class b2PairManager
   {
       
      
      public var m_pairCount:int;
      
      public var m_pairBuffer:Array;
      
      public var m_hashTable:Array;
      
      public var m_callback:b2PairCallback;
      
      public var m_pairs:Array;
      
      public var m_pairBufferCount:int;
      
      public var m_broadPhase:b2BroadPhase;
      
      public var m_freePair:uint;
      
      public function b2PairManager()
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc2_)
         {
         }
         var i:* = uint(0);
         super();
         if(_loc2_)
         {
            if(!_loc3_)
            {
               if(_loc2_ || _loc2_)
               {
                  this.m_hashTable = new Array(b2Pair.b2_tableCapacity);
               }
            }
            addr46:
            while(true)
            {
               §§push(i);
               if(_loc2_ || _loc2_)
               {
                  §§push(b2Pair.b2_tableCapacity);
                  if(!_loc3_)
                  {
                     if(§§pop() >= §§pop())
                     {
                        this.m_pairs = new Array(b2Settings.b2_maxPairs);
                        if(!_loc3_)
                        {
                           §§push(0);
                           if(!(_loc3_ && _loc2_))
                           {
                              i = uint(§§pop());
                              addr137:
                              loop1:
                              while(true)
                              {
                                 §§push(i);
                                 if(!_loc3_)
                                 {
                                    §§push(b2Settings.b2_maxPairs);
                                    if(_loc3_)
                                    {
                                    }
                                    loop12:
                                    while(true)
                                    {
                                       if(§§pop() >= §§pop())
                                       {
                                          addr227:
                                          i = uint(0);
                                          if(_loc2_ || this)
                                          {
                                             addr330:
                                             while(true)
                                             {
                                                break loop1;
                                             }
                                          }
                                          addr349:
                                          this.m_pairCount = 0;
                                          addr366:
                                          this.m_pairBufferCount = 0;
                                          if(!_loc2_)
                                          {
                                          }
                                          return;
                                       }
                                       addr175:
                                       while(true)
                                       {
                                          §§push(this.m_pairBuffer);
                                          if(!_loc3_)
                                          {
                                             §§pop()[i] = new b2BufferedPair();
                                             §§push(i);
                                             if(!(_loc3_ && this))
                                             {
                                                §§push(§§pop() + 1);
                                                if(!_loc3_)
                                                {
                                                   addr202:
                                                   while(true)
                                                   {
                                                   }
                                                }
                                             }
                                             loop7:
                                             while(true)
                                             {
                                                i = §§pop();
                                                if(_loc2_ || _loc2_)
                                                {
                                                   addr211:
                                                   while(true)
                                                   {
                                                      §§push(i);
                                                      if(_loc2_)
                                                      {
                                                         §§push(b2Settings.b2_maxPairs);
                                                         if(_loc2_ || _loc2_)
                                                         {
                                                            continue loop12;
                                                         }
                                                         addr333:
                                                         while(true)
                                                         {
                                                            if(§§pop() >= §§pop())
                                                            {
                                                               addr334:
                                                               if(!_loc3_)
                                                               {
                                                                  addr336:
                                                                  §§push(this.m_pairs);
                                                               }
                                                               §§goto(addr349);
                                                            }
                                                            else
                                                            {
                                                               §§push(this.m_pairs);
                                                               §§push(i);
                                                               if(_loc2_ || _loc3_)
                                                               {
                                                                  §§pop()[§§pop()].proxyId1 = b2Pair.b2_nullProxy;
                                                                  if(_loc2_)
                                                                  {
                                                                     §§push(this.m_pairs);
                                                                     if(!(_loc3_ && _loc2_))
                                                                     {
                                                                        break loop12;
                                                                     }
                                                                     addr281:
                                                                     loop3:
                                                                     while(true)
                                                                     {
                                                                        §§push(i);
                                                                        if(_loc2_ || _loc2_)
                                                                        {
                                                                           §§pop()[§§pop()].userData = null;
                                                                           if(_loc2_ || _loc3_)
                                                                           {
                                                                           }
                                                                           §§push(this.m_pairs);
                                                                           if(!_loc3_)
                                                                           {
                                                                              §§push(i);
                                                                              if(_loc3_)
                                                                              {
                                                                              }
                                                                              addr314:
                                                                              while(true)
                                                                              {
                                                                                 §§pop()[§§pop()].next = i + 1;
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    §§push(i + 1);
                                                                                 }
                                                                                 break loop3;
                                                                              }
                                                                           }
                                                                           addr313:
                                                                           while(true)
                                                                           {
                                                                              §§goto(addr314);
                                                                           }
                                                                        }
                                                                        §§pop()[§§pop()].status = 0;
                                                                        break loop7;
                                                                     }
                                                                  }
                                                                  §§goto(addr330);
                                                               }
                                                               addr265:
                                                               while(true)
                                                               {
                                                                  §§pop()[§§pop()].proxyId2 = b2Pair.b2_nullProxy;
                                                                  if(_loc2_ || _loc3_)
                                                                  {
                                                                     §§push(this.m_pairs);
                                                                     if(_loc2_)
                                                                     {
                                                                        §§goto(addr281);
                                                                     }
                                                                     break;
                                                                  }
                                                                  §§goto(addr330);
                                                               }
                                                            }
                                                            §§pop()[int(b2Settings.b2_maxPairs - 1)].next = b2Pair.b2_nullPair;
                                                            §§goto(addr349);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         break;
                                                      }
                                                   }
                                                   §§goto(addr227);
                                                }
                                                break;
                                             }
                                             while(true)
                                             {
                                             }
                                          }
                                          break loop12;
                                       }
                                       §§goto(addr366);
                                    }
                                    while(true)
                                    {
                                       §§goto(addr265);
                                    }
                                 }
                                 break;
                              }
                              while(true)
                              {
                                 §§goto(addr333);
                              }
                              §§goto(addr334);
                           }
                           addr163:
                           §§push(uint(§§pop()));
                           if(_loc2_ || this)
                           {
                              break;
                           }
                           §§goto(addr331);
                        }
                        while(true)
                        {
                           §§goto(addr313);
                        }
                     }
                     else
                     {
                        this.m_hashTable[i] = b2Pair.b2_nullPair;
                        §§push(i + 1);
                        if(_loc2_ || i)
                        {
                           i = uint(§§pop());
                           if(_loc2_ || _loc3_)
                           {
                              continue;
                           }
                           §§goto(addr175);
                        }
                     }
                     while(true)
                     {
                        §§push(uint(§§pop()));
                        if(!_loc3_)
                        {
                           i = §§pop();
                           if(_loc2_)
                           {
                              §§goto(addr330);
                           }
                           §§goto(addr336);
                        }
                        §§goto(addr331);
                     }
                  }
                  while(true)
                  {
                     if(§§pop() >= §§pop())
                     {
                        this.m_pairBuffer = new Array(b2Settings.b2_maxPairs);
                        if(!(_loc3_ && _loc2_))
                        {
                           §§push(0);
                           if(_loc2_)
                           {
                              §§goto(addr163);
                           }
                           §§goto(addr227);
                        }
                        §§goto(addr366);
                     }
                     else
                     {
                        if(!(_loc3_ && i))
                        {
                           §§push(this.m_pairs);
                           §§push(i);
                           if(_loc2_)
                           {
                              §§pop()[§§pop()] = new b2Pair();
                              §§push(i + 1);
                              if(!(_loc3_ && _loc2_))
                              {
                                 i = uint(§§pop());
                                 §§goto(addr137);
                              }
                              §§goto(addr202);
                           }
                        }
                        break;
                     }
                     §§goto(addr265);
                  }
                  §§goto(addr336);
               }
               break;
            }
            i = §§pop();
            §§goto(addr211);
         }
         i = uint(0);
         §§goto(addr46);
      }
      
      public static function EqualsPair(pair1:b2BufferedPair, pair2:b2BufferedPair) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || pair2)
         {
         }
         if(!_loc3_)
         {
            if(_loc4_ || _loc3_)
            {
            }
            addr48:
            addr89:
            if(!_loc3_)
            {
               §§push(pair1.proxyId1);
               if(_loc4_ || pair2)
               {
                  §§push(pair2.proxyId1);
                  if(!_loc3_)
                  {
                     §§push(§§pop() == §§pop());
                     if(!(_loc3_ && _loc3_))
                     {
                        if(§§pop())
                        {
                           if(_loc3_ && pair1)
                           {
                           }
                        }
                        addr94:
                        return §§pop();
                     }
                     §§pop();
                  }
                  addr93:
                  §§goto(addr94);
                  §§push(§§pop() == §§pop());
               }
               addr91:
               §§goto(addr93);
               §§push(pair2.proxyId2);
            }
            §§goto(addr91);
            §§push(pair1.proxyId2);
         }
         if(_loc4_ || b2PairManager)
         {
            §§goto(addr48);
         }
         §§goto(addr89);
      }
      
      public static function Hash(proxyId1:uint, proxyId2:uint) : uint
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc5_)
         {
         }
         if(!_loc5_)
         {
            if(!(_loc5_ && proxyId2))
            {
               if(_loc4_)
               {
                  if(_loc4_ || key)
                  {
                  }
               }
               addr39:
               §§push(proxyId2);
               if(_loc4_)
               {
                  §§push(§§pop() << 16);
                  if(_loc4_)
                  {
                     §§push(§§pop() & 4294901760);
                     if(_loc4_)
                     {
                        §§push(§§pop() | proxyId1);
                     }
                  }
                  §§push(uint(§§pop()));
               }
               var key:* = §§pop();
               §§push(key);
               if(!(_loc5_ && key))
               {
                  §§push(~§§pop());
                  if(!_loc5_)
                  {
                     §§push(key << 15);
                     if(_loc4_)
                     {
                        §§push(§§pop() & 4294934528);
                     }
                     §§push(§§pop() + §§pop());
                     if(!(_loc5_ && proxyId1))
                     {
                        key = uint(§§pop());
                        §§push(key);
                        §§push(key);
                        if(!_loc5_)
                        {
                           §§push(12);
                           if(!_loc5_)
                           {
                              §§push(§§pop() >> §§pop());
                              §§push(1048575);
                              if(!_loc5_)
                              {
                                 §§push(§§pop() ^ §§pop() & §§pop());
                                 if(_loc5_ && key)
                                 {
                                 }
                                 addr194:
                                 §§push(uint(§§pop()));
                                 addr233:
                                 addr235:
                                 if(_loc4_)
                                 {
                                    key = §§pop();
                                    if(_loc4_ || key)
                                    {
                                       §§push(key);
                                    }
                                    addr219:
                                    §§push(key);
                                 }
                                 key = uint(§§pop() ^ key >> 16 & 65535);
                                 return key;
                              }
                              addr188:
                              §§push(§§pop() & §§pop());
                              addr208:
                              if(_loc4_)
                              {
                                 addr191:
                                 §§push(§§pop() ^ §§pop());
                                 if(!_loc5_)
                                 {
                                    §§goto(addr194);
                                 }
                                 §§goto(addr233);
                              }
                              §§push(§§pop() * §§pop());
                           }
                           addr177:
                           §§push(§§pop() >> §§pop());
                           if(!_loc5_)
                           {
                              §§push(268435455);
                              if(!(_loc5_ && key))
                              {
                                 §§goto(addr188);
                              }
                              §§goto(addr233);
                           }
                           §§goto(addr191);
                        }
                        addr139:
                        §§push(2);
                        if(_loc4_)
                        {
                           §§push(§§pop() + (§§pop() << §§pop() & 4294967292));
                           if(!(_loc5_ && proxyId1))
                           {
                              §§push(uint(§§pop()));
                              if(_loc4_)
                              {
                                 key = §§pop();
                                 if(_loc4_)
                                 {
                                    §§push(key);
                                    §§push(key);
                                    if(_loc4_ || b2PairManager)
                                    {
                                       addr169:
                                       §§push(4);
                                       if(!(_loc5_ && proxyId1))
                                       {
                                          §§goto(addr177);
                                       }
                                    }
                                    §§goto(addr233);
                                 }
                                 §§goto(addr219);
                              }
                              addr210:
                              key = §§pop();
                              if(_loc4_ || key)
                              {
                                 §§goto(addr219);
                              }
                              §§goto(addr235);
                           }
                        }
                        §§goto(addr233);
                     }
                     §§goto(addr210);
                     §§push(uint(§§pop()));
                  }
                  key = uint(§§pop());
                  if(_loc4_ || key)
                  {
                     if(!_loc4_)
                     {
                     }
                     §§goto(addr219);
                  }
                  §§push(key);
                  if(!(_loc5_ && proxyId2))
                  {
                     §§push(key);
                     if(!(_loc5_ && b2PairManager))
                     {
                        §§goto(addr139);
                     }
                     §§goto(addr169);
                  }
                  §§goto(addr235);
               }
               §§goto(addr208);
               §§push(2057);
            }
         }
         §§goto(addr39);
      }
      
      public static function Equals(pair:b2Pair, proxyId1:uint, proxyId2:uint) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc4_ && b2PairManager)
         {
         }
         if(!(_loc4_ && proxyId1))
         {
            if(!(_loc4_ && proxyId1))
            {
               if(_loc4_ && b2PairManager)
               {
               }
               addr96:
               return pair.proxyId2 == proxyId2;
            }
            if(!_loc5_)
            {
            }
            §§goto(addr96);
         }
         if(!_loc4_)
         {
            §§push(pair.proxyId1);
            if(_loc5_)
            {
               §§push(proxyId1);
               if(_loc5_ || b2PairManager)
               {
                  §§push(§§pop() == §§pop());
                  if(!(_loc4_ && pair))
                  {
                     if(§§pop())
                     {
                        if(_loc5_ || proxyId2)
                        {
                        }
                     }
                     §§goto(addr96);
                  }
                  §§pop();
               }
               §§goto(addr96);
            }
            §§goto(addr96);
         }
         §§goto(addr96);
      }
      
      private function FindHash(proxyId1:uint, proxyId2:uint, hash:uint) : b2Pair
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc7_)
         {
         }
         var pair:b2Pair = null;
         if(_loc6_)
         {
            if(_loc7_)
            {
            }
            addr28:
            if(_loc7_ && proxyId2)
            {
            }
            var index:* = uint(this.m_hashTable[hash]);
            if(_loc7_ && hash)
            {
            }
            pair = this.m_pairs[index];
            loop0:
            while(true)
            {
               §§push(index);
               if(_loc6_)
               {
                  while(true)
                  {
                     §§push(b2Pair.b2_nullPair);
                     if(!_loc7_)
                     {
                        §§push(§§pop() == §§pop());
                        if(_loc6_)
                        {
                           §§push(!§§pop());
                           if(!_loc7_)
                           {
                              §§push(§§pop());
                              if(!(_loc7_ && this))
                              {
                                 if(§§pop())
                                 {
                                    if(_loc6_ || hash)
                                    {
                                       §§pop();
                                       §§push(Equals(pair,proxyId1,proxyId2));
                                       if(!_loc6_)
                                       {
                                       }
                                    }
                                 }
                              }
                              addr135:
                              §§push(§§pop() == §§pop());
                           }
                           §§goto(addr135);
                           §§push(false);
                        }
                        if(!§§pop())
                        {
                           §§push(index);
                           break loop0;
                        }
                        §§push(pair.next);
                        if(!_loc7_)
                        {
                           §§push(uint(§§pop()));
                           if(!(_loc7_ && this))
                           {
                              index = §§pop();
                              if(_loc6_ || this)
                              {
                                 pair = this.m_pairs[index];
                                 if(!_loc6_)
                                 {
                                 }
                                 continue loop0;
                              }
                              addr149:
                              return null;
                           }
                           break loop0;
                        }
                        continue;
                     }
                     break;
                  }
                  if(§§pop() == §§pop())
                  {
                     §§goto(addr149);
                  }
                  else
                  {
                     return pair;
                  }
               }
               break;
            }
            §§goto(addr148);
            §§push(b2Pair.b2_nullPair);
         }
         §§goto(addr28);
      }
      
      private function Find(proxyId1:uint, proxyId2:uint) : b2Pair
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || hash)
         {
         }
         var temp:* = uint(0);
         if(!(_loc6_ && proxyId1))
         {
            if(_loc5_ || this)
            {
               §§push(proxyId1);
               if(!(_loc6_ && proxyId2))
               {
                  if(§§pop() > proxyId2)
                  {
                  }
                  addr96:
                  var hash:uint = Hash(proxyId1,proxyId2) & b2Pair.b2_tableMask;
                  if(_loc6_)
                  {
                  }
                  return this.FindHash(proxyId1,proxyId2,hash);
               }
               addr66:
               temp = §§pop();
               if(_loc5_)
               {
                  §§push(proxyId2);
                  if(_loc5_)
                  {
                     proxyId1 = §§pop();
                     if(!(_loc6_ && this))
                     {
                        if(!_loc5_)
                        {
                        }
                     }
                     addr95:
                  }
                  addr86:
                  proxyId2 = §§pop();
                  if(!(_loc6_ && proxyId1))
                  {
                     §§goto(addr95);
                  }
               }
               §§goto(addr96);
            }
            §§goto(addr86);
            §§push(temp);
         }
         §§push(uint(proxyId1));
         if(!_loc6_)
         {
            §§goto(addr66);
         }
         §§goto(addr86);
      }
      
      private function ValidateBuffer() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && _loc2_)
         {
         }
         if(!_loc2_)
         {
         }
      }
      
      public function Commit() : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc9_)
         {
         }
         var bufferedPair:b2BufferedPair = null;
         var i:* = 0;
         var pair:b2Pair = null;
         var proxy1:b2Proxy = null;
         var proxy2:b2Proxy = null;
         if(!(_loc9_ && this))
         {
            if(!(_loc9_ && removeCount))
            {
               if(_loc9_)
               {
               }
            }
            addr56:
            var removeCount:int = 0;
            if(_loc8_ || this)
            {
            }
            var proxies:Array = this.m_broadPhase.m_proxyPool;
            if(_loc8_ || i)
            {
               if(_loc8_ || this)
               {
                  i = 0;
               }
            }
            loop0:
            while(true)
            {
               §§push(i);
               if(_loc8_)
               {
                  §§push(this.m_pairBufferCount);
                  if(_loc8_ || removeCount)
                  {
                     if(§§pop() < §§pop())
                     {
                        if(!_loc9_)
                        {
                           if(_loc8_ || this)
                           {
                              §§push(this.m_pairBuffer);
                              if(_loc8_)
                              {
                                 §§push(i);
                                 if(!_loc9_)
                                 {
                                    bufferedPair = §§pop()[§§pop()];
                                    if(_loc9_ && removeCount)
                                    {
                                    }
                                    pair = this.Find(bufferedPair.proxyId1,bufferedPair.proxyId2);
                                    if(!(_loc9_ && i))
                                    {
                                       if(_loc9_ && this)
                                       {
                                       }
                                       addr149:
                                       proxy1 = proxies[pair.proxyId1];
                                       if(_loc9_ && this)
                                       {
                                       }
                                       proxy2 = proxies[pair.proxyId2];
                                       §§push(pair.IsRemoved());
                                       if(_loc8_ || bufferedPair)
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc8_)
                                             {
                                                if(_loc8_)
                                                {
                                                   §§push(pair.IsFinal());
                                                   if(!_loc8_)
                                                   {
                                                   }
                                                   addr243:
                                                   if(§§pop() == §§pop())
                                                   {
                                                      if(_loc9_ && this)
                                                      {
                                                      }
                                                      addr263:
                                                      pair.SetFinal();
                                                      continue;
                                                   }
                                                   continue;
                                                }
                                                addr205:
                                                this.m_callback.PairRemoved(proxy1.userData,proxy2.userData,pair.userData);
                                                if(!_loc9_)
                                                {
                                                   addr218:
                                                   bufferedPair = this.m_pairBuffer[removeCount];
                                                   bufferedPair.proxyId1 = pair.proxyId1;
                                                   bufferedPair.proxyId2 = pair.proxyId2;
                                                   if(!_loc9_)
                                                   {
                                                      removeCount++;
                                                   }
                                                   continue;
                                                }
                                                continue;
                                             }
                                             if(!_loc9_)
                                             {
                                                pair.userData = this.m_callback.PairAdded(proxy1.userData,proxy2.userData);
                                             }
                                             §§goto(addr263);
                                          }
                                          else
                                          {
                                             §§push(pair.IsFinal());
                                          }
                                          §§goto(addr243);
                                          §§push(false);
                                       }
                                       §§push(true);
                                       if(!(_loc9_ && i))
                                       {
                                          if(§§pop() == §§pop())
                                          {
                                             §§goto(addr205);
                                          }
                                          §§goto(addr218);
                                       }
                                       else
                                       {
                                          §§goto(addr243);
                                       }
                                    }
                                    pair.ClearBuffered();
                                    if(!_loc8_)
                                    {
                                    }
                                    §§goto(addr149);
                                 }
                                 else
                                 {
                                    addr294:
                                    while(true)
                                    {
                                       bufferedPair = §§pop()[§§pop()];
                                       if(!_loc9_)
                                       {
                                          if(_loc8_)
                                          {
                                             this.RemovePair(bufferedPair.proxyId1,bufferedPair.proxyId2);
                                             if(_loc8_ || bufferedPair)
                                             {
                                             }
                                          }
                                          if(!_loc8_)
                                          {
                                          }
                                       }
                                       i++;
                                    }
                                 }
                              }
                              addr293:
                              while(true)
                              {
                                 §§goto(addr294);
                              }
                           }
                           addr319:
                           while(true)
                           {
                              break loop0;
                           }
                        }
                     }
                     §§push(0);
                     if(!_loc9_)
                     {
                        i = §§pop();
                        §§goto(addr319);
                     }
                     break;
                  }
                  addr321:
                  while(true)
                  {
                     if(§§pop() >= §§pop())
                     {
                        if(_loc8_)
                        {
                           if(_loc9_ && removeCount)
                           {
                           }
                           addr352:
                           return;
                        }
                        this.m_pairBufferCount = 0;
                     }
                     else if(!_loc9_)
                     {
                        §§goto(addr293);
                        §§push(this.m_pairBuffer);
                     }
                     addr335:
                     if(b2BroadPhase.s_validate)
                     {
                        if(_loc9_)
                        {
                        }
                        this.ValidateTable();
                     }
                     §§goto(addr352);
                  }
               }
               break;
            }
            while(true)
            {
               §§goto(addr321);
            }
            §§goto(addr335);
         }
         if(_loc8_)
         {
            if(_loc9_)
            {
            }
            §§goto(addr56);
         }
         §§goto(addr56);
      }
      
      public function RemoveBufferedPair(proxyId1:int, proxyId2:int) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!_loc7_)
         {
         }
         var bufferedPair:b2BufferedPair = null;
         if(_loc7_)
         {
            if(!_loc8_)
            {
               if(_loc8_ && proxyId1)
               {
               }
               addr41:
               if(_loc7_)
               {
                  addr44:
               }
            }
            var pair:b2Pair = this.Find(proxyId1,proxyId2);
            if(pair == null)
            {
               return;
            }
            §§push(pair.IsBuffered());
            if(_loc7_ || this)
            {
               if(§§pop() == false)
               {
                  if(!(_loc8_ && proxyId2))
                  {
                     if(!_loc8_)
                     {
                        pair.SetBuffered();
                        if(_loc7_ || this)
                        {
                        }
                        addr152:
                     }
                     bufferedPair = this.m_pairBuffer[this.m_pairBufferCount];
                     if(!_loc8_)
                     {
                        if(_loc7_)
                        {
                           bufferedPair.proxyId1 = pair.proxyId1;
                           if(_loc7_ || proxyId2)
                           {
                              bufferedPair.proxyId2 = pair.proxyId2;
                           }
                        }
                        addr142:
                     }
                     if(_loc7_)
                     {
                        §§push(_loc5_.m_pairBufferCount);
                        if(_loc7_)
                        {
                           §§push(§§pop() + 1);
                        }
                        if(_loc7_)
                        {
                           _loc5_.m_pairBufferCount = _loc6_;
                        }
                     }
                     §§goto(addr142);
                  }
                  addr153:
                  §§push(b2BroadPhase.s_validate);
               }
               pair.SetRemoved();
               if(_loc7_ || bufferedPair)
               {
                  §§goto(addr152);
               }
               §§goto(addr153);
            }
            if(§§pop())
            {
               if(!(_loc8_ && proxyId1))
               {
                  this.ValidateBuffer();
               }
            }
            return;
         }
         if(!(_loc8_ && bufferedPair))
         {
            §§goto(addr41);
         }
         §§goto(addr44);
      }
      
      private function RemovePair(proxyId1:uint, proxyId2:uint) : *
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         if(_loc13_ || proxyId2)
         {
         }
         var pair:b2Pair = null;
         var temp:* = uint(0);
         var index:* = uint(0);
         var userData:* = undefined;
         if(!(_loc12_ && proxyId2))
         {
            if(!_loc12_)
            {
               if(!(_loc12_ && proxyId2))
               {
                  §§push(proxyId1);
                  if(_loc13_)
                  {
                     if(§§pop() > proxyId2)
                     {
                     }
                     addr111:
                     var hash:uint = Hash(proxyId1,proxyId2) & b2Pair.b2_tableMask;
                     if(!_loc13_)
                     {
                     }
                     var node:* = uint(this.m_hashTable[hash]);
                     if(_loc12_)
                     {
                     }
                     var pNode:b2Pair = null;
                     loop0:
                     while(true)
                     {
                        while(§§pop() != b2Pair.b2_nullPair)
                        {
                           if(!_loc12_)
                           {
                              if(Equals(this.m_pairs[node],proxyId1,proxyId2))
                              {
                                 if(_loc12_ && this)
                                 {
                                 }
                                 addr181:
                                 §§push(this.m_pairs);
                                 if(_loc13_ || pair)
                                 {
                                    §§push(node);
                                    if(!_loc12_)
                                    {
                                       break loop0;
                                    }
                                 }
                                 addr304:
                                 pNode = §§pop()[§§pop()];
                                 if(_loc13_ || pair)
                                 {
                                    if(_loc12_ && pair)
                                    {
                                    }
                                    addr342:
                                    continue loop0;
                                 }
                                 §§push(pNode.next);
                                 if(!(_loc12_ && proxyId1))
                                 {
                                    §§push(uint(§§pop()));
                                 }
                                 node = §§pop();
                                 if(!_loc12_)
                                 {
                                    §§goto(addr342);
                                 }
                                 else
                                 {
                                    continue loop0;
                                 }
                              }
                              else
                              {
                                 §§push(this.m_pairs);
                              }
                              §§goto(addr304);
                              §§push(node);
                           }
                           §§push(node);
                           if(!(_loc12_ && proxyId2))
                           {
                              §§push(uint(§§pop()));
                              if(_loc13_)
                              {
                                 index = §§pop();
                                 if(_loc13_)
                                 {
                                    §§goto(addr181);
                                 }
                                 else
                                 {
                                    break;
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
                        return null;
                     }
                     pair = §§pop()[§§pop()];
                     if(_loc13_)
                     {
                        if(!(_loc12_ && this))
                        {
                           if(pNode)
                           {
                              if(_loc12_)
                              {
                              }
                           }
                           else
                           {
                              §§push(this.m_hashTable);
                              if(!(_loc12_ && this))
                              {
                                 §§push(hash);
                                 if(!_loc12_)
                                 {
                                    §§pop()[§§pop()] = pair.next;
                                    if(!_loc13_)
                                    {
                                    }
                                    addr235:
                                    §§push(this.m_pairs);
                                 }
                                 addr238:
                                 pair = §§pop()[§§pop()];
                                 if(_loc12_ && this)
                                 {
                                 }
                                 userData = pair.userData;
                                 pair.next = this.m_freePair;
                                 pair.proxyId1 = b2Pair.b2_nullProxy;
                                 pair.proxyId2 = b2Pair.b2_nullProxy;
                                 pair.userData = null;
                                 pair.status = 0;
                                 this.m_freePair = index;
                                 §§push(_loc10_.m_pairCount);
                                 if(!_loc12_)
                                 {
                                    §§push(§§pop() - 1);
                                 }
                                 if(!_loc12_)
                                 {
                                    _loc10_.m_pairCount = _loc11_;
                                 }
                                 return userData;
                              }
                           }
                           §§goto(addr238);
                           §§push(index);
                        }
                        pNode.next = pair.next;
                        §§goto(addr235);
                     }
                     §§goto(addr235);
                  }
                  addr76:
                  temp = §§pop();
                  §§push(proxyId2);
                  if(_loc13_ || proxyId2)
                  {
                     §§push(uint(§§pop()));
                     if(_loc13_)
                     {
                        proxyId1 = §§pop();
                        if(_loc13_ || this)
                        {
                           §§push(uint(temp));
                           if(!(_loc12_ && proxyId2))
                           {
                              proxyId2 = §§pop();
                              if(!_loc13_)
                              {
                              }
                           }
                        }
                        §§goto(addr111);
                     }
                     §§goto(addr111);
                  }
                  §§goto(addr111);
               }
            }
            if(_loc12_)
            {
            }
            §§goto(addr111);
         }
         §§push(proxyId1);
         if(!(_loc12_ && pair))
         {
            §§goto(addr76);
            §§push(uint(§§pop()));
         }
         §§goto(addr111);
      }
      
      public function Initialize(broadPhase:b2BroadPhase, callback:b2PairCallback) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc3_)
         {
         }
         if(!_loc3_)
         {
            this.m_broadPhase = broadPhase;
            if(_loc4_ || callback)
            {
               if(!_loc3_)
               {
                  this.m_callback = callback;
               }
            }
         }
      }
      
      public function AddBufferedPair(proxyId1:int, proxyId2:int) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc8_)
         {
         }
         var bufferedPair:b2BufferedPair = null;
         if(!_loc8_)
         {
            if(!_loc8_)
            {
               if(_loc7_ || proxyId1)
               {
                  if(_loc7_)
                  {
                     if(_loc8_)
                     {
                     }
                  }
               }
            }
         }
         var pair:b2Pair = this.AddPair(proxyId1,proxyId2);
         §§push(pair.IsBuffered());
         if(_loc7_)
         {
            if(§§pop() == false)
            {
               pair.SetBuffered();
               if(_loc7_ || proxyId2)
               {
                  bufferedPair = this.m_pairBuffer[this.m_pairBufferCount];
                  if(_loc8_)
                  {
                  }
                  bufferedPair.proxyId1 = pair.proxyId1;
                  if(!_loc8_)
                  {
                     bufferedPair.proxyId2 = pair.proxyId2;
                     if(_loc7_ || proxyId2)
                     {
                     }
                     addr125:
                  }
                  §§push(_loc5_.m_pairBufferCount);
                  if(_loc7_ || bufferedPair)
                  {
                     §§push(§§pop() + 1);
                  }
                  if(!(_loc8_ && proxyId2))
                  {
                     _loc5_.m_pairBufferCount = _loc6_;
                  }
                  §§goto(addr125);
               }
               addr128:
               §§push(b2BroadPhase.s_validate);
            }
            pair.ClearRemoved();
            §§goto(addr128);
         }
         if(§§pop())
         {
            this.ValidateBuffer();
            if(_loc7_ || this)
            {
            }
         }
      }
      
      private function AddPair(proxyId1:uint, proxyId2:uint) : b2Pair
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         if(_loc9_ && proxyId2)
         {
         }
         var temp:* = uint(0);
         if(!(_loc9_ && hash))
         {
            if(_loc10_ || hash)
            {
            }
            addr126:
            var hash:uint = Hash(proxyId1,proxyId2) & b2Pair.b2_tableMask;
            if(_loc9_)
            {
            }
            pair = var pair:b2Pair = this.FindHash(proxyId1,proxyId2,hash);
            if(pair != null)
            {
               if(_loc9_)
               {
               }
               return pair;
            }
            §§push(this.m_freePair);
            if(_loc10_)
            {
               §§push(uint(§§pop()));
            }
            var pIndex:* = §§pop();
            if(_loc9_ && proxyId1)
            {
            }
            pair = this.m_pairs[pIndex];
            this.m_freePair = pair.next;
            pair.proxyId1 = proxyId1;
            if(!_loc9_)
            {
               pair.proxyId2 = proxyId2;
               pair.status = 0;
            }
            if(!_loc9_)
            {
               pair.userData = null;
               if(_loc10_ || this)
               {
                  pair.next = this.m_hashTable[hash];
               }
               if(_loc10_ || hash)
               {
                  this.m_hashTable[hash] = pIndex;
               }
               if(!_loc9_)
               {
                  §§push(this.m_pairCount);
                  if(_loc10_)
                  {
                     §§push(§§pop() + 1);
                  }
                  if(!_loc9_)
                  {
                     _loc7_.m_pairCount = _loc8_;
                  }
               }
            }
            return pair;
         }
         if(!_loc9_)
         {
            if(proxyId1 > proxyId2)
            {
               if(_loc10_ || hash)
               {
                  if(_loc10_ || this)
                  {
                  }
               }
               §§push(proxyId1);
               if(!_loc9_)
               {
                  §§push(uint(§§pop()));
                  if(_loc10_ || proxyId2)
                  {
                     temp = §§pop();
                     if(_loc9_ && proxyId1)
                     {
                     }
                     §§push(proxyId2);
                     if(_loc9_ && this)
                     {
                     }
                     §§goto(addr126);
                  }
                  addr96:
                  proxyId1 = §§pop();
                  if(_loc10_)
                  {
                     if(_loc9_ && proxyId2)
                     {
                     }
                     §§goto(addr126);
                  }
               }
               §§goto(addr96);
               §§push(uint(§§pop()));
            }
            §§goto(addr126);
         }
         proxyId2 = temp;
         §§goto(addr126);
      }
      
      private function ValidateTable() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(_loc2_ || _loc2_)
         {
         }
      }
   }
}
