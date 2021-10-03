package com.sulake.core.assets.loaders
{
   import flash.events.Event;
   
   public class AssetLoaderEvent extends Event
   {
      
      public static const const_29:String = "AssetLoaderEventComplete";
      
      public static const const_998:String = "AssetLoaderEventProgress";
      
      public static const const_1029:String = "AssetLoaderEventUnload";
      
      public static const const_1133:String = "AssetLoaderEventStatus";
      
      public static const const_42:String = "AssetLoaderEventError";
      
      public static const const_1112:String = "AssetLoaderEventOpen";
       
      
      private var var_366:int;
      
      public function AssetLoaderEvent(param1:String, param2:int)
      {
         this.var_366 = param2;
         super(param1,false,false);
      }
      
      public function get status() : int
      {
         return this.var_366;
      }
      
      override public function clone() : Event
      {
         return new AssetLoaderEvent(type,this.var_366);
      }
   }
}
