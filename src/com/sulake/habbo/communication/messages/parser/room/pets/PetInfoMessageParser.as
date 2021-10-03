package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1811:int;
      
      private var _name:String;
      
      private var var_1322:int;
      
      private var var_2566:int;
      
      private var var_1985:int;
      
      private var _energy:int;
      
      private var _nutrition:int;
      
      private var var_532:String;
      
      private var var_2563:int;
      
      private var var_2564:int;
      
      private var var_2565:int;
      
      private var var_2013:int;
      
      private var var_1988:int;
      
      private var _ownerName:String;
      
      private var var_508:int;
      
      public function PetInfoMessageParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1811;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get level() : int
      {
         return this.var_1322;
      }
      
      public function get maxLevel() : int
      {
         return this.var_2566;
      }
      
      public function get experience() : int
      {
         return this.var_1985;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get figure() : String
      {
         return this.var_532;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return this.var_2563;
      }
      
      public function get maxEnergy() : int
      {
         return this.var_2564;
      }
      
      public function get maxNutrition() : int
      {
         return this.var_2565;
      }
      
      public function get respect() : int
      {
         return this.var_2013;
      }
      
      public function get ownerId() : int
      {
         return this.var_1988;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get age() : int
      {
         return this.var_508;
      }
      
      public function flush() : Boolean
      {
         this.var_1811 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_1811 = param1.readInteger();
         this._name = param1.readString();
         this.var_1322 = param1.readInteger();
         this.var_2566 = param1.readInteger();
         this.var_1985 = param1.readInteger();
         this.var_2563 = param1.readInteger();
         this._energy = param1.readInteger();
         this.var_2564 = param1.readInteger();
         this._nutrition = param1.readInteger();
         this.var_2565 = param1.readInteger();
         this.var_532 = param1.readString();
         this.var_2013 = param1.readInteger();
         this.var_1988 = param1.readInteger();
         this.var_508 = param1.readInteger();
         this._ownerName = param1.readString();
         return true;
      }
   }
}
