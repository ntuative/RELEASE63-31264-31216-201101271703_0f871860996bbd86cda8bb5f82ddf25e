package com.sulake.habbo.widget.events
{
   public class RoomWidgetTeaserDataUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_521:String = "RWTDUE_TEASER_DATA";
      
      public static const const_622:String = "RWTDUE_GIFT_DATA";
      
      public static const const_815:String = "RWTDUE_GIFT_RECEIVED";
       
      
      private var var_307:int;
      
      private var _data:String;
      
      private var var_366:int;
      
      private var var_142:String;
      
      private var var_1983:String;
      
      private var var_1984:Boolean;
      
      private var var_2661:String;
      
      public function RoomWidgetTeaserDataUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      public function get objectId() : int
      {
         return this.var_307;
      }
      
      public function get data() : String
      {
         return this._data;
      }
      
      public function get status() : int
      {
         return this.var_366;
      }
      
      public function get firstClickUserName() : String
      {
         return this.var_1983;
      }
      
      public function get giftWasReceived() : Boolean
      {
         return this.var_1984;
      }
      
      public function get ownRealName() : String
      {
         return this.var_2661;
      }
      
      public function set status(param1:int) : void
      {
         this.var_366 = param1;
      }
      
      public function set data(param1:String) : void
      {
         this._data = param1;
      }
      
      public function set firstClickUserName(param1:String) : void
      {
         this.var_1983 = param1;
      }
      
      public function set giftWasReceived(param1:Boolean) : void
      {
         this.var_1984 = param1;
      }
      
      public function set ownRealName(param1:String) : void
      {
         this.var_2661 = param1;
      }
      
      public function set objectId(param1:int) : void
      {
         this.var_307 = param1;
      }
      
      public function get campaignID() : String
      {
         return this.var_142;
      }
      
      public function set campaignID(param1:String) : void
      {
         this.var_142 = param1;
      }
   }
}
