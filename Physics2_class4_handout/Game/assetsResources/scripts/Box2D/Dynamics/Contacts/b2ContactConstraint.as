package Box2D.Dynamics.Contacts
{
   import Box2D.Collision.b2Manifold;
   import Box2D.Common.Math.b2Vec2;
   import Box2D.Common.b2Settings;
   import Box2D.Dynamics.b2Body;
   
   public class b2ContactConstraint
   {
       
      
      public var points:Array;
      
      public var normal:b2Vec2;
      
      public var restitution:Number;
      
      public var body1:b2Body;
      
      public var manifold:b2Manifold;
      
      public var body2:b2Body;
      
      public var friction:Number;
      
      public var pointCount:int;
      
      public function b2ContactConstraint()
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_)
         {
         }
         if(!_loc2_)
         {
            if(_loc3_ || i)
            {
               this.normal = new b2Vec2();
               if(!_loc3_)
               {
               }
            }
            addr39:
            this.points = new Array(b2Settings.b2_maxManifoldPoints);
            var i:int = 0;
            while(true)
            {
               if(i >= b2Settings.b2_maxManifoldPoints)
               {
                  if(_loc3_)
                  {
                     break;
                  }
               }
               else
               {
                  if(_loc3_)
                  {
                     this.points[i] = new b2ContactConstraintPoint();
                     if(_loc3_ || _loc2_)
                     {
                        if(_loc3_)
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
               addr93:
               return;
            }
            §§goto(addr93);
         }
         super();
         §§goto(addr39);
      }
   }
}
