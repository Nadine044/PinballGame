package Box2D.Dynamics
{
   import Box2D.Collision.Shapes.b2MassData;
   import Box2D.Common.Math.b2Vec2;
   
   public class b2BodyDef
   {
       
      
      public var angularDamping:Number;
      
      public var angle:Number;
      
      public var isSleeping:Boolean;
      
      public var position:b2Vec2;
      
      public var isBullet:Boolean;
      
      public var allowSleep:Boolean;
      
      public var userData;
      
      public var fixedRotation:Boolean;
      
      public var linearDamping:Number;
      
      public var massData:b2MassData;
      
      public function b2BodyDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && _loc1_)
         {
         }
         if(!_loc2_)
         {
            if(_loc1_)
            {
               this.massData = new b2MassData();
               if(_loc1_ || this)
               {
                  if(_loc1_)
                  {
                     this.position = new b2Vec2();
                  }
                  addr162:
                  return;
               }
               if(!(_loc2_ && _loc2_))
               {
                  super();
                  §§push(this.massData);
                  if(_loc1_)
                  {
                     §§pop().center.SetZero();
                     §§push(this.massData);
                     if(!(_loc2_ && this))
                     {
                        §§push(0);
                        if(!_loc2_)
                        {
                           §§pop().mass = §§pop();
                           if(!_loc2_)
                           {
                              §§push(this.massData);
                           }
                           addr129:
                           this.angularDamping = 0;
                           this.allowSleep = true;
                        }
                        addr89:
                        §§pop().I = §§pop();
                        if(!_loc2_)
                        {
                           this.userData = null;
                           if(!_loc2_)
                           {
                              this.position.Set(0,0);
                              this.angle = 0;
                              if(_loc1_ || _loc2_)
                              {
                              }
                              addr156:
                              this.isBullet = false;
                              if(_loc2_)
                              {
                              }
                              §§goto(addr162);
                           }
                        }
                        this.linearDamping = 0;
                        if(!(_loc2_ && this))
                        {
                           if(!_loc2_)
                           {
                              §§goto(addr129);
                           }
                        }
                        §§goto(addr162);
                     }
                  }
                  §§goto(addr89);
                  §§push(0);
               }
               if(!_loc1_)
               {
               }
               addr142:
               this.fixedRotation = false;
            }
            if(_loc1_)
            {
               §§goto(addr156);
            }
            §§goto(addr162);
         }
         this.isSleeping = false;
         §§goto(addr142);
      }
   }
}
