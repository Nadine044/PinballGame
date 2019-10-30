package Box2D.Dynamics.Joints
{
   import Box2D.Common.Math.b2Mat22;
   import Box2D.Common.Math.b2Math;
   import Box2D.Common.Math.b2Vec2;
   import Box2D.Common.b2Settings;
   import Box2D.Dynamics.b2Body;
   import Box2D.Dynamics.b2TimeStep;
   
   public class b2DistanceJoint extends b2Joint
   {
       
      
      public var m_localAnchor1:b2Vec2;
      
      public var m_localAnchor2:b2Vec2;
      
      public var m_bias:Number;
      
      public var m_gamma:Number;
      
      public var m_u:b2Vec2;
      
      public var m_mass:Number;
      
      public var m_impulse:Number;
      
      public var m_dampingRatio:Number;
      
      public var m_frequencyHz:Number;
      
      public var m_length:Number;
      
      public function b2DistanceJoint(def:b2DistanceJointDef)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || def)
         {
         }
         var tMat:b2Mat22 = null;
         var tX:Number = NaN;
         var tY:Number = NaN;
         if(_loc5_)
         {
            if(_loc5_)
            {
               this.m_localAnchor1 = new b2Vec2();
               if(_loc5_ || this)
               {
                  this.m_localAnchor2 = new b2Vec2();
                  if(_loc6_ && def)
                  {
                  }
               }
               this.m_u = new b2Vec2();
               if(_loc5_ || tMat)
               {
                  if(_loc6_)
                  {
                  }
                  addr160:
                  return;
               }
               addr136:
               this.m_bias = 0;
               if(!_loc6_)
               {
                  m_inv_dt = 0;
                  if(_loc5_ || def)
                  {
                     §§goto(addr160);
                  }
               }
               §§goto(addr160);
            }
            addr132:
            this.m_gamma = 0;
            §§goto(addr136);
         }
         if(!_loc6_)
         {
            if(!_loc5_)
            {
            }
            addr122:
            this.m_dampingRatio = def.dampingRatio;
            this.m_impulse = 0;
            if(!_loc6_)
            {
               §§goto(addr132);
            }
            §§goto(addr160);
         }
         super(def);
         if(!(_loc6_ && tMat))
         {
            this.m_localAnchor1.SetV(def.localAnchor1);
            if(_loc5_)
            {
               this.m_localAnchor2.SetV(def.localAnchor2);
               this.m_length = def.length;
            }
         }
         this.m_frequencyHz = def.frequencyHz;
         §§goto(addr122);
      }
      
      override public function GetAnchor1() : b2Vec2
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && this)
         {
         }
         if(_loc1_ && _loc1_)
         {
         }
         return m_body1.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchor2() : b2Vec2
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && _loc2_)
         {
         }
         if(_loc2_ && _loc2_)
         {
         }
         return m_body2.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function InitVelocityConstraints(step:b2TimeStep) : void
      {
         /*
          * Error de decompilación
          * Tiempo de espera (1 minuto) alcanzado
          * Instruction count: 1302
          */
         throw new flash.errors.IllegalOperationError("No decompilado debido al tiempo de espera");
      }
      
      override public function GetReactionTorque() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         if(_loc1_ || this)
         {
         }
         return 0;
      }
      
      override public function GetReactionForce() : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_ && _loc2_)
         {
         }
         if(!_loc3_)
         {
            if(!_loc2_)
            {
            }
            addr28:
            var F:b2Vec2 = new b2Vec2();
            if(!(_loc3_ && _loc2_))
            {
               if(!(_loc3_ && _loc3_))
               {
                  F.SetV(this.m_u);
                  if(_loc3_ && F)
                  {
                  }
               }
               addr68:
               F.Multiply(m_inv_dt * this.m_impulse);
               addr89:
               if(_loc3_ && this)
               {
               }
               return F;
            }
            if(!_loc3_)
            {
               §§goto(addr68);
            }
            §§goto(addr89);
         }
         §§goto(addr28);
      }
      
      override public function SolvePositionConstraints() : Boolean
      {
         /*
          * Error de decompilación
          * Tiempo de espera (1 minuto) alcanzado
          * Instruction count: 974
          */
         throw new flash.errors.IllegalOperationError("No decompilado debido al tiempo de espera");
      }
      
      override public function SolveVelocityConstraints(step:b2TimeStep) : void
      {
         /*
          * Error de decompilación
          * Tiempo de espera (1 minuto) alcanzado
          * Instruction count: 944
          */
         throw new flash.errors.IllegalOperationError("No decompilado debido al tiempo de espera");
      }
   }
}
