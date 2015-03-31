package com.Dsideal.MicroANEforiOS
{
	import com.Dsideal.Event.ANELibUtilsEvent;
	
	import flash.events.EventDispatcher;
	import flash.events.StatusEvent;
	import flash.external.ExtensionContext;

	/**
	 * 【功能】：微课项目iOS端的ANE外壳。
	 * @author zhanghc 2015-03-23
	 */
	public class ANELibUtils extends EventDispatcher
	{
		//唯一实例
		public var m_extContext:ExtensionContext = null;
		
		/**
		 * 【功能】：微课ANEforiOS
		 * @author zhanghc 2015-03-23
		 */
		public function ANELibUtils()
		{
			super();
			initExtension();
		}
		
		/**
		 * 【功能】：实例化组件
		 * @author zhanghc 2015-03-23
		 */
		private function initExtension():void
		{
			// TODO Auto Generated method stub
			m_extContext = ExtensionContext.createExtensionContext("com.Dsideal.iosANE.DsMicroClassANE", null);//ID必须要与OBC端的ID一致
			m_extContext.addEventListener(StatusEvent.STATUS, onFinishOpenVideo);
		}
		
		/**
		 * 【功能】：添加事件传递的连接
		 * @author zhanghc 2015-03-31
		 */
		protected function onFinishOpenVideo(event:StatusEvent):void
		{
			// TODO Auto-generated method stub
			dispatchEvent(new ANELibUtilsEvent(event.code, event.level));
		}
		
		/**
		 * 【功能】：调用系统播放器，播放视频
		 * @param path 传入的视频路径
		 * @author zhanghc 2015-03-23
		 */
		public function PlayVideo(path:String):void
		{
			m_extContext.call("PlayVideo", path);//将视频路径传入ios本机视频进行播放
		}
		
		/**
		 * 【功能】：打开系统视频库
		 * @author zhanghc 2015-03-30
		 */
		public function OpenVideoGel():void
		{
			m_extContext.call("OpenVideoGel");
		}
	}
}
