package Box2D.Collision
{
   public class Features
   {
       
      
      public var _referenceEdge:int;
      
      public var _incidentEdge:int;
      
      public var _flip:int;
      
      public var _incidentVertex:int;
      
      public var _m_id:b2ContactID;
      
      public function Features()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(_loc2_)
         {
            super();
            if(_loc1_ && this)
            {
            }
         }
      }
      
      public function get referenceEdge() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(!_loc2_)
         {
         }
         return this._referenceEdge;
      }
      
      public function set incidentVertex(value:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_ && value)
         {
         }
         if(_loc2_ || _loc2_)
         {
            this._incidentVertex = value;
            if(_loc2_)
            {
               if(_loc3_ && this)
               {
               }
            }
            addr99:
            return;
         }
         §§push(this._m_id);
         §§push(this._m_id._key & 4278255615);
         if(!(_loc3_ && _loc2_))
         {
            §§push(this._incidentVertex);
            if(!(_loc3_ && this))
            {
               §§push(16);
               if(_loc2_)
               {
                  §§push(§§pop() << §§pop());
                  if(_loc2_ || value)
                  {
                  }
                  addr94:
                  §§push(§§pop() | §§pop());
               }
               addr93:
               §§goto(addr94);
               §§push(§§pop() & §§pop());
            }
            §§goto(addr93);
            §§push(16711680);
         }
         §§pop()._key = §§pop();
         if(_loc3_)
         {
         }
         §§goto(addr99);
      }
      
      public function get flip() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && this)
         {
         }
         if(_loc2_)
         {
         }
         return this._flip;
      }
      
      public function get incidentEdge() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && _loc1_)
         {
         }
         if(_loc2_ && _loc1_)
         {
         }
         return this._incidentEdge;
      }
      
      public function set referenceEdge(value:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_)
         {
         }
         if(!_loc2_)
         {
            if(!(_loc2_ && value))
            {
               this._referenceEdge = value;
            }
            addr76:
            return;
         }
         §§push(this._m_id);
         §§push(this._m_id._key & 4294967040);
         if(!(_loc2_ && value))
         {
            §§push(this._referenceEdge);
            if(!(_loc2_ && value))
            {
               §§push(§§pop() & 255);
            }
            §§push(§§pop() | §§pop());
         }
         §§pop()._key = §§pop();
         if(!_loc2_)
         {
            §§goto(addr76);
         }
         §§goto(addr76);
      }
      
      public function get incidentVertex() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(!_loc2_)
         {
         }
         return this._incidentVertex;
      }
      
      public function set flip(value:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
         }
         if(_loc2_ || this)
         {
            this._flip = value;
         }
         if(!_loc3_)
         {
            §§push(this._m_id);
            §§push(this._m_id._key & 16777215);
            if(!_loc3_)
            {
               §§push(this._flip);
               if(!(_loc3_ && value))
               {
                  §§push(§§pop() << 24);
                  if(_loc2_ || value)
                  {
                  }
                  addr73:
                  §§push(§§pop() | §§pop());
               }
               §§goto(addr73);
               §§push(§§pop() & 4278190080);
            }
            §§pop()._key = §§pop();
            if(_loc3_ && value)
            {
            }
         }
      }
      
      public function set incidentEdge(value:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc2_)
         {
         }
         if(!_loc3_)
         {
            this._incidentEdge = value;
            §§push(this._m_id);
            §§push(this._m_id._key & 4294902015);
            if(_loc2_)
            {
               §§push(this._incidentEdge);
               if(!(_loc3_ && _loc3_))
               {
                  §§push(8);
                  if(_loc2_ || value)
                  {
                     §§push(§§pop() << §§pop());
                     if(!_loc3_)
                     {
                        §§push(65280);
                     }
                  }
                  §§push(§§pop() & §§pop());
               }
               §§push(§§pop() | §§pop());
            }
            §§pop()._key = §§pop();
         }
      }
   }
}
