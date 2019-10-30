package Box2D.Dynamics.Joints
{
   import Box2D.Common.Math.b2Vec2;
   import Box2D.Dynamics.b2Body;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var maxLength1:Number;
      
      public var maxLength2:Number;
      
      public var length1:Number;
      
      public var localAnchor1:b2Vec2;
      
      public var localAnchor2:b2Vec2;
      
      public var groundAnchor1:b2Vec2;
      
      public var groundAnchor2:b2Vec2;
      
      public var ratio:Number;
      
      public var length2:Number;
      
      public function b2PulleyJointDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         if(!(_loc2_ && this))
         {
            this.groundAnchor1 = new b2Vec2();
            if(!_loc2_)
            {
               if(_loc1_)
               {
                  this.groundAnchor2 = new b2Vec2();
                  if(_loc1_)
                  {
                     this.localAnchor1 = new b2Vec2();
                     if(_loc1_ || _loc1_)
                     {
                        this.localAnchor2 = new b2Vec2();
                        if(!(_loc2_ && _loc1_))
                        {
                           if(_loc1_)
                           {
                              super();
                              if(_loc1_)
                              {
                                 if(_loc1_)
                                 {
                                    type = b2Joint.e_pulleyJoint;
                                 }
                                 addr144:
                                 if(_loc1_ || this)
                                 {
                                    this.length2 = 0;
                                    if(!_loc1_)
                                    {
                                    }
                                    addr175:
                                    collideConnected = true;
                                    if(_loc2_ && this)
                                    {
                                    }
                                 }
                                 addr171:
                                 addr174:
                                 this.ratio = 1;
                                 §§goto(addr175);
                              }
                              addr193:
                              return;
                           }
                        }
                     }
                  }
               }
               this.maxLength2 = 0;
               if(!(_loc2_ && _loc2_))
               {
                  if(!_loc2_)
                  {
                     §§goto(addr171);
                  }
                  §§goto(addr175);
               }
               §§goto(addr174);
            }
         }
         this.groundAnchor1.Set(-1,1);
         if(_loc1_)
         {
            this.groundAnchor2.Set(1,1);
         }
         if(!_loc2_)
         {
            this.localAnchor1.Set(-1,0);
            if(_loc1_ || this)
            {
               this.localAnchor2.Set(1,0);
               if(!_loc2_)
               {
                  if(_loc2_ && this)
                  {
                  }
                  §§goto(addr175);
               }
               this.length1 = 0;
               if(_loc1_ || _loc1_)
               {
                  this.maxLength1 = 0;
               }
            }
            §§goto(addr193);
         }
         §§goto(addr144);
      }
      
      public function Initialize(b1:b2Body, b2:b2Body, ga1:b2Vec2, ga2:b2Vec2, anchor1:b2Vec2, anchor2:b2Vec2, r:Number) : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         if(!_loc14_)
         {
         }
         if(!_loc13_)
         {
            if(_loc14_)
            {
               if(_loc14_ || this)
               {
                  if(_loc14_ || b2)
                  {
                  }
                  addr64:
                  body2 = b2;
                  this.groundAnchor1.SetV(ga1);
                  if(_loc14_ || b2)
                  {
                     if(_loc14_)
                     {
                        this.groundAnchor2.SetV(ga2);
                        if(_loc14_ || ga1)
                        {
                           this.localAnchor1 = body1.GetLocalPoint(anchor1);
                           addr99:
                        }
                        addr107:
                     }
                     addr108:
                     §§push(anchor1.x);
                     if(!(_loc13_ && ga1))
                     {
                        §§push(§§pop() - ga1.x);
                        if(_loc14_ || ga1)
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                     var d1X:* = §§pop();
                     if(!_loc14_)
                     {
                     }
                     §§push(anchor1.y);
                     if(_loc14_)
                     {
                        §§push(§§pop() - ga1.y);
                        if(_loc14_ || b1)
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                     var d1Y:* = §§pop();
                     if(!_loc13_)
                     {
                        if(_loc14_ || this)
                        {
                           this.length1 = Math.sqrt(d1X * d1X + d1Y * d1Y);
                           if(_loc13_ && ga1)
                           {
                           }
                           addr184:
                           §§push(anchor2.x);
                           if(!_loc13_)
                           {
                              §§push(§§pop() - ga2.x);
                              if(_loc14_ || b1)
                              {
                                 §§push(Number(§§pop()));
                              }
                           }
                           var d2X:* = §§pop();
                           if(!_loc14_)
                           {
                           }
                           §§push(anchor2.y);
                           if(!(_loc13_ && b2))
                           {
                              §§push(§§pop() - ga2.y);
                              if(_loc13_ && b1)
                              {
                              }
                              addr223:
                              var d2Y:* = §§pop();
                              if(!_loc13_)
                              {
                                 if(!(_loc13_ && ga1))
                                 {
                                    this.length2 = Math.sqrt(d2X * d2X + d2Y * d2Y);
                                    if(_loc14_)
                                    {
                                       if(_loc14_)
                                       {
                                          this.ratio = r;
                                          if(_loc13_)
                                          {
                                          }
                                       }
                                    }
                                 }
                              }
                              §§push(this.length1);
                              if(_loc14_ || ga1)
                              {
                                 §§push(this.ratio);
                                 if(!(_loc13_ && b1))
                                 {
                                    §§push(§§pop() * this.length2);
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(!(_loc13_ && ga1))
                                 {
                                    §§push(Number(§§pop()));
                                 }
                              }
                              var C:* = §§pop();
                              if(!(_loc13_ && b1))
                              {
                                 if(_loc14_)
                                 {
                                    §§push(this);
                                    §§push(C);
                                    if(!_loc13_)
                                    {
                                       §§push(this.ratio);
                                       if(!(_loc13_ && ga1))
                                       {
                                          §§push(§§pop() * b2PulleyJoint.b2_minPulleyLength);
                                       }
                                       §§push(§§pop() - §§pop());
                                    }
                                    §§pop().maxLength1 = §§pop();
                                    if(!(_loc13_ && ga1))
                                    {
                                       if(_loc14_ || b2)
                                       {
                                       }
                                       addr365:
                                       return;
                                    }
                                 }
                                 addr364:
                                 §§goto(addr365);
                              }
                              §§push(this);
                              §§push(C);
                              if(!_loc13_)
                              {
                                 §§push(b2PulleyJoint.b2_minPulleyLength);
                                 if(_loc14_ || b2)
                                 {
                                    §§push(§§pop() - §§pop());
                                    if(!_loc13_)
                                    {
                                       §§push(this.ratio);
                                    }
                                 }
                                 §§push(§§pop() / §§pop());
                              }
                              §§pop().maxLength2 = §§pop();
                              if(!(_loc13_ && b1))
                              {
                                 §§goto(addr364);
                              }
                              §§goto(addr365);
                           }
                           §§goto(addr223);
                           §§push(Number(§§pop()));
                        }
                     }
                     §§goto(addr184);
                  }
                  this.localAnchor2 = body2.GetLocalPoint(anchor2);
                  if(_loc14_)
                  {
                     §§goto(addr107);
                  }
                  §§goto(addr108);
               }
            }
         }
         if(!_loc13_)
         {
            if(_loc14_ || b2)
            {
            }
            §§goto(addr64);
         }
         body1 = b1;
         if(_loc14_)
         {
            §§goto(addr64);
         }
         §§goto(addr99);
      }
   }
}
