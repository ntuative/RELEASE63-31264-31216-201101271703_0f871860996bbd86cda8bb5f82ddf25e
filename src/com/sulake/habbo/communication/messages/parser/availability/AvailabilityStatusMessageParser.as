package com.sulake.habbo.communication.messages.parser.availability
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class AvailabilityStatusMessageParser implements IMessageParser
   {
       
      
      private var var_1255:Boolean;
      
      private var var_1700:Boolean;
      
      public function AvailabilityStatusMessageParser()
      {
         super();
      }
      
      public function get isOpen() : Boolean
      {
         return this.var_1255;
      }
      
      public function get onShutDown() : Boolean
      {
         return this.var_1700;
      }
      
      public function flush() : Boolean
      {
         this.var_1255 = false;
         this.var_1700 = false;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1255 = param1.readInteger() > 0;
         this.var_1700 = param1.readInteger() > 0;
         return true;
      }
   }
}
