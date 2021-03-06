package com.sulake.habbo.session
{
   public class PetInfo implements IPetInfo
   {
       
      
      private var var_1811:int;
      
      private var var_1322:int;
      
      private var var_1986:int;
      
      private var var_1985:int;
      
      private var var_1987:int;
      
      private var _energy:int;
      
      private var var_1990:int;
      
      private var _nutrition:int;
      
      private var var_1993:int;
      
      private var var_1988:int;
      
      private var _ownerName:String;
      
      private var var_2013:int;
      
      private var var_508:int;
      
      public function PetInfo()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1811;
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
      
      public function get ownerId() : int
      {
         return this.var_1988;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get respect() : int
      {
         return this.var_2013;
      }
      
      public function get age() : int
      {
         return this.var_508;
      }
      
      public function set petId(param1:int) : void
      {
         this.var_1811 = param1;
      }
      
      public function set level(param1:int) : void
      {
         this.var_1322 = param1;
      }
      
      public function set levelMax(param1:int) : void
      {
         this.var_1986 = param1;
      }
      
      public function set experience(param1:int) : void
      {
         this.var_1985 = param1;
      }
      
      public function set experienceMax(param1:int) : void
      {
         this.var_1987 = param1;
      }
      
      public function set energy(param1:int) : void
      {
         this._energy = param1;
      }
      
      public function set energyMax(param1:int) : void
      {
         this.var_1990 = param1;
      }
      
      public function set nutrition(param1:int) : void
      {
         this._nutrition = param1;
      }
      
      public function set nutritionMax(param1:int) : void
      {
         this.var_1993 = param1;
      }
      
      public function set ownerId(param1:int) : void
      {
         this.var_1988 = param1;
      }
      
      public function set ownerName(param1:String) : void
      {
         this._ownerName = param1;
      }
      
      public function set respect(param1:int) : void
      {
         this.var_2013 = param1;
      }
      
      public function set age(param1:int) : void
      {
         this.var_508 = param1;
      }
   }
}
