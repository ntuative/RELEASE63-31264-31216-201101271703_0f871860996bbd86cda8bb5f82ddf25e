package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class GiftWrappingConfigurationParser implements IMessageParser
   {
       
      
      private var var_2438:Boolean;
      
      private var var_2439:int;
      
      private var var_1643:Array;
      
      private var var_697:Array;
      
      private var var_696:Array;
      
      public function GiftWrappingConfigurationParser()
      {
         super();
      }
      
      public function get isWrappingEnabled() : Boolean
      {
         return this.var_2438;
      }
      
      public function get wrappingPrice() : int
      {
         return this.var_2439;
      }
      
      public function get stuffTypes() : Array
      {
         return this.var_1643;
      }
      
      public function get boxTypes() : Array
      {
         return this.var_697;
      }
      
      public function get ribbonTypes() : Array
      {
         return this.var_696;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc2_:int = 0;
         this.var_1643 = [];
         this.var_697 = [];
         this.var_696 = [];
         this.var_2438 = param1.readBoolean();
         this.var_2439 = param1.readInteger();
         var _loc3_:int = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_1643.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_697.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_696.push(param1.readInteger());
            _loc2_++;
         }
         return true;
      }
   }
}
