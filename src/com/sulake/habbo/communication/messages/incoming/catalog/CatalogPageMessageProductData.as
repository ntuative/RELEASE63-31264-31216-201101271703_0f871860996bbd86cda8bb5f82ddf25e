package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_81:String = "i";
      
      public static const const_83:String = "s";
      
      public static const const_221:String = "e";
       
      
      private var var_1857:String;
      
      private var var_2544:int;
      
      private var var_1425:String;
      
      private var var_1426:int;
      
      private var var_1859:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1857 = param1.readString();
         this.var_2544 = param1.readInteger();
         this.var_1425 = param1.readString();
         this.var_1426 = param1.readInteger();
         this.var_1859 = param1.readInteger();
      }
      
      public function get productType() : String
      {
         return this.var_1857;
      }
      
      public function get furniClassId() : int
      {
         return this.var_2544;
      }
      
      public function get extraParam() : String
      {
         return this.var_1425;
      }
      
      public function get productCount() : int
      {
         return this.var_1426;
      }
      
      public function get expiration() : int
      {
         return this.var_1859;
      }
   }
}
