package com.sulake.habbo.widget.messages
{
   public class RoomWidgetGetBadgeImageMessage extends RoomWidgetMessage
   {
      
      public static const const_737:String = "RWGOI_MESSAGE_GET_BADGE_IMAGE";
       
      
      private var var_284:String = "";
      
      public function RoomWidgetGetBadgeImageMessage(param1:String)
      {
         super(const_737);
         this.var_284 = param1;
      }
      
      public function get badgeId() : String
      {
         return this.var_284;
      }
   }
}
