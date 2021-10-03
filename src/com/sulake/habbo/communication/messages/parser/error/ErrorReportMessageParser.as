package com.sulake.habbo.communication.messages.parser.error
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ErrorReportMessageParser implements IMessageParser
   {
       
      
      private var var_1502:int;
      
      private var var_1911:int;
      
      private var var_1912:String;
      
      public function ErrorReportMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1911 = param1.readInteger();
         this.var_1502 = param1.readInteger();
         this.var_1912 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         this.var_1502 = 0;
         this.var_1911 = 0;
         this.var_1912 = null;
         return true;
      }
      
      public function get errorCode() : int
      {
         return this.var_1502;
      }
      
      public function get messageId() : int
      {
         return this.var_1911;
      }
      
      public function get timestamp() : String
      {
         return this.var_1912;
      }
   }
}
