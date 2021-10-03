package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_646;
         param1["bitmap"] = const_735;
         param1["border"] = const_654;
         param1["border_notify"] = const_1347;
         param1["button"] = const_437;
         param1["button_thick"] = const_655;
         param1["button_icon"] = const_1555;
         param1["button_group_left"] = const_706;
         param1["button_group_center"] = const_715;
         param1["button_group_right"] = const_717;
         param1["canvas"] = const_593;
         param1["checkbox"] = const_687;
         param1["closebutton"] = const_962;
         param1["container"] = const_391;
         param1["container_button"] = const_823;
         param1["display_object_wrapper"] = const_833;
         param1["dropmenu"] = const_485;
         param1["dropmenu_item"] = const_487;
         param1["frame"] = const_398;
         param1["frame_notify"] = const_1570;
         param1["header"] = const_685;
         param1["html"] = const_1060;
         param1["icon"] = const_1079;
         param1["itemgrid"] = const_991;
         param1["itemgrid_horizontal"] = const_449;
         param1["itemgrid_vertical"] = const_748;
         param1["itemlist"] = const_1019;
         param1["itemlist_horizontal"] = const_361;
         param1["itemlist_vertical"] = const_358;
         param1["label"] = WINDOW_TYPE_LABEL;
         param1["maximizebox"] = const_1505;
         param1["menu"] = const_1552;
         param1["menu_item"] = const_1373;
         param1["submenu"] = const_1145;
         param1["minimizebox"] = const_1391;
         param1["notify"] = const_1628;
         param1["null"] = const_689;
         param1["password"] = const_736;
         param1["radiobutton"] = const_848;
         param1["region"] = const_808;
         param1["restorebox"] = const_1405;
         param1["scaler"] = const_831;
         param1["scaler_horizontal"] = const_1546;
         param1["scaler_vertical"] = const_1619;
         param1["scrollbar_horizontal"] = const_441;
         param1["scrollbar_vertical"] = const_773;
         param1["scrollbar_slider_button_up"] = const_961;
         param1["scrollbar_slider_button_down"] = const_1095;
         param1["scrollbar_slider_button_left"] = const_1161;
         param1["scrollbar_slider_button_right"] = const_1064;
         param1["scrollbar_slider_bar_horizontal"] = const_1008;
         param1["scrollbar_slider_bar_vertical"] = const_1072;
         param1["scrollbar_slider_track_horizontal"] = const_1006;
         param1["scrollbar_slider_track_vertical"] = const_1070;
         param1["scrollable_itemlist"] = const_1522;
         param1["scrollable_itemlist_vertical"] = const_542;
         param1["scrollable_itemlist_horizontal"] = const_1118;
         param1["selector"] = const_809;
         param1["selector_list"] = const_674;
         param1["submenu"] = const_1145;
         param1["tab_button"] = const_447;
         param1["tab_container_button"] = const_1074;
         param1["tab_context"] = const_349;
         param1["tab_content"] = const_1104;
         param1["tab_selector"] = const_871;
         param1["text"] = const_565;
         param1["input"] = const_874;
         param1["toolbar"] = const_1340;
         param1["tooltip"] = const_338;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
