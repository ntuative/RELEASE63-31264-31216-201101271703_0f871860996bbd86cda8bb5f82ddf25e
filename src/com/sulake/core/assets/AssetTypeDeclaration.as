package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_2255:String;
      
      private var var_2256:Class;
      
      private var var_2254:Class;
      
      private var var_1659:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         this.var_2255 = param1;
         this.var_2256 = param2;
         this.var_2254 = param3;
         if(rest == null)
         {
            this.var_1659 = new Array();
         }
         else
         {
            this.var_1659 = rest;
         }
      }
      
      public function get mimeType() : String
      {
         return this.var_2255;
      }
      
      public function get assetClass() : Class
      {
         return this.var_2256;
      }
      
      public function get loaderClass() : Class
      {
         return this.var_2254;
      }
      
      public function get fileTypes() : Array
      {
         return this.var_1659;
      }
   }
}
