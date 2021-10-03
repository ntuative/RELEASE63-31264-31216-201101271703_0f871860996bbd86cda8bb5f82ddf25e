package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_2279:int;
      
      private var var_1350:String;
      
      private var _objId:int;
      
      private var var_1853:int;
      
      private var _category:int;
      
      private var var_1966:String;
      
      private var var_2518:Boolean;
      
      private var var_2520:Boolean;
      
      private var var_2519:Boolean;
      
      private var var_2285:Boolean;
      
      private var var_2368:int;
      
      private var var_1314:int;
      
      private var var_1495:String = "";
      
      private var var_2496:int = -1;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         this.var_2279 = param1;
         this.var_1350 = param2;
         this._objId = param3;
         this.var_1853 = param4;
         this._category = param5;
         this.var_1966 = param6;
         this.var_2518 = param7;
         this.var_2520 = param8;
         this.var_2519 = param9;
         this.var_2285 = param10;
         this.var_2368 = param11;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         this.var_1495 = param1;
         this.var_1314 = param2;
      }
      
      public function get stripId() : int
      {
         return this.var_2279;
      }
      
      public function get itemType() : String
      {
         return this.var_1350;
      }
      
      public function get objId() : int
      {
         return this._objId;
      }
      
      public function get classId() : int
      {
         return this.var_1853;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_1966;
      }
      
      public function get isGroupable() : Boolean
      {
         return this.var_2518;
      }
      
      public function get isRecyclable() : Boolean
      {
         return this.var_2520;
      }
      
      public function get isTradeable() : Boolean
      {
         return this.var_2519;
      }
      
      public function get isSellable() : Boolean
      {
         return this.var_2285;
      }
      
      public function get expiryTime() : int
      {
         return this.var_2368;
      }
      
      public function get slotId() : String
      {
         return this.var_1495;
      }
      
      public function get songId() : int
      {
         return this.var_2496;
      }
      
      public function get extra() : int
      {
         return this.var_1314;
      }
   }
}
