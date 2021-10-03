package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowNotifyEvent extends WindowEvent
   {
      
      public static const const_1419:String = "WN_CRETAE";
      
      public static const const_1626:String = "WN_CREATED";
      
      public static const const_1157:String = "WN_DESTROY";
      
      public static const const_1122:String = "WN_DESTROYED";
      
      public static const const_990:String = "WN_OPEN";
      
      public static const const_1018:String = "WN_OPENED";
      
      public static const const_1102:String = "WN_CLOSE";
      
      public static const const_1116:String = "WN_CLOSED";
      
      public static const const_1129:String = "WN_FOCUS";
      
      public static const const_1001:String = "WN_FOCUSED";
      
      public static const const_1138:String = "WN_UNFOCUS";
      
      public static const const_1162:String = "WN_UNFOCUSED";
      
      public static const const_1181:String = "WN_ACTIVATE";
      
      public static const const_387:String = "WN_ACTVATED";
      
      public static const const_1147:String = "WN_DEACTIVATE";
      
      public static const const_1039:String = "WN_DEACTIVATED";
      
      public static const const_545:String = "WN_SELECT";
      
      public static const const_396:String = "WN_SELECTED";
      
      public static const const_792:String = "WN_UNSELECT";
      
      public static const const_830:String = "WN_UNSELECTED";
      
      public static const const_951:String = "WN_LOCK";
      
      public static const const_1163:String = "WN_LOCKED";
      
      public static const const_1148:String = "WN_UNLOCK";
      
      public static const const_1081:String = "WN_UNLOCKED";
      
      public static const const_1160:String = "WN_ENABLE";
      
      public static const const_627:String = "WN_ENABLED";
      
      public static const const_1005:String = "WN_DISABLE";
      
      public static const const_665:String = "WN_DISABLED";
      
      public static const const_657:String = "WN_RESIZE";
      
      public static const const_176:String = "WN_RESIZED";
      
      public static const const_1028:String = "WN_RELOCATE";
      
      public static const const_558:String = "WN_RELOCATED";
      
      public static const const_1123:String = "WN_MINIMIZE";
      
      public static const const_1167:String = "WN_MINIMIZED";
      
      public static const const_1177:String = "WN_MAXIMIZE";
      
      public static const const_1131:String = "WN_MAXIMIZED";
      
      public static const const_1050:String = "WN_RESTORE";
      
      public static const const_1166:String = "WN_RESTORED";
      
      public static const const_1698:String = "WN_ARRANGE";
      
      public static const const_1747:String = "WN_ARRANGED";
      
      public static const const_1852:String = "WN_UPDATE";
      
      public static const const_1804:String = "WN_UPDATED";
      
      public static const const_329:String = "WN_CHILD_ADDED";
      
      public static const const_745:String = "WN_CHILD_REMOVED";
      
      public static const const_295:String = "WN_CHILD_RESIZED";
      
      public static const const_306:String = "WN_CHILD_RELOCATED";
      
      public static const const_249:String = "WN_CHILD_ACTIVATED";
      
      public static const const_411:String = "WN_PARENT_ADDED";
      
      public static const const_958:String = "WN_PARENT_REMOVED";
      
      public static const const_464:String = "WN_PARENT_RESIZED";
      
      public static const const_1189:String = "WN_PARENT_RELOCATED";
      
      public static const const_747:String = "WN_PARENT_ACTIVATED";
      
      public static const const_415:String = "WN_STATE_UPDATED";
      
      public static const const_536:String = "WN_STYLE_UPDATED";
      
      public static const const_535:String = "WN_PARAM_UPDATED";
      
      public static const const_1863:String = "";
       
      
      public function WindowNotifyEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false)
      {
         super(param1,param2,param3,false,param4);
      }
      
      override public function clone() : Event
      {
         return new WindowNotifyEvent(type,_window,var_1951,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("WindowNotifyEvent","type","cancelable");
      }
   }
}
