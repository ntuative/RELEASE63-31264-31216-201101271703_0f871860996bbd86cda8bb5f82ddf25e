package com.sulake.habbo.widget.messages
{
   public class RoomWidgetConversionPointMessage extends RoomWidgetMessage
   {
      
      public static const const_658:String = "RWCPM_CONVERSION_POINT";
       
      
      private var _category:String;
      
      private var var_2258:String;
      
      private var _action:String;
      
      private var var_1314:String;
      
      public function RoomWidgetConversionPointMessage(param1:String, param2:String, param3:String, param4:String, param5:String = "")
      {
         super(param1);
         this._category = param2;
         this.var_2258 = param3;
         this._action = param4;
         this.var_1314 = param5;
         if(!this.var_1314)
         {
            this.var_1314 = "";
         }
      }
      
      public function get category() : String
      {
         return this._category;
      }
      
      public function get pointType() : String
      {
         return this.var_2258;
      }
      
      public function get action() : String
      {
         return this._action;
      }
      
      public function get extra() : String
      {
         return this.var_1314;
      }
   }
}
