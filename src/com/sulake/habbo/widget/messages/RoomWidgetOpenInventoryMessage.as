package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_596:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_1188:String = "inventory_effects";
      
      public static const const_1025:String = "inventory_badges";
      
      public static const const_1372:String = "inventory_clothes";
      
      public static const const_1596:String = "inventory_furniture";
       
      
      private var var_2450:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_596);
         this.var_2450 = param1;
      }
      
      public function get inventoryType() : String
      {
         return this.var_2450;
      }
   }
}
