package Box2D.Collision
{
   import Box2D.Common.Math.b2Vec2;
   import Box2D.Common.b2Settings;
   
   public class b2Manifold
   {
       
      
      public var pointCount:int = 0;
      
      public var normal:b2Vec2;
      
      public var points:Array;
      
      public function b2Manifold()
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_ && this)
         {
         }
         if(!_loc3_)
         {
            if(_loc3_ && i)
            {
            }
            addr37:
            addr59:
            if(!(_loc3_ && _loc3_))
            {
               this.points = new Array(b2Settings.b2_maxManifoldPoints);
            }
            var i:int = 0;
            while(true)
            {
               if(i >= b2Settings.b2_maxManifoldPoints)
               {
                  if(!(_loc3_ && i))
                  {
                     if(_loc2_ || this)
                     {
                     }
                     addr112:
                     return;
                  }
                  this.normal = new b2Vec2();
                  if(!(_loc3_ && i))
                  {
                     break;
                  }
                  §§goto(addr112);
               }
               else
               {
                  this.points[i] = new b2ManifoldPoint();
                  if(_loc2_)
                  {
                     i++;
                     continue;
                  }
                  break;
               }
            }
            §§goto(addr112);
         }
         super();
         if(_loc2_)
         {
            §§goto(addr37);
         }
         §§goto(addr59);
      }
      
      public function Set(m:b2Manifold) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc4_)
         {
         }
         if(!_loc3_)
         {
            if(_loc4_ || m)
            {
               if(_loc3_)
               {
               }
               addr52:
               for(var i:int = 0; i < b2Settings.b2_maxManifoldPoints; )
               {
                  (this.points[i] as b2ManifoldPoint).Set(m.points[i]);
                  if(_loc4_)
                  {
                     if(_loc4_)
                     {
                        i++;
                        if(!_loc3_)
                        {
                           continue;
                        }
                        addr96:
                        return;
                     }
                     continue;
                  }
                  break;
               }
               this.normal.SetV(m.normal);
               if(!_loc3_)
               {
                  §§goto(addr96);
               }
               §§goto(addr96);
            }
            addr34:
            this.pointCount = m.pointCount;
            if(!(_loc3_ && _loc3_))
            {
               §§goto(addr52);
            }
            §§goto(addr52);
         }
         if(_loc4_)
         {
            §§goto(addr34);
         }
         §§goto(addr52);
      }
      
      public function Reset() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_)
         {
         }
         if(_loc3_ || this)
         {
            if(_loc2_)
            {
            }
         }
         var i:int = 0;
         while(true)
         {
            if(i >= b2Settings.b2_maxManifoldPoints)
            {
               if(!(_loc2_ && this))
               {
                  this.normal.SetZero();
               }
               break;
            }
            if(_loc3_)
            {
               (this.points[i] as b2ManifoldPoint).Reset();
            }
            i++;
            if(!_loc2_)
            {
               continue;
            }
            break;
         }
         this.pointCount = 0;
      }
   }
}
