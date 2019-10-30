package Box2D.Collision
{
   public class b2ContactID
   {
       
      
      public var _key:uint;
      
      public var features:Features;
      
      public function b2ContactID()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         this.features = new Features();
         super();
         this.features._m_id = this;
         if(_loc2_)
         {
         }
      }
      
      public function Set(id:b2ContactID) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
         }
         if(_loc2_ || _loc3_)
         {
            if(_loc2_ || _loc2_)
            {
               if(_loc2_ || _loc2_)
               {
               }
               addr65:
            }
            this.key = id._key;
            if(_loc2_)
            {
               §§goto(addr65);
            }
         }
      }
      
      public function Copy() : b2ContactID
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
         }
         if(!_loc3_)
         {
            if(!_loc2_)
            {
            }
            addr35:
            var id:b2ContactID = new b2ContactID();
            if(!_loc3_)
            {
               if(!(_loc3_ && _loc2_))
               {
                  id.key = this.key;
                  if(!_loc2_)
                  {
                  }
               }
            }
            return id;
         }
         §§goto(addr35);
      }
      
      public function set key(value:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc3_)
         {
         }
         if(!_loc2_)
         {
            if(!(_loc2_ && _loc2_))
            {
               this._key = value;
               §§push(this.features);
               if(!_loc2_)
               {
                  §§push(this._key);
                  if(_loc3_ || value)
                  {
                     §§push(255);
                     if(_loc3_)
                     {
                        §§pop()._referenceEdge = §§pop() & §§pop();
                        if(_loc3_ || _loc2_)
                        {
                        }
                     }
                     addr126:
                     §§push(§§pop() & §§pop());
                     §§push(16);
                     if(!(_loc2_ && _loc3_))
                     {
                        §§push(§§pop() >> §§pop());
                        §§push(255);
                        if(_loc3_ || this)
                        {
                           addr144:
                           §§pop()._incidentVertex = §§pop() & §§pop();
                           if(_loc3_ || this)
                           {
                              if(_loc3_ || this)
                              {
                                 §§push(this.features);
                              }
                           }
                           addr186:
                           return;
                        }
                     }
                     addr182:
                     §§pop()._flip = §§pop() >> §§pop() & 255;
                     §§goto(addr186);
                  }
                  addr165:
                  §§push(§§pop() & 4278190080);
                  §§push(24);
                  if(!(_loc2_ && value))
                  {
                     §§goto(addr182);
                  }
                  §§goto(addr182);
               }
               addr163:
               §§goto(addr165);
               §§push(this._key);
            }
            addr112:
            §§push(this.features);
            if(!(_loc2_ && _loc3_))
            {
               §§push(this._key);
               if(!_loc2_)
               {
                  §§goto(addr126);
                  §§push(16711680);
               }
               §§goto(addr165);
            }
            §§goto(addr163);
         }
         §§push(this.features);
         if(!(_loc2_ && _loc3_))
         {
            §§push(this._key);
            if(_loc3_ || _loc2_)
            {
               §§push(65280);
               if(!(_loc2_ && value))
               {
                  §§push(§§pop() & §§pop());
                  §§push(8);
                  if(!_loc2_)
                  {
                     §§push(§§pop() >> §§pop());
                     §§push(255);
                     if(_loc3_ || _loc3_)
                     {
                        §§push(§§pop() & §§pop());
                        if(!_loc2_)
                        {
                           §§pop()._incidentEdge = §§pop();
                           if(_loc3_)
                           {
                              §§goto(addr112);
                           }
                           §§goto(addr186);
                        }
                        §§goto(addr165);
                     }
                  }
                  §§goto(addr144);
               }
               §§goto(addr126);
            }
            §§goto(addr165);
         }
         §§goto(addr163);
      }
      
      public function get key() : uint
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && this)
         {
         }
         if(_loc2_)
         {
         }
         return this._key;
      }
   }
}
