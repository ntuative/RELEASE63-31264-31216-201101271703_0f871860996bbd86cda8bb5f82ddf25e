package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageOfferData;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageProductData;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer implements IPurchasableOffer
   {
      
      public static const const_1607:String = "pricing_model_unknown";
      
      public static const const_477:String = "pricing_model_single";
      
      public static const const_489:String = "pricing_model_multi";
      
      public static const const_472:String = "pricing_model_bundle";
      
      public static const const_1456:String = "price_type_none";
      
      public static const const_610:String = "price_type_credits";
      
      public static const const_1135:String = "price_type_activitypoints";
      
      public static const const_1158:String = "price_type_credits_and_activitypoints";
       
      
      private var var_720:String;
      
      private var var_1103:String;
      
      private var _offerId:int;
      
      private var var_1710:String;
      
      private var var_1102:int;
      
      private var var_1104:int;
      
      private var var_1657:int;
      
      private var var_419:ICatalogPage;
      
      private var var_719:IProductContainer;
      
      private var var_2374:int;
      
      public function Offer(param1:CatalogPageMessageOfferData, param2:ICatalogPage)
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         super();
         this._offerId = param1.offerId;
         this.var_1710 = param1.localizationId;
         this.var_1102 = param1.priceInCredits;
         this.var_1104 = param1.priceInActivityPoints;
         this.var_1657 = param1.activityPointType;
         this.var_419 = param2;
         var _loc3_:Array = new Array();
         for each(_loc4_ in param1.products)
         {
            _loc5_ = param2.viewer.catalog.getProductData(param1.localizationId);
            _loc6_ = param2.viewer.catalog.getFurnitureData(_loc4_.furniClassId,_loc4_.productType);
            _loc7_ = new Product(_loc4_,_loc5_,_loc6_);
            _loc3_.push(_loc7_);
         }
         this.analyzePricingModel(_loc3_);
         this.analyzePriceType();
         this.createProductContainer(_loc3_);
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_419;
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get localizationId() : String
      {
         return this.var_1710;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1102;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1104;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1657;
      }
      
      public function get productContainer() : IProductContainer
      {
         return this.var_719;
      }
      
      public function get pricingModel() : String
      {
         return this.var_720;
      }
      
      public function get priceType() : String
      {
         return this.var_1103;
      }
      
      public function get previewCallbackId() : int
      {
         return this.var_2374;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         this.var_2374 = param1;
      }
      
      public function dispose() : void
      {
         this._offerId = 0;
         this.var_1710 = "";
         this.var_1102 = 0;
         this.var_1104 = 0;
         this.var_1657 = 0;
         this.var_419 = null;
         if(this.var_719 != null)
         {
            this.var_719.dispose();
            this.var_719 = null;
         }
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(this.var_720)
         {
            case const_477:
               this.var_719 = new SingleProductContainer(this,param1);
               break;
            case const_489:
               this.var_719 = new MultiProductContainer(this,param1);
               break;
            case const_472:
               this.var_719 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + this.var_720);
         }
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               this.var_720 = const_477;
            }
            else
            {
               this.var_720 = const_489;
            }
         }
         else if(param1.length > 1)
         {
            this.var_720 = const_472;
         }
         else
         {
            this.var_720 = const_1607;
         }
      }
      
      private function analyzePriceType() : void
      {
         if(this.var_1102 > 0 && this.var_1104 > 0)
         {
            this.var_1103 = const_1158;
         }
         else if(this.var_1102 > 0)
         {
            this.var_1103 = const_610;
         }
         else if(this.var_1104 > 0)
         {
            this.var_1103 = const_1135;
         }
         else
         {
            this.var_1103 = const_1456;
         }
      }
   }
}
