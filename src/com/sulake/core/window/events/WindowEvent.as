package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowEvent extends Event
   {
      
      public static const const_1486:String = "WE_CREATE";
      
      public static const const_1358:String = "WE_CREATED";
      
      public static const const_1364:String = "WE_DESTROY";
      
      public static const const_285:String = "WE_DESTROYED";
      
      public static const const_1371:String = "WE_OPEN";
      
      public static const const_1577:String = "WE_OPENED";
      
      public static const const_1538:String = "WE_CLOSE";
      
      public static const const_1593:String = "WE_CLOSED";
      
      public static const const_1389:String = "WE_FOCUS";
      
      public static const const_188:String = "WE_FOCUSED";
      
      public static const const_1410:String = "WE_UNFOCUS";
      
      public static const const_1565:String = "WE_UNFOCUSED";
      
      public static const const_1586:String = "WE_ACTIVATE";
      
      public static const const_1621:String = "WE_ACTIVATED";
      
      public static const const_1612:String = "WE_DEACTIVATE";
      
      public static const const_851:String = "WE_DEACTIVATED";
      
      public static const const_563:String = "WE_SELECT";
      
      public static const const_59:String = "WE_SELECTED";
      
      public static const const_772:String = "WE_UNSELECT";
      
      public static const const_807:String = "WE_UNSELECTED";
      
      public static const const_1875:String = "WE_ATTACH";
      
      public static const const_1889:String = "WE_ATTACHED";
      
      public static const const_1918:String = "WE_DETACH";
      
      public static const const_1923:String = "WE_DETACHED";
      
      public static const const_1418:String = "WE_LOCK";
      
      public static const const_1609:String = "WE_LOCKED";
      
      public static const const_1494:String = "WE_UNLOCK";
      
      public static const const_1461:String = "WE_UNLOCKED";
      
      public static const const_727:String = "WE_ENABLE";
      
      public static const const_318:String = "WE_ENABLED";
      
      public static const const_607:String = "WE_DISABLE";
      
      public static const const_252:String = "WE_DISABLED";
      
      public static const const_1399:String = "WE_RELOCATE";
      
      public static const const_339:String = "WE_RELOCATED";
      
      public static const const_1356:String = "WE_RESIZE";
      
      public static const const_45:String = "WE_RESIZED";
      
      public static const const_1469:String = "WE_MINIMIZE";
      
      public static const const_1526:String = "WE_MINIMIZED";
      
      public static const const_1484:String = "WE_MAXIMIZE";
      
      public static const const_1478:String = "WE_MAXIMIZED";
      
      public static const const_1500:String = "WE_RESTORE";
      
      public static const const_1407:String = "WE_RESTORED";
      
      public static const const_1713:String = "WE_ARRANGE";
      
      public static const const_1916:String = "WE_ARRANGED";
      
      public static const const_100:String = "WE_UPDATE";
      
      public static const const_1834:String = "WE_UPDATED";
      
      public static const const_1738:String = "WE_CHILD_RELOCATE";
      
      public static const const_480:String = "WE_CHILD_RELOCATED";
      
      public static const const_1878:String = "WE_CHILD_RESIZE";
      
      public static const const_274:String = "WE_CHILD_RESIZED";
      
      public static const const_1844:String = "WE_CHILD_REMOVE";
      
      public static const const_544:String = "WE_CHILD_REMOVED";
      
      public static const const_1870:String = "WE_PARENT_RELOCATE";
      
      public static const const_1705:String = "WE_PARENT_RELOCATED";
      
      public static const const_1706:String = "WE_PARENT_RESIZE";
      
      public static const const_1448:String = "WE_PARENT_RESIZED";
      
      public static const const_178:String = "WE_OK";
      
      public static const const_860:String = "WE_CANCEL";
      
      public static const const_112:String = "WE_CHANGE";
      
      public static const WINDOW_EVENT_MESSAGE:String = "WE_MESSAGE";
      
      public static const const_530:String = "WE_SCROLL";
      
      public static const const_159:String = "";
       
      
      protected var _type:String = "";
      
      protected var _window:IWindow;
      
      protected var var_1951:IWindow;
      
      protected var var_1952:Boolean;
      
      public function WindowEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false, param5:Boolean = false)
      {
         this._type = param1;
         this._window = param2;
         this.var_1951 = param3;
         this.var_1952 = false;
         super(param1,param4,param5);
      }
      
      public function set type(param1:String) : void
      {
         this._type = param1;
      }
      
      override public function get type() : String
      {
         return this._type;
      }
      
      public function get window() : IWindow
      {
         return this._window;
      }
      
      public function get related() : IWindow
      {
         return this.var_1951;
      }
      
      override public function clone() : Event
      {
         return new WindowEvent(this._type,this.window,this.related,bubbles,cancelable);
      }
      
      public function preventWindowOperation() : void
      {
         if(cancelable)
         {
            this.var_1952 = true;
            stopImmediatePropagation();
            return;
         }
         throw new Error("Attempted to prevent window operation that is not canceable!");
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return this.var_1952;
      }
      
      override public function toString() : String
      {
         return formatToString("WindowEvent","type","bubbles","cancelable","window");
      }
   }
}
