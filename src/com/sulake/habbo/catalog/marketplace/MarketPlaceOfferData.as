package com.sulake.habbo.catalog.marketplace
{
   import flash.display.BitmapData;
   
   public class MarketPlaceOfferData implements IMarketPlaceOfferData
   {
       
      
      private var _offerId:int;
      
      private var _furniId:int;
      
      private var var_2189:int;
      
      private var var_1966:String;
      
      private var var_1742:int;
      
      private var var_2154:int;
      
      private var var_2444:int;
      
      private var var_366:int;
      
      private var var_2188:int = -1;
      
      private var var_1741:int;
      
      private var var_43:BitmapData;
      
      public function MarketPlaceOfferData(param1:int, param2:int, param3:int, param4:String, param5:int, param6:int, param7:int, param8:int = -1)
      {
         super();
         this._offerId = param1;
         this._furniId = param2;
         this.var_2189 = param3;
         this.var_1966 = param4;
         this.var_1742 = param5;
         this.var_366 = param6;
         this.var_2154 = param7;
         this.var_1741 = param8;
      }
      
      public function dispose() : void
      {
         if(this.var_43)
         {
            this.var_43.dispose();
            this.var_43 = null;
         }
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
      
      public function get averagePrice() : int
      {
         return this.var_2154;
      }
      
      public function get image() : BitmapData
      {
         return this.var_43;
      }
      
      public function set image(param1:BitmapData) : void
      {
         if(this.var_43 != null)
         {
            this.var_43.dispose();
         }
         this.var_43 = param1;
      }
      
      public function set imageCallback(param1:int) : void
      {
         this.var_2444 = param1;
      }
      
      public function get imageCallback() : int
      {
         return this.var_2444;
      }
      
      public function get status() : int
      {
         return this.var_366;
      }
      
      public function get timeLeftMinutes() : int
      {
         return this.var_2188;
      }
      
      public function set timeLeftMinutes(param1:int) : void
      {
         this.var_2188 = param1;
      }
      
      public function set price(param1:int) : void
      {
         this.var_1742 = param1;
      }
      
      public function set offerId(param1:int) : void
      {
         this._offerId = param1;
      }
      
      public function get offerCount() : int
      {
         return this.var_1741;
      }
      
      public function set offerCount(param1:int) : void
      {
         this.var_1741 = param1;
      }
   }
}
