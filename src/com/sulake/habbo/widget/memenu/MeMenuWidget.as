package com.sulake.habbo.widget.memenu
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.widget.RoomWidgetBase;
   import com.sulake.habbo.widget.events.RoomWidgetAvatarActionUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetAvatarEditorUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetDanceUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetFrameUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetHabboClubUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetPurseUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetRoomEngineUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetRoomObjectUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetSettingsUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetToolbarClickedUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetTutorialEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUpdateEffectsUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUserInfoUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetWaveUpdateEvent;
   import com.sulake.habbo.widget.memenu.enum.HabboMeMenuTrackingEvent;
   import com.sulake.habbo.widget.messages.RoomWidgetRequestWidgetMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetSelectOutfitMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetToolbarMessage;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import com.sulake.habbo.window.enum.HabboWindowStyle;
   import com.sulake.habbo.window.enum.HabboWindowType;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class MeMenuWidget extends RoomWidgetBase
   {
      
      public static const const_119:String = "me_menu_top_view";
      
      public static const const_1396:String = "me_menu_rooms_view";
      
      public static const const_287:String = "me_menu_my_clothes_view";
      
      public static const const_1014:String = "me_menu_dance_moves_view";
      
      public static const const_799:String = "me_menu_effects_view";
      
      public static const const_800:String = "me_menu_settings_view";
      
      public static const const_633:String = "me_menu_sound_settings";
       
      
      private var var_42:IMeMenuView;
      
      private var _mainContainer:IWindowContainer;
      
      private var _eventDispatcher:IEventDispatcher;
      
      private var _destinationSize:Point;
      
      private var var_875:Boolean = false;
      
      private var var_1461:int = 0;
      
      private var var_2698:int = 0;
      
      private var var_2699:int = 0;
      
      private var var_2697:Boolean = false;
      
      private var var_1913:int = 0;
      
      private var var_1196:Boolean = false;
      
      private var var_2696:Boolean = false;
      
      private var var_424:Boolean = false;
      
      private var var_2267:Number = 0;
      
      private var var_2700:Boolean = false;
      
      private var var_1915:int = 0;
      
      private var var_1914:Boolean = false;
      
      private var _config:IHabboConfigurationManager;
      
      public function MeMenuWidget(param1:IHabboWindowManager, param2:IAssetLibrary, param3:IHabboLocalizationManager, param4:IEventDispatcher, param5:IHabboConfigurationManager)
      {
         super(param1,param2,param3);
         this._config = param5;
         this._destinationSize = new Point(0,0);
         this._eventDispatcher = param4;
         if(param5 != null && false)
         {
            this.var_2700 = param5.getKey("client.news.embed.enabled","false") == "AssetLoaderEventBroker";
         }
         this.changeView(const_119);
         this.hide();
      }
      
      override public function dispose() : void
      {
         this.hide();
         this._eventDispatcher = null;
         if(this.var_42 != null)
         {
            this.var_42.dispose();
            this.var_42 = null;
         }
         super.dispose();
      }
      
      override public function get mainWindow() : IWindow
      {
         return this._mainContainer;
      }
      
      override public function registerUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.addEventListener(RoomWidgetWaveUpdateEvent.const_638,this.onWaveEvent);
         param1.addEventListener(RoomWidgetDanceUpdateEvent.const_682,this.onDanceEvent);
         param1.addEventListener(RoomWidgetUpdateEffectsUpdateEvent.const_779,this.onUpdateEffects);
         param1.addEventListener(RoomWidgetToolbarClickedUpdateEvent.const_795,this.onToolbarClicked);
         param1.addEventListener(RoomWidgetFrameUpdateEvent.const_356,this.onUpdate);
         param1.addEventListener(RoomWidgetAvatarEditorUpdateEvent.const_723,this.onAvatarEditorClosed);
         param1.addEventListener(RoomWidgetAvatarEditorUpdateEvent.const_783,this.onHideAvatarEditor);
         param1.addEventListener(RoomWidgetRoomObjectUpdateEvent.const_213,this.onAvatarDeselected);
         param1.addEventListener(RoomWidgetHabboClubUpdateEvent.const_211,this.onHabboClubEvent);
         param1.addEventListener(RoomWidgetAvatarActionUpdateEvent.const_810,this.onAvatarActionEvent);
         param1.addEventListener(RoomWidgetUserInfoUpdateEvent.const_191,this.onUserInfo);
         param1.addEventListener(RoomWidgetSettingsUpdateEvent.const_379,this.onSettingsUpdate);
         param1.addEventListener(RoomWidgetTutorialEvent.const_117,this.onTutorialEvent);
         param1.addEventListener(RoomWidgetTutorialEvent.const_479,this.onTutorialEvent);
         param1.addEventListener(RoomWidgetPurseUpdateEvent.const_80,this.onCreditBalance);
         param1.addEventListener(RoomWidgetRoomEngineUpdateEvent.const_118,this.onNormalMode);
         param1.addEventListener(RoomWidgetRoomEngineUpdateEvent.const_1101,this.onGameMode);
         super.registerUpdateEvents(param1);
      }
      
      override public function unregisterUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.removeEventListener(RoomWidgetWaveUpdateEvent.const_638,this.onWaveEvent);
         param1.removeEventListener(RoomWidgetDanceUpdateEvent.const_682,this.onDanceEvent);
         param1.removeEventListener(RoomWidgetUpdateEffectsUpdateEvent.const_779,this.onUpdateEffects);
         param1.removeEventListener(RoomWidgetToolbarClickedUpdateEvent.const_795,this.onToolbarClicked);
         param1.removeEventListener(RoomWidgetFrameUpdateEvent.const_356,this.onUpdate);
         param1.removeEventListener(RoomWidgetRoomObjectUpdateEvent.const_213,this.onAvatarDeselected);
         param1.removeEventListener(RoomWidgetHabboClubUpdateEvent.const_211,this.onHabboClubEvent);
         param1.removeEventListener(RoomWidgetAvatarActionUpdateEvent.const_810,this.onAvatarActionEvent);
         param1.removeEventListener(RoomWidgetAvatarEditorUpdateEvent.const_723,this.onHideAvatarEditor);
         param1.removeEventListener(RoomWidgetAvatarEditorUpdateEvent.const_783,this.onAvatarEditorClosed);
         param1.removeEventListener(RoomWidgetUserInfoUpdateEvent.const_191,this.onUserInfo);
         param1.removeEventListener(RoomWidgetSettingsUpdateEvent.const_379,this.onSettingsUpdate);
         param1.removeEventListener(RoomWidgetTutorialEvent.const_479,this.onTutorialEvent);
         param1.removeEventListener(RoomWidgetTutorialEvent.const_117,this.onTutorialEvent);
         param1.removeEventListener(RoomWidgetPurseUpdateEvent.const_80,this.onCreditBalance);
         param1.removeEventListener(RoomWidgetRoomEngineUpdateEvent.const_118,this.onNormalMode);
         param1.removeEventListener(RoomWidgetRoomEngineUpdateEvent.const_118,this.onGameMode);
      }
      
      public function hide(param1:RoomWidgetRoomObjectUpdateEvent = null) : void
      {
         var _loc2_:RoomWidgetToolbarMessage = new RoomWidgetToolbarMessage(RoomWidgetToolbarMessage.const_637);
         _loc2_.window = this._mainContainer.parent as IWindowContainer;
         if(messageListener != null)
         {
            messageListener.processWidgetMessage(_loc2_);
         }
         if(this.var_42 != null)
         {
            this._mainContainer.removeChild(this.var_42.window);
            this.var_42.dispose();
            this.var_42 = null;
         }
         this.var_424 = false;
         this._eventDispatcher.dispatchEvent(new Event(HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_CLOSE));
      }
      
      private function show() : void
      {
         if(!this._mainContainer || !this._mainContainer.parent)
         {
            return;
         }
         this.changeView(const_119);
         var _loc1_:RoomWidgetToolbarMessage = new RoomWidgetToolbarMessage(RoomWidgetToolbarMessage.const_709);
         _loc1_.window = this._mainContainer.parent as IWindowContainer;
         if(messageListener != null)
         {
            messageListener.processWidgetMessage(_loc1_);
         }
         this.var_424 = true;
      }
      
      private function onUserInfo(param1:RoomWidgetUserInfoUpdateEvent) : void
      {
         var _loc2_:* = null;
         if(!(this.var_424 && this.var_42.window.name == const_287))
         {
            _loc2_ = new RoomWidgetRequestWidgetMessage(RoomWidgetRequestWidgetMessage.const_759);
            if(messageListener != null)
            {
               if(!this.var_1914)
               {
                  messageListener.processWidgetMessage(_loc2_);
               }
            }
         }
      }
      
      private function onSettingsUpdate(param1:RoomWidgetSettingsUpdateEvent) : void
      {
         if(!this.var_424)
         {
            return;
         }
         if(this.var_42.window.name == const_633)
         {
            (this.var_42 as MeMenuSoundSettingsView).updateSettings(param1);
         }
      }
      
      private function onTutorialEvent(param1:RoomWidgetTutorialEvent) : void
      {
         switch(param1.type)
         {
            case RoomWidgetTutorialEvent.const_479:
               Logger.log("* MeMenuWidget: onHighlightClothesIcon " + this.var_424 + " view: " + this.var_42.window.name);
               if(this.var_424 != true || this.var_42.window.name != const_119)
               {
                  return;
               }
               (this.var_42 as MeMenuMainView).setIconAssets("clothes_icon",const_119,"clothes_highlighter_blue");
               break;
            case RoomWidgetTutorialEvent.const_117:
               this.hide();
         }
      }
      
      private function onToolbarClicked(param1:RoomWidgetToolbarClickedUpdateEvent) : void
      {
         switch(param1.iconType)
         {
            case RoomWidgetToolbarClickedUpdateEvent.ICON_TYPE_ME_MENU:
               this.var_424 = !this.var_424;
               break;
            case RoomWidgetToolbarClickedUpdateEvent.ICON_TYPE_ROOM_INFO:
               this.var_424 = false;
               break;
            default:
               return;
         }
         if(this.var_424)
         {
            this.show();
         }
         else
         {
            this.hide();
         }
      }
      
      private function onUpdateEffects(param1:RoomWidgetUpdateEffectsUpdateEvent) : void
      {
         var _loc2_:* = null;
         this.var_1196 = false;
         for each(_loc2_ in param1.effects)
         {
            if(_loc2_.isInUse)
            {
               this.var_1196 = true;
            }
         }
         if(this.var_42 != null && this.var_42.window.name == const_799)
         {
            (this.var_42 as MeMenuEffectsView).updateEffects(param1.effects);
         }
      }
      
      private function onAvatarDeselected(param1:Event) : void
      {
         if(this.var_42 != null && this.var_42.window.name != const_287)
         {
            this.hide();
         }
      }
      
      private function onAvatarEditorClosed(param1:RoomWidgetAvatarEditorUpdateEvent) : void
      {
         if(this.var_42 != null && this.var_42.window.name == const_287)
         {
            this.changeView(const_119);
         }
      }
      
      private function onHideAvatarEditor(param1:RoomWidgetAvatarEditorUpdateEvent) : void
      {
         if(this.var_42 != null && this.var_42.window.name == const_287)
         {
            this.changeView(const_119);
         }
      }
      
      private function onWaveEvent(param1:RoomWidgetWaveUpdateEvent) : void
      {
         Logger.log("[MeMenuWidget] Wave Event received");
      }
      
      private function onDanceEvent(param1:RoomWidgetDanceUpdateEvent) : void
      {
         Logger.log("[MeMenuWidget] Dance Event received, style: " + param1.style);
      }
      
      private function onHabboClubEvent(param1:RoomWidgetHabboClubUpdateEvent) : void
      {
         var _loc2_:* = param1.daysLeft != this.var_1461;
         this.var_1461 = param1.daysLeft;
         this.var_2698 = param1.periodsLeft;
         this.var_2699 = param1.pastPeriods;
         this.var_2697 = param1.allowClubDances;
         _loc2_ = Boolean(_loc2_ || param1.clubLevel != this.var_1913);
         this.var_1913 = param1.clubLevel;
         if(_loc2_)
         {
            if(this.var_42 != null)
            {
               this.changeView(this.var_42.window.name);
            }
         }
      }
      
      private function onAvatarActionEvent(param1:RoomWidgetAvatarActionUpdateEvent) : void
      {
         switch(param1.actionType)
         {
            case RoomWidgetAvatarActionUpdateEvent.EFFECT_ACTIVE:
               this.var_1196 = true;
               break;
            case RoomWidgetAvatarActionUpdateEvent.EFFECT_INACTIVE:
               this.var_1196 = false;
         }
      }
      
      private function onCreditBalance(param1:RoomWidgetPurseUpdateEvent) : void
      {
         if(param1 == null)
         {
            return;
         }
         this.var_1915 = param1.balance;
         localizations.registerParameter("widget.memenu.credits","credits",this.var_1915.toString());
      }
      
      private function onNormalMode(param1:RoomWidgetRoomEngineUpdateEvent) : void
      {
         this.var_1914 = false;
      }
      
      private function onGameMode(param1:RoomWidgetRoomEngineUpdateEvent) : void
      {
         this.var_1914 = true;
      }
      
      private function onUpdate(param1:Event = null) : void
      {
         if(!this.var_875)
         {
            return;
         }
      }
      
      public function get mainContainer() : IWindowContainer
      {
         if(this._mainContainer == null)
         {
            this._mainContainer = windowManager.createWindow("me_menu_main_container","",HabboWindowType.const_1603,HabboWindowStyle.const_1045,HabboWindowParam.const_39,new Rectangle(0,0,170,260)) as IWindowContainer;
            this._mainContainer.tags.push("room_widget_me_menu");
         }
         return this._mainContainer;
      }
      
      public function changeView(param1:String) : void
      {
         var _loc2_:* = null;
         switch(param1)
         {
            case const_119:
               _loc2_ = new MeMenuMainView();
               this._eventDispatcher.dispatchEvent(new Event(HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_DEFAULT));
               break;
            case const_799:
               _loc2_ = new MeMenuEffectsView();
               this._eventDispatcher.dispatchEvent(new Event(HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_EFFECTS));
               break;
            case const_1014:
               _loc2_ = new MeMenuDanceView();
               this._eventDispatcher.dispatchEvent(new Event(HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_DANCE));
               break;
            case const_287:
               _loc2_ = new MeMenuClothesView();
               break;
            case const_1396:
               _loc2_ = new MeMenuRoomsView();
               break;
            case const_800:
               _loc2_ = new MeMenuSettingsMenuView();
               break;
            case const_633:
               _loc2_ = new MeMenuSoundSettingsView();
               break;
            default:
               Logger.log("Me Menu Change view: unknown view: " + param1);
         }
         if(_loc2_ != null)
         {
            if(this.var_42 != null)
            {
               this._mainContainer.removeChild(this.var_42.window);
               this.var_42.dispose();
               this.var_42 = null;
            }
            this.var_42 = _loc2_;
            this.var_42.init(this,param1);
         }
         this.updateSize();
      }
      
      public function updateSize() : void
      {
         if(this.var_42 != null)
         {
            this._destinationSize.x = this.var_42.window.width + 10;
            this._destinationSize.y = this.var_42.window.height;
            this.var_42.window.x = 5;
            this.var_42.window.y = 0;
            this._mainContainer.width = this._destinationSize.x;
            this._mainContainer.height = this._destinationSize.y;
         }
      }
      
      public function get allowHabboClubDances() : Boolean
      {
         return this.var_2697;
      }
      
      public function get isHabboClubActive() : Boolean
      {
         return this.var_1461 > 0;
      }
      
      public function get habboClubDays() : int
      {
         return this.var_1461;
      }
      
      public function get habboClubPeriods() : int
      {
         return this.var_2698;
      }
      
      public function get habboClubPastPeriods() : int
      {
         return this.var_2699;
      }
      
      public function get habboClubLevel() : int
      {
         return this.var_1913;
      }
      
      public function get isNewsEnabled() : Boolean
      {
         return this.var_2700;
      }
      
      public function get creditBalance() : int
      {
         return this.var_1915;
      }
      
      public function get config() : IHabboConfigurationManager
      {
         return this._config;
      }
      
      public function changeToOutfit(param1:int) : void
      {
         this.var_2267 = new Date().valueOf();
         this.messageListener.processWidgetMessage(new RoomWidgetSelectOutfitMessage(param1));
      }
      
      public function canChangeOutfit() : Boolean
      {
         var _loc1_:Number = new Date().valueOf();
         return _loc1_ - this.var_2267 > 5000;
      }
      
      public function get hasEffectOn() : Boolean
      {
         return this.var_1196;
      }
      
      public function get isDancing() : Boolean
      {
         return this.var_2696;
      }
      
      public function set isDancing(param1:Boolean) : void
      {
         this.var_2696 = param1;
      }
   }
}
