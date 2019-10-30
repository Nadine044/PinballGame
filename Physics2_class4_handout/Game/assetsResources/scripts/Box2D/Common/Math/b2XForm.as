package Box2D.Common.Math
{
   public class b2XForm
   {
       
      
      public var position:b2Vec2;
      
      public var R:b2Mat22;
      
      public function b2XForm(pos:b2Vec2 = null, r:b2Mat22 = null)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc3_ && _loc3_)
         {
         }
         if(_loc4_ || this)
         {
            if(_loc4_)
            {
               this.position = new b2Vec2();
               if(!_loc3_)
               {
                  this.R = new b2Mat22();
                  if(_loc3_ && pos)
                  {
                  }
               }
               addr71:
               if(_loc4_ || pos)
               {
                  this.R.SetM(r);
                  if(_loc3_ && _loc3_)
                  {
                  }
                  addr98:
                  return;
               }
               §§goto(addr98);
            }
            addr66:
            this.position.SetV(pos);
            §§goto(addr71);
         }
         super();
         if(pos)
         {
            §§goto(addr66);
         }
         §§goto(addr98);
      }
      
      public function Initialize(pos:b2Vec2, r:b2Mat22) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc3_)
         {
         }
         if(_loc4_)
         {
            if(_loc4_ || this)
            {
            }
            addr51:
            addr55:
            this.R.SetM(r);
            return;
         }
         this.position.SetV(pos);
         if(_loc4_)
         {
            §§goto(addr51);
         }
         §§goto(addr55);
      }
      
      public function Set(x:b2XForm) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_ && x)
         {
         }
         if(!_loc3_)
         {
            if(_loc2_ || this)
            {
               if(_loc2_ || this)
               {
                  this.position.SetV(x.position);
                  if(_loc2_ || this)
                  {
                  }
               }
               if(_loc3_ && _loc3_)
               {
               }
               addr80:
               return;
            }
            this.R.SetM(x.R);
         }
         §§goto(addr80);
      }
      
      public function SetIdentity() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && _loc2_)
         {
         }
         if(_loc2_ || _loc2_)
         {
            if(_loc2_ || _loc1_)
            {
               this.position.SetZero();
               if(_loc2_ || _loc1_)
               {
                  if(_loc2_ || this)
                  {
                  }
                  addr76:
                  return;
               }
               addr75:
               §§goto(addr76);
            }
         }
         this.R.SetIdentity();
         if(_loc2_)
         {
            §§goto(addr75);
         }
         §§goto(addr76);
      }
   }
}
