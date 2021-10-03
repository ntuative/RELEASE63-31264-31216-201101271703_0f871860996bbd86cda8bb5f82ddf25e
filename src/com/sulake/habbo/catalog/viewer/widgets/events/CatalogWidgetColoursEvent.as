package com.sulake.habbo.catalog.viewer.widgets.events
{
   import flash.events.Event;
   
   public class CatalogWidgetColoursEvent extends Event
   {
       
      
      private var var_1444:Array;
      
      private var var_2417:String;
      
      private var var_2419:String;
      
      private var var_2418:String;
      
      public function CatalogWidgetColoursEvent(param1:Array, param2:String, param3:String, param4:String, param5:Boolean = false, param6:Boolean = false)
      {
         super(WidgetEvent.CWE_COLOUR_ARRAY,param5,param6);
         this.var_1444 = param1;
         this.var_2417 = param2;
         this.var_2419 = param3;
         this.var_2418 = param4;
      }
      
      public function get colours() : Array
      {
         return this.var_1444;
      }
      
      public function get backgroundAssetName() : String
      {
         return this.var_2417;
      }
      
      public function get colourAssetName() : String
      {
         return this.var_2419;
      }
      
      public function get chosenColourAssetName() : String
      {
         return this.var_2418;
      }
   }
}
