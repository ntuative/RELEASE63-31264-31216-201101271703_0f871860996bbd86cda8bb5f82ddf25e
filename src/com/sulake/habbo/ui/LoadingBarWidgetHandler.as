package com.sulake.habbo.ui
{
   import com.sulake.habbo.advertisement.events.AdEvent;
   import com.sulake.habbo.widget.RoomWidgetEnum;
   import com.sulake.habbo.widget.events.RoomWidgetInterstitialUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetLoadingBarUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUpdateEvent;
   import com.sulake.habbo.widget.messages.RoomWidgetMessage;
   import flash.events.Event;
   
   public class LoadingBarWidgetHandler implements IRoomWidgetHandler
   {
       
      
      private var var_750:Boolean = false;
      
      private var _container:IRoomWidgetHandlerContainer = null;
      
      public function LoadingBarWidgetHandler()
      {
         super();
      }
      
      public function get disposed() : Boolean
      {
         return this.var_750;
      }
      
      public function get type() : String
      {
         return RoomWidgetEnum.const_467;
      }
      
      public function set container(param1:IRoomWidgetHandlerContainer) : void
      {
         this._container = param1;
      }
      
      public function dispose() : void
      {
         this.var_750 = true;
         this._container = null;
      }
      
      public function getWidgetMessages() : Array
      {
         return [];
      }
      
      public function processWidgetMessage(param1:RoomWidgetMessage) : RoomWidgetUpdateEvent
      {
         return null;
      }
      
      public function getProcessedEvents() : Array
      {
         var _loc1_:* = [];
         _loc1_.push(AdEvent.const_500);
         _loc1_.push(AdEvent.const_432);
         _loc1_.push(RoomWidgetLoadingBarUpdateEvent.const_101);
         _loc1_.push(RoomWidgetLoadingBarUpdateEvent.const_313);
         return _loc1_;
      }
      
      public function processEvent(param1:Event) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         if(this._container == null || this._container.events == null)
         {
            return;
         }
         switch(param1.type)
         {
            case AdEvent.const_500:
               _loc2_ = param1 as AdEvent;
               if(_loc2_ == null)
               {
                  return;
               }
               _loc3_ = new RoomWidgetInterstitialUpdateEvent(RoomWidgetInterstitialUpdateEvent.const_101,_loc2_.image,_loc2_.clickUrl);
               this._container.events.dispatchEvent(_loc3_);
               break;
            case AdEvent.const_432:
               this._container.setInterstitialCompleted();
               break;
            case RoomWidgetLoadingBarUpdateEvent.const_101:
               this._container.events.dispatchEvent(param1);
               break;
            case RoomWidgetLoadingBarUpdateEvent.const_313:
               this._container.events.dispatchEvent(param1);
         }
      }
      
      public function update() : void
      {
      }
   }
}
