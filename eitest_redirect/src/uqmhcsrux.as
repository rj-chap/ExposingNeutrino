package
{
   import flash.display.MovieClip;
   import flash.utils.ByteArray;
   
   public class uqmhcsrux extends MovieClip
   {
      
      private static const rwvqso:String = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";
       
      public function uqmhcsrux()
      {
         super();
      }
      
      public static function decodeToByteArray(param1:String) : ByteArray
      {
         var _loc44_:int = 0;
         var _loc45_:int = 0;
         var _loc3_:String = "write";
         var _loc4_:* = "";
         var _loc5_:String = "yt";
         _loc4_ = _loc3_ + "B" + _loc5_ + "e";
         var _loc18_:ByteArray = new ByteArray();
         var _loc33_:Array = new Array(4);
         var _loc34_:Array = new Array(3);
         var _loc43_:* = 0;
         while(_loc43_ < param1.length)
         {
            _loc44_ = 0;
            while(_loc44_ < 4 && _loc43_ + _loc44_ < param1.length)
            {
               _loc33_[_loc44_] = rwvqso.indexOf(param1.charAt(_loc43_ + _loc44_));
               _loc44_++;
            }
            _loc34_[0] = (_loc33_[0] << 2) + ((_loc33_[1] & 48) >> 4);
            _loc34_["1"] = ((_loc33_["1"] & 15) << 4) + ((_loc33_["2"] & 60) >> 2);
            _loc34_["2"] = ((_loc33_["2"] & 3) << 6) + _loc33_["3"];
            _loc45_ = 0;
            while(_loc45_ < _loc34_.length)
            {
               if(_loc33_[_loc45_ + 1] == 64)
               {
                  break;
               }
               _loc18_[_loc4_](_loc34_[_loc45_]);
               _loc45_++;
            }
            _loc43_ = uint(_loc43_ + 4);
         }
         _loc18_.position = 0;
         return _loc18_;
      }
      
      public function decode(param1:String) : String
      {
         var _loc17_:ByteArray = decodeToByteArray(param1);
         return _loc17_.readUTFBytes(_loc17_.length);
      }
   }
}
