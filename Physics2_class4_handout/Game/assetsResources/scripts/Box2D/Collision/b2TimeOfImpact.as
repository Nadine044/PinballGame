package Box2D.Collision
{
   import Box2D.Collision.Shapes.b2Shape;
   import Box2D.Common.Math.b2Sweep;
   import Box2D.Common.Math.b2Vec2;
   import Box2D.Common.Math.b2XForm;
   import Box2D.Common.b2Settings;
   
   public class b2TimeOfImpact
   {
      
      public static var s_xf1:b2XForm;
      
      public static var s_xf2:b2XForm = new b2XForm();
      
      public static var s_p1:b2Vec2 = new b2Vec2();
      
      public static var s_p2:b2Vec2 = new b2Vec2();
      
      {
         var s_p1:Boolean = true;
         var s_p2:Boolean = false;
         if(!(s_p2 && b2TimeOfImpact))
         {
            s_xf1 = new b2XForm();
         }
      }
      
      public function b2TimeOfImpact()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(_loc2_)
         {
            super();
            if(!_loc2_)
            {
            }
            addr32:
            return;
         }
         §§goto(addr32);
      }
      
      public static function TimeOfImpact(shape1:b2Shape, sweep1:b2Sweep, shape2:b2Shape, sweep2:b2Sweep) : Number
      {
         /*
          * Error de decompilación
          * Tiempo de espera (1 minuto) alcanzado
          * Instruction count: 1008
          */
         throw new flash.errors.IllegalOperationError("No decompilado debido al tiempo de espera");
      }
   }
}
