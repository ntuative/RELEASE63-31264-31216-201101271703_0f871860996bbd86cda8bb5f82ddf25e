package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenCatalogMessage extends RoomWidgetMessage
   {
      
      public static const const_635:String = "RWGOI_MESSAGE_OPEN_CATALOG";
      
      public static const const_987:String = "RWOCM_CLUB_MAIN";
       
      
      private var var_2591:String = "";
      
      public function RoomWidgetOpenCatalogMessage(param1:String)
      {
         super(const_635);
         this.var_2591 = param1;
      }
      
      public function get pageKey() : String
      {
         return this.var_2591;
      }
   }
}
