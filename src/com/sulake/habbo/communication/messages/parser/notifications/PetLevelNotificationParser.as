package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_1811:int;
      
      private var var_2679:String;
      
      private var var_1322:int;
      
      private var var_532:String;
      
      private var var_1335:int;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1811 = param1.readInteger();
         this.var_2679 = param1.readString();
         this.var_1322 = param1.readInteger();
         this.var_532 = param1.readString();
         this.var_1335 = param1.readInteger();
         return true;
      }
      
      public function get petId() : int
      {
         return this.var_1811;
      }
      
      public function get petName() : String
      {
         return this.var_2679;
      }
      
      public function get level() : int
      {
         return this.var_1322;
      }
      
      public function get figure() : String
      {
         return this.var_532;
      }
      
      public function get petType() : int
      {
         return this.var_1335;
      }
   }
}
