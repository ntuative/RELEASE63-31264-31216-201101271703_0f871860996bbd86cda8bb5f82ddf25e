package com.sulake.habbo.navigator.inroom
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.IContainerButtonWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.outgoing.navigator.AddFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.CanCreateEventMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.DeleteFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.RateFlatMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.ToggleStaffPickMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.UpdateNavigatorSettingsMessageComposer;
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.SimpleAlertView;
   import com.sulake.habbo.navigator.TagRenderer;
   import com.sulake.habbo.navigator.Util;
   import com.sulake.habbo.navigator.events.HabboRoomSettingsTrackingEvent;
   import com.sulake.habbo.navigator.roomsettings.IRoomSettingsCtrlOwner;
   import com.sulake.habbo.navigator.roomsettings.RoomSettingsCtrl;
   import com.sulake.habbo.navigator.roomthumbnails.RoomThumbnailCtrl;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.events.HabboToolbarEvent;
   import com.sulake.habbo.toolbar.events.HabboToolbarSetIconEvent;
   import com.sulake.habbo.toolbar.events.HabboToolbarShowMenuEvent;
   import com.sulake.habbo.utils.HabboWebTools;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class RoomInfoViewCtrl implements IRoomSettingsCtrlOwner
   {
       
      
      private var _navigator:HabboNavigator;
      
      private var _window:IWindowContainer;
      
      private var var_2755:int;
      
      private var var_356:RoomEventViewCtrl;
      
      private var var_257:Timer;
      
      private var var_171:RoomSettingsCtrl;
      
      private var var_256:RoomThumbnailCtrl;
      
      private var var_1054:TagRenderer;
      
      private var var_293:IWindowContainer;
      
      private var var_413:IWindowContainer;
      
      private var var_749:IWindowContainer;
      
      private var var_2549:IWindowContainer;
      
      private var var_2552:IWindowContainer;
      
      private var var_1398:IWindowContainer;
      
      private var var_816:ITextWindow;
      
      private var var_1152:ITextWindow;
      
      private var _ownerName:ITextWindow;
      
      private var var_920:ITextWindow;
      
      private var var_1401:ITextWindow;
      
      private var var_1150:ITextWindow;
      
      private var var_921:ITextWindow;
      
      private var var_1791:ITextWindow;
      
      private var var_255:IWindowContainer;
      
      private var var_922:IWindowContainer;
      
      private var var_1792:IWindowContainer;
      
      private var var_2551:ITextWindow;
      
      private var var_748:ITextWindow;
      
      private var var_2550:IWindow;
      
      private var var_1399:IContainerButtonWindow;
      
      private var var_1393:IContainerButtonWindow;
      
      private var var_1394:IContainerButtonWindow;
      
      private var var_1400:IContainerButtonWindow;
      
      private var var_1396:IContainerButtonWindow;
      
      private var var_1397:IContainerButtonWindow;
      
      private var var_1793:IButtonWindow;
      
      private var var_1790:IButtonWindow;
      
      private var var_1794:IButtonWindow;
      
      private var var_924:IWindowContainer;
      
      private var var_1395:ITextWindow;
      
      private var var_1151:ITextFieldWindow;
      
      private var var_64:IWindowContainer;
      
      private var var_1149:IButtonWindow;
      
      private var var_923:IButtonWindow;
      
      private var var_2548:String;
      
      private var var_2553:String;
      
      public function RoomInfoViewCtrl(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_356 = new RoomEventViewCtrl(this._navigator);
         this.var_171 = new RoomSettingsCtrl(this._navigator,this,true);
         this.var_256 = new RoomThumbnailCtrl(this._navigator);
         this.var_1054 = new TagRenderer(this._navigator);
         this._navigator.roomSettingsCtrls.push(this.var_171);
         this.var_257 = new Timer(6000,1);
         this.var_257.addEventListener(TimerEvent.TIMER,this.hideInfo);
      }
      
      public function dispose() : void
      {
         if(this._navigator.toolbar)
         {
            this._navigator.toolbar.events.removeEventListener(HabboToolbarSetIconEvent.const_104,this.onToolbarIconState);
         }
         if(this.var_257)
         {
            this.var_257.removeEventListener(TimerEvent.TIMER,this.hideInfo);
            this.var_257.reset();
            this.var_257 = null;
         }
      }
      
      public function roomSettingsRefreshNeeded() : void
      {
         this.refresh();
      }
      
      public function startEventEdit() : void
      {
         this.var_257.reset();
         this.var_356.active = true;
         this.var_171.active = false;
         this.var_256.active = false;
         this.reload();
      }
      
      public function startRoomSettingsEdit(param1:int) : void
      {
         this.var_257.reset();
         this.var_171.load(param1);
         this.var_171.active = true;
         this.var_356.active = false;
         this.var_256.active = false;
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      public function backToRoomSettings() : void
      {
         this.var_171.active = true;
         this.var_356.active = false;
         this.var_256.active = false;
         this.reload();
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      public function startThumbnailEdit() : void
      {
         this.var_257.reset();
         this.var_171.active = false;
         this.var_356.active = false;
         this.var_256.active = true;
         this.reload();
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_THUMBS));
      }
      
      public function close() : void
      {
         this._navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_1003,HabboToolbarIconEnum.ROOMINFO,this._window,false));
         if(this._window == null)
         {
            return;
         }
         this._window.visible = false;
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_CLOSED));
      }
      
      public function reload() : void
      {
         if(this._window != null && this._window.visible)
         {
            this.refresh();
         }
      }
      
      public function open(param1:Boolean) : void
      {
         this.var_257.reset();
         this.var_356.active = false;
         this.var_171.active = false;
         this.var_256.active = false;
         if(param1)
         {
            this.startRoomSettingsEdit(this._navigator.data.enteredGuestRoom.flatId);
         }
         this.refresh();
         this._window.visible = true;
         this._navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_51,HabboToolbarIconEnum.ROOMINFO,this._window,false));
         this._window.parent.activate();
         this._window.activate();
         if(!param1)
         {
            this.var_257.start();
         }
      }
      
      public function toggle() : void
      {
         this.var_257.reset();
         this.var_356.active = false;
         this.var_171.active = false;
         this.var_256.active = false;
         this.refresh();
         if(!this._window.visible)
         {
            this._navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_51,HabboToolbarIconEnum.ROOMINFO,this._window,false));
            this._window.parent.activate();
         }
         else
         {
            this._navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_478,HabboToolbarIconEnum.ROOMINFO,this._window,false));
         }
      }
      
      private function refresh() : void
      {
         this.prepareWindow();
         this.refreshRoom();
         this.refreshEvent();
         this.refreshEmbed();
         this.refreshButtons();
         Util.moveChildrenToColumn(this._window,["room_info","event_info","embed_info","buttons_container"],0,2);
         this._window.height = Util.getLowestPoint(this._window);
         this._window.y = this._window.desktop.height - this._window.height - 5;
         Logger.log("MAIN: " + this.var_293.rectangle + ", " + this.var_255.rectangle + ", " + this._window.rectangle);
      }
      
      private function refreshRoom() : void
      {
         Util.hideChildren(this.var_293);
         this.var_293.findChildByName("close").visible = true;
         var _loc1_:GuestRoomData = this._navigator.data.enteredGuestRoom;
         var _loc2_:Boolean = _loc1_ != null && _loc1_.flatId == this._navigator.data.homeRoomId;
         this.refreshRoomDetails(_loc1_,_loc2_);
         this.refreshPublicSpaceDetails(this._navigator.data.enteredPublicSpace);
         this.refreshRoomButtons(_loc2_);
         this.var_171.refresh(this.var_293);
         this.var_256.refresh(this.var_293);
         Util.moveChildrenToColumn(this.var_293,["room_details","room_buttons"],0,2);
         this.var_293.height = Util.getLowestPoint(this.var_293);
         this.var_293.visible = true;
         Logger.log("XORP: " + this.var_413.visible + ", " + this.var_1398.visible + ", " + this.var_749.visible + ", " + this.var_749.rectangle + ", " + this.var_293.rectangle);
      }
      
      private function refreshEvent() : void
      {
         Util.hideChildren(this.var_255);
         var _loc1_:RoomEventData = this._navigator.data.roomEventData;
         this.refreshEventDetails(_loc1_);
         this.refreshEventButtons(_loc1_);
         this.var_356.refresh(this.var_255);
         if(Util.hasVisibleChildren(this.var_255) && !(this.var_171.active || this.var_256.active))
         {
            Util.moveChildrenToColumn(this.var_255,["event_details","event_buttons"],0,2);
            this.var_255.height = Util.getLowestPoint(this.var_255);
            this.var_255.visible = true;
         }
         else
         {
            this.var_255.visible = false;
         }
         Logger.log("EVENT: " + this.var_255.visible + ", " + this.var_255.rectangle);
      }
      
      private function refreshEmbed() : void
      {
         var _loc1_:* = this._navigator.configuration.getKey("embed.showInRoomInfo","false") == "AssetLoaderEventBroker";
         var _loc2_:* = this._navigator.data.enteredGuestRoom != null;
         if(_loc2_ && _loc1_ && !this.var_171.active && !this.var_256.active && !this.var_356.active)
         {
            this.var_924.visible = true;
            this.var_1151.text = this.getEmbedData();
         }
         else
         {
            this.var_924.visible = false;
         }
      }
      
      private function refreshButtons() : void
      {
         var _loc1_:* = false;
         if(!this.var_64)
         {
            return;
         }
         if(this.var_171.active)
         {
            this.var_64.visible = false;
            return;
         }
         this.var_64.visible = true;
         if(this.var_1149)
         {
            if(this.var_2548 == "exit_homeroom")
            {
               this.var_1149.caption = "${navigator.homeroom}";
            }
            else
            {
               this.var_1149.caption = "${navigator.hotelview}";
            }
         }
         if(this.var_923)
         {
            _loc1_ = this._navigator.data.enteredGuestRoom != null;
            this.var_923.visible = _loc1_;
            if(this.var_2553 == "0")
            {
               this.var_923.caption = "${navigator.zoom.in}";
            }
            else
            {
               this.var_923.caption = "${navigator.zoom.out}";
            }
         }
      }
      
      private function refreshRoomDetails(param1:GuestRoomData, param2:Boolean) : void
      {
         if(param1 == null || this.var_171.active || this.var_256.active)
         {
            return;
         }
         this.var_816.text = param1.roomName;
         this.var_816.height = this.var_816.textHeight + 5;
         this._ownerName.text = param1.ownerName;
         this.var_920.text = param1.description;
         this.var_1054.refreshTags(this.var_413,param1.tags);
         this.var_920.visible = false;
         if(param1.description != "")
         {
            this.var_920.height = this.var_920.textHeight + 5;
            this.var_920.visible = true;
         }
         var _loc3_:Boolean = Boolean(this._navigator.configuration.getKey("client.allow.facebook.like") == "1");
         this._navigator.refreshButton(this.var_1393,"facebook_logo_small",_loc3_,null,0);
         this.var_1393.visible = _loc3_;
         var _loc4_:* = this._navigator.data.currentRoomRating == -1;
         this._navigator.refreshButton(this.var_1399,"thumb_up",_loc4_,null,0);
         this.var_1399.visible = _loc4_;
         this.var_921.visible = !_loc4_;
         this.var_1791.visible = !_loc4_;
         this.var_1791.text = "" + this._navigator.data.currentRoomRating;
         this.refreshStuffPick();
         this._navigator.refreshButton(this.var_413,"home",param2,null,0);
         this._navigator.refreshButton(this.var_413,"favourite",!param2 && this._navigator.data.isCurrentRoomFavourite(),null,0);
         Util.moveChildrenToColumn(this.var_413,["room_name","owner_name_cont","tags","room_desc","rating_cont","staff_pick_button"],this.var_816.y,0);
         this.var_413.visible = true;
         this.var_413.height = Util.getLowestPoint(this.var_413);
      }
      
      private function refreshStuffPick() : void
      {
         var _loc1_:IWindow = this.var_413.findChildByName("staff_pick_button");
         if(!this._navigator.data.roomPicker)
         {
            _loc1_.visible = false;
            return;
         }
         _loc1_.visible = true;
         _loc1_.caption = this._navigator.getText(!!this._navigator.data.currentRoomIsStaffPick ? "navigator.staffpicks.unpick" : "navigator.staffpicks.pick");
      }
      
      private function refreshPublicSpaceDetails(param1:PublicRoomShortData) : void
      {
         if(param1 == null || this.var_171.active || this.var_256.active)
         {
            return;
         }
         this.var_1152.text = this._navigator.getPublicSpaceName(param1.unitPropertySet,param1.worldId);
         this.var_1152.height = this.var_1152.textHeight + 5;
         this.var_1401.text = this._navigator.getPublicSpaceDesc(param1.unitPropertySet,param1.worldId);
         this.var_1401.height = this.var_1401.textHeight + 5;
         Util.moveChildrenToColumn(this.var_749,["public_space_name","public_space_desc"],this.var_1152.y,0);
         this.var_749.visible = true;
         this.var_749.height = Math.max(86,Util.getLowestPoint(this.var_749));
      }
      
      private function refreshEventDetails(param1:RoomEventData) : void
      {
         if(param1 == null || this.var_356.active)
         {
            return;
         }
         this.var_2551.text = param1.eventName;
         this.var_748.text = param1.eventDescription;
         this.var_1054.refreshTags(this.var_922,[this._navigator.getText("roomevent_type_" + param1.eventType),param1.tags[0],param1.tags[1]]);
         this.var_748.visible = false;
         if(param1.eventDescription != "")
         {
            this.var_748.height = this.var_748.textHeight + 5;
            this.var_748.y = Util.getLowestPoint(this.var_922) + 2;
            this.var_748.visible = true;
         }
         this.var_922.visible = true;
         this.var_922.height = Util.getLowestPoint(this.var_922);
      }
      
      private function refreshRoomButtons(param1:Boolean) : void
      {
         if(this._navigator.data.enteredGuestRoom == null || this.var_171.active || this.var_256.active)
         {
            return;
         }
         this.var_1793.visible = this._navigator.data.canEditRoomSettings;
         var _loc2_:Boolean = this._navigator.data.isCurrentRoomFavourite();
         this.var_1394.visible = this._navigator.data.canAddFavourite && !_loc2_;
         this.var_1400.visible = this._navigator.data.canAddFavourite && _loc2_;
         this.var_1396.visible = this._navigator.data.canEditRoomSettings && !param1;
         this.var_1397.visible = this._navigator.data.canEditRoomSettings && param1;
         this.var_1398.visible = Util.hasVisibleChildren(this.var_1398);
      }
      
      private function refreshEventButtons(param1:RoomEventData) : void
      {
         if(this.var_356.active)
         {
            return;
         }
         this.var_1790.visible = param1 == null && this._navigator.data.currentRoomOwner;
         this.var_1794.visible = param1 != null && (this._navigator.data.currentRoomOwner || this._navigator.data.eventMod);
         this.var_1792.visible = Util.hasVisibleChildren(this.var_1792);
      }
      
      private function prepareWindow() : void
      {
         if(this._window != null)
         {
            return;
         }
         this._window = IWindowContainer(this._navigator.getXmlWindow("iro_room_details"));
         this._window.setParamFlag(HabboWindowParam.const_61,false);
         this._window.setParamFlag(HabboWindowParam.const_1590,true);
         this._window.visible = false;
         this.var_293 = IWindowContainer(this.find("room_info"));
         this.var_413 = IWindowContainer(this.find("room_details"));
         this.var_749 = IWindowContainer(this.find("public_space_details"));
         this.var_2549 = IWindowContainer(this.find("owner_name_cont"));
         this.var_2552 = IWindowContainer(this.find("rating_cont"));
         this.var_1398 = IWindowContainer(this.find("room_buttons"));
         this.var_816 = ITextWindow(this.find("room_name"));
         this.var_1152 = ITextWindow(this.find("public_space_name"));
         this._ownerName = ITextWindow(this.find("owner_name"));
         this.var_920 = ITextWindow(this.find("room_desc"));
         this.var_1401 = ITextWindow(this.find("public_space_desc"));
         this.var_1150 = ITextWindow(this.find("owner_caption"));
         this.var_921 = ITextWindow(this.find("rating_caption"));
         this.var_1791 = ITextWindow(this.find("rating_txt"));
         this.var_255 = IWindowContainer(this.find("event_info"));
         this.var_922 = IWindowContainer(this.find("event_details"));
         this.var_1792 = IWindowContainer(this.find("event_buttons"));
         this.var_2551 = ITextWindow(this.find("event_name"));
         this.var_748 = ITextWindow(this.find("event_desc"));
         this.var_1393 = IContainerButtonWindow(this.find("facebook_like_button"));
         this.var_1399 = IContainerButtonWindow(this.find("rate_up_button"));
         this.var_2550 = this.find("staff_pick_button");
         this.var_1394 = IContainerButtonWindow(this.find("add_favourite_button"));
         this.var_1400 = IContainerButtonWindow(this.find("rem_favourite_button"));
         this.var_1396 = IContainerButtonWindow(this.find("make_home_button"));
         this.var_1397 = IContainerButtonWindow(this.find("unmake_home_button"));
         this.var_1793 = IButtonWindow(this.find("room_settings_button"));
         this.var_1790 = IButtonWindow(this.find("create_event_button"));
         this.var_1794 = IButtonWindow(this.find("edit_event_button"));
         this.var_924 = IWindowContainer(this.find("embed_info"));
         this.var_1395 = ITextWindow(this.find("embed_info_txt"));
         this.var_1151 = ITextFieldWindow(this.find("embed_src_txt"));
         this.var_64 = IWindowContainer(this.find("buttons_container"));
         this.var_1149 = IButtonWindow(this.find("exit_room_button"));
         this.var_923 = IButtonWindow(this.find("zoom_button"));
         Util.setProcDirectly(this.var_1394,this.onAddFavouriteClick);
         Util.setProcDirectly(this.var_1400,this.onRemoveFavouriteClick);
         Util.setProcDirectly(this.var_1793,this.onRoomSettingsClick);
         Util.setProcDirectly(this.var_1396,this.onMakeHomeClick);
         Util.setProcDirectly(this.var_1397,this.onUnmakeHomeClick);
         Util.setProcDirectly(this.var_1790,this.onEventSettingsClick);
         Util.setProcDirectly(this.var_1794,this.onEventSettingsClick);
         Util.setProcDirectly(this.var_1151,this.onEmbedSrcClick);
         Util.setProcDirectly(this.var_1399,this.onThumbUp);
         Util.setProcDirectly(this.var_2550,this.onStaffPick);
         Util.setProcDirectly(this.var_1393,this.onFacebookLike);
         Util.setProcDirectly(this.var_923,this.onZoomClick);
         Util.setProcDirectly(this.var_1149,this.onExitRoomClick);
         this._navigator.refreshButton(this.var_1394,"favourite",true,null,0);
         this._navigator.refreshButton(this.var_1400,"favourite",true,null,0);
         this._navigator.refreshButton(this.var_1396,"home",true,null,0);
         this._navigator.refreshButton(this.var_1397,"home",true,null,0);
         this._window.findChildByName("close").procedure = this.onCloseButtonClick;
         Util.setProcDirectly(this.var_293,this.onHover);
         Util.setProcDirectly(this.var_255,this.onHover);
         this.var_1150.width = this.var_1150.textWidth;
         Util.moveChildrenToRow(this.var_2549,["owner_caption","owner_name"],this.var_1150.x,this.var_1150.y,3);
         this.var_921.width = this.var_921.textWidth;
         Util.moveChildrenToRow(this.var_2552,["rating_caption","rating_txt"],this.var_921.x,this.var_921.y,3);
         this.var_1395.height = this.var_1395.textHeight + 5;
         Util.moveChildrenToColumn(this.var_924,["embed_info_txt","embed_src_txt"],this.var_1395.y,2);
         this.var_924.height = Util.getLowestPoint(this.var_924) + 5;
         this.var_2755 = this._window.y + this._window.height;
      }
      
      private function find(param1:String) : IWindow
      {
         var _loc2_:IWindow = this._window.findChildByName(param1);
         if(_loc2_ == null)
         {
            throw new Error("Window element with name: " + param1 + " cannot be found!");
         }
         return _loc2_;
      }
      
      private function getButtonsMinHeight() : int
      {
         return !!this._navigator.data.currentRoomOwner ? 0 : 21;
      }
      
      private function getRoomInfoMinHeight() : int
      {
         return 37;
      }
      
      private function getEventInfoMinHeight() : int
      {
         return 18;
      }
      
      public function onAddFavouriteClick(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc3_:* = null;
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(this._navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         if(this._navigator.data.isFavouritesFull())
         {
            _loc3_ = new SimpleAlertView(this._navigator,"${navigator.favouritesfull.title}","${navigator.favouritesfull.body}");
            _loc3_.show();
         }
         else
         {
            this._navigator.send(new AddFavouriteRoomMessageComposer(this._navigator.data.enteredGuestRoom.flatId));
         }
      }
      
      public function onRemoveFavouriteClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(this._navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         this._navigator.send(new DeleteFavouriteRoomMessageComposer(this._navigator.data.enteredGuestRoom.flatId));
      }
      
      private function onEventSettingsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(this._navigator.data.roomEventData == null)
         {
            if(this._navigator.data.currentRoomOwner)
            {
               this._navigator.send(new CanCreateEventMessageComposer());
            }
         }
         else
         {
            this.startEventEdit();
         }
      }
      
      private function onRoomSettingsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:GuestRoomData = this._navigator.data.enteredGuestRoom;
         if(_loc3_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         this.startRoomSettingsEdit(_loc3_.flatId);
      }
      
      private function onMakeHomeClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:GuestRoomData = this._navigator.data.enteredGuestRoom;
         if(_loc3_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         Logger.log("SETTING HOME ROOM TO: " + _loc3_.flatId);
         this._navigator.send(new UpdateNavigatorSettingsMessageComposer(_loc3_.flatId));
      }
      
      private function onUnmakeHomeClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("CLEARING HOME ROOM:");
         this._navigator.send(new UpdateNavigatorSettingsMessageComposer(0));
      }
      
      private function onCloseButtonClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this.hideInfo(null);
      }
      
      private function onThumbUp(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this._navigator.send(new RateFlatMessageComposer(1));
      }
      
      private function onStaffPick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this._navigator.send(new ToggleStaffPickMessageComposer(this._navigator.data.enteredGuestRoom.flatId,this._navigator.data.currentRoomIsStaffPick));
      }
      
      private function onThumbDown(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this._navigator.send(new RateFlatMessageComposer(-1));
      }
      
      private function onFacebookLike(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         HabboWebTools.facebookLike(this._navigator.data.enteredGuestRoom.flatId);
      }
      
      private function onEmbedSrcClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this.var_1151.setSelection(0,this.var_1151.text.length);
      }
      
      private function onZoomClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:HabboToolbarEvent = new HabboToolbarEvent(HabboToolbarEvent.const_40);
         _loc3_.iconId = HabboToolbarIconEnum.ZOOM;
         _loc3_.iconName = "ZOOM";
         this._navigator.toolbar.events.dispatchEvent(_loc3_);
      }
      
      private function onExitRoomClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:HabboToolbarEvent = new HabboToolbarEvent(HabboToolbarEvent.const_40);
         _loc3_.iconId = HabboToolbarIconEnum.EXITROOM;
         _loc3_.iconName = "EXITROOM";
         this._navigator.toolbar.events.dispatchEvent(_loc3_);
      }
      
      private function onToolbarIconState(param1:HabboToolbarSetIconEvent) : void
      {
         if(param1.type != HabboToolbarSetIconEvent.const_104)
         {
            return;
         }
         switch(param1.iconId)
         {
            case HabboToolbarIconEnum.ZOOM:
               this.var_2553 = param1.iconState;
               this.refreshButtons();
               break;
            case HabboToolbarIconEnum.EXITROOM:
               this.var_2548 = param1.iconState;
               this.refreshButtons();
         }
      }
      
      private function onHover(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER)
         {
            return;
         }
         this.var_257.reset();
      }
      
      private function hideInfo(param1:Event) : void
      {
         this._navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_478,HabboToolbarIconEnum.ROOMINFO,this._window,false));
      }
      
      private function getEmbedData() : String
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(this._navigator.data.enteredGuestRoom != null)
         {
            _loc1_ = "private";
            _loc2_ = "" + this._navigator.data.enteredGuestRoom.flatId;
         }
         else
         {
            _loc1_ = "public";
            _loc2_ = "" + this._navigator.data.publicSpaceNodeId;
            Logger.log("Node id is: " + _loc2_);
         }
         var _loc3_:String = this._navigator.configuration.getKey("user.hash","");
         this._navigator.registerParameter("navigator.embed.src","roomType",_loc1_);
         this._navigator.registerParameter("navigator.embed.src","embedCode",_loc3_);
         this._navigator.registerParameter("navigator.embed.src","roomId",_loc2_);
         return this._navigator.getText("navigator.embed.src");
      }
      
      public function registerToolbarEvents() : void
      {
         if(this._navigator.toolbar)
         {
            this._navigator.toolbar.events.addEventListener(HabboToolbarSetIconEvent.const_104,this.onToolbarIconState);
         }
      }
   }
}
