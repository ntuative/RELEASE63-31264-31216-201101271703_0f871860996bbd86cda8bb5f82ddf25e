package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubOfferData
   {
       
      
      private var _offerId:int;
      
      private var var_1535:String;
      
      private var var_1742:int;
      
      private var var_2652:Boolean;
      
      private var var_2653:Boolean;
      
      private var var_2647:int;
      
      private var var_2646:int;
      
      private var var_2651:int;
      
      private var var_2649:int;
      
      private var var_2650:int;
      
      public function ClubOfferData(param1:IMessageDataWrapper)
      {
         super();
         this._offerId = param1.readInteger();
         this.var_1535 = param1.readString();
         this.var_1742 = param1.readInteger();
         this.var_2652 = param1.readBoolean();
         this.var_2653 = param1.readBoolean();
         this.var_2647 = param1.readInteger();
         this.var_2646 = param1.readInteger();
         this.var_2651 = param1.readInteger();
         this.var_2649 = param1.readInteger();
         this.var_2650 = param1.readInteger();
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
   }
}
