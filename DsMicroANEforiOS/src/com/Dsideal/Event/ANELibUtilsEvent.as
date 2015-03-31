package com.Dsideal.Event
{
	import flash.events.Event;
	
	/**
	 * 【功能】：flex端回调iOS函数的自定义事件
	 * @author zhanghc 2015-03-30
	 */
	public class ANELibUtilsEvent extends Event
	{
		public static const FinishPickedVideo:String = "FinishPickedVideo";
		
		public var _videoPath:String = "";
		
		public function ANELibUtilsEvent(type:String, data:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
			
			this._videoPath = data;
		}
	}
}