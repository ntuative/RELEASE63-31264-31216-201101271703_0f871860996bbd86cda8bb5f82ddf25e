package com.sulake.habbo.widget.infostand
{
   import com.sulake.habbo.widget.events.RoomWidgetPetInfoUpdateEvent;
   import flash.display.BitmapData;
   
   public class InfoStandPetData
   {
       
      
      private var var_1322:int;
      
      private var var_1986:int;
      
      private var var_1985:int;
      
      private var var_1987:int;
      
      private var _energy:int;
      
      private var var_1990:int;
      
      private var _nutrition:int;
      
      private var var_1993:int;
      
      private var _petRespect:int;
      
      private var _name:String = "";
      
      private var var_1811:int = -1;
      
      private var _type:int;
      
      private var var_2115:int;
      
      private var var_43:BitmapData;
      
      private var var_1989:Boolean;
      
      private var var_1988:int;
      
      private var _ownerName:String;
      
      private var _canOwnerBeKicked:Boolean;
      
      private var var_1992:int;
      
      private var var_508:int;
      
      public function InfoStandPetData()
      {
         super();
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get id() : int
      {
         return this.var_1811;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get race() : int
      {
         return this.var_2115;
      }
      
      public function get image() : BitmapData
      {
         return this.var_43;
      }
      
      public function get isOwnPet() : Boolean
      {
         return this.var_1989;
      }
      
      public function get ownerId() : int
      {
         return this.var_1988;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get canOwnerBeKicked() : Boolean
      {
         return this._canOwnerBeKicked;
      }
      
      public function get age() : int
      {
         return this.var_508;
      }
      
      public function get level() : int
      {
         return this.var_1322;
      }
      
      public function get levelMax() : int
      {
         return this.var_1986;
      }
      
      public function get experience() : int
      {
         return this.var_1985;
      }
      
      public function get experienceMax() : int
      {
         return this.var_1987;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get energyMax() : int
      {
         return this.var_1990;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get nutritionMax() : int
      {
         return this.var_1993;
      }
      
      public function get petRespect() : int
      {
         return this._petRespect;
      }
      
      public function get roomIndex() : int
      {
         return this.var_1992;
      }
      
      public function setData(param1:RoomWidgetPetInfoUpdateEvent) : void
      {
         this._name = param1.name;
         this.var_1811 = param1.id;
         this._type = param1.petType;
         this.var_2115 = param1.petRace;
         this.var_43 = param1.image;
         this.var_1989 = param1.isOwnPet;
         this.var_1988 = param1.ownerId;
         this._ownerName = param1.ownerName;
         this._canOwnerBeKicked = param1.canOwnerBeKicked;
         this.var_1322 = param1.level;
         this.var_1986 = param1.levelMax;
         this.var_1985 = param1.experience;
         this.var_1987 = param1.experienceMax;
         this._energy = param1.energy;
         this.var_1990 = param1.energyMax;
         this._nutrition = param1.nutrition;
         this.var_1993 = param1.nutritionMax;
         this._petRespect = param1.petRespect;
         this.var_1992 = param1.roomIndex;
         this.var_508 = param1.age;
      }
   }
}
