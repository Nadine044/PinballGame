package Box2D.Dynamics.Joints
{
   import Box2D.Dynamics.b2Body;
   
   public class b2JointDef
   {
       
      
      public var body2:b2Body;
      
      public var type:int;
      
      public var userData;
      
      public var collideConnected:Boolean;
      
      public var body1:b2Body;
      
      public function b2JointDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && this)
         {
         }
         super();
         if(_loc1_ || _loc2_)
         {
            this.type = b2Joint.e_unknownJoint;
            if(_loc1_ || _loc2_)
            {
            }
            this.userData = null;
         }
         if(_loc1_ || _loc1_)
         {
            this.body1 = null;
            if(_loc1_)
            {
               if(!_loc1_)
               {
               }
               addr95:
               return;
            }
            addr89:
            this.collideConnected = false;
            if(!_loc2_)
            {
               addr94:
            }
            §§goto(addr95);
         }
         this.body2 = null;
         if(!(_loc2_ && this))
         {
            §§goto(addr89);
         }
         §§goto(addr94);
      }
   }
}
