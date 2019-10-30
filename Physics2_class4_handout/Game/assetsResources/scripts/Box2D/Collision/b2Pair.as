package Box2D.Collision
{
   import Box2D.Common.b2Settings;
   
   public class b2Pair
   {
      
      public static var e_pairFinal:uint = 4;
      
      public static var b2_tableMask:int;
      
      public static var e_pairRemoved:uint = 2;
      
      public static var b2_nullPair:uint = b2Settings.USHRT_MAX;
      
      public static var e_pairBuffered:uint = 1;
      
      public static var b2_nullProxy:uint = b2Settings.USHRT_MAX;
      
      public static var b2_tableCapacity:int = 4096.0;
      
      {
         var b2_nullPair:Boolean = false;
         var b2_nullProxy:Boolean = true;
         if(b2_nullProxy)
         {
            b2_tableCapacity = b2Settings.b2_maxPairs;
            if(!b2_nullPair)
            {
               b2_tableMask = b2_tableCapacity - 1;
               if(!(b2_nullPair && b2_nullProxy))
               {
                  e_pairBuffered = 1;
                  if(b2_nullProxy || b2_nullProxy)
                  {
                  }
                  e_pairRemoved = 2;
                  if(b2_nullPair)
                  {
                  }
               }
            }
            e_pairFinal = 4;
         }
      }
      
      public var proxyId1:uint;
      
      public var userData = null;
      
      public var proxyId2:uint;
      
      public var status:uint;
      
      public var next:uint;
      
      public function b2Pair()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
         }
         if(_loc1_ || _loc2_)
         {
            super();
            if(!_loc1_)
            {
            }
         }
      }
      
      public function SetBuffered() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && _loc2_)
         {
         }
         if(!(_loc2_ && this))
         {
            this.status = this.status | e_pairBuffered;
         }
      }
      
      public function IsBuffered() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && _loc2_)
         {
         }
         return (this.status & e_pairBuffered) == e_pairBuffered;
      }
      
      public function IsFinal() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
         return (this.status & e_pairFinal) == e_pairFinal;
      }
      
      public function ClearRemoved() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && _loc2_)
         {
         }
         if(_loc2_)
         {
            this.status = this.status & ~e_pairRemoved;
         }
      }
      
      public function SetFinal() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
         }
         if(_loc1_)
         {
            this.status = this.status | e_pairFinal;
         }
      }
      
      public function IsRemoved() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         return (this.status & e_pairRemoved) == e_pairRemoved;
      }
      
      public function ClearBuffered() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(!(_loc1_ && _loc1_))
         {
            this.status = this.status & ~e_pairBuffered;
         }
      }
      
      public function SetRemoved() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
         }
         if(!(_loc1_ && this))
         {
            this.status = this.status | e_pairRemoved;
         }
      }
   }
}
