package com.sulake.habbo.communication.messages.incoming.marketplace
{
   public class MarketPlaceOffer
   {
       
      
      private var _offerId:int;
      
      private var _furniId:int;
      
      private var var_2189:int;
      
      private var var_1966:String;
      
      private var var_1742:int;
      
      private var var_366:int;
      
      private var var_2188:int = -1;
      
      private var var_2154:int;
      
      private var var_1741:int;
      
      public function MarketPlaceOffer(param1:int, param2:int, param3:int, param4:String, param5:int, param6:int, param7:int, param8:int, param9:int = -1)
      {
         super();
         this._offerId = param1;
         this._furniId = param2;
         this.var_2189 = param3;
         this.var_1966 = param4;
         this.var_1742 = param5;
         this.var_366 = param6;
         this.var_2188 = param7;
         this.var_2154 = param8;
         this.var_1741 = param9;
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get furniId() : int
      {
         return this._furniId;
      }
      
      public function get furniType() : int
      {
         return this.var_2189;
      }
      
      public function get stuffData() : String
      {
         return this.var_1966;
      }
      
      public function get price() : int
      {
         return this.var_1742;
      }
      
      public function get status() : int
      {
         return this.var_366;
      }
      
      public function get timeLeftMinutes() : int
      {
         return this.var_2188;
      }
      
      public function get averagePrice() : int
      {
         return this.var_2154;
      }
      
      public function get offerCount() : int
      {
         return this.var_1741;
      }
   }
}
