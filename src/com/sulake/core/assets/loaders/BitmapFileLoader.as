package com.sulake.core.assets.loaders
{
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLRequest;
   import flash.system.LoaderContext;
   
   public class BitmapFileLoader extends AssetLoaderEventBroker implements IAssetLoader
   {
       
      
      protected var var_966:String;
      
      protected var _type:String;
      
      protected var var_39:Loader;
      
      protected var var_967:LoaderContext;
      
      public function BitmapFileLoader(param1:String, param2:URLRequest = null)
      {
         super();
         this.var_966 = param2 == null ? "" : param2.url;
         this._type = param1;
         this.var_39 = new Loader();
         this.var_967 = new LoaderContext();
         this.var_967.checkPolicyFile = true;
         this.var_39.contentLoaderInfo.addEventListener(Event.COMPLETE,loadEventHandler);
         this.var_39.contentLoaderInfo.addEventListener(Event.UNLOAD,loadEventHandler);
         this.var_39.contentLoaderInfo.addEventListener(HTTPStatusEvent.HTTP_STATUS,loadEventHandler);
         this.var_39.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,loadEventHandler);
         this.var_39.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,loadEventHandler);
         this.var_39.contentLoaderInfo.addEventListener(SecurityErrorEvent.SECURITY_ERROR,loadEventHandler);
         if(param2 != null && param2.url != null)
         {
            this.var_39.load(param2,this.var_967);
         }
      }
      
      public function get url() : String
      {
         return this.var_966;
      }
      
      public function get ready() : Boolean
      {
         return this.bytesTotal > 0 ? this.bytesTotal == this.bytesLoaded : false;
      }
      
      public function get content() : Object
      {
         return !!this.var_39 ? this.var_39.content : null;
      }
      
      public function get mimeType() : String
      {
         return this._type;
      }
      
      public function get bytesLoaded() : uint
      {
         return !!this.var_39 ? uint(this.var_39.contentLoaderInfo.bytesLoaded) : uint(0);
      }
      
      public function get bytesTotal() : uint
      {
         return !!this.var_39 ? uint(this.var_39.contentLoaderInfo.bytesTotal) : uint(0);
      }
      
      public function get loaderContext() : LoaderContext
      {
         return this.var_967;
      }
      
      public function load(param1:URLRequest) : void
      {
         this.var_966 = param1.url;
         var_303 = 0;
         this.var_39.load(param1,this.var_967);
      }
      
      override protected function retry() : Boolean
      {
         if(!_disposed)
         {
            if(++var_303 < var_2708)
            {
               try
               {
                  this.var_39.close();
                  this.var_39.unload();
               }
               catch(e:Error)
               {
               }
               this.var_39.load(new URLRequest(this.var_966 + (this.var_966.indexOf("?") == -1 ? "?" : "&") + "retry=" + var_303),this.var_967);
               return true;
            }
         }
         return false;
      }
      
      override public function dispose() : void
      {
         if(!_disposed)
         {
            super.dispose();
            this.var_39.contentLoaderInfo.removeEventListener(Event.COMPLETE,loadEventHandler);
            this.var_39.contentLoaderInfo.removeEventListener(Event.UNLOAD,loadEventHandler);
            this.var_39.contentLoaderInfo.removeEventListener(HTTPStatusEvent.HTTP_STATUS,loadEventHandler);
            this.var_39.contentLoaderInfo.removeEventListener(ProgressEvent.PROGRESS,loadEventHandler);
            this.var_39.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,loadEventHandler);
            this.var_39.contentLoaderInfo.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,loadEventHandler);
            try
            {
               this.var_39.close();
            }
            catch(e:*)
            {
            }
            this.var_39.unload();
            this.var_39 = null;
            this._type = null;
            this.var_966 = null;
         }
      }
   }
}
