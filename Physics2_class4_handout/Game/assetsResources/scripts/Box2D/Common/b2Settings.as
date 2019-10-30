package Box2D.Common
{
   import Box2D.Common.Math.b2Vec2;
   
   public class b2Settings
   {
      
      public static const b2_angularSleepTolerance:Number = 0.011111111111111112;
      
      public static const b2_linearSleepTolerance:Number = 0.01;
      
      public static const b2_angularSlop:Number = §§pop();
      
      public static const b2_linearSlop:Number = 0.005;
      
      public static const b2_pi:Number = Math.PI;
      
      public static const b2_maxProxies:int = 512;
      
      public static const b2_maxAngularVelocitySquared:Number = 62500.0;
      
      public static const b2_maxPolygonVertices:int = 8;
      
      public static const b2_velocityThreshold:Number = 1.0;
      
      public static const b2_contactBaumgarte:Number = 0.2;
      
      public static const b2_maxPairs:int = 4096.0;
      
      public static const b2_maxTOIContactsPerIsland:int = 32;
      
      public static const b2_timeToSleep:Number = 0.5;
      
      public static const b2_maxManifoldPoints:int = 2;
      
      public static const b2_maxAngularVelocity:Number = 250.0;
      
      public static const b2_maxAngularCorrection:Number = 0.13962634015954636;
      
      public static const USHRT_MAX:int = 65535;
      
      public static const b2_maxLinearVelocity:Number = 200.0;
      
      public static const b2_maxLinearCorrection:Number = 0.2;
      
      public static const b2_toiSlop:Number = 0.04;
      
      public static const b2_maxLinearVelocitySquared:Number = 40000.0;
      
      {
         var USHRT_MAX:Boolean = true;
         var b2_pi:Boolean = false;
         if(!(b2_pi && USHRT_MAX))
         {
            USHRT_MAX = 65535;
         }
         if(!b2_pi)
         {
            if(!b2_pi)
            {
               b2_maxManifoldPoints = 2;
               b2_maxPolygonVertices = 8;
               if(USHRT_MAX || USHRT_MAX)
               {
                  b2_maxProxies = 512;
                  if(USHRT_MAX || USHRT_MAX)
                  {
                     if(USHRT_MAX)
                     {
                        b2_maxPairs = 8 * b2_maxProxies;
                        if(b2_pi)
                        {
                        }
                        addr226:
                        addr237:
                        b2_timeToSleep = 0.5;
                        addr240:
                        b2_linearSleepTolerance = 0.01;
                     }
                     addr129:
                     addr215:
                     if(!USHRT_MAX)
                     {
                     }
                     addr215:
                     b2_contactBaumgarte = 0.2;
                     if(USHRT_MAX || USHRT_MAX)
                     {
                        addr225:
                        §§goto(addr226);
                     }
                     §§goto(addr240);
                  }
                  b2_maxLinearCorrection = 0.2;
                  if(USHRT_MAX || USHRT_MAX)
                  {
                     if(!(b2_pi && b2_pi))
                     {
                        §§push();
                        §§push(8 / 180);
                        if(!b2_pi)
                        {
                           §§push(§§pop() * b2_pi);
                        }
                        §§pop().b2_maxAngularCorrection = §§pop();
                        if(!(b2_pi && b2Settings))
                        {
                           b2_maxLinearVelocity = 200;
                        }
                     }
                     addr207:
                     if(!(b2_pi && b2_pi))
                     {
                        §§goto(addr215);
                     }
                     §§goto(addr237);
                  }
                  §§push();
                  §§push(b2_maxLinearVelocity);
                  if(USHRT_MAX || USHRT_MAX)
                  {
                     §§push(§§pop() * b2_maxLinearVelocity);
                  }
                  §§pop().b2_maxLinearVelocitySquared = §§pop();
                  addr183:
                  b2_maxAngularVelocity = 250;
                  §§push();
                  §§push(b2_maxAngularVelocity);
                  if(!(b2_pi && USHRT_MAX))
                  {
                     §§push(§§pop() * b2_maxAngularVelocity);
                  }
                  §§pop().b2_maxAngularVelocitySquared = §§pop();
                  if(!(b2_pi && b2Settings))
                  {
                     §§goto(addr207);
                  }
                  §§goto(addr215);
               }
               b2_linearSlop = 0.005;
               if(b2_pi)
               {
               }
               addr124:
               b2_velocityThreshold = 1;
               if(USHRT_MAX)
               {
                  §§goto(addr129);
               }
               §§goto(addr215);
            }
            b2_angularSleepTolerance = 2 / 180;
            return;
         }
         §§push();
         §§push(2 / 180);
         if(USHRT_MAX || USHRT_MAX)
         {
            §§push(§§pop() * b2_pi);
         }
         if(USHRT_MAX || b2Settings)
         {
            b2_toiSlop = 8 * b2_linearSlop;
            if(!b2_pi)
            {
               b2_maxTOIContactsPerIsland = 32;
               if(!(b2_pi && b2Settings))
               {
                  §§goto(addr124);
               }
               §§goto(addr225);
            }
            §§goto(addr183);
         }
         §§goto(addr237);
      }
      
      public function b2Settings()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
         if(_loc1_ || this)
         {
            super();
            if(_loc2_ && _loc2_)
            {
            }
         }
      }
      
      public static function b2Assert(a:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || nullVec)
         {
         }
         var nullVec:b2Vec2 = null;
         if(!_loc6_)
         {
            if(!a)
            {
               if(!(_loc6_ && nullVec))
               {
                  if(_loc5_)
                  {
                     if(_loc6_)
                     {
                     }
                  }
                  §§push(_loc3_.x);
                  if(!(_loc6_ && a))
                  {
                     §§push(§§pop() + 1);
                  }
                  if(_loc5_ || b2Settings)
                  {
                     _loc3_.x = _loc4_;
                  }
               }
            }
         }
      }
   }
}
