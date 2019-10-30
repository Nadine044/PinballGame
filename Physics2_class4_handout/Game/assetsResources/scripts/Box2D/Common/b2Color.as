package Box2D.Common
{
   import Box2D.Common.Math.b2Math;
   
   public class b2Color
   {
       
      
      private var _r:uint = 0;
      
      private var _g:uint = 0;
      
      private var _b:uint = 0;
      
      public function b2Color(rr:Number, gg:Number, bb:Number)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc5_)
         {
         }
         super();
         this._r = uint(255 * b2Math.b2Clamp(rr,0,1));
         if(!(_loc4_ && rr))
         {
            if(_loc5_ || bb)
            {
               this._g = uint(255 * b2Math.b2Clamp(gg,0,1));
            }
            addr96:
            return;
         }
         this._b = uint(255 * b2Math.b2Clamp(bb,0,1));
         if(_loc5_ || bb)
         {
         }
         §§goto(addr96);
      }
      
      public function Set(rr:Number, gg:Number, bb:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc4_ && bb)
         {
         }
         if(!(_loc4_ && gg))
         {
            if(_loc4_)
            {
            }
            addr73:
            addr92:
            this._b = uint(255 * b2Math.b2Clamp(bb,0,1));
            return;
         }
         this._r = uint(255 * b2Math.b2Clamp(rr,0,1));
         if(!(_loc4_ && bb))
         {
            this._g = uint(255 * b2Math.b2Clamp(gg,0,1));
            §§goto(addr73);
         }
         §§goto(addr92);
      }
      
      public function set b(bb:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_ && _loc3_)
         {
         }
         if(!(_loc2_ && _loc3_))
         {
            if(_loc3_ || this)
            {
               if(!_loc3_)
               {
               }
            }
            this._b = uint(255 * b2Math.b2Clamp(bb,0,1));
            if(_loc3_ || bb)
            {
            }
            addr74:
            return;
         }
         §§goto(addr74);
      }
      
      public function get color() : uint
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && _loc2_)
         {
         }
         if(_loc2_ && _loc2_)
         {
         }
         §§push(this._r | this._g << 8);
         if(!_loc2_)
         {
            §§push(§§pop() | this._b << 16);
         }
         return §§pop();
      }
      
      public function set r(rr:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc2_)
         {
         }
         if(!_loc3_)
         {
            if(_loc2_)
            {
               if(!_loc3_)
               {
                  this._r = uint(255 * b2Math.b2Clamp(rr,0,1));
                  if(_loc2_ || rr)
                  {
                  }
               }
            }
         }
      }
      
      public function set g(gg:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
         }
         if(_loc2_)
         {
            if(_loc3_)
            {
            }
            addr37:
            this._g = uint(255 * b2Math.b2Clamp(gg,0,1));
            if(!(_loc3_ && _loc3_))
            {
               addr62:
            }
            return;
         }
         if(_loc2_)
         {
            §§goto(addr37);
         }
         §§goto(addr62);
      }
   }
}
