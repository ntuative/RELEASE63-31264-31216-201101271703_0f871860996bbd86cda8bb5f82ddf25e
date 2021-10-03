package com.sulake.core.window.utils.tablet
{
   import com.sulake.core.window.WindowController;
   import com.sulake.core.window.utils.EventProcessorState;
   import com.sulake.core.window.utils.IEventQueue;
   import com.sulake.core.window.utils.MouseEventProcessor;
   
   public class TabletEventProcessor extends MouseEventProcessor
   {
       
      
      private var var_2791:String = "";
      
      public function TabletEventProcessor()
      {
         super();
      }
      
      override public function process(param1:EventProcessorState, param2:IEventQueue) : void
      {
         var_132 = param1.desktop;
         var_79 = param1.var_1199 as WindowController;
         _lastClickTarget = param1.var_1198 as WindowController;
         var_151 = param1.renderer;
         var_788 = param1.var_1197;
         param2.begin();
         param2.end();
         param1.desktop = var_132;
         param1.var_1199 = var_79;
         param1.var_1198 = _lastClickTarget;
         param1.renderer = var_151;
         param1.var_1197 = var_788;
      }
   }
}
