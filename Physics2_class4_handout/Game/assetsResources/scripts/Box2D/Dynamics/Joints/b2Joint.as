package Box2D.Dynamics.Joints
{
   import Box2D.Common.Math.b2Vec2;
   import Box2D.Dynamics.b2Body;
   import Box2D.Dynamics.b2TimeStep;
   
   public class b2Joint
   {
      
      public static const e_unknownJoint:int = 0;
      
      public static const e_inactiveLimit:int = 0;
      
      public static const e_atUpperLimit:int = 2;
      
      public static const e_atLowerLimit:int = 1;
      
      public static const e_gearJoint:int = 6;
      
      public static const e_revoluteJoint:int = 1;
      
      public static const e_equalLimits:int = 3;
      
      public static const e_distanceJoint:int = 3;
      
      public static const e_pulleyJoint:int = 4;
      
      public static const e_prismaticJoint:int = 2;
      
      public static const e_mouseJoint:int = 5;
      
      {
         var e_unknownJoint:Boolean = true;
         var e_revoluteJoint:Boolean = false;
         if(!e_revoluteJoint)
         {
            if(!(e_revoluteJoint && b2Joint))
            {
               e_unknownJoint = 0;
               if(e_revoluteJoint && e_revoluteJoint)
               {
               }
               addr53:
               e_distanceJoint = 3;
               addr126:
               addr130:
               if(e_unknownJoint)
               {
                  e_pulleyJoint = 4;
               }
               e_equalLimits = 3;
               return;
            }
            if(!e_revoluteJoint)
            {
               e_revoluteJoint = 1;
               e_prismaticJoint = 2;
               if(!(e_revoluteJoint && e_unknownJoint))
               {
                  if(e_unknownJoint)
                  {
                     §§goto(addr53);
                  }
                  addr77:
                  e_mouseJoint = 5;
                  if(!(e_revoluteJoint && b2Joint))
                  {
                     e_gearJoint = 6;
                     if(e_unknownJoint || b2Joint)
                     {
                        e_inactiveLimit = 0;
                     }
                  }
                  e_atLowerLimit = 1;
                  if(e_unknownJoint || e_unknownJoint)
                  {
                     if(!e_revoluteJoint)
                     {
                        e_atUpperLimit = 2;
                        §§goto(addr126);
                     }
                  }
                  §§goto(addr126);
               }
               §§goto(addr130);
            }
         }
         if(e_unknownJoint || e_unknownJoint)
         {
            §§goto(addr77);
         }
         §§goto(addr126);
      }
      
      public var m_islandFlag:Boolean;
      
      public var m_body1:b2Body;
      
      public var m_prev:b2Joint;
      
      public var m_next:b2Joint;
      
      public var m_type:int;
      
      public var m_collideConnected:Boolean;
      
      public var m_node1:b2JointEdge;
      
      public var m_node2:b2JointEdge;
      
      public var m_inv_dt:Number;
      
      public var m_userData;
      
      public var m_body2:b2Body;
      
      public function b2Joint(def:b2JointDef)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc3_)
         {
         }
         this.m_node1 = new b2JointEdge();
         if(_loc3_ || _loc3_)
         {
            if(!_loc2_)
            {
               this.m_node2 = new b2JointEdge();
               if(_loc3_ || _loc2_)
               {
                  super();
                  if(_loc3_ || _loc3_)
                  {
                     if(_loc3_ || _loc3_)
                     {
                        this.m_type = def.type;
                        if(_loc3_)
                        {
                           if(_loc2_)
                           {
                           }
                           addr98:
                           this.m_body1 = def.body1;
                        }
                     }
                     this.m_body2 = def.body2;
                     if(_loc3_ || _loc3_)
                     {
                        addr114:
                        this.m_collideConnected = def.collideConnected;
                     }
                  }
                  addr130:
                  this.m_userData = def.userData;
                  return;
               }
               this.m_islandFlag = false;
               §§goto(addr130);
            }
            addr90:
            if(_loc3_ || _loc3_)
            {
               §§goto(addr98);
            }
            §§goto(addr114);
         }
         this.m_prev = null;
         if(_loc3_)
         {
            this.m_next = null;
            if(_loc3_)
            {
               §§goto(addr90);
            }
         }
         §§goto(addr130);
      }
      
      public static function Destroy(joint:b2Joint, allocator:*) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc4_)
         {
         }
         if(!(_loc4_ && b2Joint))
         {
            if(_loc3_ || b2Joint)
            {
               if(_loc4_ && b2Joint)
               {
               }
               addr55:
               return;
            }
         }
         §§goto(addr55);
      }
      
      public static function Create(def:b2JointDef, allocator:*) : b2Joint
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || b2Joint)
         {
         }
         if(!(_loc5_ && joint))
         {
            if(_loc5_ && def)
            {
            }
            addr50:
            var joint:b2Joint = null;
            §§push(def.type);
            if(!_loc5_)
            {
               §§push(e_distanceJoint);
               if(!(_loc5_ && allocator))
               {
                  §§push(_loc4_);
                  if(!_loc5_)
                  {
                     if(§§pop() === §§pop())
                     {
                        §§push(0);
                        if(!_loc6_)
                        {
                           addr252:
                           §§push(_loc4_);
                           addr275:
                           if(!(_loc5_ && b2Joint))
                           {
                              if(§§pop() === §§pop())
                              {
                                 addr262:
                                 §§push(3);
                              }
                              else
                              {
                                 §§push(e_pulleyJoint);
                                 if(!_loc6_)
                                 {
                                 }
                              }
                           }
                           if(§§pop() === §§pop())
                           {
                              §§push(4);
                           }
                           else
                           {
                              addr281:
                              if(e_gearJoint === _loc4_)
                              {
                                 addr282:
                                 §§push(5);
                                 if(_loc5_)
                                 {
                                 }
                              }
                              else
                              {
                                 §§push(6);
                              }
                           }
                        }
                        addr297:
                     }
                     else
                     {
                        §§push(e_mouseJoint);
                        §§push(_loc4_);
                        if(_loc5_ && allocator)
                        {
                        }
                        addr238:
                        if(§§pop() === §§pop())
                        {
                           if(_loc6_)
                           {
                              §§push(2);
                           }
                           §§goto(addr297);
                        }
                        else
                        {
                           §§push(e_revoluteJoint);
                           if(!(_loc5_ && def))
                           {
                              §§goto(addr252);
                           }
                        }
                        §§goto(addr282);
                     }
                     §§push(_loc4_);
                     if(!(_loc5_ && allocator))
                     {
                        §§goto(addr275);
                     }
                     §§goto(addr281);
                  }
                  if(§§pop() === §§pop())
                  {
                     §§push(1);
                     if(!_loc6_)
                     {
                        §§goto(addr262);
                     }
                  }
                  else
                  {
                     §§push(e_prismaticJoint);
                     §§push(_loc4_);
                     if(!(_loc5_ && b2Joint))
                     {
                        §§goto(addr238);
                     }
                     §§goto(addr281);
                  }
                  §§goto(addr297);
               }
               §§goto(addr297);
            }
            switch(§§pop())
            {
               case 0:
                  joint = new b2DistanceJoint(def as b2DistanceJointDef);
                  if(!_loc5_)
                  {
                     if(_loc5_ && b2Joint)
                     {
                     }
                     addr300:
                     return joint;
                  }
                  addr76:
                  joint = new b2MouseJoint(def as b2MouseJointDef);
                  addr96:
                  if(!_loc5_)
                  {
                     if(_loc6_ || def)
                     {
                     }
                     §§goto(addr300);
                  }
                  joint = new b2PrismaticJoint(def as b2PrismaticJointDef);
                  if(_loc6_)
                  {
                     if(!_loc6_)
                     {
                        addr111:
                        joint = new b2RevoluteJoint(def as b2RevoluteJointDef);
                        addr136:
                        if(!(_loc5_ && allocator))
                        {
                           if(_loc6_ || def)
                           {
                           }
                        }
                        joint = new b2PulleyJoint(def as b2PulleyJointDef);
                        if(!(_loc5_ && allocator))
                        {
                           if(_loc5_)
                           {
                              break;
                           }
                        }
                     }
                     §§goto(addr300);
                  }
                  §§goto(addr300);
               case 1:
                  §§goto(addr76);
               case 2:
                  §§goto(addr96);
               case 3:
                  §§goto(addr111);
               case 4:
                  §§goto(addr136);
               case 5:
                  break;
               default:
                  addr188:
                  §§goto(addr300);
            }
            joint = new b2GearJoint(def as b2GearJointDef);
            if(!(_loc5_ && allocator))
            {
               if(_loc6_ || joint)
               {
               }
               §§goto(addr300);
            }
            §§goto(addr188);
         }
         if(!_loc5_)
         {
            if(_loc6_ || def)
            {
            }
            §§goto(addr50);
         }
         §§goto(addr50);
      }
      
      public function GetBody2() : b2Body
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         if(_loc2_ && _loc1_)
         {
         }
         return this.m_body2;
      }
      
      public function GetAnchor1() : b2Vec2
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
         return null;
      }
      
      public function GetAnchor2() : b2Vec2
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
         }
         return null;
      }
      
      public function GetNext() : b2Joint
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && _loc1_)
         {
         }
         if(_loc2_)
         {
         }
         return this.m_next;
      }
      
      public function GetType() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && _loc2_)
         {
         }
         if(!_loc1_)
         {
         }
         return this.m_type;
      }
      
      public function InitVelocityConstraints(step:b2TimeStep) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_)
         {
         }
         if(!_loc3_)
         {
         }
      }
      
      public function GetReactionTorque() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
         }
         return 0;
      }
      
      public function GetUserData() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         if(_loc2_)
         {
         }
         return this.m_userData;
      }
      
      public function GetReactionForce() : b2Vec2
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
         }
         return null;
      }
      
      public function SolvePositionConstraints() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && _loc2_)
         {
         }
         return false;
      }
      
      public function SetUserData(data:*) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
         }
         if(!(_loc3_ && data))
         {
            if(_loc2_ || _loc2_)
            {
               if(!_loc3_)
               {
                  this.m_userData = data;
                  if(!_loc2_)
                  {
                  }
               }
            }
            addr60:
            return;
         }
         §§goto(addr60);
      }
      
      public function GetBody1() : b2Body
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
         }
         if(_loc1_ && _loc2_)
         {
         }
         return this.m_body1;
      }
      
      public function SolveVelocityConstraints(step:b2TimeStep) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc2_)
         {
         }
         if(!_loc2_)
         {
         }
      }
      
      public function InitPositionConstraints() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
      }
   }
}
