package com.sulake.habbo.communication.messages.incoming.navigator
{
   public class RoomSettingsFlatInfo
   {
      
      public static const const_471:int = 0;
      
      public static const const_180:int = 1;
      
      public static const const_116:int = 2;
      
      public static const const_691:Array = ["open","closed","password"];
       
      
      private var var_2467:Boolean;
      
      private var var_2468:int;
      
      private var _id:int;
      
      private var _ownerName:String;
      
      private var _type:String;
      
      private var _name:String;
      
      private var var_1528:String;
      
      private var var_2471:Boolean;
      
      private var var_2469:Boolean;
      
      private var var_2470:Boolean;
      
      private var _password:String;
      
      public function RoomSettingsFlatInfo()
      {
         super();
      }
      
      public function get allowFurniMoving() : Boolean
      {
         return this.var_2467;
      }
      
      public function get doorMode() : int
      {
         return this.var_2468;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get description() : String
      {
         return this.var_1528;
      }
      
      public function get showOwnerName() : Boolean
      {
         return this.var_2471;
      }
      
      public function get allowTrading() : Boolean
      {
         return this.var_2469;
      }
      
      public function get categoryAlertKey() : Boolean
      {
         return this.var_2470;
      }
      
      public function get password() : String
      {
         return this._password;
      }
      
      public function set allowFurniMoving(param1:Boolean) : void
      {
         this.var_2467 = param1;
      }
      
      public function set doorMode(param1:int) : void
      {
         this.var_2468 = param1;
      }
      
      public function set id(param1:int) : void
      {
         this._id = param1;
      }
      
      public function set ownerName(param1:String) : void
      {
         this._ownerName = param1;
      }
      
      public function set type(param1:String) : void
      {
         this._type = param1;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function set description(param1:String) : void
      {
         this.var_1528 = param1;
      }
      
      public function set showOwnerName(param1:Boolean) : void
      {
         this.var_2471 = param1;
      }
      
      public function set allowTrading(param1:Boolean) : void
      {
         this.var_2469 = param1;
      }
      
      public function set categoryAlertKey(param1:Boolean) : void
      {
         this.var_2470 = param1;
      }
      
      public function set password(param1:String) : void
      {
         this._password = param1;
      }
   }
}
