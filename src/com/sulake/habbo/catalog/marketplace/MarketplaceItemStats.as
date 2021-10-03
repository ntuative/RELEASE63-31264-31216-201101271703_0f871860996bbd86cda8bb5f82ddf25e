package com.sulake.habbo.catalog.marketplace
{
   public class MarketplaceItemStats
   {
       
      
      private var var_2154:int;
      
      private var var_2151:int;
      
      private var var_2152:int;
      
      private var _dayOffsets:Array;
      
      private var var_1888:Array;
      
      private var var_1887:Array;
      
      private var var_2153:int;
      
      private var var_2155:int;
      
      public function MarketplaceItemStats()
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
      
      public function set averagePrice(param1:int) : void
      {
         this.var_2154 = param1;
      }
      
      public function set offerCount(param1:int) : void
      {
         this.var_2151 = param1;
      }
      
      public function set historyLength(param1:int) : void
      {
         this.var_2152 = param1;
      }
      
      public function set dayOffsets(param1:Array) : void
      {
         this._dayOffsets = param1.slice();
      }
      
      public function set averagePrices(param1:Array) : void
      {
         this.var_1888 = param1.slice();
      }
      
      public function set soldAmounts(param1:Array) : void
      {
         this.var_1887 = param1.slice();
      }
      
      public function set furniTypeId(param1:int) : void
      {
         this.var_2153 = param1;
      }
      
      public function set furniCategoryId(param1:int) : void
      {
         this.var_2155 = param1;
      }
   }
}
