package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["null"] = const_168;
         param1["bound_to_parent_rect"] = const_95;
         param1["child_window"] = const_1046;
         param1["embedded_controller"] = const_1184;
         param1["resize_to_accommodate_children"] = const_69;
         param1["input_event_processor"] = const_28;
         param1["internal_event_handling"] = const_707;
         param1["mouse_dragging_target"] = const_269;
         param1["mouse_dragging_trigger"] = const_354;
         param1["mouse_scaling_target"] = const_279;
         param1["mouse_scaling_trigger"] = const_543;
         param1["horizontal_mouse_scaling_trigger"] = const_250;
         param1["vertical_mouse_scaling_trigger"] = const_258;
         param1["observe_parent_input_events"] = const_1034;
         param1["optimize_region_to_layout_size"] = const_507;
         param1["parent_window"] = const_1037;
         param1["relative_horizontal_scale_center"] = const_184;
         param1["relative_horizontal_scale_fixed"] = const_137;
         param1["relative_horizontal_scale_move"] = const_367;
         param1["relative_horizontal_scale_strech"] = WINDOW_PARAM_RELATIVE_HORIZONTAL_SCALE_STRECH;
         param1["relative_scale_center"] = const_1151;
         param1["relative_scale_fixed"] = const_765;
         param1["relative_scale_move"] = const_1178;
         param1["relative_scale_strech"] = const_1083;
         param1["relative_vertical_scale_center"] = const_193;
         param1["relative_vertical_scale_fixed"] = const_147;
         param1["relative_vertical_scale_move"] = const_344;
         param1["relative_vertical_scale_strech"] = const_360;
         param1["on_resize_align_left"] = const_630;
         param1["on_resize_align_right"] = const_442;
         param1["on_resize_align_center"] = const_434;
         param1["on_resize_align_top"] = const_811;
         param1["on_resize_align_bottom"] = const_429;
         param1["on_resize_align_middle"] = const_414;
         param1["on_accommodate_align_left"] = const_989;
         param1["on_accommodate_align_right"] = const_420;
         param1["on_accommodate_align_center"] = const_787;
         param1["on_accommodate_align_top"] = const_1076;
         param1["on_accommodate_align_bottom"] = WINDOW_PARAM_ON_ACCOMMODATE_ALIGN_BOTTOM;
         param1["on_accommodate_align_middle"] = const_839;
         param1["route_input_events_to_parent"] = const_517;
         param1["use_parent_graphic_context"] = const_32;
         param1["draggable_with_mouse"] = const_1044;
         param1["scalable_with_mouse"] = const_1011;
         param1["reflect_horizontal_resize_to_parent"] = const_537;
         param1["reflect_vertical_resize_to_parent"] = const_456;
         param1["reflect_resize_to_parent"] = const_311;
         param1["force_clipping"] = WINDOW_PARAM_FORCE_CLIPPING;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
