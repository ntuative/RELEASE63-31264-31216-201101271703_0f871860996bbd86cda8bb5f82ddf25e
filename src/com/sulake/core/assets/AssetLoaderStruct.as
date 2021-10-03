package com.sulake.core.assets
{
   import com.sulake.core.assets.loaders.IAssetLoader;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.events.EventDispatcher;
   
   public class AssetLoaderStruct extends EventDispatcher implements IDisposable
   {
       
      
      private var var_807:IAssetLoader;
      
      private var var_1875:String;
      
      public function AssetLoaderStruct(param1:String, param2:IAssetLoader)
      {
         super();
         this.var_1875 = param1;
         this.var_807 = param2;
      }
      
      public function get assetName() : String
      {
         return this.var_1875;
      }
      
      public function get assetLoader() : IAssetLoader
      {
         return this.var_807;
      }
      
      override public function dispose() : void
      {
         if(!disposed)
         {
            if(this.var_807 != null)
            {
               if(!this.var_807.disposed)
               {
                  this.var_807.dispose();
                  this.var_807 = null;
               }
            }
            super.dispose();
         }
      }
   }
}
