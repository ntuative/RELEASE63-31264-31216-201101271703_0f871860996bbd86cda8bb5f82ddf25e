package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionChatEvent extends RoomSessionEvent
   {
      
      public static const const_182:String = "RSCE_CHAT_EVENT";
      
      public static const const_486:String = "RSCE_FLOOD_EVENT";
      
      public static const const_138:int = 0;
      
      public static const const_123:int = 1;
      
      public static const const_120:int = 2;
      
      public static const const_316:int = 3;
      
      public static const const_308:int = 4;
       
      
      private var _userId:int = 0;
      
      private var _text:String = "";
      
      private var var_1357:int = 0;
      
      private var var_1432:Array;
      
      public function RoomSessionChatEvent(param1:String, param2:IRoomSession, param3:int, param4:String, param5:int = 0, param6:Array = null, param7:Boolean = false, param8:Boolean = false)
      {
         super(param1,param2,param7,param8);
         this._userId = param3;
         this._text = param4;
         this.var_1357 = param5;
         this.var_1432 = param6;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
      
      public function get text() : String
      {
         return this._text;
      }
      
      public function get chatType() : int
      {
         return this.var_1357;
      }
      
      public function get links() : Array
      {
         return this.var_1432;
      }
   }
}
