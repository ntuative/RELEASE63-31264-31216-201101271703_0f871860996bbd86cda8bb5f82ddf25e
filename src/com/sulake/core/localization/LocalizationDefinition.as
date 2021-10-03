package com.sulake.core.localization
{
   public class LocalizationDefinition implements ILocalizationDefinition
   {
       
      
      private var var_1639:String;
      
      private var var_1638:String;
      
      private var var_1637:String;
      
      private var _name:String;
      
      private var var_966:String;
      
      public function LocalizationDefinition(param1:String, param2:String, param3:String)
      {
         super();
         var _loc4_:Array = param1.split("_");
         this.var_1639 = _loc4_[0];
         var _loc5_:Array = String(_loc4_[1]).split(".");
         this.var_1638 = _loc5_[0];
         this.var_1637 = _loc5_[1];
         this._name = param2;
         this.var_966 = param3;
      }
      
      public function get id() : String
      {
         return this.var_1639 + "_" + this.var_1638 + "." + this.var_1637;
      }
      
      public function get languageCode() : String
      {
         return this.var_1639;
      }
      
      public function get countryCode() : String
      {
         return this.var_1638;
      }
      
      public function get encoding() : String
      {
         return this.var_1637;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get url() : String
      {
         return this.var_966;
      }
   }
}
