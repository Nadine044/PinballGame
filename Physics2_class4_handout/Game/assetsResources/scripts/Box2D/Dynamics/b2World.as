package Box2D.Dynamics
{
   import Box2D.Collision.Shapes.b2CircleShape;
   import Box2D.Collision.Shapes.b2ConcaveArcShape;
   import Box2D.Collision.Shapes.b2PolygonShape;
   import Box2D.Collision.Shapes.b2Shape;
   import Box2D.Collision.Shapes.b2ShapeDef;
   import Box2D.Collision.Shapes.b2StaticEdgeChain;
   import Box2D.Collision.Shapes.b2StaticEdgeShape;
   import Box2D.Collision.b2AABB;
   import Box2D.Collision.b2BroadPhase;
   import Box2D.Collision.b2Distance;
   import Box2D.Collision.b2OBB;
   import Box2D.Collision.b2Pair;
   import Box2D.Collision.b2Proxy;
   import Box2D.Collision.b2TimeOfImpact;
   import Box2D.Common.Math.b2Mat22;
   import Box2D.Common.Math.b2Math;
   import Box2D.Common.Math.b2Vec2;
   import Box2D.Common.Math.b2XForm;
   import Box2D.Common.b2Color;
   import Box2D.Common.b2Settings;
   import Box2D.Dynamics.Contacts.b2Contact;
   import Box2D.Dynamics.Contacts.b2ContactEdge;
   import Box2D.Dynamics.Joints.b2Joint;
   import Box2D.Dynamics.Joints.b2JointDef;
   import Box2D.Dynamics.Joints.b2JointEdge;
   import Box2D.Dynamics.Joints.b2PulleyJoint;
   
   public class b2World
   {
      
      private static var s_jointColor:b2Color;
      
      public static var m_continuousPhysics:Boolean;
      
      public static var m_warmStarting:Boolean;
      
      private static var s_coreColor:b2Color;
      
      public static var m_positionCorrection:Boolean;
      
      private static var s_xf:b2XForm = new b2XForm();
      
      {
         var s_jointColor:Boolean = true;
         var s_coreColor:Boolean = false;
         if(!(s_coreColor && s_jointColor))
         {
            s_jointColor = new b2Color(0.5,0.8,0.8);
            if(!(s_coreColor && b2World))
            {
               s_coreColor = new b2Color(0.9,0.6,0.6);
            }
         }
         if(!s_jointColor)
         {
         }
      }
      
      public var m_inv_dt0:Number;
      
      public var m_boundaryListener:b2BoundaryListener;
      
      public var m_contactList:b2Contact;
      
      public var m_blockAllocator;
      
      public var m_contactListener:b2ContactListener;
      
      public var m_allowSleep:Boolean;
      
      public var m_broadPhase:b2BroadPhase;
      
      public var m_destructionListener:b2DestructionListener;
      
      public var m_jointCount:int;
      
      public var m_bodyCount:int;
      
      public var m_lock:Boolean;
      
      public var m_positionIterationCount:int;
      
      public var m_groundBody:b2Body;
      
      public var m_contactCount:int;
      
      public var m_debugDraw:b2DebugDraw;
      
      public var m_contactFilter:b2ContactFilter;
      
      public var m_bodyList:b2Body;
      
      public var m_stackAllocator;
      
      public var m_jointList:b2Joint;
      
      public var m_gravity:b2Vec2;
      
      public var m_contactManager:b2ContactManager;
      
      public function b2World(worldAABB:b2AABB, gravity:b2Vec2, doSleep:Boolean)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc6_ && worldAABB)
         {
         }
         if(!_loc6_)
         {
            if(_loc6_)
            {
            }
            this.m_contactManager = new b2ContactManager();
            super();
            this.m_destructionListener = null;
            if(_loc5_)
            {
               if(!(_loc6_ && this))
               {
                  this.m_boundaryListener = null;
                  this.m_contactFilter = b2ContactFilter.b2_defaultFilter;
                  if(!_loc6_)
                  {
                     if(_loc5_ || gravity)
                     {
                        this.m_contactListener = null;
                        if(!_loc5_)
                        {
                        }
                        addr162:
                        addr166:
                        m_continuousPhysics = true;
                        this.m_allowSleep = doSleep;
                        addr212:
                        if(!(_loc6_ && this))
                        {
                           if(!(_loc6_ && gravity))
                           {
                              this.m_gravity = gravity;
                              if(!_loc6_)
                              {
                                 this.m_lock = false;
                              }
                           }
                        }
                        if(_loc5_ || doSleep)
                        {
                           this.m_inv_dt0 = 0;
                           if(_loc5_ || gravity)
                           {
                           }
                           addr231:
                           addr239:
                           this.m_broadPhase = new b2BroadPhase(worldAABB,this.m_contactManager);
                           var bd:b2BodyDef = new b2BodyDef();
                           if(_loc5_ || worldAABB)
                           {
                              if(_loc5_)
                              {
                                 this.m_groundBody = this.CreateBody(bd);
                                 if(_loc6_ && doSleep)
                                 {
                                 }
                                 addr290:
                                 return;
                              }
                              addr273:
                              b2Distance.InitializeRegisters();
                              if(_loc6_ && gravity)
                              {
                              }
                              §§goto(addr290);
                           }
                           if(_loc5_ || worldAABB)
                           {
                              §§goto(addr273);
                           }
                           §§goto(addr290);
                        }
                        this.m_contactManager.m_world = this;
                        if(!(_loc6_ && gravity))
                        {
                           addr223:
                           if(!(_loc6_ && worldAABB))
                           {
                              §§goto(addr231);
                           }
                        }
                        §§goto(addr239);
                     }
                     addr149:
                     m_warmStarting = true;
                     if(!(_loc6_ && gravity))
                     {
                        if(_loc5_)
                        {
                           §§goto(addr162);
                        }
                        §§goto(addr166);
                     }
                     §§goto(addr239);
                  }
                  this.m_debugDraw = null;
                  if(_loc5_)
                  {
                     this.m_bodyList = null;
                     this.m_contactList = null;
                     if(_loc6_ && doSleep)
                     {
                     }
                     §§goto(addr223);
                  }
                  §§goto(addr239);
               }
               this.m_jointList = null;
               this.m_bodyCount = 0;
               this.m_contactCount = 0;
            }
            addr211:
            §§goto(addr212);
         }
         if(_loc5_)
         {
            this.m_jointCount = 0;
            if(_loc5_ || this)
            {
            }
            §§goto(addr166);
         }
         if(!_loc6_)
         {
            m_positionCorrection = true;
            if(_loc5_ || this)
            {
            }
            §§goto(addr211);
         }
         if(!(_loc6_ && gravity))
         {
            §§goto(addr149);
         }
         §§goto(addr239);
      }
      
      public function DrawJoint(joint:b2Joint) : void
      {
         var _loc15_:Boolean = true;
         var _loc16_:Boolean = false;
         if(!_loc15_)
         {
         }
         var pulley:b2PulleyJoint = null;
         var s1:b2Vec2 = null;
         var s2:b2Vec2 = null;
         if(_loc15_)
         {
            if(_loc15_ || b2)
            {
               if(_loc16_)
               {
               }
               if(_loc15_ || b1)
               {
               }
            }
         }
         var b1:b2Body = joint.m_body1;
         if(_loc16_)
         {
         }
         var b2:b2Body = joint.m_body2;
         if(_loc16_ && b1)
         {
         }
         var xf1:b2XForm = b1.m_xf;
         if(_loc15_ || this)
         {
         }
         var xf2:b2XForm = b2.m_xf;
         if(!_loc15_)
         {
         }
         var x1:b2Vec2 = xf1.position;
         if(_loc15_ || b2)
         {
         }
         var x2:b2Vec2 = xf2.position;
         if(_loc16_)
         {
         }
         var p1:b2Vec2 = joint.GetAnchor1();
         if(_loc16_)
         {
         }
         var p2:b2Vec2 = joint.GetAnchor2();
         if(!_loc15_)
         {
         }
         var color:b2Color = s_jointColor;
         §§push(joint.m_type);
         if(!_loc16_)
         {
            if(!(_loc16_ && this))
            {
               if(!_loc16_)
               {
                  §§push(b2Joint.e_distanceJoint);
                  §§push(_loc14_);
                  if(!(_loc16_ && this))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc15_)
                        {
                           addr326:
                           §§push(1);
                           if(!(_loc15_ || this))
                           {
                              addr338:
                              §§push(_loc14_);
                           }
                        }
                        addr360:
                     }
                     else
                     {
                        §§push(b2Joint.e_pulleyJoint);
                        §§push(_loc14_);
                        if(_loc16_)
                        {
                        }
                     }
                     if(§§pop() !== §§pop())
                     {
                        §§push(3);
                     }
                     §§goto(addr360);
                  }
                  if(§§pop() === §§pop())
                  {
                     if(_loc15_)
                     {
                        §§goto(addr326);
                     }
                  }
                  else
                  {
                     §§push(b2Joint.e_mouseJoint);
                  }
                  §§goto(addr338);
               }
               §§push(2);
               if(_loc16_ && b2)
               {
               }
               §§goto(addr360);
            }
            §§goto(addr360);
            §§push(0);
         }
         switch(§§pop())
         {
            case 0:
               this.m_debugDraw.DrawSegment(p1,p2,color);
               if(_loc16_)
               {
                  addr145:
                  pulley = joint as b2PulleyJoint;
                  if(_loc16_ && b1)
                  {
                  }
                  s1 = pulley.GetGroundAnchor1();
                  if(!_loc15_)
                  {
                  }
                  s2 = pulley.GetGroundAnchor2();
                  this.m_debugDraw.DrawSegment(s1,p1,color);
                  this.m_debugDraw.DrawSegment(s2,p2,color);
                  §§push(this.m_debugDraw);
                  addr281:
                  if(_loc15_)
                  {
                     §§pop().DrawSegment(s1,s2,color);
                     if(!(_loc16_ && b1))
                     {
                        if(_loc16_)
                        {
                        }
                     }
                     else
                     {
                        addr249:
                        §§push(this.m_debugDraw);
                        if(_loc15_)
                        {
                           §§pop().DrawSegment(x1,p1,color);
                           addr258:
                           §§push(this.m_debugDraw);
                           if(_loc16_)
                           {
                           }
                        }
                        §§pop().DrawSegment(p1,p2,color);
                        break;
                     }
                     addr285:
                  }
                  §§pop().DrawSegment(x2,p2,color);
                  §§goto(addr285);
               }
               addr363:
               return;
            case 1:
               §§goto(addr145);
            case 2:
               if(_loc15_ || b1)
               {
                  this.m_debugDraw.DrawSegment(p1,p2,color);
                  if(_loc15_)
                  {
                     if(_loc16_ && joint)
                     {
                        addr279:
                        §§goto(addr281);
                        §§push(this.m_debugDraw);
                     }
                     §§goto(addr363);
                  }
                  §§goto(addr363);
               }
               §§goto(addr285);
            default:
               if(_loc15_)
               {
                  if(b1 != this.m_groundBody)
                  {
                     if(_loc15_)
                     {
                        §§goto(addr249);
                     }
                  }
                  §§goto(addr258);
               }
         }
         if(b2 != this.m_groundBody)
         {
            if(!(_loc16_ && b1))
            {
               §§goto(addr279);
            }
         }
         §§goto(addr285);
      }
      
      public function Refilter(shape:b2Shape) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc2_)
         {
         }
         if(!_loc3_)
         {
            if(_loc2_ || _loc3_)
            {
            }
            addr42:
            shape.RefilterProxy(this.m_broadPhase,shape.m_body.m_xf);
            if(!(_loc3_ && shape))
            {
               addr63:
            }
            return;
         }
         if(!(_loc3_ && _loc3_))
         {
            §§goto(addr42);
         }
         §§goto(addr63);
      }
      
      public function SetDebugDraw(debugDraw:b2DebugDraw) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc3_)
         {
         }
         if(!_loc2_)
         {
            if(_loc2_ && _loc3_)
            {
            }
            addr50:
            return;
         }
         if(_loc3_)
         {
            this.m_debugDraw = debugDraw;
            if(!_loc2_)
            {
               §§goto(addr50);
            }
         }
         §§goto(addr50);
      }
      
      public function SetContactFilter(filter:b2ContactFilter) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || filter)
         {
         }
         if(_loc3_ || filter)
         {
            if(_loc2_ && this)
            {
            }
            addr71:
            return;
         }
         if(!(_loc2_ && _loc2_))
         {
            this.m_contactFilter = filter;
            if(_loc3_ || filter)
            {
            }
         }
         §§goto(addr71);
      }
      
      public function GetProxyCount() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && this)
         {
         }
         if(_loc2_ && _loc2_)
         {
         }
         return this.m_broadPhase.m_proxyCount;
      }
      
      public function DrawDebugData() : void
      {
         var _loc29_:Boolean = false;
         var _loc30_:Boolean = true;
         if(_loc30_ || this)
         {
         }
         var i:* = 0;
         var b:b2Body = null;
         var s:b2Shape = null;
         var j:b2Joint = null;
         var bp:b2BroadPhase = null;
         var xf:b2XForm = null;
         var core:* = false;
         var index:* = uint(0);
         var pair:b2Pair = null;
         var p1:b2Proxy = null;
         var p2:b2Proxy = null;
         var worldLower:b2Vec2 = null;
         var worldUpper:b2Vec2 = null;
         var p:b2Proxy = null;
         var poly:b2PolygonShape = null;
         var obb:b2OBB = null;
         var h:b2Vec2 = null;
         var tMat:b2Mat22 = null;
         var tVec:b2Vec2 = null;
         var tX:* = NaN;
         if(_loc29_ && flags)
         {
         }
         if(_loc30_ || flags)
         {
            if(_loc30_ || this)
            {
            }
            if(!(_loc29_ && i))
            {
               §§push(this.m_debugDraw);
               if(!(_loc29_ && i))
               {
                  if(§§pop() != null)
                  {
                     §§push(this.m_debugDraw);
                     if(!(_loc29_ && flags))
                     {
                        §§pop().m_sprite.graphics.clear();
                     }
                  }
               }
               addr152:
               §§push(§§pop().GetFlags());
               if(_loc30_ || this)
               {
                  §§push(uint(§§pop()));
               }
               var flags:* = §§pop();
               if(_loc30_ || flags)
               {
               }
               var invQ:b2Vec2 = new b2Vec2();
               if(_loc30_ || this)
               {
               }
               var x1:b2Vec2 = new b2Vec2();
               if(!_loc30_)
               {
               }
               var x2:b2Vec2 = new b2Vec2();
               if(!_loc30_)
               {
               }
               var color:b2Color = new b2Color(0,0,0);
               if(_loc30_ || b)
               {
               }
               var b1:b2AABB = new b2AABB();
               if(_loc29_ && this)
               {
               }
               var b2:b2AABB = new b2AABB();
               if(_loc29_)
               {
               }
               var vs:Array = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
               if(_loc30_ || this)
               {
                  §§push(flags);
                  if(!_loc29_)
                  {
                     §§push(b2DebugDraw.e_shapeBit);
                     if(_loc30_ || i)
                     {
                        §§push(§§pop() & §§pop());
                        if(_loc30_)
                        {
                           if(!§§pop())
                           {
                           }
                           addr411:
                           §§push(flags);
                           if(!_loc29_)
                           {
                              §§push(b2DebugDraw.e_jointBit);
                              if(_loc30_ || flags)
                              {
                                 §§push(§§pop() & §§pop());
                                 if(!_loc29_)
                                 {
                                    if(§§pop())
                                    {
                                       if(!(_loc29_ && b))
                                       {
                                          if(_loc30_)
                                          {
                                             j = this.m_jointList;
                                             if(_loc30_)
                                             {
                                                addr465:
                                                while(true)
                                                {
                                                   if(!j)
                                                   {
                                                      if(_loc29_ && this)
                                                      {
                                                      }
                                                      break;
                                                   }
                                                   if(!(_loc29_ && this))
                                                   {
                                                      this.DrawJoint(j);
                                                      if(_loc30_)
                                                      {
                                                         if(_loc29_)
                                                         {
                                                         }
                                                      }
                                                      break;
                                                   }
                                                   break;
                                                }
                                             }
                                             while(true)
                                             {
                                                j = j.m_next;
                                                §§goto(addr465);
                                             }
                                          }
                                          addr499:
                                          §§push(this.m_broadPhase);
                                          if(!_loc29_)
                                          {
                                             bp = §§pop();
                                             invQ.Set(1 / bp.m_quantizationFactor.x,1 / bp.m_quantizationFactor.y);
                                             if(_loc30_ || b)
                                             {
                                                color.Set(0.9,0.9,0.3);
                                                if(!_loc29_)
                                                {
                                                   §§push(0);
                                                   if(!_loc29_)
                                                   {
                                                      i = §§pop();
                                                      if(!(_loc29_ && i))
                                                      {
                                                         addr1153:
                                                         while(true)
                                                         {
                                                         }
                                                      }
                                                      addr1160:
                                                      §§push(flags);
                                                      addr2028:
                                                      if(_loc29_ && this)
                                                      {
                                                      }
                                                      if(§§pop() & b2DebugDraw.e_centerOfMassBit)
                                                      {
                                                         if(_loc30_)
                                                         {
                                                            addr2031:
                                                         }
                                                         addr2034:
                                                         b = this.m_bodyList;
                                                         if(!_loc29_)
                                                         {
                                                            while(true)
                                                            {
                                                               if(!b)
                                                               {
                                                                  if(!(_loc29_ && flags))
                                                                  {
                                                                     break;
                                                                  }
                                                                  break;
                                                               }
                                                               if(_loc30_ || i)
                                                               {
                                                                  xf = s_xf;
                                                                  if(_loc30_)
                                                                  {
                                                                     xf.R = b.m_xf.R;
                                                                  }
                                                                  xf.position = b.GetWorldCenter();
                                                                  if(_loc30_ || i)
                                                                  {
                                                                  }
                                                                  this.m_debugDraw.DrawXForm(xf);
                                                                  b = b.m_next;
                                                                  continue;
                                                               }
                                                               break;
                                                            }
                                                         }
                                                      }
                                                      return;
                                                   }
                                                   while(§§pop() < b2Pair.b2_tableCapacity)
                                                   {
                                                   }
                                                   if(!_loc30_)
                                                   {
                                                   }
                                                   §§goto(addr1160);
                                                }
                                             }
                                             while(true)
                                             {
                                                §§push(bp.m_pairManager);
                                                if(!_loc29_)
                                                {
                                                   §§push(§§pop().m_hashTable);
                                                   if(_loc30_ || this)
                                                   {
                                                      §§push(uint(§§pop()[i]));
                                                      if(!(_loc29_ && this))
                                                      {
                                                         index = §§pop();
                                                         addr1147:
                                                         while(true)
                                                         {
                                                         }
                                                      }
                                                      while(§§pop() != b2Pair.b2_nullPair)
                                                      {
                                                         if(_loc30_ || b)
                                                         {
                                                            §§push(bp.m_pairManager);
                                                         }
                                                         else
                                                         {
                                                            break;
                                                         }
                                                      }
                                                      i++;
                                                      §§goto(addr1153);
                                                   }
                                                   addr588:
                                                   while(true)
                                                   {
                                                      pair = §§pop()[index];
                                                      if(_loc30_ || b)
                                                      {
                                                      }
                                                      p1 = bp.m_proxyPool[pair.proxyId1];
                                                      if(_loc29_ && flags)
                                                      {
                                                      }
                                                      p2 = bp.m_proxyPool[pair.proxyId2];
                                                      if(_loc30_)
                                                      {
                                                         §§push(b1.lowerBound);
                                                         if(_loc30_)
                                                         {
                                                            §§push(bp.m_worldAABB);
                                                            if(_loc30_)
                                                            {
                                                               §§push(§§pop().lowerBound);
                                                               if(!_loc29_)
                                                               {
                                                                  §§push(§§pop().x);
                                                                  §§push(invQ.x);
                                                                  §§push(bp.m_bounds);
                                                                  if(_loc30_ || flags)
                                                                  {
                                                                     §§push(0);
                                                                     if(_loc30_)
                                                                     {
                                                                        §§pop().x = §§pop() + §§pop() * §§pop()[§§pop()][p1.lowerBounds[0]].value;
                                                                        if(_loc30_ || b)
                                                                        {
                                                                           §§push(b1.lowerBound);
                                                                           if(!_loc29_)
                                                                           {
                                                                              §§push(bp.m_worldAABB);
                                                                              if(_loc30_ || this)
                                                                              {
                                                                                 §§push(§§pop().lowerBound);
                                                                                 if(_loc30_)
                                                                                 {
                                                                                    §§push(§§pop().y);
                                                                                    §§push(invQ.y);
                                                                                    if(!_loc29_)
                                                                                    {
                                                                                       §§push(bp.m_bounds);
                                                                                       if(!_loc30_)
                                                                                       {
                                                                                       }
                                                                                       addr839:
                                                                                       §§push(0);
                                                                                       addr880:
                                                                                       if(_loc29_)
                                                                                       {
                                                                                       }
                                                                                       §§push(§§pop() * §§pop()[§§pop()][p2.lowerBounds[1]].value);
                                                                                    }
                                                                                    addr889:
                                                                                    §§pop().y = §§pop() + §§pop();
                                                                                    if(_loc30_ || flags)
                                                                                    {
                                                                                       addr897:
                                                                                       if(!_loc29_)
                                                                                       {
                                                                                          §§push(b2.upperBound);
                                                                                          if(!_loc29_)
                                                                                          {
                                                                                             addr904:
                                                                                             §§push(bp.m_worldAABB);
                                                                                             addr974:
                                                                                             if(!_loc29_)
                                                                                             {
                                                                                                addr908:
                                                                                                §§push(§§pop().lowerBound);
                                                                                                if(!(_loc29_ && i))
                                                                                                {
                                                                                                   addr916:
                                                                                                   §§push(§§pop().x);
                                                                                                   §§push(invQ.x);
                                                                                                   §§push(bp.m_bounds);
                                                                                                   if(!(_loc29_ && this))
                                                                                                   {
                                                                                                      §§push(0);
                                                                                                      if(_loc30_ || flags)
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop()[§§pop()][p2.upperBounds[0]].value);
                                                                                                         if(_loc30_)
                                                                                                         {
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            if(_loc30_ || flags)
                                                                                                            {
                                                                                                               addr954:
                                                                                                               §§pop().x = §§pop();
                                                                                                               if(_loc30_ || b)
                                                                                                               {
                                                                                                                  if(_loc30_ || b)
                                                                                                                  {
                                                                                                                     §§push(b2.upperBound);
                                                                                                                  }
                                                                                                               }
                                                                                                               addr1135:
                                                                                                               §§push(pair.next);
                                                                                                               if(!(_loc29_ && this))
                                                                                                               {
                                                                                                                  §§push(uint(§§pop()));
                                                                                                               }
                                                                                                               addr1146:
                                                                                                               index = §§pop();
                                                                                                            }
                                                                                                            addr983:
                                                                                                            §§push(invQ.y);
                                                                                                            if(!_loc29_)
                                                                                                            {
                                                                                                               §§push(bp.m_bounds);
                                                                                                            }
                                                                                                         }
                                                                                                         addr998:
                                                                                                         §§pop().y = §§pop() + §§pop();
                                                                                                         if(_loc30_ || flags)
                                                                                                         {
                                                                                                         }
                                                                                                      }
                                                                                                      addr990:
                                                                                                      §§goto(addr998);
                                                                                                      §§push(§§pop() * §§pop()[§§pop()][p2.upperBounds[1]].value);
                                                                                                   }
                                                                                                   addr989:
                                                                                                   §§goto(addr990);
                                                                                                   §§push(1);
                                                                                                }
                                                                                                addr975:
                                                                                                §§push(§§pop().y);
                                                                                                if(!(_loc29_ && i))
                                                                                                {
                                                                                                   §§goto(addr983);
                                                                                                }
                                                                                                §§goto(addr998);
                                                                                             }
                                                                                             addr974:
                                                                                             §§goto(addr975);
                                                                                             §§push(§§pop().lowerBound);
                                                                                          }
                                                                                          §§goto(addr974);
                                                                                          §§push(bp.m_worldAABB);
                                                                                       }
                                                                                       §§goto(addr1147);
                                                                                    }
                                                                                    addr1134:
                                                                                    §§goto(addr1135);
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     addr850:
                                                                     §§pop().x = §§pop() + §§pop() * §§pop()[§§pop()][p2.lowerBounds[0]].value;
                                                                     addr1036:
                                                                     if(!(_loc29_ && b))
                                                                     {
                                                                        addr862:
                                                                        §§push(b2.lowerBound);
                                                                        §§push(bp.m_worldAABB);
                                                                     }
                                                                     §§push(x1);
                                                                     §§push(0.5);
                                                                     if(_loc30_)
                                                                     {
                                                                        §§push(b1.lowerBound.y);
                                                                        if(!_loc29_)
                                                                        {
                                                                           §§push(§§pop() + b1.upperBound.y);
                                                                        }
                                                                        §§push(§§pop() * §§pop());
                                                                     }
                                                                     §§pop().y = §§pop();
                                                                     if(!(_loc29_ && i))
                                                                     {
                                                                        if(!(_loc29_ && flags))
                                                                        {
                                                                           §§push(x2);
                                                                           §§push(0.5);
                                                                           if(!_loc29_)
                                                                           {
                                                                              §§push(b2.lowerBound.x);
                                                                              if(_loc30_)
                                                                              {
                                                                                 §§push(§§pop() + b2.upperBound.x);
                                                                              }
                                                                              §§push(§§pop() * §§pop());
                                                                           }
                                                                           §§pop().x = §§pop();
                                                                           if(!_loc29_)
                                                                           {
                                                                              §§push(x2);
                                                                              §§push(0.5);
                                                                              if(!_loc29_)
                                                                              {
                                                                                 §§push(b2.lowerBound.y);
                                                                                 if(_loc30_)
                                                                                 {
                                                                                    §§push(§§pop() + b2.upperBound.y);
                                                                                 }
                                                                                 §§push(§§pop() * §§pop());
                                                                              }
                                                                              §§pop().y = §§pop();
                                                                              if(!(_loc29_ && b))
                                                                              {
                                                                                 if(!(_loc29_ && i))
                                                                                 {
                                                                                    this.m_debugDraw.DrawSegment(x1,x2,color);
                                                                                    if(_loc30_ || flags)
                                                                                    {
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr1134);
                                                                           }
                                                                           §§goto(addr1146);
                                                                        }
                                                                     }
                                                                     §§goto(addr1147);
                                                                  }
                                                                  §§push(1);
                                                                  if(_loc30_)
                                                                  {
                                                                     §§push(§§pop() * §§pop()[§§pop()][p1.lowerBounds[1]].value);
                                                                     if(!_loc29_)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        if(_loc30_)
                                                                        {
                                                                           §§pop().y = §§pop();
                                                                           §§push(b1.upperBound);
                                                                           if(_loc30_)
                                                                           {
                                                                              §§push(bp.m_worldAABB);
                                                                              if(!(_loc29_ && this))
                                                                              {
                                                                                 §§push(§§pop().lowerBound);
                                                                                 if(_loc30_)
                                                                                 {
                                                                                    §§push(§§pop().x);
                                                                                    §§push(invQ.x);
                                                                                    if(_loc30_)
                                                                                    {
                                                                                       §§push(bp.m_bounds);
                                                                                       if(!_loc29_)
                                                                                       {
                                                                                          §§push(0);
                                                                                          if(_loc30_)
                                                                                          {
                                                                                             §§push(§§pop() + §§pop() * §§pop()[§§pop()][p1.upperBounds[0]].value);
                                                                                             if(_loc30_)
                                                                                             {
                                                                                                §§pop().x = §§pop();
                                                                                                if(!(_loc29_ && this))
                                                                                                {
                                                                                                   if(!(_loc29_ && this))
                                                                                                   {
                                                                                                      §§push(b1.upperBound);
                                                                                                      if(_loc29_ && flags)
                                                                                                      {
                                                                                                      }
                                                                                                      §§goto(addr904);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr897);
                                                                                             }
                                                                                             §§goto(addr954);
                                                                                          }
                                                                                          §§goto(addr990);
                                                                                       }
                                                                                       addr797:
                                                                                       §§push(1);
                                                                                       if(_loc30_)
                                                                                       {
                                                                                          §§pop().y = §§pop() + §§pop() * §§pop()[§§pop()][p1.upperBounds[1]].value;
                                                                                          §§push(b2.lowerBound);
                                                                                          if(!_loc30_)
                                                                                          {
                                                                                          }
                                                                                          §§goto(addr862);
                                                                                       }
                                                                                       §§goto(addr990);
                                                                                    }
                                                                                    addr793:
                                                                                    §§push(bp.m_bounds);
                                                                                    if(_loc30_)
                                                                                    {
                                                                                       §§goto(addr797);
                                                                                    }
                                                                                    §§goto(addr989);
                                                                                 }
                                                                                 §§goto(addr975);
                                                                              }
                                                                              §§goto(addr974);
                                                                           }
                                                                           §§push(bp.m_worldAABB);
                                                                           if(_loc30_)
                                                                           {
                                                                              §§push(§§pop().lowerBound);
                                                                              if(!(_loc29_ && b))
                                                                              {
                                                                                 §§push(§§pop().y);
                                                                                 if(!_loc29_)
                                                                                 {
                                                                                    §§goto(addr793);
                                                                                    §§push(invQ.y);
                                                                                 }
                                                                                 §§goto(addr998);
                                                                              }
                                                                              §§goto(addr916);
                                                                           }
                                                                           §§goto(addr908);
                                                                        }
                                                                        §§goto(addr889);
                                                                     }
                                                                     §§goto(addr850);
                                                                  }
                                                                  §§goto(addr850);
                                                               }
                                                               addr832:
                                                               §§push(§§pop().x);
                                                               §§push(invQ.x);
                                                               §§push(bp.m_bounds);
                                                               if(!_loc29_)
                                                               {
                                                                  §§goto(addr839);
                                                               }
                                                               addr879:
                                                               §§goto(addr880);
                                                               §§push(1);
                                                            }
                                                            addr865:
                                                            §§push(§§pop().lowerBound.y);
                                                            if(_loc30_)
                                                            {
                                                               §§push(invQ.y);
                                                               if(!(_loc29_ && flags))
                                                               {
                                                                  §§goto(addr879);
                                                                  §§push(bp.m_bounds);
                                                               }
                                                               §§goto(addr889);
                                                            }
                                                            §§goto(addr889);
                                                         }
                                                         §§push(bp.m_worldAABB);
                                                         if(!(_loc29_ && this))
                                                         {
                                                            §§push(§§pop().lowerBound);
                                                            if(_loc30_ || this)
                                                            {
                                                               §§goto(addr832);
                                                            }
                                                            §§goto(addr865);
                                                         }
                                                         §§goto(addr865);
                                                      }
                                                      §§push(x1);
                                                      §§push(0.5);
                                                      if(_loc30_ || flags)
                                                      {
                                                         §§push(b1.lowerBound.x);
                                                         if(_loc30_ || flags)
                                                         {
                                                            §§push(§§pop() + b1.upperBound.x);
                                                         }
                                                         §§push(§§pop() * §§pop());
                                                      }
                                                      §§pop().x = §§pop();
                                                      if(!_loc29_)
                                                      {
                                                         §§goto(addr1036);
                                                      }
                                                      §§goto(addr1147);
                                                   }
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr588);
                                                }
                                             }
                                          }
                                          addr1188:
                                          bp = §§pop();
                                          if(_loc29_ && b)
                                          {
                                          }
                                          worldLower = bp.m_worldAABB.lowerBound;
                                          if(_loc30_ || b)
                                          {
                                          }
                                          worldUpper = bp.m_worldAABB.upperBound;
                                          invQ.Set(1 / bp.m_quantizationFactor.x,1 / bp.m_quantizationFactor.y);
                                          if(_loc30_ || i)
                                          {
                                             color.Set(0.9,0.3,0.9);
                                          }
                                          §§push(0);
                                          if(!(_loc29_ && b))
                                          {
                                             i = §§pop();
                                             if(_loc30_)
                                             {
                                                addr1520:
                                                while(true)
                                                {
                                                }
                                             }
                                             addr1592:
                                             §§push(flags);
                                             if(_loc30_)
                                             {
                                                addr1595:
                                                §§push(b2DebugDraw.e_obbBit);
                                                if(!(_loc29_ && flags))
                                                {
                                                   addr1604:
                                                   §§push(§§pop() & §§pop());
                                                   if(!(_loc29_ && flags))
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(_loc30_)
                                                         {
                                                            color.Set(0.5,0.3,0.5);
                                                            §§push(this.m_bodyList);
                                                            if(_loc30_)
                                                            {
                                                               b = §§pop();
                                                               if(!(_loc29_ && this))
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(!b)
                                                                     {
                                                                        if(_loc29_)
                                                                        {
                                                                        }
                                                                        break;
                                                                     }
                                                                     if(_loc30_ || this)
                                                                     {
                                                                        xf = b.m_xf;
                                                                        if(!_loc30_)
                                                                        {
                                                                        }
                                                                        s = b.GetShapeList();
                                                                        if(_loc30_)
                                                                        {
                                                                           loop12:
                                                                           while(s)
                                                                           {
                                                                              if(!(_loc29_ && this))
                                                                              {
                                                                                 if(_loc30_)
                                                                                 {
                                                                                    if(!_loc30_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                 }
                                                                                 if(s.m_type == b2Shape.e_polygonShape)
                                                                                 {
                                                                                    poly = s as b2PolygonShape;
                                                                                    if(_loc29_)
                                                                                    {
                                                                                    }
                                                                                    obb = poly.GetOBB();
                                                                                    if(_loc29_ && b)
                                                                                    {
                                                                                    }
                                                                                    h = obb.extents;
                                                                                    if(!_loc29_)
                                                                                    {
                                                                                       vs[0].Set(-h.x,-h.y);
                                                                                       vs[1].Set(h.x,-h.y);
                                                                                       vs[2].Set(h.x,h.y);
                                                                                       if(!_loc30_)
                                                                                       {
                                                                                       }
                                                                                       vs[3].Set(-h.x,h.y);
                                                                                       if(!_loc30_)
                                                                                       {
                                                                                       }
                                                                                    }
                                                                                    §§push(0);
                                                                                    if(!_loc29_)
                                                                                    {
                                                                                       i = §§pop();
                                                                                       if(!(_loc29_ && b))
                                                                                       {
                                                                                          addr1988:
                                                                                          while(true)
                                                                                          {
                                                                                          }
                                                                                       }
                                                                                       addr1999:
                                                                                       this.m_debugDraw.DrawPolygon(vs,4,color);
                                                                                       if(_loc30_)
                                                                                       {
                                                                                          addr2007:
                                                                                       }
                                                                                    }
                                                                                    while(§§pop() < 4)
                                                                                    {
                                                                                       if(_loc30_)
                                                                                       {
                                                                                          if(_loc30_)
                                                                                          {
                                                                                             if(!_loc29_)
                                                                                             {
                                                                                                tMat = obb.R;
                                                                                                if(_loc29_ && i)
                                                                                                {
                                                                                                }
                                                                                                tVec = vs[i];
                                                                                                §§push(obb.center.x);
                                                                                                if(!(_loc29_ && b))
                                                                                                {
                                                                                                   §§push(tMat.col1.x);
                                                                                                   if(!(_loc29_ && this))
                                                                                                   {
                                                                                                      §§push(tVec.x);
                                                                                                      if(_loc30_ || b)
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         if(!_loc29_)
                                                                                                         {
                                                                                                            §§push(tMat.col2.x);
                                                                                                            if(_loc30_)
                                                                                                            {
                                                                                                               §§push(§§pop() * tVec.y);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                   }
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(!_loc29_)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                   }
                                                                                                }
                                                                                                tX = §§pop();
                                                                                                if(_loc30_ || i)
                                                                                                {
                                                                                                   vs[i].y = obb.center.y + (tMat.col1.y * tVec.x + tMat.col2.y * tVec.y);
                                                                                                }
                                                                                                if(_loc30_)
                                                                                                {
                                                                                                   vs[i].x = tX;
                                                                                                   if(_loc29_)
                                                                                                   {
                                                                                                   }
                                                                                                }
                                                                                                tMat = xf.R;
                                                                                                if(!(_loc29_ && b))
                                                                                                {
                                                                                                   §§push(xf.position.x);
                                                                                                   if(_loc30_ || b)
                                                                                                   {
                                                                                                      §§push(tMat.col1.x);
                                                                                                      if(!(_loc29_ && i))
                                                                                                      {
                                                                                                         §§push(tVec.x);
                                                                                                         if(!(_loc29_ && flags))
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            if(_loc30_ || this)
                                                                                                            {
                                                                                                               §§push(tMat.col2.x);
                                                                                                               if(_loc30_ || this)
                                                                                                               {
                                                                                                               }
                                                                                                               addr1943:
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr1943);
                                                                                                         §§push(§§pop() * tVec.y);
                                                                                                      }
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      if(_loc30_ || this)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                      }
                                                                                                   }
                                                                                                   tX = §§pop();
                                                                                                   vs[i].y = xf.position.y + (tMat.col1.y * tVec.x + tMat.col2.y * tVec.y);
                                                                                                   if(!_loc29_)
                                                                                                   {
                                                                                                      if(_loc29_)
                                                                                                      {
                                                                                                      }
                                                                                                      §§goto(addr1988);
                                                                                                   }
                                                                                                   vs[i].x = tX;
                                                                                                }
                                                                                                i++;
                                                                                                §§goto(addr1988);
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr2007);
                                                                                    }
                                                                                    if(!(_loc29_ && flags))
                                                                                    {
                                                                                       §§goto(addr1999);
                                                                                    }
                                                                                    §§goto(addr2007);
                                                                                 }
                                                                                 addr2008:
                                                                                 while(true)
                                                                                 {
                                                                                    s = s.m_next;
                                                                                    continue loop12;
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§goto(addr2008);
                                                                              }
                                                                           }
                                                                           b = b.m_next;
                                                                           continue;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr1681);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        break;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr2034);
                                                         }
                                                         §§goto(addr2034);
                                                      }
                                                      §§push(flags);
                                                   }
                                                   §§goto(addr2028);
                                                }
                                                §§goto(addr2028);
                                             }
                                             §§goto(addr2028);
                                          }
                                          while(true)
                                          {
                                             if(§§pop() >= b2Settings.b2_maxProxies)
                                             {
                                                if(!(_loc29_ && b))
                                                {
                                                   vs[0].Set(worldLower.x,worldLower.y);
                                                   if(_loc30_ || i)
                                                   {
                                                      vs[1].Set(worldUpper.x,worldLower.y);
                                                      if(!_loc29_)
                                                      {
                                                         vs[2].Set(worldUpper.x,worldUpper.y);
                                                      }
                                                      §§goto(addr1592);
                                                   }
                                                   vs[3].Set(worldLower.x,worldUpper.y);
                                                   break;
                                                }
                                                break;
                                             }
                                             if(!_loc29_)
                                             {
                                                p = bp.m_proxyPool[i];
                                                if(!_loc29_)
                                                {
                                                   if(p.IsValid() == false)
                                                   {
                                                      if(!(_loc30_ || i))
                                                      {
                                                         addr1331:
                                                         §§push(b1.lowerBound);
                                                      }
                                                      addr1519:
                                                      i++;
                                                      §§goto(addr1520);
                                                   }
                                                   else
                                                   {
                                                      §§push(b1.lowerBound);
                                                      if(!_loc29_)
                                                      {
                                                         §§push(worldLower.x);
                                                         if(_loc30_)
                                                         {
                                                            §§push(invQ.x);
                                                            if(!_loc29_)
                                                            {
                                                               §§push(bp.m_bounds);
                                                               if(!(_loc29_ && i))
                                                               {
                                                                  §§push(0);
                                                                  if(_loc30_ || i)
                                                                  {
                                                                     §§push(§§pop() * §§pop()[§§pop()][p.lowerBounds[0]].value);
                                                                     if(!_loc29_)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        if(_loc30_ || b)
                                                                        {
                                                                        }
                                                                        addr1343:
                                                                        §§push(invQ.y);
                                                                        if(_loc29_ && this)
                                                                        {
                                                                        }
                                                                     }
                                                                     addr1363:
                                                                     §§pop().y = §§pop() + §§pop();
                                                                     addr1493:
                                                                     if(_loc30_)
                                                                     {
                                                                        §§push(b1.upperBound);
                                                                        if(!_loc29_)
                                                                        {
                                                                           §§push(worldLower.x);
                                                                           if(!(_loc29_ && b))
                                                                           {
                                                                              §§push(invQ.x);
                                                                              if(!(_loc29_ && this))
                                                                              {
                                                                                 §§push(bp.m_bounds);
                                                                                 if(!(_loc29_ && b))
                                                                                 {
                                                                                    §§push(0);
                                                                                    if(_loc30_)
                                                                                    {
                                                                                       §§push(§§pop() * §§pop()[§§pop()][p.upperBounds[0]].value);
                                                                                       if(!_loc29_)
                                                                                       {
                                                                                          §§push(§§pop() + §§pop());
                                                                                          if(!_loc29_)
                                                                                          {
                                                                                             §§pop().x = §§pop();
                                                                                             if(!_loc29_)
                                                                                             {
                                                                                                §§push(b1.upperBound);
                                                                                             }
                                                                                             addr1518:
                                                                                             §§goto(addr1519);
                                                                                          }
                                                                                          addr1441:
                                                                                          §§pop().y = §§pop();
                                                                                          if(_loc30_ || this)
                                                                                          {
                                                                                             vs[0].Set(b1.lowerBound.x,b1.lowerBound.y);
                                                                                             if(!_loc30_)
                                                                                             {
                                                                                             }
                                                                                             §§goto(addr1520);
                                                                                          }
                                                                                       }
                                                                                       addr1429:
                                                                                       §§push(bp.m_bounds);
                                                                                    }
                                                                                    addr1432:
                                                                                    §§push(§§pop() * §§pop()[§§pop()][p.upperBounds[1]].value);
                                                                                 }
                                                                                 §§goto(addr1432);
                                                                                 §§push(1);
                                                                              }
                                                                              addr1440:
                                                                              §§goto(addr1441);
                                                                              §§push(§§pop() + §§pop());
                                                                           }
                                                                           addr1425:
                                                                           §§push(invQ.y);
                                                                           if(!_loc29_)
                                                                           {
                                                                              §§goto(addr1429);
                                                                           }
                                                                           §§goto(addr1440);
                                                                        }
                                                                        §§push(worldLower.y);
                                                                        if(!_loc29_)
                                                                        {
                                                                           §§goto(addr1425);
                                                                        }
                                                                        §§goto(addr1441);
                                                                     }
                                                                     if(_loc30_ || b)
                                                                     {
                                                                        vs[3].Set(b1.lowerBound.x,b1.upperBound.y);
                                                                        addr1511:
                                                                        this.m_debugDraw.DrawPolygon(vs,4,color);
                                                                     }
                                                                     §§goto(addr1518);
                                                                  }
                                                                  addr1355:
                                                                  §§goto(addr1363);
                                                                  §§push(§§pop() * §§pop()[§§pop()][p.lowerBounds[1]].value);
                                                               }
                                                               addr1354:
                                                               §§goto(addr1355);
                                                               §§push(1);
                                                            }
                                                            §§goto(addr1354);
                                                            §§push(bp.m_bounds);
                                                         }
                                                         §§pop().x = §§pop();
                                                         §§goto(addr1331);
                                                      }
                                                   }
                                                   §§push(worldLower.y);
                                                   if(_loc30_ || b)
                                                   {
                                                      §§goto(addr1343);
                                                   }
                                                   §§goto(addr1363);
                                                }
                                                vs[1].Set(b1.upperBound.x,b1.lowerBound.y);
                                                if(_loc30_ || i)
                                                {
                                                   vs[2].Set(b1.upperBound.x,b1.upperBound.y);
                                                   if(!_loc29_)
                                                   {
                                                      §§goto(addr1493);
                                                   }
                                                   §§goto(addr1511);
                                                }
                                                §§goto(addr1511);
                                             }
                                             else
                                             {
                                                break;
                                             }
                                          }
                                          if(!_loc29_)
                                          {
                                             this.m_debugDraw.DrawPolygon(vs,4,new b2Color(0.3,0.9,0.9));
                                             if(!_loc30_)
                                             {
                                             }
                                          }
                                          §§goto(addr1592);
                                       }
                                       addr1183:
                                       if(_loc30_)
                                       {
                                          §§goto(addr1188);
                                          §§push(this.m_broadPhase);
                                       }
                                       §§goto(addr2031);
                                    }
                                    §§push(flags);
                                    if(_loc30_)
                                    {
                                       §§push(b2DebugDraw.e_pairBit);
                                       if(_loc29_)
                                       {
                                       }
                                       §§goto(addr1604);
                                    }
                                    §§goto(addr1595);
                                 }
                                 addr490:
                                 if(§§pop())
                                 {
                                    if(!(_loc29_ && i))
                                    {
                                       §§goto(addr499);
                                    }
                                    §§goto(addr1183);
                                 }
                                 §§goto(addr1160);
                              }
                              §§push(§§pop() & §§pop());
                              if(!(_loc29_ && flags))
                              {
                                 §§goto(addr490);
                              }
                              addr1180:
                              if(§§pop())
                              {
                                 §§goto(addr1183);
                              }
                              §§goto(addr1592);
                           }
                           §§push(b2DebugDraw.e_aabbBit);
                           if(!(_loc29_ && b))
                           {
                              §§push(§§pop() & §§pop());
                              if(_loc30_)
                              {
                                 §§goto(addr1180);
                              }
                              §§goto(addr2028);
                           }
                           §§goto(addr2028);
                        }
                        addr271:
                        core = §§pop() == b2DebugDraw.e_coreShapeBit;
                        if(_loc30_ || i)
                        {
                        }
                        b = this.m_bodyList;
                        loop19:
                        while(true)
                        {
                           if(!b)
                           {
                              if(!_loc29_)
                              {
                                 break;
                              }
                              §§goto(addr411);
                           }
                           else if(_loc30_)
                           {
                              xf = b.m_xf;
                              if(_loc29_ && this)
                              {
                              }
                              s = b.GetShapeList();
                              if(!_loc29_)
                              {
                                 loop20:
                                 while(true)
                                 {
                                    if(!s)
                                    {
                                       if(!(_loc29_ && flags))
                                       {
                                          break;
                                       }
                                       continue loop19;
                                    }
                                    if(_loc30_)
                                    {
                                       §§push(b.IsStatic());
                                       if(_loc30_ || b)
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc30_ || flags)
                                             {
                                                this.DrawShape(s,xf,new b2Color(0.5,0.9,0.5),core);
                                             }
                                             addr388:
                                             while(true)
                                             {
                                                s = s.m_next;
                                                continue loop20;
                                             }
                                          }
                                          else
                                          {
                                             §§push(b.IsSleeping());
                                          }
                                          addr348:
                                          if(_loc29_ && flags)
                                          {
                                             break;
                                          }
                                       }
                                       if(§§pop())
                                       {
                                          §§goto(addr348);
                                       }
                                       else
                                       {
                                          this.DrawShape(s,xf,new b2Color(0.9,0.9,0.9),core);
                                          if(!(_loc29_ && b))
                                          {
                                             if(_loc29_)
                                             {
                                                break;
                                             }
                                          }
                                          break;
                                       }
                                       §§goto(addr388);
                                    }
                                    §§goto(addr388);
                                 }
                                 continue;
                              }
                              while(true)
                              {
                                 this.DrawShape(s,xf,new b2Color(0.5,0.5,0.9),core);
                                 §§goto(addr388);
                                 §§goto(addr348);
                              }
                           }
                           else
                           {
                              break;
                           }
                        }
                        §§goto(addr411);
                     }
                     addr270:
                     §§goto(addr271);
                     §§push(§§pop() & §§pop());
                  }
                  addr268:
                  §§goto(addr270);
                  §§push(b2DebugDraw.e_coreShapeBit);
               }
               §§goto(addr268);
               §§push(flags);
            }
            return;
         }
         §§goto(addr152);
      }
      
      public function DestroyBody(b:b2Body) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!_loc9_)
         {
         }
         var jn0:b2JointEdge = null;
         var s0:b2Shape = null;
         if(_loc9_)
         {
            if(!(_loc8_ && s))
            {
               if(this.m_lock == true)
               {
                  if(_loc8_ && b)
                  {
                  }
                  addr49:
                  return;
               }
               var jn:b2JointEdge = b.m_jointList;
               while(true)
               {
                  if(!jn)
                  {
                     if(!(_loc8_ && s))
                     {
                        break;
                     }
                     addr122:
                     var s:b2Shape = b.m_shapeList;
                     while(true)
                     {
                        if(!s)
                        {
                           §§push(b.m_prev);
                           if(!(_loc8_ && this))
                           {
                              if(§§pop())
                              {
                                 if(_loc9_ || s)
                                 {
                                    break;
                                 }
                                 addr252:
                                 this.m_bodyList = b.m_next;
                                 addr266:
                                 if(!(_loc8_ && b))
                                 {
                                    addr263:
                                    addr294:
                                    if(!_loc9_)
                                    {
                                    }
                                    addr294:
                                    return;
                                 }
                                 §§push(_loc6_.m_bodyCount);
                                 if(!(_loc8_ && s))
                                 {
                                    §§push(§§pop() - 1);
                                 }
                                 if(_loc9_)
                                 {
                                    _loc6_.m_bodyCount = _loc7_;
                                 }
                                 §§goto(addr294);
                              }
                              addr224:
                              §§push(b.m_next);
                              if(!_loc8_)
                              {
                                 if(§§pop())
                                 {
                                    §§push(b.m_next);
                                 }
                              }
                              §§pop().m_prev = b.m_prev;
                              if(!(_loc8_ && s))
                              {
                                 if(!_loc9_)
                                 {
                                 }
                                 §§goto(addr263);
                              }
                              §§goto(addr294);
                           }
                           addr213:
                           §§pop().m_next = b.m_next;
                           if(_loc9_ || b)
                           {
                              §§goto(addr224);
                           }
                           §§goto(addr294);
                        }
                        else if(_loc9_)
                        {
                           if(_loc9_ || jn)
                           {
                              s0 = s;
                              if(_loc8_)
                              {
                              }
                              s = s.m_next;
                              if(_loc9_)
                              {
                                 §§push(this.m_destructionListener);
                                 if(!(_loc8_ && b))
                                 {
                                    if(§§pop())
                                    {
                                       §§push(this.m_destructionListener);
                                    }
                                    addr177:
                                    s0.DestroyProxy(this.m_broadPhase);
                                 }
                                 §§pop().SayGoodbyeShape(s0);
                                 if(!_loc9_)
                                 {
                                 }
                                 §§goto(addr177);
                              }
                              if(!_loc8_)
                              {
                                 b2Shape.Destroy(s0,this.m_blockAllocator);
                              }
                              continue;
                           }
                        }
                        else
                        {
                           break;
                        }
                        if(b == this.m_bodyList)
                        {
                           if(_loc9_)
                           {
                              §§goto(addr252);
                           }
                           §§goto(addr263);
                        }
                        §§goto(addr266);
                     }
                     §§goto(addr213);
                     §§push(b.m_prev);
                  }
                  else
                  {
                     if(_loc9_)
                     {
                        if(_loc9_)
                        {
                           jn0 = jn;
                           if(_loc9_ || b)
                           {
                           }
                           jn = jn.next;
                           §§push(this.m_destructionListener);
                           if(_loc9_)
                           {
                              if(§§pop())
                              {
                                 if(_loc9_ || s)
                                 {
                                    if(!(_loc8_ && b))
                                    {
                                       §§push(this.m_destructionListener);
                                    }
                                    addr111:
                                 }
                                 continue;
                              }
                              addr107:
                              this.DestroyJoint(jn0.joint);
                              §§goto(addr111);
                           }
                           §§pop().SayGoodbyeJoint(jn0.joint);
                           if(!_loc8_)
                           {
                              §§goto(addr107);
                           }
                           §§goto(addr111);
                        }
                        else
                        {
                           break;
                        }
                     }
                     break;
                  }
               }
               §§goto(addr122);
            }
         }
         §§goto(addr49);
      }
      
      public function SetContinuousPhysics(flag:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
         }
         if(_loc2_)
         {
            if(!_loc3_)
            {
               m_continuousPhysics = flag;
            }
         }
      }
      
      public function CreateGroundShape(def:b2ShapeDef) : *
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
         }
         if(_loc3_ || def)
         {
            if(_loc3_ || def)
            {
               if(_loc3_)
               {
                  if(this.m_lock == true)
                  {
                     if(!(_loc4_ && def))
                     {
                        if(_loc3_ || this)
                        {
                        }
                     }
                  }
               }
               return null;
            }
         }
         §§push(def.type);
         if(_loc3_ || _loc3_)
         {
            if(!(_loc4_ && def))
            {
               if(!_loc3_)
               {
               }
               addr123:
               §§push(0);
               addr143:
               if(_loc4_ && this)
               {
               }
            }
            §§push(b2Shape.e_staticEdgeShape);
            if(_loc3_ || this)
            {
               if(§§pop() === _loc2_)
               {
                  §§goto(addr123);
               }
               else
               {
                  §§push(1);
               }
            }
            §§goto(addr143);
         }
         switch(§§pop())
         {
            case 0:
               return new b2StaticEdgeChain(def,this);
            default:
               return this.m_groundBody.CreateShape(def);
         }
      }
      
      public function GetGroundBody() : b2Body
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
         }
         if(_loc2_)
         {
         }
         return this.m_groundBody;
      }
      
      public function DrawShape(shape:b2Shape, xf:b2XForm, color:b2Color, core:Boolean) : void
      {
         var _loc19_:Boolean = false;
         var _loc20_:Boolean = true;
         if(!_loc20_)
         {
         }
         var circle:b2CircleShape = null;
         var center:b2Vec2 = null;
         var radius:* = NaN;
         var axis:b2Vec2 = null;
         var i:* = 0;
         var poly:b2PolygonShape = null;
         var vertexCount:* = 0;
         var localVertices:Array = null;
         var vertices:Array = null;
         var localCoreVertices:Array = null;
         var arc:b2ConcaveArcShape = null;
         var edge:b2StaticEdgeShape = null;
         if(_loc19_)
         {
         }
         if(_loc20_ || color)
         {
            if(_loc19_ && xf)
            {
            }
            addr73:
            var coreColor:b2Color = s_coreColor;
            §§push(shape.m_type);
            if(_loc20_ || xf)
            {
               if(!(_loc19_ && this))
               {
                  if(_loc20_ || xf)
                  {
                     §§push(b2Shape.e_circleShape);
                     if(_loc20_)
                     {
                        §§push(_loc18_);
                        if(!_loc19_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!_loc19_)
                              {
                                 §§push(0);
                                 if(!_loc20_)
                                 {
                                    addr695:
                                    §§push(_loc18_);
                                    if(!_loc19_)
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(_loc19_)
                                          {
                                          }
                                          addr733:
                                          §§push(3);
                                       }
                                       else
                                       {
                                          §§push(b2Shape.e_concaveArcShape);
                                          §§push(_loc18_);
                                          if(!_loc19_)
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                if(_loc19_)
                                                {
                                                   §§goto(addr733);
                                                }
                                             }
                                             else
                                             {
                                                addr724:
                                                §§push(b2Shape.e_staticEdgeShape);
                                                §§push(_loc18_);
                                             }
                                          }
                                       }
                                    }
                                 }
                                 addr739:
                              }
                           }
                           else
                           {
                              §§push(b2Shape.e_polygonShape);
                              if(_loc20_ || color)
                              {
                                 §§goto(addr695);
                              }
                           }
                           addr709:
                           §§goto(addr739);
                        }
                        if(§§pop() === §§pop())
                        {
                           §§goto(addr733);
                        }
                        else
                        {
                           §§push(4);
                        }
                        §§goto(addr739);
                     }
                     addr720:
                     §§goto(addr739);
                  }
                  §§goto(addr720);
                  §§push(2);
               }
               §§push(1);
               if(_loc20_ || color)
               {
                  §§goto(addr709);
               }
               else
               {
                  §§goto(addr724);
               }
               §§goto(addr739);
            }
            switch(§§pop())
            {
               case 0:
                  if(!(_loc19_ && this))
                  {
                     if(_loc20_)
                     {
                        if(_loc19_)
                        {
                        }
                     }
                  }
                  circle = shape as b2CircleShape;
                  if(_loc19_ && shape)
                  {
                  }
                  center = b2Math.b2MulX(xf,circle.m_localPosition);
                  if(!(_loc19_ && this))
                  {
                     if(_loc20_ || xf)
                     {
                        §§push(circle.m_radius);
                        if(!(_loc19_ && shape))
                        {
                           §§push(Number(§§pop()));
                        }
                        radius = §§pop();
                        if(_loc20_ || color)
                        {
                        }
                     }
                  }
                  axis = xf.R.col1;
                  if(_loc20_)
                  {
                     §§push(this.m_debugDraw);
                     if(_loc20_)
                     {
                        §§pop().DrawSolidCircle(center,radius,axis,color);
                        if(_loc19_ && this)
                        {
                        }
                        addr228:
                        poly = shape as b2PolygonShape;
                        if(!_loc19_)
                        {
                           if(!(_loc19_ && xf))
                           {
                              §§push(poly.GetVertexCount());
                              if(!(_loc19_ && color))
                              {
                                 §§push(int(§§pop()));
                              }
                              vertexCount = §§pop();
                              if(_loc19_)
                              {
                              }
                           }
                        }
                        localVertices = poly.GetVertices();
                        if(!_loc20_)
                        {
                        }
                        vertices = new Array(b2Settings.b2_maxPolygonVertices);
                        addr401:
                        if(!(_loc19_ && color))
                        {
                           §§push(0);
                           if(!_loc19_)
                           {
                              i = §§pop();
                              if(!_loc19_)
                              {
                                 addr312:
                                 while(true)
                                 {
                                 }
                              }
                              addr316:
                              addr322:
                              this.m_debugDraw.DrawSolidPolygon(vertices,vertexCount,color);
                              if(core)
                              {
                                 if(_loc20_)
                                 {
                                    localCoreVertices = poly.GetCoreVertices();
                                    if(!(_loc19_ && color))
                                    {
                                       addr348:
                                       §§push(0);
                                       if(!(_loc19_ && color))
                                       {
                                          i = §§pop();
                                          addr373:
                                          while(true)
                                          {
                                          }
                                       }
                                       while(true)
                                       {
                                          if(§§pop() >= vertexCount)
                                          {
                                             if(!(_loc19_ && shape))
                                             {
                                                this.m_debugDraw.DrawPolygon(vertices,vertexCount,coreColor);
                                                break;
                                             }
                                             break;
                                          }
                                          vertices[i] = b2Math.b2MulX(xf,localCoreVertices[i]);
                                          if(!_loc20_)
                                          {
                                             break;
                                          }
                                          §§goto(addr348);
                                       }
                                    }
                                    while(true)
                                    {
                                       i++;
                                       §§goto(addr373);
                                    }
                                 }
                                 addr742:
                                 return;
                              }
                              §§goto(addr742);
                           }
                           while(true)
                           {
                              if(§§pop() >= vertexCount)
                              {
                                 §§goto(addr316);
                              }
                              else
                              {
                                 vertices[i] = b2Math.b2MulX(xf,localVertices[i]);
                                 if(_loc20_ || shape)
                                 {
                                    i++;
                                    if(!(_loc19_ && xf))
                                    {
                                       §§goto(addr312);
                                    }
                                 }
                                 break;
                              }
                              §§goto(addr322);
                           }
                           §§goto(addr322);
                        }
                        arc = shape as b2ConcaveArcShape;
                        if(_loc20_)
                        {
                           if(!_loc19_)
                           {
                              vertexCount = int(arc.GetVertexCount());
                              if(!_loc20_)
                              {
                              }
                           }
                        }
                        localVertices = arc.GetVertices();
                        if(!_loc20_)
                        {
                        }
                        center = b2Math.b2MulX(xf,arc.m_arcCenter);
                        if(!_loc20_)
                        {
                        }
                        vertices = new Array(b2Settings.b2_maxPolygonVertices);
                        if(!_loc19_)
                        {
                           if(_loc20_ || color)
                           {
                           }
                           addr463:
                           loop5:
                           while(true)
                           {
                              addr492:
                              while(§§pop() < vertexCount)
                              {
                                 vertices[i] = b2Math.b2MulX(xf,localVertices[i]);
                                 if(_loc20_ || shape)
                                 {
                                    i++;
                                    if(_loc20_ || this)
                                    {
                                       continue loop5;
                                    }
                                    addr602:
                                    edge = shape as b2StaticEdgeShape;
                                    if(!(_loc19_ && color))
                                    {
                                       §§push(this.m_debugDraw);
                                       if(!_loc19_)
                                       {
                                          §§pop().DrawSegment(edge.m_v1,edge.m_v2,color);
                                          if(_loc20_)
                                          {
                                             if(!core)
                                             {
                                             }
                                             addr642:
                                             §§goto(addr742);
                                          }
                                          addr641:
                                          §§goto(addr642);
                                       }
                                       addr633:
                                       §§pop().DrawSegment(edge.m_coreV1,edge.m_coreV2,coreColor);
                                       if(!_loc19_)
                                       {
                                          §§goto(addr641);
                                       }
                                       §§goto(addr642);
                                    }
                                    §§goto(addr633);
                                    §§push(this.m_debugDraw);
                                 }
                                 else
                                 {
                                    break loop5;
                                 }
                              }
                              break;
                           }
                           if(!_loc19_)
                           {
                              this.m_debugDraw.DrawSolidConcaveArc(vertices,vertexCount,center,color);
                              if(_loc20_ || this)
                              {
                                 if(core)
                                 {
                                    if(_loc20_ || this)
                                    {
                                       if(_loc19_ && xf)
                                       {
                                          break;
                                       }
                                    }
                                 }
                                 addr598:
                                 §§goto(addr742);
                              }
                              §§goto(addr602);
                           }
                           localCoreVertices = arc.GetCoreVertices();
                           if(!_loc19_)
                           {
                              §§push(0);
                              if(!(_loc19_ && color))
                              {
                                 i = §§pop();
                                 if(_loc20_ || color)
                                 {
                                    addr575:
                                    while(true)
                                    {
                                    }
                                 }
                                 addr580:
                                 if(_loc19_)
                                 {
                                 }
                                 §§goto(addr598);
                              }
                              while(true)
                              {
                                 if(§§pop() >= vertexCount)
                                 {
                                    if(!_loc19_)
                                    {
                                       §§goto(addr580);
                                    }
                                    break;
                                 }
                                 vertices[i] = b2Math.b2MulX(xf,localCoreVertices[i]);
                                 if(!_loc19_)
                                 {
                                    if(_loc20_ || xf)
                                    {
                                       i++;
                                    }
                                    else
                                    {
                                       break;
                                    }
                                 }
                                 §§goto(addr575);
                              }
                              §§goto(addr598);
                           }
                           this.m_debugDraw.DrawConcaveArc(vertices,vertexCount,center,coreColor);
                           if(_loc20_ || color)
                           {
                           }
                           §§goto(addr598);
                        }
                        §§push(0);
                        if(_loc20_)
                        {
                           i = §§pop();
                           if(_loc20_ || this)
                           {
                              §§goto(addr463);
                           }
                           §§goto(addr463);
                        }
                        §§goto(addr492);
                     }
                     addr185:
                     §§push(center);
                     §§push(radius);
                     if(!(_loc19_ && this))
                     {
                        §§push(§§pop() - b2Settings.b2_toiSlop);
                     }
                     §§pop().DrawCircle(§§pop(),§§pop(),coreColor);
                     if(!_loc20_)
                     {
                        addr215:
                        addr227:
                        if(_loc20_)
                        {
                           addr218:
                           if(_loc19_ && shape)
                           {
                           }
                           §§goto(addr228);
                        }
                        §§goto(addr228);
                     }
                     else
                     {
                        addr202:
                     }
                     §§goto(addr742);
                  }
                  if(core)
                  {
                     if(!(_loc19_ && xf))
                     {
                        §§goto(addr185);
                        §§push(this.m_debugDraw);
                     }
                     §§goto(addr218);
                  }
                  §§goto(addr202);
               case 1:
                  if(!(_loc19_ && shape))
                  {
                     if(!_loc19_)
                     {
                        §§goto(addr215);
                     }
                     §§goto(addr227);
                  }
                  §§goto(addr228);
               case 2:
                  if(!(_loc19_ && this))
                  {
                     §§goto(addr401);
                  }
                  §§goto(addr401);
               case 3:
                  break;
               default:
                  §§goto(addr742);
            }
            §§goto(addr602);
         }
         §§goto(addr73);
      }
      
      public function GetContactCount() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
         }
         if(_loc2_ && this)
         {
         }
         return this.m_contactCount;
      }
      
      public function Solve(step:b2TimeStep) : void
      {
         var _loc17_:Boolean = true;
         var _loc18_:Boolean = false;
         if(_loc18_)
         {
         }
         var b:b2Body = null;
         var stackCount:* = 0;
         var i:* = 0;
         var other:b2Body = null;
         var cn:b2ContactEdge = null;
         var jn:b2JointEdge = null;
         var inRange:* = false;
         if(_loc17_ || step)
         {
            if(!(_loc18_ && b))
            {
               if(!_loc17_)
               {
               }
               addr56:
               addr70:
               if(_loc18_ && step)
               {
               }
               var island:b2Island = new b2Island(this.m_bodyCount,this.m_contactCount,this.m_jointCount,this.m_stackAllocator,this.m_contactListener);
               if(_loc17_ || this)
               {
               }
               b = this.m_bodyList;
               while(true)
               {
                  if(!b)
                  {
                     if(_loc17_)
                     {
                        break;
                     }
                     addr139:
                     var c:b2Contact = this.m_contactList;
                     if(!(_loc18_ && this))
                     {
                        while(true)
                        {
                           if(!c)
                           {
                              if(_loc17_)
                              {
                                 break;
                              }
                              addr177:
                              var j:b2Joint = this.m_jointList;
                              if(!_loc18_)
                              {
                                 while(true)
                                 {
                                    if(!j)
                                    {
                                       if(!(_loc18_ && island))
                                       {
                                          break;
                                       }
                                       addr210:
                                       §§push(this.m_bodyCount);
                                       if(_loc17_ || this)
                                       {
                                          §§push(int(§§pop()));
                                       }
                                       var stackSize:* = §§pop();
                                       if(!_loc17_)
                                       {
                                       }
                                       var stack:Array = new Array(stackSize);
                                       if(!_loc17_)
                                       {
                                       }
                                       var seed:b2Body = this.m_bodyList;
                                       loop3:
                                       for(; seed; seed = seed.m_next)
                                       {
                                          §§push(seed.m_flags);
                                          §§push(b2Body.e_islandFlag | b2Body.e_sleepFlag);
                                          if(_loc17_ || step)
                                          {
                                             §§push(§§pop() | b2Body.e_frozenFlag);
                                          }
                                          §§push(§§pop() & §§pop());
                                          if(_loc17_)
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc17_ || this)
                                                {
                                                   continue;
                                                }
                                                addr297:
                                                §§push(0);
                                             }
                                             else if(seed.IsStatic())
                                             {
                                                if(!_loc18_)
                                                {
                                                   continue;
                                                }
                                             }
                                             else
                                             {
                                                island.Clear();
                                                if(_loc17_ || b)
                                                {
                                                   if(!(_loc18_ && step))
                                                   {
                                                      §§goto(addr297);
                                                   }
                                                   break;
                                                }
                                             }
                                             addr299:
                                             stack[_loc15_] = seed;
                                             seed.m_flags = seed.m_flags | b2Body.e_islandFlag;
                                             loop4:
                                             while(true)
                                             {
                                                §§push(stackCount);
                                                if(!_loc18_)
                                                {
                                                   §§push(0);
                                                   if(_loc17_)
                                                   {
                                                      if(§§pop() > §§pop())
                                                      {
                                                         if(_loc17_)
                                                         {
                                                            if(_loc17_ || island)
                                                            {
                                                               if(_loc18_)
                                                               {
                                                               }
                                                               b = stack[--stackCount];
                                                               if(!_loc18_)
                                                               {
                                                                  island.AddBody(b);
                                                                  if(_loc18_ && step)
                                                                  {
                                                                  }
                                                                  addr370:
                                                                  continue;
                                                               }
                                                               b.m_flags = b.m_flags & ~b2Body.e_sleepFlag;
                                                               if(b.IsStatic())
                                                               {
                                                                  §§goto(addr370);
                                                               }
                                                               else
                                                               {
                                                                  cn = b.m_contactList;
                                                                  while(true)
                                                                  {
                                                                     if(!cn)
                                                                     {
                                                                        if(!_loc18_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        break;
                                                                     }
                                                                     if(!_loc18_)
                                                                     {
                                                                        §§push(cn.contact);
                                                                        if(!(_loc18_ && island))
                                                                        {
                                                                           §§push(§§pop().m_flags & (b2Contact.e_islandFlag | b2Contact.e_nonSolidFlag));
                                                                           if(!_loc18_)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 if(_loc17_)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(cn.contact);
                                                                                 if(!_loc18_)
                                                                                 {
                                                                                    §§push(§§pop().m_manifoldCount);
                                                                                 }
                                                                              }
                                                                              addr454:
                                                                              if(!(_loc18_ && island))
                                                                              {
                                                                                 other = cn.other;
                                                                                 if(_loc17_)
                                                                                 {
                                                                                    if(!(_loc18_ && this))
                                                                                    {
                                                                                       if(other.m_flags & b2Body.e_islandFlag)
                                                                                       {
                                                                                          if(_loc18_ && b)
                                                                                          {
                                                                                          }
                                                                                          continue;
                                                                                       }
                                                                                       stack[_loc16_] = other;
                                                                                       if(_loc17_)
                                                                                       {
                                                                                          if(!_loc17_)
                                                                                          {
                                                                                          }
                                                                                          addr520:
                                                                                          if(!(_loc18_ && b))
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          continue;
                                                                                       }
                                                                                       other.m_flags = other.m_flags | b2Body.e_islandFlag;
                                                                                       §§goto(addr520);
                                                                                    }
                                                                                    if(_loc17_ || step)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    continue;
                                                                                 }
                                                                                 continue;
                                                                              }
                                                                              break;
                                                                           }
                                                                           if(§§pop() == 0)
                                                                           {
                                                                              if(_loc18_ && step)
                                                                              {
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              island.AddContact(cn.contact);
                                                                              if(_loc17_)
                                                                              {
                                                                                 if(!_loc17_)
                                                                                 {
                                                                                 }
                                                                              }
                                                                              §§push(cn.contact);
                                                                           }
                                                                           §§goto(addr454);
                                                                        }
                                                                        §§pop().m_flags = cn.contact.m_flags | b2Contact.e_islandFlag;
                                                                        §§goto(addr454);
                                                                     }
                                                                     if(!(_loc18_ && step))
                                                                     {
                                                                        continue;
                                                                     }
                                                                     §§goto(addr454);
                                                                  }
                                                                  jn = b.m_jointList;
                                                                  if(!_loc18_)
                                                                  {
                                                                     for(; jn; jn = jn.next)
                                                                     {
                                                                        §§push(jn.joint);
                                                                        if(!_loc18_)
                                                                        {
                                                                           if(§§pop().m_islandFlag == true)
                                                                           {
                                                                              if(_loc17_ || b)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              continue loop4;
                                                                           }
                                                                           island.AddJoint(jn.joint);
                                                                           §§push(jn.joint);
                                                                        }
                                                                        §§pop().m_islandFlag = true;
                                                                        other = jn.other;
                                                                        if(_loc17_)
                                                                        {
                                                                           if(_loc17_)
                                                                           {
                                                                              if(other.m_flags & b2Body.e_islandFlag)
                                                                              {
                                                                                 if(_loc17_)
                                                                                 {
                                                                                    if(!_loc18_)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 stack[stackCount++] = other;
                                                                                 if(_loc17_)
                                                                                 {
                                                                                    if(_loc18_)
                                                                                    {
                                                                                    }
                                                                                    addr617:
                                                                                    if(!_loc17_)
                                                                                    {
                                                                                    }
                                                                                    continue;
                                                                                 }
                                                                                 other.m_flags = other.m_flags | b2Body.e_islandFlag;
                                                                                 §§goto(addr617);
                                                                              }
                                                                              continue;
                                                                           }
                                                                           continue;
                                                                        }
                                                                     }
                                                                  }
                                                                  continue;
                                                               }
                                                            }
                                                         }
                                                         addr636:
                                                         island.Solve(step,this.m_gravity,m_positionCorrection,this.m_allowSleep);
                                                         addr650:
                                                         if(_loc17_ || b)
                                                         {
                                                            if(!_loc18_)
                                                            {
                                                               §§push(island.m_positionIterationCount);
                                                               if(_loc17_)
                                                               {
                                                                  §§push(this.m_positionIterationCount);
                                                                  if(_loc18_)
                                                                  {
                                                                  }
                                                                  addr727:
                                                                  while(§§pop() < §§pop())
                                                                  {
                                                                     if(_loc18_)
                                                                     {
                                                                        break;
                                                                     }
                                                                  }
                                                                  if(!_loc18_)
                                                                  {
                                                                     continue loop3;
                                                                  }
                                                                  break loop3;
                                                               }
                                                               break;
                                                            }
                                                            addr663:
                                                            if(_loc17_ || island)
                                                            {
                                                               this.m_positionIterationCount = island.m_positionIterationCount;
                                                               addr676:
                                                               §§push(0);
                                                               if(_loc17_ || island)
                                                               {
                                                                  i = §§pop();
                                                                  if(_loc18_)
                                                                  {
                                                                  }
                                                                  §§goto(addr728);
                                                               }
                                                               break;
                                                            }
                                                            addr724:
                                                            while(true)
                                                            {
                                                               break loop4;
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            b = island.m_bodies[i];
                                                            if(!_loc18_)
                                                            {
                                                               if(_loc17_ || step)
                                                               {
                                                                  if(b.IsStatic())
                                                                  {
                                                                     if(_loc18_)
                                                                     {
                                                                     }
                                                                  }
                                                                  addr723:
                                                                  i++;
                                                               }
                                                               b.m_flags = b.m_flags & ~b2Body.e_islandFlag;
                                                               §§goto(addr723);
                                                            }
                                                            §§goto(addr724);
                                                            §§goto(addr650);
                                                         }
                                                      }
                                                      §§goto(addr636);
                                                   }
                                                   if(§§pop() > §§pop())
                                                   {
                                                      §§goto(addr663);
                                                   }
                                                   §§goto(addr676);
                                                }
                                                break;
                                             }
                                             while(true)
                                             {
                                                §§goto(addr727);
                                             }
                                          }
                                          stackCount = §§pop();
                                          §§goto(addr299);
                                       }
                                       b = this.m_bodyList;
                                       if(_loc17_ || island)
                                       {
                                          while(true)
                                          {
                                             if(!b)
                                             {
                                                if(_loc17_ || b)
                                                {
                                                }
                                                addr880:
                                                break;
                                             }
                                             if(!_loc18_)
                                             {
                                                if(_loc17_ || b)
                                                {
                                                   if(b.m_flags & (b2Body.e_sleepFlag | b2Body.e_frozenFlag))
                                                   {
                                                      if(_loc17_)
                                                      {
                                                         continue;
                                                      }
                                                      addr851:
                                                      if(_loc17_)
                                                      {
                                                         continue;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      if(b.IsStatic())
                                                      {
                                                         if(!_loc18_)
                                                         {
                                                            continue;
                                                         }
                                                         continue;
                                                      }
                                                      §§push(Boolean(b.SynchronizeShapes()));
                                                      if(!(_loc18_ && island))
                                                      {
                                                         inRange = §§pop();
                                                         §§push(inRange);
                                                         §§push(false);
                                                         if(_loc17_)
                                                         {
                                                            §§push(§§pop() == §§pop());
                                                            §§push(§§pop() == §§pop());
                                                         }
                                                         if(§§pop())
                                                         {
                                                            if(_loc17_ || b)
                                                            {
                                                               §§pop();
                                                               §§push(this.m_boundaryListener);
                                                               if(!(_loc18_ && this))
                                                               {
                                                                  §§push(§§pop() == null);
                                                                  if(_loc18_ && step)
                                                                  {
                                                                  }
                                                               }
                                                               addr842:
                                                               §§pop().Violation(b);
                                                               if(!(_loc18_ && b))
                                                               {
                                                                  §§goto(addr851);
                                                               }
                                                            }
                                                         }
                                                         addr831:
                                                         if(§§pop())
                                                         {
                                                            if(_loc17_ || step)
                                                            {
                                                            }
                                                            §§goto(addr842);
                                                            §§push(this.m_boundaryListener);
                                                         }
                                                         continue;
                                                      }
                                                      §§goto(addr831);
                                                      §§push(!§§pop());
                                                   }
                                                   §§goto(addr880);
                                                }
                                             }
                                             break;
                                          }
                                          return;
                                       }
                                       this.m_broadPhase.Commit();
                                       if(!_loc18_)
                                       {
                                          §§goto(addr880);
                                       }
                                       §§goto(addr881);
                                    }
                                    else
                                    {
                                       if(!_loc18_)
                                       {
                                          j.m_islandFlag = false;
                                          if(!_loc18_)
                                          {
                                             if(_loc17_)
                                             {
                                                continue;
                                             }
                                             break;
                                          }
                                          break;
                                       }
                                       continue;
                                    }
                                 }
                              }
                              §§goto(addr210);
                           }
                           else
                           {
                              if(!_loc18_)
                              {
                                 c.m_flags = c.m_flags & ~b2Contact.e_islandFlag;
                                 if(_loc17_)
                                 {
                                    if(_loc17_)
                                    {
                                       c = c.m_next;
                                       continue;
                                    }
                                    break;
                                 }
                                 break;
                              }
                              break;
                           }
                        }
                     }
                     §§goto(addr177);
                  }
                  else
                  {
                     if(_loc17_ || this)
                     {
                        b.m_flags = b.m_flags & ~b2Body.e_islandFlag;
                        if(_loc17_ || b)
                        {
                           if(!(_loc18_ && step))
                           {
                              continue;
                           }
                           break;
                        }
                        break;
                     }
                     continue;
                  }
               }
               §§goto(addr139);
            }
            §§goto(addr56);
         }
         this.m_positionIterationCount = 0;
         §§goto(addr70);
      }
      
      public function Query(aabb:b2AABB, shapes:Array, maxCount:int) : int
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc8_ && maxCount)
         {
         }
         if(_loc7_ || shapes)
         {
            if(!_loc7_)
            {
            }
            addr38:
            var results:Array = new Array(maxCount);
            if(_loc8_ && maxCount)
            {
            }
            §§push(this.m_broadPhase.QueryAABB(aabb,results,maxCount));
            if(!_loc8_)
            {
               §§push(int(§§pop()));
            }
            var count:* = §§pop();
            if(_loc8_ && shapes)
            {
            }
            var i:int = 0;
            while(true)
            {
               §§push(i);
               if(!(_loc8_ && shapes))
               {
                  if(§§pop() >= count)
                  {
                     if(_loc8_ && this)
                     {
                     }
                     addr127:
                     §§push(count);
                     break;
                  }
                  if(_loc7_)
                  {
                     shapes[i] = results[i];
                     if(!_loc8_)
                     {
                        if(_loc7_ || this)
                        {
                           i++;
                           if(!_loc8_)
                           {
                              continue;
                           }
                        }
                        §§goto(addr127);
                     }
                     else
                     {
                        continue;
                     }
                  }
                  §§goto(addr127);
               }
               break;
            }
            return §§pop();
         }
         §§goto(addr38);
      }
      
      public function SetGravity(gravity:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc3_)
         {
         }
         if(_loc3_)
         {
            if(!(_loc2_ && this))
            {
               if(!(_loc2_ && _loc3_))
               {
                  this.m_gravity = gravity;
                  if(_loc2_ && _loc2_)
                  {
                  }
                  addr61:
                  return;
               }
            }
         }
         §§goto(addr61);
      }
      
      public function SolveTOI(step:b2TimeStep) : void
      {
         /*
          * Error de decompilación
          * Tiempo de espera (1 minuto) alcanzado
          * Instruction count: 1482
          */
         throw new flash.errors.IllegalOperationError("No decompilado debido al tiempo de espera");
      }
      
      public function GetJointList() : b2Joint
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         if(_loc2_ && _loc2_)
         {
         }
         return this.m_jointList;
      }
      
      public function Validate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && _loc2_)
         {
         }
         if(!_loc2_)
         {
            if(_loc1_ || this)
            {
               this.m_broadPhase.Validate();
               if(_loc1_ || _loc1_)
               {
               }
            }
         }
      }
      
      public function GetPairCount() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(!_loc2_)
         {
         }
         return this.m_broadPhase.m_pairManager.m_pairCount;
      }
      
      public function GetBodyList() : b2Body
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
         }
         if(!_loc2_)
         {
         }
         return this.m_bodyList;
      }
      
      public function SetWarmStarting(flag:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_ && _loc3_)
         {
         }
         if(!_loc2_)
         {
            if(_loc3_ || _loc2_)
            {
            }
            addr50:
            return;
         }
         m_warmStarting = flag;
         §§goto(addr50);
      }
      
      public function SetPositionCorrection(flag:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_)
         {
         }
         if(_loc3_)
         {
            if(!_loc3_)
            {
            }
            addr33:
            return;
         }
         m_positionCorrection = flag;
         §§goto(addr33);
      }
      
      public function CreateJoint(def:b2JointDef) : b2Joint
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!_loc7_)
         {
         }
         var b:b2Body = null;
         var s:b2Shape = null;
         if(!_loc8_)
         {
            if(!(_loc8_ && b))
            {
               if(_loc7_ || j)
               {
               }
            }
         }
         var j:b2Joint = b2Joint.Create(def,this.m_blockAllocator);
         j.m_prev = null;
         if(_loc7_ || this)
         {
            j.m_next = this.m_jointList;
            if(_loc7_)
            {
               §§push(this.m_jointList);
               if(_loc7_)
               {
                  if(§§pop())
                  {
                     if(_loc7_ || this)
                     {
                        §§push(this.m_jointList);
                     }
                     addr268:
                     §§push(j.m_body2);
                     if(_loc7_ || def)
                     {
                        §§push(§§pop().m_jointList);
                        if(!(_loc8_ && j))
                        {
                           addr285:
                           if(§§pop())
                           {
                              §§push(j.m_body2);
                              if(_loc8_)
                              {
                              }
                              addr304:
                              §§pop().m_jointList = j.m_node2;
                              if(!(_loc8_ && this))
                              {
                                 addr314:
                                 if(!(_loc8_ && b))
                                 {
                                    addr322:
                                    §§push(def.collideConnected);
                                    if(_loc7_ || def)
                                    {
                                       if(§§pop() == false)
                                       {
                                       }
                                       addr423:
                                       return j;
                                    }
                                    addr364:
                                    b = !!§§pop()?def.body1:def.body2;
                                    if(_loc8_)
                                    {
                                    }
                                    s = b.m_shapeList;
                                    while(true)
                                    {
                                       if(!s)
                                       {
                                          if(!_loc8_)
                                          {
                                             break;
                                          }
                                          break;
                                       }
                                       if(_loc7_ || this)
                                       {
                                          s.RefilterProxy(this.m_broadPhase,b.m_xf);
                                          if(_loc7_ || def)
                                          {
                                          }
                                          continue;
                                       }
                                       if(_loc7_)
                                       {
                                          continue;
                                       }
                                       break;
                                    }
                                    §§goto(addr423);
                                 }
                                 if(!(_loc8_ && b))
                                 {
                                    addr342:
                                    if(_loc8_ && def)
                                    {
                                    }
                                    §§goto(addr365);
                                 }
                              }
                              §§push(def.body1);
                              if(_loc7_ || j)
                              {
                                 §§goto(addr364);
                                 §§push(§§pop().m_shapeCount < def.body2.m_shapeCount);
                              }
                              §§goto(addr365);
                           }
                           addr302:
                           §§goto(addr304);
                           §§push(j.m_body2);
                        }
                        addr291:
                        §§pop().prev = j.m_node2;
                        if(_loc7_ || def)
                        {
                           §§goto(addr302);
                        }
                        §§goto(addr322);
                     }
                     §§goto(addr291);
                     §§push(§§pop().m_jointList);
                  }
                  addr90:
                  this.m_jointList = j;
               }
               §§pop().m_prev = j;
               if(_loc7_)
               {
                  if(_loc7_)
                  {
                     §§goto(addr90);
                  }
                  addr199:
                  if(_loc7_ || j)
                  {
                     addr216:
                     j.m_body1.m_jointList = j.m_node1;
                     if(_loc7_)
                     {
                        §§push(j.m_node2);
                        if(!(_loc8_ && this))
                        {
                           §§pop().joint = j;
                           addr233:
                        }
                        addr263:
                        §§pop().next = j.m_body2.m_jointList;
                        §§goto(addr268);
                     }
                     §§push(j.m_node2);
                     if(_loc7_ || j)
                     {
                        §§pop().other = j.m_body1;
                        if(_loc8_ && b)
                        {
                        }
                        §§push(j.m_node2);
                        if(_loc7_)
                        {
                           §§pop().prev = null;
                           §§push(j.m_node2);
                        }
                     }
                     §§goto(addr263);
                  }
                  §§goto(addr342);
               }
            }
            addr122:
            §§push(j.m_node1);
            if(_loc7_)
            {
               §§pop().joint = j;
               if(_loc7_ || b)
               {
                  §§push(j.m_node1);
                  if(_loc8_)
                  {
                  }
                  addr155:
                  §§pop().prev = null;
                  if(_loc7_)
                  {
                     addr162:
                     j.m_node1.next = j.m_body1.m_jointList;
                     if(!(_loc8_ && this))
                     {
                        §§push(j.m_body1);
                        if(!_loc8_)
                        {
                           §§push(§§pop().m_jointList);
                           if(!_loc8_)
                           {
                              if(§§pop())
                              {
                                 §§push(j.m_body1);
                                 if(_loc8_ && b)
                                 {
                                 }
                                 §§goto(addr216);
                              }
                           }
                           §§goto(addr285);
                        }
                        §§push(§§pop().m_jointList);
                        if(_loc7_)
                        {
                           §§pop().prev = j.m_node1;
                           if(!_loc8_)
                           {
                              §§goto(addr199);
                           }
                           §§goto(addr233);
                        }
                        §§goto(addr285);
                     }
                  }
                  §§goto(addr314);
               }
               §§goto(addr216);
            }
            §§pop().other = j.m_body2;
            if(_loc7_)
            {
               addr145:
               §§push(j.m_node1);
               if(_loc7_ || j)
               {
                  §§goto(addr155);
               }
               §§goto(addr162);
            }
            §§goto(addr162);
         }
         §§push(_loc5_.m_jointCount);
         if(_loc7_ || j)
         {
            §§push(§§pop() + 1);
         }
         if(_loc7_)
         {
            _loc5_.m_jointCount = _loc6_;
         }
         if(_loc7_ || b)
         {
            §§goto(addr122);
         }
         §§goto(addr145);
      }
      
      public function DestroyJoint(j:b2Joint) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         if(_loc9_ && this)
         {
         }
         var b:b2Body = null;
         var s:b2Shape = null;
         if(_loc10_)
         {
            if(!_loc9_)
            {
               if(!(_loc9_ && collideConnected))
               {
                  if(_loc9_ && body1)
                  {
                  }
               }
            }
            if(!_loc10_)
            {
            }
         }
         §§push(j.m_collideConnected);
         if(!_loc9_)
         {
            §§push(Boolean(§§pop()));
         }
         var collideConnected:* = §§pop();
         §§push(j.m_prev);
         if(!(_loc9_ && collideConnected))
         {
            if(§§pop())
            {
               if(_loc10_)
               {
                  §§push(j.m_prev);
               }
               addr117:
               var body1:b2Body = j.m_body1;
               if(_loc9_ && collideConnected)
               {
               }
               var body2:b2Body = j.m_body2;
               body1.WakeUp();
               if(!_loc9_)
               {
                  body2.WakeUp();
                  if(!_loc9_)
                  {
                     §§push(j.m_node1.prev);
                     if(!_loc9_)
                     {
                        if(§§pop())
                        {
                           if(_loc10_)
                           {
                              if(_loc10_)
                              {
                                 §§push(j.m_node1);
                                 if(_loc10_)
                                 {
                                    §§push(§§pop().prev);
                                    if(!(_loc9_ && j))
                                    {
                                       §§push(j.m_node1.next);
                                       if(!_loc9_)
                                       {
                                          §§pop().next = §§pop();
                                          if(_loc10_ || j)
                                          {
                                          }
                                          addr314:
                                          if(j.m_node2 == body2.m_jointList)
                                          {
                                             if(!_loc9_)
                                             {
                                                if(_loc10_ || body1)
                                                {
                                                }
                                                addr421:
                                                b = body1.m_shapeCount < body2.m_shapeCount?body1:body2;
                                                if(_loc10_ || j)
                                                {
                                                }
                                                s = b.m_shapeList;
                                                while(true)
                                                {
                                                   if(!s)
                                                   {
                                                      if(_loc10_ || collideConnected)
                                                      {
                                                         break;
                                                      }
                                                   }
                                                   else if(_loc10_)
                                                   {
                                                      s.RefilterProxy(this.m_broadPhase,b.m_xf);
                                                      if(!(_loc9_ && body1))
                                                      {
                                                         if(!(_loc9_ && body1))
                                                         {
                                                            s = s.m_next;
                                                            continue;
                                                         }
                                                      }
                                                   }
                                                   else
                                                   {
                                                      break;
                                                   }
                                                   addr493:
                                                   return;
                                                }
                                                §§goto(addr493);
                                             }
                                             body2.m_jointList = j.m_node2.next;
                                             if(_loc9_ && body1)
                                             {
                                             }
                                             addr355:
                                             j.m_node2.next = null;
                                             addr417:
                                             if(!_loc9_)
                                             {
                                                b2Joint.Destroy(j,this.m_blockAllocator);
                                                addr368:
                                             }
                                             if(_loc9_)
                                             {
                                             }
                                             §§goto(addr421);
                                          }
                                          §§push(j.m_node2);
                                          if(_loc10_ || collideConnected)
                                          {
                                             §§push(null);
                                             if(_loc10_)
                                             {
                                                §§pop().prev = §§pop();
                                                §§goto(addr355);
                                             }
                                             §§goto(addr355);
                                          }
                                          §§goto(addr355);
                                       }
                                       addr265:
                                       §§pop().next = §§pop();
                                       if(!(_loc9_ && body1))
                                       {
                                          if(!(_loc9_ && j))
                                          {
                                             addr281:
                                             §§push(j.m_node2.next);
                                             if(!(_loc9_ && j))
                                             {
                                                if(§§pop())
                                                {
                                                   if(_loc10_)
                                                   {
                                                      if(!_loc9_)
                                                      {
                                                         addr297:
                                                         §§push(j.m_node2);
                                                         if(_loc10_)
                                                         {
                                                            §§push(§§pop().next);
                                                         }
                                                         §§goto(addr355);
                                                      }
                                                      §§goto(addr368);
                                                   }
                                                   addr389:
                                                   if(_loc10_)
                                                   {
                                                      §§push(collideConnected);
                                                      if(_loc10_ || j)
                                                      {
                                                         if(§§pop() == false)
                                                         {
                                                            if(_loc9_ && this)
                                                            {
                                                            }
                                                            §§goto(addr421);
                                                         }
                                                         §§goto(addr493);
                                                      }
                                                      §§goto(addr421);
                                                   }
                                                   if(!(_loc9_ && this))
                                                   {
                                                      §§goto(addr417);
                                                   }
                                                   §§goto(addr427);
                                                }
                                                §§goto(addr314);
                                             }
                                             addr305:
                                             §§pop().prev = j.m_node2.prev;
                                             if(!(_loc9_ && body1))
                                             {
                                                §§goto(addr314);
                                             }
                                             §§goto(addr427);
                                          }
                                       }
                                       §§goto(addr355);
                                    }
                                    addr262:
                                    §§goto(addr265);
                                    §§push(j.m_node2.next);
                                 }
                                 addr200:
                                 §§push(§§pop().next);
                                 if(!_loc9_)
                                 {
                                    addr203:
                                    §§push(j.m_node1.prev);
                                    if(_loc10_)
                                    {
                                       §§pop().prev = §§pop();
                                       if(!_loc9_)
                                       {
                                          addr212:
                                          if(j.m_node1 == body1.m_jointList)
                                          {
                                             body1.m_jointList = j.m_node1.next;
                                          }
                                          §§push(j.m_node1);
                                          §§push(null);
                                          if(!(_loc9_ && j))
                                          {
                                             §§pop().prev = §§pop();
                                             if(_loc10_)
                                             {
                                                addr247:
                                                §§push(j.m_node1);
                                                §§push(null);
                                             }
                                             §§goto(addr355);
                                          }
                                          §§pop().next = §§pop();
                                          §§push(j.m_node2.prev);
                                          if(!_loc10_)
                                          {
                                          }
                                          §§goto(addr262);
                                       }
                                       §§goto(addr297);
                                    }
                                    §§goto(addr305);
                                 }
                                 §§goto(addr305);
                              }
                           }
                           §§push(_loc7_.m_jointCount);
                           if(!_loc9_)
                           {
                              §§push(§§pop() - 1);
                           }
                           if(_loc10_ || j)
                           {
                              _loc7_.m_jointCount = _loc8_;
                           }
                           §§goto(addr389);
                        }
                        §§push(j.m_node1.next);
                        if(_loc10_)
                        {
                           if(§§pop())
                           {
                              if(_loc10_ || body1)
                              {
                              }
                              addr259:
                              §§goto(addr262);
                              §§push(j.m_node2.prev);
                           }
                           §§goto(addr212);
                        }
                        §§goto(addr203);
                     }
                     if(§§pop())
                     {
                        if(!_loc9_)
                        {
                           §§goto(addr259);
                        }
                        §§goto(addr417);
                     }
                     §§goto(addr281);
                  }
               }
               §§push(j.m_node1);
               if(_loc10_)
               {
                  §§goto(addr200);
               }
               §§goto(addr247);
            }
            addr82:
            §§push(j.m_next);
            if(!(_loc9_ && collideConnected))
            {
               if(§§pop())
               {
                  if(!(_loc9_ && this))
                  {
                     §§push(j.m_next);
                  }
                  addr107:
               }
               if(j == this.m_jointList)
               {
                  addr112:
                  this.m_jointList = j.m_next;
                  §§goto(addr117);
               }
               §§goto(addr117);
            }
            §§pop().m_prev = j.m_prev;
            if(!_loc9_)
            {
               §§goto(addr107);
            }
            §§goto(addr117);
         }
         §§pop().m_next = j.m_next;
         if(_loc10_)
         {
            §§goto(addr82);
         }
         §§goto(addr112);
      }
      
      public function SetContactListener(listener:b2ContactListener) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_)
         {
         }
         if(_loc3_)
         {
            if(_loc3_ || _loc3_)
            {
               if(!_loc3_)
               {
               }
            }
            addr50:
            return;
         }
         this.m_contactListener = listener;
         if(!_loc2_)
         {
            §§goto(addr50);
         }
         §§goto(addr50);
      }
      
      public function CreateBody(def:b2BodyDef) : b2Body
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc6_)
         {
         }
         if(!(_loc5_ && def))
         {
            if(_loc6_ || _loc3_)
            {
               if(this.m_lock != true)
               {
                  var b:b2Body = new b2Body(def,this);
                  b.m_prev = null;
                  if(_loc6_)
                  {
                     if(!_loc5_)
                     {
                        b.m_next = this.m_bodyList;
                        if(!_loc5_)
                        {
                           if(_loc5_ && b)
                           {
                           }
                           addr84:
                           this.m_bodyList.m_prev = b;
                           if(_loc6_)
                           {
                              addr92:
                              this.m_bodyList = b;
                           }
                           addr96:
                           §§push(_loc3_.m_bodyCount);
                           if(_loc6_)
                           {
                              §§push(§§pop() + 1);
                           }
                           if(_loc6_ || _loc3_)
                           {
                              _loc3_.m_bodyCount = _loc4_;
                           }
                           return b;
                        }
                     }
                     §§goto(addr96);
                  }
                  §§push(this.m_bodyList);
                  if(_loc6_)
                  {
                     if(§§pop())
                     {
                        §§goto(addr84);
                     }
                     §§goto(addr92);
                  }
                  §§goto(addr84);
               }
            }
         }
         return null;
      }
      
      public function SetBoundaryListener(listener:b2BoundaryListener) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_ && _loc2_)
         {
         }
         if(!(_loc2_ && listener))
         {
            if(_loc3_ || _loc3_)
            {
               if(!_loc3_)
               {
               }
               addr65:
            }
            addr66:
            return;
         }
         this.m_boundaryListener = listener;
         if(!(_loc2_ && _loc2_))
         {
            §§goto(addr65);
         }
         §§goto(addr66);
      }
      
      public function SetDestructionListener(listener:b2DestructionListener) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc2_)
         {
         }
         if(!_loc3_)
         {
            if(_loc3_ && listener)
            {
            }
            addr49:
            return;
         }
         if(!_loc3_)
         {
            this.m_destructionListener = listener;
            if(_loc2_)
            {
               §§goto(addr49);
            }
         }
         §§goto(addr49);
      }
      
      public function Step(dt:Number, iterations:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || this)
         {
         }
         if(_loc5_ || step)
         {
            if(!_loc4_)
            {
               if(!_loc5_)
               {
               }
            }
            if(_loc5_ || iterations)
            {
            }
            addr49:
            var step:b2TimeStep = new b2TimeStep();
            if(!_loc4_)
            {
               if(_loc5_ || this)
               {
                  step.dt = dt;
                  if(_loc5_ || this)
                  {
                     step.maxIterations = iterations;
                     if(_loc4_)
                     {
                     }
                     addr165:
                     this.m_contactManager.Collide();
                  }
                  addr198:
                  §§push(m_continuousPhysics);
                  if(_loc5_ || step)
                  {
                     §§push(Boolean(§§pop()));
                     if(_loc5_ || this)
                     {
                     }
                     addr230:
                     if(§§pop())
                     {
                        this.SolveTOI(step);
                        if(!_loc5_)
                        {
                        }
                        addr255:
                        this.m_lock = false;
                        addr273:
                        if(!(_loc4_ && step))
                        {
                           addr272:
                        }
                        return;
                     }
                     this.DrawDebugData();
                     addr248:
                     if(_loc5_ || iterations)
                     {
                     }
                     this.m_inv_dt0 = step.inv_dt;
                     if(_loc4_)
                     {
                     }
                     §§goto(addr255);
                  }
                  if(§§pop())
                  {
                     if(!(_loc4_ && this))
                     {
                        §§pop();
                        if(_loc5_)
                        {
                           addr228:
                           §§push(step.dt > 0);
                        }
                        §§goto(addr272);
                     }
                  }
                  §§goto(addr230);
               }
               §§push(dt);
               if(_loc5_ || dt)
               {
                  §§push(0);
                  if(_loc5_ || dt)
                  {
                     if(§§pop() > §§pop())
                     {
                        if(!_loc4_)
                        {
                           if(_loc5_ || step)
                           {
                              step.inv_dt = 1 / dt;
                              if(_loc4_)
                              {
                              }
                              §§goto(addr272);
                           }
                           addr127:
                           §§push(step);
                           §§push(this.m_inv_dt0);
                           if(_loc5_ || step)
                           {
                              §§push(§§pop() * dt);
                           }
                           §§pop().dtRatio = §§pop();
                           addr185:
                           if(!_loc4_)
                           {
                              step.positionCorrection = m_positionCorrection;
                              step.warmStarting = m_warmStarting;
                              if(_loc5_ || iterations)
                              {
                                 §§goto(addr165);
                              }
                              §§goto(addr272);
                           }
                           this.Solve(step);
                           if(_loc5_)
                           {
                              if(_loc5_ || step)
                              {
                                 §§goto(addr198);
                              }
                              §§goto(addr248);
                           }
                           §§goto(addr272);
                        }
                     }
                     else
                     {
                        step.inv_dt = 0;
                        if(_loc5_ || dt)
                        {
                           §§goto(addr127);
                        }
                     }
                     §§goto(addr273);
                  }
                  addr181:
                  if(§§pop() > §§pop())
                  {
                     if(_loc5_)
                     {
                        §§goto(addr185);
                     }
                  }
                  §§goto(addr198);
               }
               §§goto(addr228);
            }
            §§push(step.dt);
            if(_loc5_)
            {
               §§push(0);
               if(!(_loc4_ && step))
               {
                  §§goto(addr181);
               }
               §§goto(addr228);
            }
            §§goto(addr228);
         }
         this.m_lock = true;
         §§goto(addr49);
      }
      
      public function GetBodyCount() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(_loc2_ || _loc1_)
         {
         }
         return this.m_bodyCount;
      }
      
      public function GetJointCount() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
         }
         if(_loc1_ && this)
         {
         }
         return this.m_jointCount;
      }
   }
}
