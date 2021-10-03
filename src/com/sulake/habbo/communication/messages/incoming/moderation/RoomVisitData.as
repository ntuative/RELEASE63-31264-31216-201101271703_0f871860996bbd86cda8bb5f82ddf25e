package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class RoomVisitData
   {
       
      
      private var var_1481:Boolean;
      
      private var _roomId:int;
      
      private var var_816:String;
      
      private var var_2264:int;
      
      private var var_2263:int;
      
      public function RoomVisitData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1481 = param1.readBoolean();
         this._roomId = param1.readInteger();
         this.var_816 = param1.readString();
         this.var_2264 = param1.readInteger();
         this.var_2263 = param1.readInteger();
      }
      
      public function get isPublic() : Boolean
      {
         return this.var_1481;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomName() : String
      {
         return this.var_816;
      }
      
      public function get enterHour() : int
      {
         return this.var_2264;
      }
      
      public function get enterMinute() : int
      {
         return this.var_2263;
      }
   }
}
