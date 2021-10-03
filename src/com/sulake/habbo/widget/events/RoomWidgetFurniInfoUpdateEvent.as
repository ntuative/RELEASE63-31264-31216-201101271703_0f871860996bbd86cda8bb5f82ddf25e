package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetFurniInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_796:String = "RWFIUE_FURNI";
       
      
      private var _id:int = 0;
      
      private var _category:int = 0;
      
      private var _name:String = "";
      
      private var var_1528:String = "";
      
      private var var_43:BitmapData = null;
      
      private var var_2492:Boolean = false;
      
      private var var_2493:Boolean = false;
      
      private var var_1525:Boolean = false;
      
      private var var_1526:Boolean = false;
      
      private var var_2300:Boolean = false;
      
      private var var_1859:int = -1;
      
      private var var_2472:int = -1;
      
      private var _offerId:int = -1;
      
      public function RoomWidgetFurniInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      public function set id(param1:int) : void
      {
         this._id = param1;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function set category(param1:int) : void
      {
         this._category = param1;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set description(param1:String) : void
      {
         this.var_1528 = param1;
      }
      
      public function get description() : String
      {
         return this.var_1528;
      }
      
      public function set image(param1:BitmapData) : void
      {
         this.var_43 = param1;
      }
      
      public function get image() : BitmapData
      {
         return this.var_43;
      }
      
      public function set isWallItem(param1:Boolean) : void
      {
         this.var_2492 = param1;
      }
      
      public function get isWallItem() : Boolean
      {
         return this.var_2492;
      }
      
      public function set isStickie(param1:Boolean) : void
      {
         this.var_2493 = param1;
      }
      
      public function get isStickie() : Boolean
      {
         return this.var_2493;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         this.var_1525 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return this.var_1525;
      }
      
      public function set isRoomController(param1:Boolean) : void
      {
         this.var_1526 = param1;
      }
      
      public function get isRoomController() : Boolean
      {
         return this.var_1526;
      }
      
      public function set isAnyRoomController(param1:Boolean) : void
      {
         this.var_2300 = param1;
      }
      
      public function get isAnyRoomController() : Boolean
      {
         return this.var_2300;
      }
      
      public function set expiration(param1:int) : void
      {
         this.var_1859 = param1;
      }
      
      public function get expiration() : int
      {
         return this.var_1859;
      }
      
      public function set catalogPageId(param1:int) : void
      {
         this.var_2472 = param1;
      }
      
      public function get catalogPageId() : int
      {
         return this.var_2472;
      }
      
      public function set offerId(param1:int) : void
      {
         this._offerId = param1;
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
   }
}
