package com.sulake.habbo.avatar.structure.parts
{
   public class PartDefinition
   {
       
      
      private var var_2088:String;
      
      private var var_1547:String;
      
      private var var_2089:String;
      
      private var var_1545:Boolean;
      
      private var var_1546:int = -1;
      
      public function PartDefinition(param1:XML)
      {
         super();
         this.var_2088 = String(param1["set-type"]);
         this.var_1547 = String(param1["flipped-set-type"]);
         this.var_2089 = String(param1["remove-set-type"]);
         this.var_1545 = false;
      }
      
      public function hasStaticId() : Boolean
      {
         return this.var_1546 >= 0;
      }
      
      public function get staticId() : int
      {
         return this.var_1546;
      }
      
      public function set staticId(param1:int) : void
      {
         this.var_1546 = param1;
      }
      
      public function get setType() : String
      {
         return this.var_2088;
      }
      
      public function get flippedSetType() : String
      {
         return this.var_1547;
      }
      
      public function get removeSetType() : String
      {
         return this.var_2089;
      }
      
      public function get appendToFigure() : Boolean
      {
         return this.var_1545;
      }
      
      public function set appendToFigure(param1:Boolean) : void
      {
         this.var_1545 = param1;
      }
      
      public function set flippedSetType(param1:String) : void
      {
         this.var_1547 = param1;
      }
   }
}
