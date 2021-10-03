package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_2693:int;
      
      private var var_2695:int;
      
      private var var_2692:int;
      
      private var var_2694:String;
      
      private var var_1576:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2693 = param1.readInteger();
         this.var_2695 = param1.readInteger();
         this.var_2692 = param1.readInteger();
         this.var_2694 = param1.readString();
         this.var_1576 = param1.readString();
      }
      
      public function get hour() : int
      {
         return this.var_2693;
      }
      
      public function get minute() : int
      {
         return this.var_2695;
      }
      
      public function get chatterId() : int
      {
         return this.var_2692;
      }
      
      public function get chatterName() : String
      {
         return this.var_2694;
      }
      
      public function get msg() : String
      {
         return this.var_1576;
      }
   }
}
