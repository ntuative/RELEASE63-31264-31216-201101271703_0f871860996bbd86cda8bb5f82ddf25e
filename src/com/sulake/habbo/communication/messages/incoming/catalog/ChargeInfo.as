package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChargeInfo
   {
       
      
      private var var_2620:int;
      
      private var var_2618:int;
      
      private var var_1102:int;
      
      private var var_1104:int;
      
      private var var_1657:int;
      
      private var var_2619:int;
      
      public function ChargeInfo(param1:IMessageDataWrapper)
      {
         super();
         this.var_2620 = param1.readInteger();
         this.var_2618 = param1.readInteger();
         this.var_1102 = param1.readInteger();
         this.var_1104 = param1.readInteger();
         this.var_1657 = param1.readInteger();
         this.var_2619 = param1.readInteger();
      }
      
      public function get stuffId() : int
      {
         return this.var_2620;
      }
      
      public function get charges() : int
      {
         return this.var_2618;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1102;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1104;
      }
      
      public function get chargePatchSize() : int
      {
         return this.var_2619;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1657;
      }
   }
}
