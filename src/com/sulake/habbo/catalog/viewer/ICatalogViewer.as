package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.catalog.IHabboCatalog;
   import com.sulake.habbo.room.IRoomEngine;
   import flash.events.Event;
   
   public interface ICatalogViewer
   {
       
      
      function showCatalogPage(param1:int, param2:String, param3:IPageLocalization, param4:Array, param5:int) : void;
      
      function dispatchWidgetEvent(param1:Event) : Boolean;
      
      function get catalog() : IHabboCatalog;
      
      function get roomEngine() : IRoomEngine;
      
      function dispose() : void;
      
      function method_3() : String;
   }
}
