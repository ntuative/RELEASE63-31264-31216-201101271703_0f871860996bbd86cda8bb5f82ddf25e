package com.sulake.habbo.widget.memenu
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.window.ICoreWindowManager;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.widget.events.RoomWidgetSettingsUpdateEvent;
   import com.sulake.habbo.widget.messages.RoomWidgetGetSettingsMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetStoreSettingsMessage;
   import flash.display.BitmapData;
   
   public class MeMenuSoundSettingsView implements IMeMenuView
   {
       
      
      private var _widget:MeMenuWidget;
      
      private var _window:IWindowContainer;
      
      private var var_831:MeMenuSoundSettingsSlider;
      
      private var var_1560:BitmapData;
      
      private var var_1558:BitmapData;
      
      private var var_1561:BitmapData;
      
      private var var_1559:BitmapData;
      
      private var var_514:Number = 1.0;
      
      public function MeMenuSoundSettingsView()
      {
         super();
      }
      
      public function get volume() : Number
      {
         return this.volume;
      }
      
      public function init(param1:MeMenuWidget, param2:String) : void
      {
         this._widget = param1;
         this.createWindow(param2);
      }
      
      public function dispose() : void
      {
         this.saveVolume(this.var_514);
         this._widget = null;
         if(this._window != null)
         {
            this._window.dispose();
         }
         this._window = null;
         if(this.var_831 != null)
         {
            this.var_831.dispose();
         }
         this.var_831 = null;
      }
      
      public function get window() : IWindowContainer
      {
         return this._window;
      }
      
      public function updateSettings(param1:RoomWidgetSettingsUpdateEvent) : void
      {
         this.var_514 = param1.volume;
         if(this.var_831 != null)
         {
            this.var_831.setValue(this.var_514);
         }
         this.setSoundsOffIcon();
         this.setSoundsOnIcon();
      }
      
      private function createWindow(param1:String) : void
      {
         var _loc3_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc2_:XmlAsset = this._widget.assets.getAssetByName("memenu_settings") as XmlAsset;
         this._window = (this._widget.windowManager as ICoreWindowManager).buildFromXML(_loc2_.content as XML) as IWindowContainer;
         if(this._window == null)
         {
            throw new Error("Failed to construct window from XML!");
         }
         this._window.name = param1;
         var _loc4_:int = 0;
         while(_loc4_ < this._window.numChildren)
         {
            _loc3_ = this._window.getChildAt(_loc4_);
            _loc3_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onButtonClicked);
            _loc4_++;
         }
         _loc5_ = this._widget.assets.getAssetByName("sounds_off_color") as BitmapDataAsset;
         if(_loc5_ != null && _loc5_.content != null)
         {
            this.var_1560 = (_loc5_.content as BitmapData).clone();
         }
         _loc5_ = this._widget.assets.getAssetByName("sounds_off_white") as BitmapDataAsset;
         if(_loc5_ != null && _loc5_.content != null)
         {
            this.var_1558 = (_loc5_.content as BitmapData).clone();
         }
         _loc5_ = this._widget.assets.getAssetByName("sounds_on_color") as BitmapDataAsset;
         if(_loc5_ != null && _loc5_.content != null)
         {
            this.var_1561 = (_loc5_.content as BitmapData).clone();
         }
         _loc5_ = this._widget.assets.getAssetByName("sounds_on_white") as BitmapDataAsset;
         if(_loc5_ != null && _loc5_.content != null)
         {
            this.var_1559 = (_loc5_.content as BitmapData).clone();
         }
         this.var_831 = new MeMenuSoundSettingsSlider(this,this._window.findChildByName("volume_container") as IWindowContainer,this._widget.assets,0,1);
         this.setSoundsOffIcon();
         this.setSoundsOnIcon();
         _loc6_ = this._window.findChildByName("sounds_off");
         if(_loc6_ != null)
         {
            _loc6_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onButtonClicked);
            _loc6_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER,this.onButtonOver);
            _loc6_.addEventListener(WindowMouseEvent.const_25,this.onButtonOut);
         }
         _loc6_ = this._window.findChildByName("sounds_on");
         if(_loc6_ != null)
         {
            _loc6_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onButtonClicked);
            _loc6_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER,this.onButtonOver);
            _loc6_.addEventListener(WindowMouseEvent.const_25,this.onButtonOut);
         }
         this._widget.mainContainer.addChild(this._window);
         this._widget.messageListener.processWidgetMessage(new RoomWidgetGetSettingsMessage(RoomWidgetGetSettingsMessage.const_753));
      }
      
      private function setSoundsOffIcon(param1:BitmapData = null) : void
      {
         if(param1 != null)
         {
            this.setBitmapWrapperContent("sounds_off_icon",param1);
         }
         else if(this.var_514 == 0)
         {
            this.setBitmapWrapperContent("sounds_off_icon",this.var_1560);
         }
         else
         {
            this.setBitmapWrapperContent("sounds_off_icon",this.var_1558);
         }
      }
      
      private function setSoundsOnIcon(param1:BitmapData = null) : void
      {
         if(param1 != null)
         {
            this.setBitmapWrapperContent("sounds_on_icon",param1);
         }
         else if(this.var_514 == 1)
         {
            this.setBitmapWrapperContent("sounds_on_icon",this.var_1561);
         }
         else
         {
            this.setBitmapWrapperContent("sounds_on_icon",this.var_1559);
         }
      }
      
      private function setBitmapWrapperContent(param1:String, param2:BitmapData) : void
      {
         var _loc3_:IBitmapWrapperWindow = this._window.findChildByName(param1) as IBitmapWrapperWindow;
         if(_loc3_ != null && param2 != null)
         {
            _loc3_.bitmap = param2.clone();
         }
      }
      
      private function onButtonOver(param1:WindowMouseEvent) : void
      {
         var _loc2_:IWindow = param1.target as IWindow;
         var _loc3_:String = _loc2_.name;
         switch(_loc3_)
         {
            case "sounds_off_icon":
            case "sounds_off":
               this.setBitmapWrapperContent("sounds_off_icon",this.var_1560);
               break;
            case "sounds_on_icon":
            case "sounds_on":
               this.setBitmapWrapperContent("sounds_on_icon",this.var_1561);
         }
      }
      
      private function onButtonOut(param1:WindowMouseEvent) : void
      {
         var _loc2_:IWindow = param1.target as IWindow;
         var _loc3_:String = _loc2_.name;
         switch(_loc3_)
         {
            case "sounds_off":
               if(this.var_514 != 0)
               {
                  this.setBitmapWrapperContent("sounds_off_icon",this.var_1558);
               }
               break;
            case "sounds_on":
               if(this.var_514 != 1)
               {
                  this.setBitmapWrapperContent("sounds_on_icon",this.var_1559);
               }
         }
      }
      
      private function onButtonClicked(param1:WindowMouseEvent) : void
      {
         var _loc2_:IWindow = param1.target as IWindow;
         var _loc3_:String = _loc2_.name;
         switch(_loc3_)
         {
            case "sounds_off":
               this.saveVolume(0,false);
               break;
            case "sounds_on":
               this.saveVolume(1,false);
               break;
            case "back_btn":
               this._widget.changeView(MeMenuWidget.const_800);
               break;
            default:
               Logger.log("Me Menu Settings View: unknown button: " + _loc3_);
         }
      }
      
      public function saveVolume(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:* = null;
         if(param2)
         {
            _loc3_ = new RoomWidgetStoreSettingsMessage(RoomWidgetStoreSettingsMessage.const_680);
         }
         else
         {
            _loc3_ = new RoomWidgetStoreSettingsMessage(RoomWidgetStoreSettingsMessage.const_872);
         }
         _loc3_.volume = param1;
         this._widget.messageListener.processWidgetMessage(_loc3_);
      }
   }
}
