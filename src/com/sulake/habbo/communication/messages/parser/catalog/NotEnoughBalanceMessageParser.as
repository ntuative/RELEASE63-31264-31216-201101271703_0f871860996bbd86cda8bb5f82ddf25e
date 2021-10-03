package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class NotEnoughBalanceMessageParser implements IMessageParser
   {
       
      
      private var var_1893:int = 0;
      
      private var var_1892:int = 0;
      
      private var var_1657:int = 0;
      
      public function NotEnoughBalanceMessageParser()
      {
         super();
      }
      
      public function get notEnoughCredits() : int
      {
         return this.var_1893;
      }
      
      public function get notEnoughActivityPoints() : int
      {
         return this.var_1892;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1657;
      }
      
      public function flush() : Boolean
      {
         this.var_1893 = 0;
         this.var_1892 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1893 = param1.readInteger();
         this.var_1892 = param1.readInteger();
         this.var_1657 = param1.readInteger();
         return true;
      }
   }
}
