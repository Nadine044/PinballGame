package Box2D.Dynamics.Contacts
{
   import Box2D.Collision.Features;
   import Box2D.Collision.Shapes.b2ConcaveArcShape;
   import Box2D.Collision.Shapes.b2PolygonShape;
   import Box2D.Collision.Shapes.b2Shape;
   import Box2D.Collision.b2Collision;
   import Box2D.Collision.b2Manifold;
   import Box2D.Collision.b2ManifoldPoint;
   import Box2D.Common.Math.b2Math;
   import Box2D.Common.Math.b2Vec2;
   import Box2D.Dynamics.b2Body;
   import Box2D.Dynamics.b2ContactListener;
   
   public class b2PolyAndConcaveArcContact extends b2PolygonContact
   {
       
      
      private var m_arcManifolds:Array;
      
      private var m_arcColl:Boolean;
      
      public function b2PolyAndConcaveArcContact(shape1:b2Shape, shape2:b2Shape)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc3_)
         {
         }
         if(!_loc3_)
         {
            if(!(_loc3_ && shape2))
            {
               this.m_arcManifolds = [];
               if(_loc3_ && shape1)
               {
               }
               super(shape1,shape2);
            }
            addr60:
            return;
         }
         §§goto(addr60);
      }
      
      public static function Destroy(contact:b2Contact, allocator:*) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || b2PolyAndConcaveArcContact)
         {
         }
         if(_loc4_ || contact)
         {
            if(_loc4_)
            {
               if(_loc3_)
               {
               }
            }
            addr51:
            return;
         }
         §§goto(addr51);
      }
      
      public static function Create(shape1:b2Shape, shape2:b2Shape, allocator:*) : b2Contact
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc4_ && allocator)
         {
         }
         if(_loc5_)
         {
            if(!_loc4_)
            {
               if(_loc5_)
               {
                  if(!_loc5_)
                  {
                  }
               }
               addr49:
               return new b2PolyAndConcaveArcContact(shape1,shape2);
            }
         }
         §§goto(addr49);
      }
      
      private function enlargeManifolds(l:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc4_ && l)
         {
         }
         var tMani:b2Manifold = null;
         if(_loc4_ && l)
         {
         }
         while(true)
         {
            if(this.m_arcManifolds.length >= l)
            {
               if(!_loc4_)
               {
                  break;
               }
            }
            else if(_loc3_)
            {
               if(_loc3_ || this)
               {
                  tMani = new b2Manifold();
                  if(!_loc4_)
                  {
                     tMani.pointCount = 0;
                     §§push(tMani.points);
                     if(!(_loc4_ && _loc3_))
                     {
                        §§push(0);
                        if(!(_loc4_ && _loc3_))
                        {
                           §§pop()[§§pop()].normalImpulse = 0;
                        }
                        addr95:
                        §§pop()[§§pop()].tangentImpulse = 0;
                        if(_loc3_ || this)
                        {
                           addr108:
                           this.m_arcManifolds.push(tMani);
                           continue;
                        }
                        continue;
                     }
                     addr94:
                     §§goto(addr95);
                     §§push(0);
                  }
                  §§push(tMani.points);
                  if(_loc3_ || tMani)
                  {
                     §§goto(addr94);
                  }
                  §§goto(addr108);
               }
            }
            else
            {
               break;
            }
            addr126:
            return;
         }
         §§goto(addr126);
      }
      
      override public function Evaluate(listener:b2ContactListener) : void
      {
         /*
          * Error de decompilación
          * Tiempo de espera (1 minuto) alcanzado
          * Instruction count: 4014
          */
         throw new flash.errors.IllegalOperationError("No decompilado debido al tiempo de espera");
      }
      
      override public function GetManifolds() : Array
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(!_loc1_)
         {
            if(!(_loc1_ && _loc2_))
            {
               if(!this.m_arcColl)
               {
                  return m_manifolds;
               }
            }
         }
         return this.m_arcManifolds;
      }
   }
}
