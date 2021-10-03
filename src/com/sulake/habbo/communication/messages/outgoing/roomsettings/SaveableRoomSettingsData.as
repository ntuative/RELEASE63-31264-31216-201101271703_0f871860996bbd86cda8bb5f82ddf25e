package com.sulake.habbo.communication.messages.outgoing.roomsettings
{
   public class SaveableRoomSettingsData
   {
       
      
      private var _roomId:int;
      
      private var _name:String;
      
      private var var_1528:String;
      
      private var var_2468:int;
      
      private var _password:String;
      
      private var var_1251:int;
      
      private var var_2537:int;
      
      private var var_791:Array;
      
      private var var_2533:Array;
      
      private var var_2535:Boolean;
      
      private var var_2534:Boolean;
      
      private var var_2538:Boolean;
      
      private var var_2536:Boolean;
      
      public function SaveableRoomSettingsData()
      {
         super();
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2535;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         this.var_2535 = param1;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return this.var_2534;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         this.var_2534 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return this.var_2538;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         this.var_2538 = param1;
      }
      
      public function get hideWalls() : Boolean
      {
         return this.var_2536;
      }
      
      public function set hideWalls(param1:Boolean) : void
      {
         this.var_2536 = param1;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function set roomId(param1:int) : void
      {
         this._roomId = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get description() : String
      {
         return this.var_1528;
      }
      
      public function set description(param1:String) : void
      {
         this.var_1528 = param1;
      }
      
      public function get doorMode() : int
      {
         return this.var_2468;
      }
      
      public function set doorMode(param1:int) : void
      {
         this.var_2468 = param1;
      }
      
      public function get password() : String
      {
         return this._password;
      }
      
      public function set password(param1:String) : void
      {
         this._password = param1;
      }
      
      public function get categoryId() : int
      {
         return this.var_1251;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1251 = param1;
      }
      
      public function get maximumVisitors() : int
      {
         return this.var_2537;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         this.var_2537 = param1;
      }
      
      public function get tags() : Array
      {
         return this.var_791;
      }
      
      public function set tags(param1:Array) : void
      {
         this.var_791 = param1;
      }
      
      public function get controllers() : Array
      {
         return this.var_2533;
      }
      
      public function set controllers(param1:Array) : void
      {
         this.var_2533 = param1;
      }
   }
}
