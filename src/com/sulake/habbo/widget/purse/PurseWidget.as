package com.sulake.habbo.widget.purse
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.widget.RoomWidgetBase;
   import com.sulake.habbo.widget.events.RoomWidgetPurseUpdateEvent;
   import com.sulake.habbo.widget.messages.RoomWidgetGetPurseData;
   import com.sulake.habbo.window.IHabboWindowManager;
   import flash.events.IEventDispatcher;
   
   public class PurseWidget extends RoomWidgetBase
   {
       
      
      private var var_750:Boolean = false;
      
      private var _view:IWindowContainer;
      
      private var var_2353:int;
      
      private var var_2629:int;
      
      public function PurseWidget(param1:IHabboWindowManager, param2:IAssetLibrary, param3:IHabboLocalizationManager)
      {
         var _loc5_:* = null;
         super(param1,param2,param3);
         var _loc4_:XmlAsset = param2.getAssetByName("purse_widget") as XmlAsset;
         if(_loc4_)
         {
            this._view = param1.buildFromXML(_loc4_.content as XML,1) as IWindowContainer;
            _loc5_ = this._view.desktop;
            this._view.x = _loc5_.width - this._view.width - 200;
            this._view.y = 5;
            this._view.visible = false;
         }
      }
      
      override public function initialize(param1:int = 0) : void
      {
         messageListener.processWidgetMessage(new RoomWidgetGetPurseData());
         if(this._view)
         {
            this._view.visible = true;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this.var_750;
      }
      
      override public function dispose() : void
      {
         if(this.var_750)
         {
            return;
         }
         if(this._view)
         {
            this._view.dispose();
         }
         super.dispose();
         this.var_750 = true;
      }
      
      override public function registerUpdateEvents(param1:IEventDispatcher) : void
      {
         if(!param1)
         {
            return;
         }
         param1.addEventListener(RoomWidgetPurseUpdateEvent.const_80,this.onCreditBalance);
         param1.addEventListener(RoomWidgetPurseUpdateEvent.const_121,this.onPixelBalance);
         super.registerUpdateEvents(param1);
      }
      
      override public function unregisterUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.removeEventListener(RoomWidgetPurseUpdateEvent.const_80,this.onCreditBalance);
         param1.removeEventListener(RoomWidgetPurseUpdateEvent.const_121,this.onPixelBalance);
      }
      
      private function onCreditBalance(param1:RoomWidgetPurseUpdateEvent) : void
      {
         this.var_2353 = param1.balance;
         if(this._view)
         {
            this._view.findChildByName("credits").caption = this.var_2353.toString();
         }
      }
      
      private function onPixelBalance(param1:RoomWidgetPurseUpdateEvent) : void
      {
         this.var_2629 = param1.balance;
         if(this._view)
         {
            this._view.findChildByName("pixels").caption = this.var_2629.toString();
         }
      }
   }
}
