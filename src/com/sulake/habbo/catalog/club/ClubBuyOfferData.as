package com.sulake.habbo.catalog.club
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.catalog.purse.Purse;
   import com.sulake.habbo.catalog.viewer.ICatalogPage;
   import com.sulake.habbo.catalog.viewer.IProductContainer;
   import com.sulake.habbo.catalog.viewer.Offer;
   
   public class ClubBuyOfferData implements IPurchasableOffer
   {
       
      
      private var _offerId:int;
      
      private var var_1535:String;
      
      private var var_1742:int;
      
      private var var_2652:Boolean;
      
      private var var_2653:Boolean;
      
      private var var_2647:int;
      
      private var var_2646:int;
      
      private var var_419:ICatalogPage;
      
      private var var_2651:int;
      
      private var var_2649:int;
      
      private var var_2650:int;
      
      private var var_2648:Boolean = false;
      
      public function ClubBuyOfferData(param1:int, param2:String, param3:int, param4:Boolean, param5:Boolean, param6:int, param7:int, param8:int, param9:int, param10:int)
      {
         super();
         this._offerId = param1;
         this.var_1535 = param2;
         this.var_1742 = param3;
         this.var_2652 = param4;
         this.var_2653 = param5;
         this.var_2647 = param6;
         this.var_2646 = param7;
         this.var_2651 = param8;
         this.var_2649 = param9;
         this.var_2650 = param10;
      }
      
      public function dispose() : void
      {
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get productCode() : String
      {
         return this.var_1535;
      }
      
      public function get price() : int
      {
         return this.var_1742;
      }
      
      public function get upgrade() : Boolean
      {
         return this.var_2652;
      }
      
      public function get vip() : Boolean
      {
         return this.var_2653;
      }
      
      public function get periods() : int
      {
         return this.var_2647;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return this.var_2646;
      }
      
      public function get year() : int
      {
         return this.var_2651;
      }
      
      public function get month() : int
      {
         return this.var_2649;
      }
      
      public function get day() : int
      {
         return this.var_2650;
      }
      
      public function get priceInActivityPoints() : int
      {
         return 0;
      }
      
      public function get activityPointType() : int
      {
         return Purse.const_175;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1742;
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_419;
      }
      
      public function get priceType() : String
      {
         return Offer.const_610;
      }
      
      public function get productContainer() : IProductContainer
      {
         return null;
      }
      
      public function get localizationId() : String
      {
         return this.var_1535;
      }
      
      public function set page(param1:ICatalogPage) : void
      {
         this.var_419 = param1;
      }
      
      public function get upgradeHcPeriodToVip() : Boolean
      {
         return this.var_2648;
      }
      
      public function set upgradeHcPeriodToVip(param1:Boolean) : void
      {
         this.var_2648 = param1;
      }
   }
}
