package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_2071:int;
      
      private var var_1350:String;
      
      private var var_2502:int;
      
      private var var_2507:int;
      
      private var _category:int;
      
      private var var_1966:String;
      
      private var var_1314:int;
      
      private var var_2504:int;
      
      private var var_2506:int;
      
      private var var_2503:int;
      
      private var var_2505:int;
      
      private var var_2508:Boolean;
      
      private var var_2787:int;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         this.var_2071 = param1;
         this.var_1350 = param2;
         this.var_2502 = param3;
         this.var_2507 = param4;
         this._category = param5;
         this.var_1966 = param6;
         this.var_1314 = param7;
         this.var_2504 = param8;
         this.var_2506 = param9;
         this.var_2503 = param10;
         this.var_2505 = param11;
         this.var_2508 = param12;
      }
      
      public function get itemID() : int
      {
         return this.var_2071;
      }
      
      public function get itemType() : String
      {
         return this.var_1350;
      }
      
      public function get roomItemID() : int
      {
         return this.var_2502;
      }
      
      public function get itemTypeID() : int
      {
         return this.var_2507;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_1966;
      }
      
      public function get extra() : int
      {
         return this.var_1314;
      }
      
      public function get timeToExpiration() : int
      {
         return this.var_2504;
      }
      
      public function get creationDay() : int
      {
         return this.var_2506;
      }
      
      public function get creationMonth() : int
      {
         return this.var_2503;
      }
      
      public function get creationYear() : int
      {
         return this.var_2505;
      }
      
      public function get groupable() : Boolean
      {
         return this.var_2508;
      }
      
      public function get songID() : int
      {
         return this.var_1314;
      }
   }
}
