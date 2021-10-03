package com.sulake.core.window.components
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.WindowContext;
   import com.sulake.core.window.WindowController;
   import com.sulake.core.window.enum.MouseCursorType;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.enum.WindowState;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.core.window.utils.PropertyDefaults;
   import com.sulake.core.window.utils.PropertyStruct;
   import flash.events.Event;
   import flash.geom.Rectangle;
   
   public class InteractiveController extends WindowController implements IInteractiveWindow
   {
      
      protected static var var_268:Array;
       
      
      protected var var_2706:uint = 0;
      
      protected var var_426:Array;
      
      protected var var_1470:uint = 500;
      
      protected var var_1219:String = "";
      
      public function InteractiveController(param1:String, param2:uint, param3:uint, param4:uint, param5:WindowContext, param6:Rectangle, param7:IWindow, param8:Function, param9:Array = null, param10:Array = null, param11:uint = 0)
      {
         param4 |= 0;
         this.var_426 = new Array();
         this.var_426[0] = MouseCursorType.const_395;
         this.var_426[1] = MouseCursorType.const_31;
         this.var_426[2] = MouseCursorType.const_395;
         this.var_426[3] = MouseCursorType.const_395;
         this.var_426[4] = MouseCursorType.const_31;
         this.var_426[5] = MouseCursorType.const_31;
         this.var_426[6] = MouseCursorType.const_395;
         if(var_268 == null)
         {
            var_268 = new Array();
            var_268[0] = WindowState.const_103;
            var_268[1] = WindowState.const_78;
            var_268[2] = WindowState.const_88;
            var_268[3] = WindowState.const_67;
            var_268[4] = WindowState.const_49;
            var_268[5] = WindowState.const_87;
            var_268[6] = WindowState.const_75;
         }
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      public static function processInteractiveWindowEvents(param1:IInteractiveWindow, param2:Event) : void
      {
         if(param1.toolTipCaption != PropertyDefaults.const_473)
         {
            if(param2.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER)
            {
               param1.context.getWindowServices().getToolTipAgentService().begin(param1);
            }
            else if(param2.type != WindowMouseEvent.const_177)
            {
               if(param2.type == WindowMouseEvent.const_25)
               {
                  param1.context.getWindowServices().getToolTipAgentService().end(param1);
               }
            }
         }
      }
      
      public static function readInteractiveWindowProperties(param1:IInteractiveWindow, param2:Array) : void
      {
         var _loc3_:* = null;
         for each(_loc3_ in param2)
         {
            switch(_loc3_.key)
            {
               case PropertyDefaults.const_754:
                  if(_loc3_.value != param1.toolTipCaption)
                  {
                     param1.toolTipCaption = _loc3_.value as String;
                  }
                  break;
               case PropertyDefaults.const_814:
                  if(_loc3_.value != param1.toolTipDelay)
                  {
                     param1.toolTipDelay = _loc3_.value as uint;
                  }
                  break;
               case "mouse_cursor_hovering":
                  param1.setMouseCursorByState(WindowState.const_88,_loc3_.value as uint);
                  break;
               case "mouse_cursor_pressed":
                  param1.setMouseCursorByState(WindowState.const_87,_loc3_.value as uint);
                  break;
               case "mouse_cursor_disabled":
                  param1.setMouseCursorByState(WindowState.const_75,_loc3_.value as uint);
                  break;
            }
         }
      }
      
      public static function writeInteractiveWindowProperties(param1:IInteractiveWindow, param2:Array) : Array
      {
         if(param1.toolTipCaption != PropertyDefaults.const_473)
         {
            param2.push(new PropertyStruct(PropertyDefaults.const_754,param1.toolTipCaption,PropertyStruct.const_52,true));
         }
         else
         {
            param2.push(PropertyDefaults.const_1562);
         }
         if(param1.toolTipDelay != PropertyDefaults.TOOL_TIP_DELAY_VALUE)
         {
            param2.push(new PropertyStruct(PropertyDefaults.const_814,param1.toolTipDelay,PropertyStruct.const_262,true));
         }
         else
         {
            param2.push(PropertyDefaults.const_1349);
         }
         return param2;
      }
      
      public function set mouseCursorType(param1:uint) : void
      {
         this.var_2706 = param1;
      }
      
      public function get mouseCursorType() : uint
      {
         return this.var_2706;
      }
      
      public function set toolTipCaption(param1:String) : void
      {
         this.var_1219 = param1 == null ? "null" : param1;
      }
      
      public function get toolTipCaption() : String
      {
         return this.var_1219;
      }
      
      public function set toolTipDelay(param1:uint) : void
      {
         this.var_1470 = param1;
      }
      
      public function get toolTipDelay() : uint
      {
         return this.var_1470;
      }
      
      override public function update(param1:WindowController, param2:Event) : Boolean
      {
         if(param1 == this)
         {
            processInteractiveWindowEvents(this,param2);
         }
         return super.update(param1,param2);
      }
      
      public function showToolTip(param1:IToolTipWindow) : void
      {
      }
      
      public function hideToolTip() : void
      {
      }
      
      public function setMouseCursorByState(param1:uint, param2:uint) : void
      {
         var _loc3_:int = var_268.indexOf(param1);
         if(_loc3_ > -1)
         {
            this.var_426[_loc3_] = param2;
         }
      }
      
      public function getMouseCursorByState(param1:uint) : uint
      {
         var _loc2_:int = 0;
         while(_loc2_-- > 0)
         {
            if((param1 & 0) > 0)
            {
               return this.var_426[_loc2_];
            }
         }
         return MouseCursorType.const_31;
      }
      
      override public function get properties() : Array
      {
         return writeInteractiveWindowProperties(this,super.properties);
      }
      
      override public function set properties(param1:Array) : void
      {
         readInteractiveWindowProperties(this,param1);
         super.properties = param1;
      }
   }
}
