package Box2D.Collision.Shapes
{
   import Box2D.Collision.b2AABB;
   import Box2D.Collision.b2BroadPhase;
   import Box2D.Collision.b2Pair;
   import Box2D.Collision.b2Segment;
   import Box2D.Common.Math.b2Vec2;
   import Box2D.Common.Math.b2XForm;
   import Box2D.Dynamics.b2Body;
   
   public class b2Shape
   {
      
      public static const e_polygonShape:int = 1;
      
      private static var s_resetAABB:b2AABB;
      
      private static var s_syncAABB:b2AABB;
      
      private static var s_proxyAABB:b2AABB;
      
      public static const e_concaveArcShape:int = 5;
      
      public static const e_convexArcShape:int = 4;
      
      public static const e_unknownShape:int = -1;
      
      public static const e_meshShape:int = 3;
      
      public static const e_circleShape:int = 0;
      
      public static const e_shapeTypeCount:int = 7;
      
      public static const e_staticEdgeShape:int = 6;
      
      {
         var s_proxyAABB:Boolean = true;
         var s_syncAABB:Boolean = false;
         if(!(s_syncAABB && b2Shape))
         {
            s_proxyAABB = new b2AABB();
            if(s_proxyAABB)
            {
               s_syncAABB = new b2AABB();
               if(s_proxyAABB || b2Shape)
               {
                  s_resetAABB = new b2AABB();
                  if(s_syncAABB)
                  {
                  }
                  e_unknownShape = -1;
                  if(!(s_syncAABB && s_syncAABB))
                  {
                     if(!s_proxyAABB)
                     {
                     }
                     addr85:
                     e_concaveArcShape = 5;
                     if(!s_syncAABB)
                     {
                        e_staticEdgeShape = 6;
                     }
                     e_shapeTypeCount = 7;
                     return;
                  }
               }
               addr77:
               e_meshShape = 3;
               e_convexArcShape = 4;
            }
            e_circleShape = 0;
            if(!s_syncAABB)
            {
               e_polygonShape = 1;
            }
            §§goto(addr77);
         }
         §§goto(addr85);
      }
      
      public var m_next:b2Shape;
      
      public var m_type:int;
      
      public var m_sweepRadius:Number;
      
      public var m_density:Number;
      
      public var m_filter:b2FilterData;
      
      public var m_friction:Number;
      
      public var m_isSensor:Boolean;
      
      public var m_restitution:Number;
      
      public var m_userData;
      
      public var m_proxyId:uint;
      
      public var m_body:b2Body;
      
      public function b2Shape(def:b2ShapeDef)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_ && _loc2_)
         {
         }
         if(_loc3_)
         {
            super();
         }
         if(!_loc2_)
         {
            this.m_userData = def.userData;
            if(_loc3_ || def)
            {
               if(_loc3_)
               {
                  this.m_friction = def.friction;
                  if(_loc3_)
                  {
                     this.m_restitution = def.restitution;
                     if(_loc3_)
                     {
                        this.m_density = def.density;
                        if(_loc2_)
                        {
                        }
                        addr107:
                        this.m_proxyId = b2Pair.b2_nullProxy;
                        addr121:
                        addr127:
                        if(_loc2_ && _loc3_)
                        {
                        }
                        addr121:
                        this.m_filter = def.filter.Copy();
                        this.m_isSensor = def.isSensor;
                        if(_loc3_ || _loc2_)
                        {
                        }
                        return;
                     }
                     addr91:
                     this.m_sweepRadius = 0;
                     if(_loc2_ && _loc2_)
                     {
                     }
                     §§goto(addr121);
                  }
                  if(_loc2_ && this)
                  {
                  }
                  §§goto(addr107);
               }
               this.m_body = null;
               if(!(_loc2_ && def))
               {
                  §§goto(addr91);
               }
            }
            if(!_loc2_)
            {
               §§goto(addr121);
            }
            §§goto(addr127);
         }
         this.m_next = null;
         §§goto(addr107);
      }
      
      public static function Destroy(shape:b2Shape, allocator:*) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc4_)
         {
         }
         if(!(_loc4_ && _loc3_))
         {
            if(!(_loc4_ && allocator))
            {
               if(_loc4_)
               {
               }
            }
         }
      }
      
      public static function Create(def:b2ShapeDef, allocator:*) : b2Shape
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc5_)
         {
         }
         if(_loc5_)
         {
            if(_loc4_)
            {
            }
         }
         §§push(def.type);
         if(!(_loc4_ && def))
         {
            if(!_loc4_)
            {
               if(!(_loc4_ && _loc3_))
               {
                  §§push(e_circleShape);
                  §§push(_loc3_);
                  if(_loc5_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc4_ && allocator))
                        {
                           §§push(0);
                           if(_loc5_ || allocator)
                           {
                           }
                           addr175:
                        }
                     }
                     else
                     {
                        §§push(e_polygonShape);
                     }
                     §§push(_loc3_);
                     if(_loc4_ && b2Shape)
                     {
                     }
                     addr134:
                     if(§§pop() === §§pop())
                     {
                        if(_loc5_ || def)
                        {
                        }
                        §§goto(addr175);
                     }
                     else
                     {
                        addr154:
                        if(e_concaveArcShape !== _loc3_)
                        {
                           §§push(4);
                        }
                        §§goto(addr175);
                     }
                     §§push(3);
                     if(_loc5_ || def)
                     {
                     }
                     §§goto(addr175);
                  }
                  if(§§pop() === §§pop())
                  {
                     if(_loc5_ || allocator)
                     {
                     }
                  }
                  else
                  {
                     §§push(e_convexArcShape);
                     §§push(_loc3_);
                     if(!_loc4_)
                     {
                        §§goto(addr134);
                     }
                     §§goto(addr154);
                  }
                  §§goto(addr175);
               }
               §§push(2);
               if(_loc5_ || def)
               {
               }
               §§goto(addr175);
            }
            §§goto(addr175);
            §§push(1);
         }
         switch(§§pop())
         {
            case 0:
               return new b2CircleShape(def);
            case 1:
               if(!_loc4_)
               {
                  return new b2PolygonShape(def);
               }
               addr41:
               return new b2ConvexArcShape(def);
            case 2:
               §§goto(addr41);
            case 3:
               if(_loc5_)
               {
                  return new b2ConcaveArcShape(def);
               }
               break;
         }
         throw new Error("Shape type not found or cannot be added to Dynamic Bodies.");
      }
      
      public function SetUserData(data:*) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_ && this)
         {
         }
         if(!(_loc3_ && this))
         {
            if(_loc3_ && this)
            {
            }
            addr65:
            return;
         }
         if(_loc2_)
         {
            this.m_userData = data;
            if(_loc3_ && _loc2_)
            {
            }
         }
         §§goto(addr65);
      }
      
      public function GetSweepRadius() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
         }
         if(_loc2_ || _loc1_)
         {
         }
         return this.m_sweepRadius;
      }
      
      public function GetNext() : b2Shape
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
         }
         if(_loc1_ && this)
         {
         }
         return this.m_next;
      }
      
      public function ComputeSweptAABB(aabb:b2AABB, xf1:b2XForm, xf2:b2XForm) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc5_)
         {
         }
         if(_loc4_ || aabb)
         {
            if(!_loc5_)
            {
               if(!_loc4_)
               {
               }
               addr52:
            }
            if(!(_loc5_ && aabb))
            {
               §§goto(addr52);
            }
         }
      }
      
      public function GetType() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(_loc2_ || this)
         {
         }
         return this.m_type;
      }
      
      public function GetRestitution() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(!_loc2_)
         {
         }
         return this.m_restitution;
      }
      
      public function GetFriction() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
         }
         if(_loc2_ && _loc2_)
         {
         }
         return this.m_friction;
      }
      
      public function GetFilterData() : b2FilterData
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(_loc1_)
         {
         }
         return this.m_filter.Copy();
      }
      
      public function TestSegment(xf:b2XForm, lambda:Array, normal:b2Vec2, segment:b2Segment, maxLambda:Number) : Boolean
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc6_ && xf)
         {
         }
         if(!(_loc6_ && xf))
         {
            if(_loc7_ || normal)
            {
               if(_loc7_ || normal)
               {
               }
               addr78:
               return false;
            }
            if(_loc6_ && lambda)
            {
            }
            addr77:
            §§goto(addr78);
         }
         if(_loc7_ || xf)
         {
            §§goto(addr77);
         }
         §§goto(addr78);
      }
      
      public function RefilterProxy(broadPhase:b2BroadPhase, transform:b2XForm) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || this)
         {
         }
         if(!_loc6_)
         {
            if(_loc5_)
            {
               if(!_loc6_)
               {
                  if(_loc6_)
                  {
                  }
                  addr57:
                  var aabb:b2AABB = s_resetAABB;
                  if(_loc5_)
                  {
                     if(_loc5_ || transform)
                     {
                        this.ComputeAABB(aabb,transform);
                        if(_loc5_ || broadPhase)
                        {
                        }
                     }
                     addr89:
                     §§push(broadPhase.InRange(aabb));
                     if(!(_loc6_ && broadPhase))
                     {
                        §§push(Boolean(§§pop()));
                     }
                     var inRange:* = §§pop();
                     if(!_loc6_)
                     {
                        if(!(_loc6_ && this))
                        {
                           if(inRange)
                           {
                              if(!_loc5_)
                              {
                              }
                              addr129:
                           }
                           else
                           {
                              this.m_proxyId = b2Pair.b2_nullProxy;
                           }
                           return;
                        }
                     }
                     this.m_proxyId = broadPhase.CreateProxy(aabb,this);
                     §§goto(addr129);
                  }
                  §§goto(addr89);
               }
            }
         }
         if(!(_loc6_ && aabb))
         {
            if(this.m_proxyId == b2Pair.b2_nullProxy)
            {
               return;
            }
            broadPhase.DestroyProxy(this.m_proxyId);
         }
         §§goto(addr57);
      }
      
      public function SetFilterData(filter:b2FilterData) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || filter)
         {
         }
         if(!_loc2_)
         {
            if(!_loc2_)
            {
               if(_loc3_ || filter)
               {
               }
               addr56:
            }
            addr57:
            return;
         }
         this.m_filter = filter.Copy();
         if(_loc3_)
         {
            §§goto(addr56);
         }
         §§goto(addr57);
      }
      
      public function GetUserData() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
         }
         if(_loc1_ && _loc1_)
         {
         }
         return this.m_userData;
      }
      
      public function Synchronize(broadPhase:b2BroadPhase, transform1:b2XForm, transform2:b2XForm) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc5_)
         {
         }
         if(_loc6_ || transform2)
         {
         }
         if(_loc5_ && transform1)
         {
         }
         if(this.m_proxyId == b2Pair.b2_nullProxy)
         {
            return false;
         }
         var aabb:b2AABB = s_syncAABB;
         if(!_loc5_)
         {
            this.ComputeSweptAABB(aabb,transform1,transform2);
            if(!_loc5_)
            {
               §§push(broadPhase.InRange(aabb));
               if(!_loc5_)
               {
                  if(!§§pop())
                  {
                     §§push(false);
                  }
                  addr93:
                  return §§pop();
               }
               addr90:
               return §§pop();
            }
            addr86:
            §§push(true);
            if(_loc6_)
            {
               §§goto(addr90);
            }
            else
            {
               §§goto(addr93);
            }
         }
         broadPhase.MoveProxy(this.m_proxyId,aabb);
         §§goto(addr86);
      }
      
      public function ComputeMass(massData:b2MassData) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc3_)
         {
         }
         if(!_loc3_)
         {
         }
      }
      
      public function IsSensor() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && this)
         {
         }
         if(!_loc2_)
         {
         }
         return this.m_isSensor;
      }
      
      public function DestroyProxy(broadPhase:b2BroadPhase) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_ && _loc3_)
         {
         }
         if(!_loc3_)
         {
            if(this.m_proxyId != b2Pair.b2_nullProxy)
            {
               broadPhase.DestroyProxy(this.m_proxyId);
               if(_loc3_)
               {
               }
            }
            addr65:
            return;
         }
         this.m_proxyId = b2Pair.b2_nullProxy;
         if(_loc3_ && this)
         {
         }
         §§goto(addr65);
      }
      
      public function UpdateSweepRadius(center:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_)
         {
         }
         if(_loc3_)
         {
         }
      }
      
      public function ComputeAABB(aabb:b2AABB, xf:b2XForm) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
         }
         if(!_loc4_)
         {
            if(_loc4_)
            {
            }
            addr35:
            return;
         }
         §§goto(addr35);
      }
      
      public function GetBody() : b2Body
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
         }
         if(_loc2_)
         {
         }
         return this.m_body;
      }
      
      public function CreateProxy(broadPhase:b2BroadPhase, transform:b2XForm) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc6_)
         {
         }
         if(_loc5_ || aabb)
         {
            if(!_loc6_)
            {
               if(_loc6_)
               {
               }
               addr47:
               var aabb:b2AABB = s_proxyAABB;
               if(_loc5_)
               {
                  if(!_loc6_)
                  {
                     this.ComputeAABB(aabb,transform);
                     if(!_loc5_)
                     {
                     }
                  }
               }
               §§push(broadPhase.InRange(aabb));
               if(!_loc6_)
               {
                  §§push(Boolean(§§pop()));
               }
               var inRange:* = §§pop();
               if(!_loc6_)
               {
                  if(!(_loc6_ && aabb))
                  {
                     if(inRange)
                     {
                        if(!(_loc6_ && transform))
                        {
                           this.m_proxyId = broadPhase.CreateProxy(aabb,this);
                        }
                     }
                     else
                     {
                        this.m_proxyId = b2Pair.b2_nullProxy;
                     }
                  }
               }
               return;
            }
            if(_loc6_ && aabb)
            {
            }
            §§goto(addr47);
         }
         if(!(_loc6_ && broadPhase))
         {
            §§goto(addr47);
         }
         §§goto(addr47);
      }
      
      public function TestPoint(xf:b2XForm, p:b2Vec2) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc4_)
         {
         }
         if(!(_loc4_ && xf))
         {
            if(_loc4_ && _loc3_)
            {
            }
            addr47:
            return false;
         }
         §§goto(addr47);
      }
   }
}
