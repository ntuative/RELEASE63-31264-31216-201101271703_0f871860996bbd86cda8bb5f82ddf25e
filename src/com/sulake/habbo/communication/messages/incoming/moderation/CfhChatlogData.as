package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_1691:int;
      
      private var var_2321:int;
      
      private var var_1457:int;
      
      private var var_2322:int;
      
      private var var_105:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1691 = param1.readInteger();
         this.var_2321 = param1.readInteger();
         this.var_1457 = param1.readInteger();
         this.var_2322 = param1.readInteger();
         this.var_105 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + this.var_1691);
      }
      
      public function get callId() : int
      {
         return this.var_1691;
      }
      
      public function get callerUserId() : int
      {
         return this.var_2321;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1457;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_2322;
      }
      
      public function get room() : RoomChatlogData
      {
         return this.var_105;
      }
   }
}
