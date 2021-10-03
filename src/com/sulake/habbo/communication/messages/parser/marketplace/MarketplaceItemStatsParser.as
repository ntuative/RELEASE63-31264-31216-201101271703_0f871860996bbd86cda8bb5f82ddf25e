package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceItemStatsParser implements IMessageParser
   {
       
      
      private var var_2154:int;
      
      private var var_2151:int;
      
      private var var_2152:int;
      
      private var _dayOffsets:Array;
      
      private var var_1888:Array;
      
      private var var_1887:Array;
      
      private var var_2153:int;
      
      private var var_2155:int;
      
      public function MarketplaceItemStatsParser()
      {
         super();
      }
      
      public function get averagePrice() : int
      {
         return this.var_2154;
      }
      
      public function get offerCount() : int
      {
         return this.var_2151;
      }
      
      public function get historyLength() : int
      {
         return this.var_2152;
      }
      
      public function get dayOffsets() : Array
      {
         return this._dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return this.var_1888;
      }
      
      public function get soldAmounts() : Array
      {
         return this.var_1887;
      }
      
      public function get furniTypeId() : int
      {
         return this.var_2153;
      }
      
      public function get furniCategoryId() : int
      {
         return this.var_2155;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2154 = param1.readInteger();
         this.var_2151 = param1.readInteger();
         this.var_2152 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this._dayOffsets = [];
         this.var_1888 = [];
         this.var_1887 = [];
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this._dayOffsets.push(param1.readInteger());
            this.var_1888.push(param1.readInteger());
            this.var_1887.push(param1.readInteger());
            _loc3_++;
         }
         this.var_2155 = param1.readInteger();
         this.var_2153 = param1.readInteger();
         return true;
      }
   }
}
