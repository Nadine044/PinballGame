package Box2D.Collision.Shapes
{
   import Box2D.Collision.b2AABB;
   import Box2D.Collision.b2OBB;
   import Box2D.Collision.b2Segment;
   import Box2D.Common.Math.b2Vec2;
   import Box2D.Common.Math.b2XForm;
   import Box2D.Common.b2Settings;
   
   public class b2ConvexArcShape extends b2Shape
   {
       
      
      public var m_localPosition:b2Vec2;
      
      public var m_offset:Number;
      
      public var m_norm:b2Vec2;
      
      public var m_dot:Number;
      
      public var m_vertices:Array;
      
      public var m_d:Number;
      
      public var m_radius:Number;
      
      public var m_obb:b2OBB;
      
      public function b2ConvexArcShape(def:b2ShapeDef)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc2_)
         {
         }
         if(_loc2_ || _loc2_)
         {
            this.m_localPosition = new b2Vec2();
            if(_loc2_)
            {
               this.m_obb = new b2OBB();
               if(_loc3_)
               {
               }
               addr62:
               this.m_norm = new b2Vec2();
               if(!_loc3_)
               {
                  super(def);
               }
            }
            addr79:
            return;
         }
         this.m_vertices = [new b2Vec2(),new b2Vec2()];
         if(_loc2_ || _loc2_)
         {
            §§goto(addr62);
         }
         §§goto(addr79);
      }
      
      override public function TestSegment(xf:b2XForm, lambda:Array, normal:b2Vec2, segment:b2Segment, maxLambda:Number) : Boolean
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || lambda)
         {
         }
         if(!_loc6_)
         {
            if(_loc7_ || normal)
            {
               b2Settings.b2Assert(false);
            }
         }
         return false;
      }
      
      override public function ComputeMass(massData:b2MassData) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc2_)
         {
         }
         if(!_loc3_)
         {
            if(_loc3_ && this)
            {
            }
         }
      }
      
      override public function ComputeSweptAABB(aabb:b2AABB, transform1:b2XForm, transform2:b2XForm) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc4_)
         {
         }
         if(_loc4_)
         {
            if(_loc5_)
            {
            }
            addr49:
            return;
         }
         if(!_loc5_)
         {
            super.ComputeSweptAABB(aabb,transform1,transform2);
            if(_loc5_)
            {
            }
            §§goto(addr49);
         }
         §§goto(addr49);
      }
      
      public function Support(xf:b2XForm, dX:Number, dY:Number) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc5_ && dY)
         {
         }
         if(_loc4_ || dX)
         {
            if(!(_loc5_ && this))
            {
               b2Settings.b2Assert(false);
            }
            addr58:
            return null;
         }
         §§goto(addr58);
      }
      
      override public function UpdateSweepRadius(center:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_ && this)
         {
         }
         if(_loc3_)
         {
            if(!_loc3_)
            {
            }
         }
      }
      
      override public function ComputeAABB(aabb:b2AABB, xf:b2XForm) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
         }
         if(!_loc4_)
         {
            if(_loc3_ || _loc3_)
            {
               if(!(_loc4_ && _loc3_))
               {
                  if(!_loc3_)
                  {
                  }
               }
            }
            super.ComputeAABB(aabb,xf);
            if(_loc3_ || xf)
            {
            }
         }
      }
      
      public function GetOBB() : b2OBB
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
         if(_loc1_ || _loc1_)
         {
         }
         return this.m_obb;
      }
      
      override public function TestPoint(xf:b2XForm, p:b2Vec2) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc4_)
         {
         }
         if(!(_loc4_ && this))
         {
            if(_loc3_)
            {
               if(_loc3_ || p)
               {
                  if(_loc3_ || _loc3_)
                  {
                     b2Settings.b2Assert(false);
                     if(_loc3_ || _loc3_)
                     {
                     }
                  }
               }
            }
         }
         return false;
      }
   }
}
