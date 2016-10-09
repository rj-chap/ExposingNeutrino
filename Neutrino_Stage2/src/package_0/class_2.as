package package_0
{
   import flash.utils.ByteArray;
   
   public final class class_2
   {
       
      public function class_2()
      {
         super();
      }
      
      public static function method_13(param1:ByteArray, param2:ByteArray) : ByteArray
      {
         var _loc3_:ByteArray = new ByteArray();
         var _loc5_:int = 0;
         var _loc4_:uint = param1.length;
         param2.position = 0;
         while(_loc5_ < param2.length)
         {
            _loc3_.writeByte(param2.readByte() ^ param1[_loc5_ % _loc4_]);
            _loc5_++;
         }
         return _loc3_;
      }
      
      public static function method_2(param1:ByteArray, param2:String) : ByteArray
      {
         var _loc4_:* = 0;
         var _loc8_:* = 0;
         var _loc7_:int = 0;
         var _loc5_:ByteArray = new ByteArray();
         var _loc6_:* = 0;
         var _loc3_:ByteArray = new ByteArray();
         _loc8_ = 0;
         while(_loc8_ < 256)
         {
            _loc5_[_loc8_] = _loc8_;
            _loc8_++;
         }
         _loc8_ = 0;
         while(_loc8_ < 256)
         {
            _loc6_ = uint(_loc6_ + _loc5_[_loc8_] + param2.charCodeAt(_loc8_ % param2.length) & 255);
            _loc4_ = uint(_loc5_[_loc8_]);
            _loc5_[_loc8_] = _loc5_[_loc6_];
            _loc5_[_loc6_] = _loc4_;
            _loc8_++;
         }
         _loc8_ = 0;
         _loc6_ = 0;
         _loc7_ = 0;
         while(_loc7_ < param1.length)
         {
            _loc8_ = uint(_loc8_ + 1 & 255);
            _loc6_ = uint(_loc6_ + _loc5_[_loc8_] & 255);
            _loc4_ = uint(_loc5_[_loc8_]);
            _loc5_[_loc8_] = _loc5_[_loc6_];
            _loc5_[_loc6_] = _loc4_;
            _loc3_[_loc7_] = param1[_loc7_] ^ _loc5_[_loc5_[_loc8_] + _loc5_[_loc6_] & 255];
            _loc7_++;
         }
         return _loc3_;
      }
   }
}
