package Box2D.Collision
{
   public class b2Proxy
   {
       
      
      public var overlapCount:uint;
      
      public var userData = null;
      
      public var lowerBounds:Array;
      
      public var upperBounds:Array;
      
      public var timeStamp:uint;
      
      public function b2Proxy()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
         }
         this.lowerBounds = [uint(0),uint(0)];
         if(_loc1_ || _loc2_)
         {
            this.upperBounds = [uint(0),uint(0)];
            if(!(_loc2_ && this))
            {
               super();
            }
         }
      }
      
      public function GetNext() : uint
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && _loc2_)
         {
         }
         return this.lowerBounds[0];
      }
      
      public function IsValid() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
         }
         §§push(this.overlapCount == b2BroadPhase.b2_invalid);
         if(_loc1_)
         {
            §§push(!§§pop());
         }
         return §§pop();
      }
      
      public function SetNext(next:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc2_)
         {
         }
         if(!(_loc3_ && this))
         {
            if(!_loc2_)
            {
            }
            addr48:
            return;
         }
         this.lowerBounds[0] = next & 65535;
         §§goto(addr48);
      }
   }
}
