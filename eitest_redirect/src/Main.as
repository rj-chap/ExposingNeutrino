package
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.display.MovieClip;
    import flash.external.ExternalInterface;
	
	/**
	 * ...
	 * @author BSLV16 rocks!
	 */
	public class Main extends Sprite 
	{
		
		public function Main() 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			var get_it_gurl:* = new zjxjpdbmsp();
			get_it_gurl.zjxjpdbmsp();
		}
		
	}
	
}