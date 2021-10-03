package com.sulake.core.assets
{
   import flash.display.DisplayObject;
   
   public class DisplayAsset implements IAsset
   {
       
      
      protected var var_966:String;
      
      protected var var_162:DisplayObject;
      
      protected var _disposed:Boolean = false;
      
      protected var var_786:AssetTypeDeclaration;
      
      public function DisplayAsset(param1:AssetTypeDeclaration, param2:String = null)
      {
         super();
         this.var_786 = param1;
         this.var_966 = param2;
      }
      
      public function get url() : String
      {
         return this.var_966;
      }
      
      public function get content() : Object
      {
         return this.var_162;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get declaration() : AssetTypeDeclaration
      {
         return this.var_786;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            if(this.var_162.loaderInfo != null)
            {
               if(this.var_162.loaderInfo.loader != null)
               {
                  this.var_162.loaderInfo.loader.unload();
               }
            }
            this.var_162 = null;
            this.var_786 = null;
            this._disposed = true;
            this.var_966 = null;
         }
      }
      
      public function setUnknownContent(param1:Object) : void
      {
         if(param1 is DisplayObject)
         {
            this.var_162 = param1 as DisplayObject;
            if(this.var_162 != null)
            {
               return;
            }
            throw new Error("Failed to convert DisplayObject to DisplayAsset!");
         }
         if(param1 is DisplayAsset)
         {
            this.var_162 = DisplayAsset(param1).var_162;
            this.var_786 = DisplayAsset(param1).var_786;
            if(this.var_162 == null)
            {
               throw new Error("Failed to read content from DisplayAsset!");
            }
         }
      }
      
      public function setFromOtherAsset(param1:IAsset) : void
      {
         if(param1 is DisplayAsset)
         {
            this.var_162 = DisplayAsset(param1).var_162;
            this.var_786 = DisplayAsset(param1).var_786;
            return;
         }
         throw new Error("Provided asset should be of type DisplayAsset!");
      }
      
      public function setParamsDesc(param1:XMLList) : void
      {
      }
   }
}
