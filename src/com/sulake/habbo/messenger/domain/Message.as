package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_764:int = 1;
      
      public static const const_702:int = 2;
      
      public static const const_653:int = 3;
      
      public static const const_1192:int = 4;
      
      public static const const_793:int = 5;
      
      public static const const_1054:int = 6;
       
      
      private var _type:int;
      
      private var var_1111:int;
      
      private var var_2131:String;
      
      private var var_2130:String;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         this._type = param1;
         this.var_1111 = param2;
         this.var_2131 = param3;
         this.var_2130 = param4;
      }
      
      public function get messageText() : String
      {
         return this.var_2131;
      }
      
      public function get time() : String
      {
         return this.var_2130;
      }
      
      public function get senderId() : int
      {
         return this.var_1111;
      }
      
      public function get type() : int
      {
         return this._type;
      }
   }
}
