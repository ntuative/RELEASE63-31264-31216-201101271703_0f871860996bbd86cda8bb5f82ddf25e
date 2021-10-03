package com.sulake.room.events
{
   public class RoomObjectMouseEvent extends RoomObjectEvent
   {
      
      public static const const_253:String = "ROE_MOUSE_CLICK";
      
      public static const const_1736:String = "ROE_MOUSE_ENTER";
      
      public static const const_562:String = "ROE_MOUSE_MOVE";
      
      public static const const_1892:String = "ROE_MOUSE_LEAVE";
      
      public static const const_1883:String = "ROE_MOUSE_DOUBLE_CLICK";
      
      public static const const_469:String = "ROE_MOUSE_DOWN";
       
      
      private var var_1550:String = "";
      
      private var var_2080:Boolean;
      
      private var var_2081:Boolean;
      
      private var var_2082:Boolean;
      
      private var var_2079:Boolean;
      
      public function RoomObjectMouseEvent(param1:String, param2:String, param3:int, param4:String, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false)
      {
         super(param1,param3,param4,param9,param10);
         this.var_1550 = param2;
         this.var_2080 = param5;
         this.var_2081 = param6;
         this.var_2082 = param7;
         this.var_2079 = param8;
      }
      
      public function get eventId() : String
      {
         return this.var_1550;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2080;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2081;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.var_2082;
      }
      
      public function get buttonDown() : Boolean
      {
         return this.var_2079;
      }
   }
}
