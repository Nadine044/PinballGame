package Box2D.Dynamics.Contacts
{
   import Box2D.Collision.b2Manifold;
   import Box2D.Collision.b2ManifoldPoint;
   import Box2D.Common.Math.b2Mat22;
   import Box2D.Common.Math.b2Math;
   import Box2D.Common.Math.b2Vec2;
   import Box2D.Common.b2Settings;
   import Box2D.Dynamics.b2Body;
   import Box2D.Dynamics.b2TimeStep;
   
   public class b2ContactSolver
   {
       
      
      public var m_constraintCount:int;
      
      public var m_constraints:Array;
      
      public var m_allocator;
      
      public var m_step:b2TimeStep;
      
      public function b2ContactSolver(step:b2TimeStep, contacts:Array, contactCount:int, allocator:*)
      {
         /*
          * Error de decompilación
          * Tiempo de espera (1 minuto) alcanzado
          * Instruction count: 1956
          */
         throw new flash.errors.IllegalOperationError("No decompilado debido al tiempo de espera");
      }
      
      public function InitVelocityConstraints(step:b2TimeStep) : void
      {
         var _loc24_:Boolean = true;
         var _loc25_:Boolean = false;
         if(_loc25_ && this)
         {
         }
         var tVec:b2Vec2 = null;
         var tVec2:b2Vec2 = null;
         var tMat:b2Mat22 = null;
         var c:b2ContactConstraint = null;
         var b1:b2Body = null;
         var b2:b2Body = null;
         var invMass1:* = NaN;
         var invI1:* = NaN;
         var invMass2:Number = NaN;
         var invI2:* = NaN;
         var normalX:Number = NaN;
         var normalY:Number = NaN;
         var tangentX:Number = NaN;
         var tangentY:* = NaN;
         var tX:Number = NaN;
         var j:* = 0;
         var tCount:* = 0;
         var ccp:b2ContactConstraintPoint = null;
         var PX:* = NaN;
         var PY:* = NaN;
         var ccp2:b2ContactConstraintPoint = null;
         if(_loc25_)
         {
         }
         loop0:
         for(var i:int = 0; i < this.m_constraintCount; )
         {
            if(!_loc25_)
            {
               if(_loc24_ || tVec2)
               {
                  if(!(_loc25_ && step))
                  {
                     if(_loc24_)
                     {
                        if(_loc24_ || tVec)
                        {
                           if(!(_loc25_ && tVec2))
                           {
                              if(!_loc24_)
                              {
                              }
                           }
                        }
                        else
                        {
                           break;
                        }
                     }
                     break;
                  }
                  addr772:
                  return;
               }
               break;
            }
            c = this.m_constraints[i];
            if(_loc25_ && this)
            {
            }
            b1 = c.body1;
            if(_loc24_ || step)
            {
            }
            b2 = c.body2;
            if(_loc24_ || this)
            {
               §§push(Number(b1.m_invMass));
               if(!_loc25_)
               {
                  invMass1 = §§pop();
                  if(!(_loc25_ && step))
                  {
                     §§push(b1.m_invI);
                     if(!(_loc25_ && tVec2))
                     {
                        §§push(Number(§§pop()));
                        if(!_loc25_)
                        {
                           invI1 = §§pop();
                           addr204:
                           if(!(_loc25_ && step))
                           {
                              if(_loc24_)
                              {
                                 §§push(b2.m_invMass);
                                 if(_loc24_)
                                 {
                                    invMass2 = §§pop();
                                 }
                              }
                              addr282:
                              §§push(c.pointCount);
                              if(_loc24_)
                              {
                                 tCount = int(§§pop());
                                 addr289:
                                 j = 0;
                                 addr678:
                                 while(true)
                                 {
                                    §§push(j);
                                    if(_loc25_)
                                    {
                                       addr704:
                                       tCount = §§pop();
                                       break;
                                    }
                                 }
                                 addr705:
                                 §§push(0);
                                 if(_loc24_)
                                 {
                                    j = §§pop();
                                    if(!_loc25_)
                                    {
                                       addr755:
                                       while(true)
                                       {
                                       }
                                    }
                                    addr715:
                                    while(true)
                                    {
                                       addr716:
                                       while(true)
                                       {
                                          addr718:
                                          while(true)
                                          {
                                             addr719:
                                             while(true)
                                             {
                                                ccp2 = §§pop()[§§pop()];
                                                if(!(_loc25_ && tVec))
                                                {
                                                   ccp2.normalImpulse = 0;
                                                   if(_loc24_ || step)
                                                   {
                                                   }
                                                   addr743:
                                                   ccp2.tangentImpulse = 0;
                                                   if(_loc24_ || tVec2)
                                                   {
                                                      j++;
                                                   }
                                                   §§goto(addr755);
                                                }
                                                if(!_loc25_)
                                                {
                                                   §§goto(addr743);
                                                }
                                                §§goto(addr755);
                                             }
                                          }
                                       }
                                    }
                                 }
                                 loop4:
                                 while(true)
                                 {
                                    addr764:
                                    while(true)
                                    {
                                       if(§§pop() >= §§pop())
                                       {
                                          break loop4;
                                       }
                                       §§goto(addr715);
                                    }
                                    §§goto(addr705);
                                 }
                                 i++;
                                 continue;
                              }
                              while(true)
                              {
                                 §§push(tCount);
                                 if(_loc24_)
                                 {
                                    if(§§pop() >= §§pop())
                                    {
                                       if(!(_loc24_ || tVec2))
                                       {
                                          §§goto(addr715);
                                       }
                                       §§goto(addr766);
                                    }
                                    else
                                    {
                                       if(_loc25_)
                                       {
                                       }
                                       §§goto(addr705);
                                    }
                                    §§goto(addr763);
                                 }
                                 break;
                              }
                              §§goto(addr764);
                           }
                           while(true)
                           {
                              if(!_loc25_)
                              {
                                 §§push(c.points);
                                 if(!(_loc25_ && tVec))
                                 {
                                    §§push(j);
                                    if(_loc24_ || tVec2)
                                    {
                                       ccp = §§pop()[§§pop()];
                                       if(!(_loc25_ && tVec2))
                                       {
                                          §§push(ccp);
                                          §§push(ccp.normalImpulse);
                                          if(_loc24_)
                                          {
                                             §§push(§§pop() * step.dtRatio);
                                          }
                                          §§pop().normalImpulse = §§pop();
                                          if(_loc24_ || this)
                                          {
                                             §§push(ccp);
                                             §§push(ccp.tangentImpulse);
                                             if(_loc24_ || this)
                                             {
                                                §§push(§§pop() * step.dtRatio);
                                             }
                                             §§pop().tangentImpulse = §§pop();
                                             §§push(ccp.normalImpulse);
                                             §§push(normalX);
                                             if(_loc24_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!_loc25_)
                                                {
                                                   §§push(ccp.tangentImpulse);
                                                   if(_loc25_)
                                                   {
                                                   }
                                                   addr432:
                                                   §§push(§§pop() + §§pop() * tangentY);
                                                   if(_loc24_ || step)
                                                   {
                                                      §§push(Number(§§pop()));
                                                   }
                                                   addr441:
                                                   PY = §§pop();
                                                   if(!(_loc25_ && tVec))
                                                   {
                                                      §§push(b1);
                                                      §§push(b1.m_angularVelocity);
                                                      if(!_loc25_)
                                                      {
                                                         §§push(invI1);
                                                         if(!(_loc25_ && tVec2))
                                                         {
                                                            §§push(ccp.r1.x);
                                                            if(_loc24_)
                                                            {
                                                               §§push(PY);
                                                               if(_loc24_)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(_loc25_)
                                                                  {
                                                                  }
                                                                  addr482:
                                                                  §§push(§§pop() * §§pop());
                                                               }
                                                               addr479:
                                                               §§goto(addr482);
                                                               §§push(§§pop() - §§pop() * PX);
                                                            }
                                                            §§push(ccp.r1.y);
                                                            if(!_loc25_)
                                                            {
                                                               §§goto(addr479);
                                                            }
                                                            §§goto(addr479);
                                                         }
                                                         §§push(§§pop() - §§pop());
                                                      }
                                                      §§pop().m_angularVelocity = §§pop();
                                                      §§push(b1.m_linearVelocity);
                                                      if(!(_loc25_ && tVec))
                                                      {
                                                         §§push(b1.m_linearVelocity);
                                                         if(_loc24_ || step)
                                                         {
                                                            §§push(§§pop().x);
                                                            §§push(invMass1);
                                                            §§push(PX);
                                                            if(!(_loc25_ && step))
                                                            {
                                                               §§push(§§pop() - §§pop() * §§pop());
                                                               if(_loc24_)
                                                               {
                                                                  §§pop().x = §§pop();
                                                                  if(_loc24_ || this)
                                                                  {
                                                                     §§push(b1.m_linearVelocity);
                                                                     if(_loc24_ || tVec)
                                                                     {
                                                                        §§push(b1.m_linearVelocity);
                                                                        if(_loc24_ || tVec2)
                                                                        {
                                                                           §§push(§§pop().y);
                                                                           §§push(invMass1);
                                                                           if(_loc24_)
                                                                           {
                                                                              §§push(PY);
                                                                              if(_loc24_ || this)
                                                                              {
                                                                                 §§push(§§pop() - §§pop() * §§pop());
                                                                              }
                                                                           }
                                                                           addr645:
                                                                           §§push(§§pop() + §§pop());
                                                                           addr669:
                                                                           if(!(_loc25_ && tVec2))
                                                                           {
                                                                              §§pop().x = §§pop();
                                                                              if(!_loc25_)
                                                                              {
                                                                                 addr656:
                                                                                 if(!(_loc25_ && tVec))
                                                                                 {
                                                                                    §§push(b2.m_linearVelocity);
                                                                                 }
                                                                                 §§goto(addr678);
                                                                              }
                                                                              addr677:
                                                                              j++;
                                                                              §§goto(addr678);
                                                                           }
                                                                           §§push(invMass2);
                                                                           addr674:
                                                                           if(_loc24_)
                                                                           {
                                                                              addr672:
                                                                              §§push(PY);
                                                                           }
                                                                           §§pop().y = §§pop() + §§pop();
                                                                           §§goto(addr677);
                                                                        }
                                                                     }
                                                                     addr628:
                                                                     §§push(b2.m_linearVelocity);
                                                                     if(_loc24_)
                                                                     {
                                                                        §§push(§§pop().x);
                                                                        §§push(invMass2);
                                                                        if(!(_loc25_ && this))
                                                                        {
                                                                           §§push(PX);
                                                                           if(_loc24_)
                                                                           {
                                                                              §§goto(addr645);
                                                                              §§push(§§pop() * §§pop());
                                                                           }
                                                                        }
                                                                        §§goto(addr672);
                                                                     }
                                                                  }
                                                                  addr568:
                                                                  §§push(b2);
                                                                  §§push(b2.m_angularVelocity);
                                                                  if(!(_loc25_ && tVec))
                                                                  {
                                                                     §§push(invI2);
                                                                     if(!(_loc25_ && tVec2))
                                                                     {
                                                                        §§push(ccp.r2.x);
                                                                        if(!(_loc25_ && tVec2))
                                                                        {
                                                                           §§push(PY);
                                                                           if(!_loc25_)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              if(_loc25_ && tVec2)
                                                                              {
                                                                              }
                                                                              addr620:
                                                                              §§push(§§pop() * §§pop());
                                                                           }
                                                                           addr619:
                                                                           §§goto(addr620);
                                                                           §§push(§§pop() - §§pop());
                                                                        }
                                                                        §§push(ccp.r2.y);
                                                                        if(!(_loc25_ && step))
                                                                        {
                                                                           §§push(§§pop() * PX);
                                                                        }
                                                                        §§goto(addr619);
                                                                     }
                                                                     §§push(§§pop() + §§pop());
                                                                  }
                                                                  §§pop().m_angularVelocity = §§pop();
                                                               }
                                                               §§pop().y = §§pop();
                                                            }
                                                            §§goto(addr674);
                                                            §§push(§§pop() * §§pop());
                                                         }
                                                         addr668:
                                                         §§goto(addr669);
                                                         §§push(§§pop().y);
                                                      }
                                                      addr666:
                                                      §§goto(addr668);
                                                      §§push(b2.m_linearVelocity);
                                                   }
                                                }
                                                addr398:
                                                §§push(Number(§§pop()));
                                                if(_loc24_ || step)
                                                {
                                                   PX = §§pop();
                                                   §§push(ccp.normalImpulse);
                                                   §§push(normalY);
                                                   if(_loc24_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc25_ && step)
                                                      {
                                                      }
                                                      §§goto(addr441);
                                                   }
                                                   §§goto(addr432);
                                                }
                                                §§push(ccp.tangentImpulse);
                                                if(!(_loc25_ && tVec))
                                                {
                                                   §§goto(addr432);
                                                }
                                                §§goto(addr432);
                                             }
                                             §§push(tangentX);
                                             if(_loc24_ || this)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!(_loc25_ && this))
                                                {
                                                   §§goto(addr398);
                                                   §§push(§§pop() + §§pop());
                                                }
                                                §§goto(addr432);
                                             }
                                             §§goto(addr432);
                                          }
                                          §§push(b2.m_linearVelocity);
                                          if(!_loc25_)
                                          {
                                             §§goto(addr628);
                                          }
                                          §§goto(addr666);
                                       }
                                       if(!(_loc25_ && step))
                                       {
                                          §§goto(addr568);
                                       }
                                       §§goto(addr656);
                                    }
                                    §§goto(addr719);
                                 }
                                 break;
                              }
                              continue loop0;
                              §§goto(addr204);
                           }
                           §§goto(addr718);
                        }
                        addr248:
                        tangentX = §§pop();
                        if(_loc24_ || tVec2)
                        {
                           §§push(normalX);
                           if(!(_loc25_ && this))
                           {
                              §§push(Number(-§§pop()));
                           }
                           tangentY = §§pop();
                           if(_loc24_ || tVec)
                           {
                              if(step.warmStarting)
                              {
                                 if(_loc24_)
                                 {
                                    §§goto(addr282);
                                 }
                                 §§goto(addr716);
                              }
                              else
                              {
                                 §§push(c.pointCount);
                                 if(!(_loc25_ && tVec))
                                 {
                                    §§push(int(§§pop()));
                                 }
                              }
                              §§goto(addr704);
                           }
                           §§goto(addr289);
                        }
                        §§goto(addr282);
                     }
                     addr234:
                     normalX = §§pop();
                     if(_loc24_)
                     {
                        addr243:
                        normalY = c.normal.y;
                        if(!_loc25_)
                        {
                           §§goto(addr248);
                           §§push(normalY);
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
                  §§push(Number(b2.m_invI));
               }
               invI2 = §§pop();
               if(!(_loc25_ && tVec))
               {
                  §§push(c.normal);
                  if(_loc24_)
                  {
                     §§push(§§pop().x);
                     if(_loc24_)
                     {
                        §§goto(addr234);
                     }
                     §§goto(addr243);
                  }
                  §§goto(addr243);
               }
               §§goto(addr766);
            }
            §§goto(addr766);
         }
         §§goto(addr772);
      }
      
      public function SolvePositionConstraints(baumgarte:Number) : Boolean
      {
         /*
          * Error de decompilación
          * Tiempo de espera (1 minuto) alcanzado
          * Instruction count: 1342
          */
         throw new flash.errors.IllegalOperationError("No decompilado debido al tiempo de espera");
      }
      
      public function SolveVelocityConstraints() : void
      {
         var _loc39_:Boolean = false;
         var _loc40_:Boolean = true;
         if(_loc39_)
         {
         }
         var j:* = 0;
         var ccp:b2ContactConstraintPoint = null;
         var r1X:Number = NaN;
         var r1Y:Number = NaN;
         var r2X:Number = NaN;
         var r2Y:Number = NaN;
         var dvX:* = NaN;
         var dvY:Number = NaN;
         var vn:* = NaN;
         var vt:* = NaN;
         var lambda_n:* = NaN;
         var lambda_t:* = NaN;
         var newImpulse_n:* = NaN;
         var newImpulse_t:Number = NaN;
         var PX:Number = NaN;
         var PY:* = NaN;
         var tMat:b2Mat22 = null;
         var tVec:b2Vec2 = null;
         var c:b2ContactConstraint = null;
         var b1:b2Body = null;
         var b2:b2Body = null;
         var w1:* = NaN;
         var w2:* = NaN;
         var v1:b2Vec2 = null;
         var v2:b2Vec2 = null;
         var invMass1:Number = NaN;
         var invI1:* = NaN;
         var invMass2:* = NaN;
         var invI2:Number = NaN;
         var normalX:Number = NaN;
         var normalY:* = NaN;
         var tangentX:* = NaN;
         var tangentY:Number = NaN;
         var friction:Number = NaN;
         var tX:Number = NaN;
         var tCount:* = 0;
         var maxFriction:* = NaN;
         if(_loc40_)
         {
            if(!(_loc39_ && this))
            {
               if(_loc40_)
               {
                  if(_loc39_)
                  {
                  }
                  addr136:
                  if(!_loc39_)
                  {
                     if(!_loc39_)
                     {
                        addr142:
                     }
                  }
                  var i:int = 0;
                  while(i < this.m_constraintCount)
                  {
                     if(_loc39_)
                     {
                     }
                     if(_loc40_)
                     {
                        if(!_loc39_)
                        {
                           if(_loc39_ && r1X)
                           {
                           }
                        }
                     }
                     c = this.m_constraints[i];
                     if(!_loc40_)
                     {
                     }
                     b1 = c.body1;
                     if(_loc39_)
                     {
                     }
                     b2 = c.body2;
                     if(!_loc39_)
                     {
                        if(_loc40_)
                        {
                           §§push(b1.m_angularVelocity);
                           if(!(_loc39_ && this))
                           {
                              §§push(Number(§§pop()));
                              if(_loc40_ || j)
                              {
                                 w1 = §§pop();
                                 if(_loc39_ && ccp)
                                 {
                                 }
                                 addr251:
                                 v1 = b1.m_linearVelocity;
                                 if(_loc39_)
                                 {
                                 }
                                 v2 = b2.m_linearVelocity;
                                 if(_loc40_)
                                 {
                                    §§push(b1.m_invMass);
                                    if(!(_loc39_ && r1X))
                                    {
                                       invMass1 = §§pop();
                                       if(_loc40_)
                                       {
                                          §§push(Number(b1.m_invI));
                                          if(!_loc40_)
                                          {
                                          }
                                          addr304:
                                          invI2 = §§pop();
                                          §§push(c.normal);
                                          if(!_loc39_)
                                          {
                                             §§push(§§pop().x);
                                             if(!_loc39_)
                                             {
                                                addr315:
                                                normalX = §§pop();
                                                if(_loc40_)
                                                {
                                                   if(!(_loc39_ && this))
                                                   {
                                                      §§push(c.normal);
                                                   }
                                                   addr966:
                                                   addr972:
                                                   if(_loc40_)
                                                   {
                                                      addr969:
                                                      b1.m_angularVelocity = w1;
                                                   }
                                                   b2.m_angularVelocity = w2;
                                                   if(_loc39_ && this)
                                                   {
                                                      continue;
                                                   }
                                                }
                                             }
                                             addr353:
                                             tangentY = §§pop();
                                             addr394:
                                             if(_loc40_)
                                             {
                                                addr357:
                                                if(!_loc39_)
                                                {
                                                   friction = c.friction;
                                                }
                                             }
                                             loop1:
                                             while(true)
                                             {
                                                addr957:
                                                while(true)
                                                {
                                                   if(§§pop() >= tCount)
                                                   {
                                                      if(!(_loc39_ && this))
                                                      {
                                                         §§goto(addr966);
                                                      }
                                                      §§goto(addr969);
                                                   }
                                                   else if(!_loc39_)
                                                   {
                                                      addr399:
                                                      while(true)
                                                      {
                                                         ccp = c.points[j];
                                                         if(_loc40_)
                                                         {
                                                            §§push(v2.x);
                                                            §§push(w2);
                                                            if(!(_loc39_ && j))
                                                            {
                                                               §§push(-§§pop());
                                                               §§push(ccp.r2);
                                                               if(!(_loc39_ && j))
                                                               {
                                                                  §§push(§§pop().y);
                                                                  if(!(_loc39_ && r1X))
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(!_loc39_)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        if(!_loc39_)
                                                                        {
                                                                           §§push(§§pop() - v1.x);
                                                                           if(!_loc39_)
                                                                           {
                                                                              §§push(-w1);
                                                                              §§push(ccp.r1);
                                                                              if(_loc40_)
                                                                              {
                                                                                 §§push(§§pop().y);
                                                                                 if(!(_loc39_ && j))
                                                                                 {
                                                                                    §§push(§§pop() - §§pop() * §§pop());
                                                                                    if(_loc40_)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                       if(!_loc39_)
                                                                                       {
                                                                                          dvX = §§pop();
                                                                                          if(!(_loc39_ && j))
                                                                                          {
                                                                                             §§push(v2.y);
                                                                                             if(_loc40_)
                                                                                             {
                                                                                                §§push(w2);
                                                                                                §§push(ccp.r2);
                                                                                                if(_loc39_ && j)
                                                                                                {
                                                                                                }
                                                                                                addr914:
                                                                                                §§push(§§pop().x);
                                                                                                if(_loc40_)
                                                                                                {
                                                                                                   addr917:
                                                                                                   §§push(PY);
                                                                                                   addr936:
                                                                                                   if(!(_loc39_ && j))
                                                                                                   {
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                   }
                                                                                                   w2 = Number(§§pop() + §§pop() * (§§pop() - §§pop()));
                                                                                                   addr944:
                                                                                                   if(_loc40_)
                                                                                                   {
                                                                                                      ccp.normalImpulse = newImpulse_n;
                                                                                                   }
                                                                                                   if(_loc40_)
                                                                                                   {
                                                                                                      addr947:
                                                                                                      ccp.tangentImpulse = newImpulse_t;
                                                                                                      if(!_loc39_)
                                                                                                      {
                                                                                                         addr952:
                                                                                                         if(!_loc40_)
                                                                                                         {
                                                                                                            continue loop1;
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         continue loop1;
                                                                                                      }
                                                                                                   }
                                                                                                   j++;
                                                                                                   continue loop1;
                                                                                                }
                                                                                             }
                                                                                             addr911:
                                                                                             §§goto(addr914);
                                                                                             §§push(invI2);
                                                                                             §§push(ccp.r2);
                                                                                          }
                                                                                          addr734:
                                                                                          §§push(lambda_n);
                                                                                          §§push(normalY);
                                                                                          addr856:
                                                                                          if(!(_loc39_ && j))
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(_loc40_)
                                                                                             {
                                                                                                addr746:
                                                                                                §§push(lambda_t);
                                                                                                §§push(tangentY);
                                                                                                if(_loc40_ || j)
                                                                                                {
                                                                                                   addr757:
                                                                                                   §§push(Number(§§pop() + §§pop() * §§pop()));
                                                                                                   if(_loc40_ || j)
                                                                                                   {
                                                                                                   }
                                                                                                   addr811:
                                                                                                   §§push(invI1);
                                                                                                   if(_loc40_ || ccp)
                                                                                                   {
                                                                                                      §§push(ccp.r1);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr917);
                                                                                             }
                                                                                             PY = §§pop();
                                                                                             §§push(v1);
                                                                                             §§push(v1.x);
                                                                                             if(!_loc39_)
                                                                                             {
                                                                                                §§push(invMass1);
                                                                                                if(_loc40_ || ccp)
                                                                                                {
                                                                                                   §§push(§§pop() * PX);
                                                                                                }
                                                                                                §§push(§§pop() - §§pop());
                                                                                             }
                                                                                             §§pop().x = §§pop();
                                                                                             addr784:
                                                                                             §§push(v1);
                                                                                             §§push(v1.y);
                                                                                             if(!_loc39_)
                                                                                             {
                                                                                                §§push(invMass1);
                                                                                                if(!(_loc39_ && r1X))
                                                                                                {
                                                                                                   §§push(§§pop() * PY);
                                                                                                }
                                                                                                §§push(§§pop() - §§pop());
                                                                                             }
                                                                                             §§pop().y = §§pop();
                                                                                             if(!(_loc39_ && j))
                                                                                             {
                                                                                                §§goto(addr811);
                                                                                                §§push(w1);
                                                                                             }
                                                                                             §§goto(addr944);
                                                                                          }
                                                                                          w1 = Number(§§pop() - §§pop());
                                                                                          if(!(_loc39_ && j))
                                                                                          {
                                                                                             addr867:
                                                                                             §§push(v2);
                                                                                             §§push(v2.x);
                                                                                             if(!(_loc39_ && this))
                                                                                             {
                                                                                                §§push(invMass2);
                                                                                                if(!(_loc39_ && r1X))
                                                                                                {
                                                                                                   §§push(§§pop() * PX);
                                                                                                }
                                                                                                §§push(§§pop() + §§pop());
                                                                                             }
                                                                                             addr890:
                                                                                             §§pop().x = §§pop();
                                                                                             §§push(v2);
                                                                                             §§push(v2.y);
                                                                                             if(!_loc39_)
                                                                                             {
                                                                                                §§push(invMass2);
                                                                                                if(_loc40_)
                                                                                                {
                                                                                                   §§push(§§pop() * PY);
                                                                                                }
                                                                                                §§push(§§pop() + §§pop());
                                                                                             }
                                                                                             addr903:
                                                                                             §§pop().y = §§pop();
                                                                                             §§push(w2);
                                                                                             if(_loc40_ || this)
                                                                                             {
                                                                                                §§goto(addr911);
                                                                                             }
                                                                                             §§goto(addr936);
                                                                                          }
                                                                                          §§goto(addr952);
                                                                                       }
                                                                                       addr534:
                                                                                       §§push(normalX);
                                                                                       if(!_loc39_)
                                                                                       {
                                                                                          addr540:
                                                                                          §§push(§§pop() * §§pop());
                                                                                          §§push(dvY * normalY);
                                                                                       }
                                                                                       addr626:
                                                                                       addr694:
                                                                                       lambda_n = Number(§§pop() - §§pop());
                                                                                       if(!_loc39_)
                                                                                       {
                                                                                          if(_loc40_ || r1X)
                                                                                          {
                                                                                             §§push(friction);
                                                                                             if(!(_loc39_ && ccp))
                                                                                             {
                                                                                                addr650:
                                                                                                §§push(Number(§§pop() * ccp.normalImpulse));
                                                                                             }
                                                                                             §§goto(addr811);
                                                                                          }
                                                                                          §§goto(addr867);
                                                                                       }
                                                                                       addr693:
                                                                                       §§push(lambda_n);
                                                                                       if(!(_loc39_ && this))
                                                                                       {
                                                                                          §§push(§§pop() * normalX);
                                                                                          §§push(lambda_t);
                                                                                          if(_loc40_ || this)
                                                                                          {
                                                                                             §§push(§§pop() + §§pop() * tangentX);
                                                                                             if(_loc40_)
                                                                                             {
                                                                                                PX = §§pop();
                                                                                                if(!(_loc39_ && r1X))
                                                                                                {
                                                                                                   if(_loc40_ || j)
                                                                                                   {
                                                                                                      §§goto(addr734);
                                                                                                   }
                                                                                                   §§goto(addr784);
                                                                                                }
                                                                                                §§goto(addr903);
                                                                                             }
                                                                                             §§goto(addr746);
                                                                                          }
                                                                                          §§goto(addr746);
                                                                                       }
                                                                                       §§goto(addr911);
                                                                                    }
                                                                                    addr690:
                                                                                    lambda_t = §§pop();
                                                                                    if(_loc40_)
                                                                                    {
                                                                                       §§goto(addr693);
                                                                                    }
                                                                                    §§goto(addr947);
                                                                                 }
                                                                                 addr926:
                                                                                 §§push(ccp.r2.y);
                                                                                 if(!_loc39_)
                                                                                 {
                                                                                    addr931:
                                                                                    §§push(§§pop() * PX);
                                                                                 }
                                                                                 §§goto(addr936);
                                                                              }
                                                                              addr822:
                                                                              §§push(§§pop().x);
                                                                              §§push(PY);
                                                                              addr852:
                                                                              if(_loc40_ || r1X)
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                              }
                                                                              §§push(§§pop() - §§pop());
                                                                              if(!_loc39_)
                                                                              {
                                                                                 §§goto(addr856);
                                                                                 §§push(§§pop() * §§pop());
                                                                              }
                                                                              §§goto(addr926);
                                                                           }
                                                                           maxFriction = §§pop();
                                                                           if(!(_loc39_ && ccp))
                                                                           {
                                                                              §§push(b2Math);
                                                                              §§push(ccp.tangentImpulse);
                                                                              if(_loc40_)
                                                                              {
                                                                                 §§push(lambda_t);
                                                                                 if(!_loc39_)
                                                                                 {
                                                                                    §§push(§§pop() + §§pop());
                                                                                 }
                                                                                 addr678:
                                                                                 addr682:
                                                                                 newImpulse_t = §§pop().b2Clamp(§§pop(),§§pop(),maxFriction);
                                                                                 §§push(newImpulse_t);
                                                                                 if(_loc40_)
                                                                                 {
                                                                                    addr686:
                                                                                    §§goto(addr690);
                                                                                    §§push(Number(§§pop() - ccp.tangentImpulse));
                                                                                 }
                                                                                 §§goto(addr856);
                                                                              }
                                                                              §§push(maxFriction);
                                                                              if(_loc40_ || this)
                                                                              {
                                                                                 §§push(-§§pop());
                                                                              }
                                                                              §§goto(addr678);
                                                                           }
                                                                           §§goto(addr784);
                                                                        }
                                                                        addr581:
                                                                        §§push(dvY);
                                                                        §§push(tangentY);
                                                                        if(_loc40_)
                                                                        {
                                                                           addr586:
                                                                           §§push(§§pop() + §§pop() * §§pop());
                                                                           if(!_loc39_)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              if(_loc40_)
                                                                              {
                                                                                 vt = §§pop();
                                                                                 §§push(ccp.tangentMass);
                                                                                 §§push(-vt);
                                                                              }
                                                                              §§goto(addr686);
                                                                           }
                                                                           §§goto(addr650);
                                                                        }
                                                                        §§goto(addr822);
                                                                     }
                                                                     lambda_t = Number(§§pop() * §§pop());
                                                                     §§push(b2Math);
                                                                     §§push(ccp.normalImpulse);
                                                                     if(!_loc39_)
                                                                     {
                                                                        §§push(lambda_n);
                                                                        if(_loc40_ || ccp)
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                        }
                                                                        addr617:
                                                                        §§push(Number(§§pop().b2Max(§§pop(),§§pop())));
                                                                        if(_loc40_)
                                                                        {
                                                                           addr621:
                                                                           newImpulse_n = §§pop();
                                                                           addr624:
                                                                           §§goto(addr626);
                                                                           §§push(newImpulse_n);
                                                                           §§push(ccp.normalImpulse);
                                                                        }
                                                                        §§goto(addr678);
                                                                     }
                                                                     §§goto(addr617);
                                                                     §§push(0);
                                                                  }
                                                                  §§push(ccp.r1.y);
                                                                  if(_loc40_)
                                                                  {
                                                                     §§push(PX);
                                                                     if(!(_loc39_ && j))
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc40_ || this)
                                                                        {
                                                                        }
                                                                        §§goto(addr931);
                                                                     }
                                                                     §§goto(addr931);
                                                                  }
                                                                  §§goto(addr852);
                                                               }
                                                               §§push(§§pop().x);
                                                               if(!(_loc39_ && ccp))
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(!_loc39_)
                                                                  {
                                                                     §§push(§§pop() + §§pop() - v1.y);
                                                                     if(!_loc39_)
                                                                     {
                                                                        §§push(w1);
                                                                        §§push(ccp.r1);
                                                                        if(_loc40_)
                                                                        {
                                                                           §§push(§§pop() * §§pop().x);
                                                                           if(!_loc39_)
                                                                           {
                                                                              §§push(§§pop() - §§pop());
                                                                              if(!_loc39_)
                                                                              {
                                                                                 dvY = §§pop();
                                                                                 if(_loc40_)
                                                                                 {
                                                                                    §§goto(addr534);
                                                                                    §§push(dvX);
                                                                                 }
                                                                                 §§goto(addr682);
                                                                              }
                                                                              §§goto(addr757);
                                                                           }
                                                                           §§goto(addr757);
                                                                        }
                                                                        §§goto(addr822);
                                                                     }
                                                                     §§goto(addr650);
                                                                  }
                                                                  §§goto(addr586);
                                                               }
                                                               §§goto(addr540);
                                                            }
                                                            §§push(Number(§§pop() + §§pop()));
                                                            if(!_loc39_)
                                                            {
                                                               vn = §§pop();
                                                               if(_loc39_)
                                                               {
                                                               }
                                                               §§goto(addr694);
                                                            }
                                                            §§goto(addr678);
                                                         }
                                                         §§push(-ccp.normalMass);
                                                         §§push(vn);
                                                         if(!_loc39_)
                                                         {
                                                            §§push(Number(§§pop() * (§§pop() - ccp.velocityBias)));
                                                            if(!(_loc39_ && ccp))
                                                            {
                                                               lambda_n = §§pop();
                                                               if(_loc40_)
                                                               {
                                                                  §§push(dvX);
                                                                  if(!(_loc39_ && r1X))
                                                                  {
                                                                     §§goto(addr581);
                                                                     §§push(§§pop() * tangentX);
                                                                  }
                                                                  §§goto(addr624);
                                                               }
                                                               §§goto(addr890);
                                                            }
                                                            §§goto(addr621);
                                                         }
                                                         §§goto(addr856);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      break loop1;
                                                   }
                                                }
                                             }
                                             §§goto(addr972);
                                          }
                                          §§push(§§pop().y);
                                          if(!(_loc39_ && r1X))
                                          {
                                             §§push(Number(§§pop()));
                                             if(_loc39_)
                                             {
                                             }
                                             addr352:
                                             §§goto(addr353);
                                             §§push(-§§pop());
                                          }
                                          normalY = §§pop();
                                          §§push(Number(normalY));
                                          if(!_loc39_)
                                          {
                                             tangentX = §§pop();
                                             if(!_loc39_)
                                             {
                                                if(!_loc39_)
                                                {
                                                   §§push(normalX);
                                                }
                                                §§goto(addr357);
                                             }
                                             §§goto(addr394);
                                          }
                                          §§goto(addr352);
                                       }
                                       i++;
                                       continue;
                                    }
                                    invI1 = §§pop();
                                    §§push(Number(b2.m_invMass));
                                    if(!_loc39_)
                                    {
                                       invMass2 = §§pop();
                                       if(_loc40_)
                                       {
                                          if(_loc40_ || this)
                                          {
                                             §§goto(addr304);
                                             §§push(b2.m_invI);
                                          }
                                       }
                                       addr390:
                                       §§push(0);
                                       if(_loc40_)
                                       {
                                          addr393:
                                          j = §§pop();
                                          §§goto(addr394);
                                       }
                                       §§goto(addr957);
                                    }
                                    §§goto(addr315);
                                 }
                                 if(!(_loc39_ && ccp))
                                 {
                                    §§push(c.pointCount);
                                    if(!_loc39_)
                                    {
                                       §§push(int(§§pop()));
                                       if(!(_loc39_ && this))
                                       {
                                          tCount = §§pop();
                                          if(_loc40_)
                                          {
                                             if(_loc40_)
                                             {
                                                §§goto(addr390);
                                             }
                                             §§goto(addr394);
                                          }
                                       }
                                       §§goto(addr393);
                                    }
                                    §§goto(addr957);
                                 }
                                 §§goto(addr399);
                              }
                              addr241:
                              §§push(Number(§§pop()));
                           }
                           addr242:
                           w2 = §§pop();
                           if(_loc40_ || this)
                           {
                           }
                           §§goto(addr251);
                        }
                        addr250:
                        §§goto(addr251);
                     }
                     if(!_loc39_)
                     {
                        §§push(b2.m_angularVelocity);
                        if(!(_loc39_ && this))
                        {
                           §§goto(addr241);
                        }
                        §§goto(addr242);
                     }
                     §§goto(addr250);
                  }
                  return;
               }
               addr125:
               if(!_loc40_)
               {
               }
               §§goto(addr142);
            }
            §§goto(addr125);
         }
         if(_loc40_)
         {
            if(_loc39_)
            {
            }
            §§goto(addr142);
         }
         §§goto(addr136);
      }
      
      public function FinalizeVelocityConstraints() : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc7_)
         {
         }
         var c:b2ContactConstraint = null;
         var m:b2Manifold = null;
         var j:* = 0;
         var point1:b2ManifoldPoint = null;
         var point2:b2ContactConstraintPoint = null;
         if(_loc8_)
         {
            if(_loc8_ || this)
            {
            }
            addr43:
            var i:int = 0;
            loop0:
            while(true)
            {
               if(i >= this.m_constraintCount)
               {
                  if(!_loc7_)
                  {
                     break;
                  }
                  break;
               }
               if(_loc8_)
               {
                  if(!_loc7_)
                  {
                     if(_loc7_)
                     {
                     }
                     break;
                  }
                  addr64:
                  c = this.m_constraints[i];
                  if(_loc8_ || this)
                  {
                  }
                  m = c.manifold;
                  if(!_loc7_)
                  {
                     addr99:
                     §§push(0);
                     if(_loc8_ || c)
                     {
                        j = §§pop();
                        addr170:
                        while(true)
                        {
                        }
                     }
                     while(true)
                     {
                        if(§§pop() >= c.pointCount)
                        {
                           if(_loc8_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        if(_loc8_)
                        {
                           if(!(_loc8_ || c))
                           {
                              break;
                           }
                        }
                        §§goto(addr99);
                     }
                     i++;
                     continue;
                  }
                  while(true)
                  {
                     point1 = m.points[j];
                     if(_loc8_ || i)
                     {
                     }
                     point2 = c.points[j];
                     point1.normalImpulse = point2.normalImpulse;
                     if(_loc8_ || c)
                     {
                        if(_loc8_ || this)
                        {
                        }
                        addr169:
                        j++;
                        §§goto(addr170);
                     }
                     point1.tangentImpulse = point2.tangentImpulse;
                     if(_loc8_)
                     {
                        if(_loc7_ && c)
                        {
                        }
                        §§goto(addr170);
                     }
                     §§goto(addr169);
                  }
               }
               if(!(_loc7_ && m))
               {
                  §§goto(addr64);
               }
               else
               {
                  break;
               }
            }
            return;
         }
         §§goto(addr43);
      }
   }
}
