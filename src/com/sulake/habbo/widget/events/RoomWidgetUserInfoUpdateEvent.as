package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_191:String = "RWUIUE_OWN_USER";
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_260:String = "RWUIUE_PEER";
      
      public static const const_1467:int = 0;
      
      public static const TRADE_REASON_NO_OWN_RIGHT:int = 1;
      
      public static const const_1098:int = 2;
      
      public static const const_1155:int = 3;
      
      public static const const_1554:String = "BOT";
       
      
      private var _name:String = "";
      
      private var var_1784:String = "";
      
      private var var_2305:int;
      
      private var var_2308:int = 0;
      
      private var var_2307:int = 0;
      
      private var var_532:String = "";
      
      private var var_43:BitmapData = null;
      
      private var var_227:Array;
      
      private var var_1548:Array;
      
      private var var_1258:int = 0;
      
      private var var_2093:String = "";
      
      private var var_2092:int = 0;
      
      private var var_2094:int = 0;
      
      private var var_1527:Boolean = false;
      
      private var var_1680:String = "";
      
      private var var_2632:Boolean = false;
      
      private var var_2638:Boolean = true;
      
      private var var_1046:int = 0;
      
      private var var_2631:Boolean = false;
      
      private var var_2630:Boolean = false;
      
      private var var_2637:Boolean = false;
      
      private var var_2634:Boolean = false;
      
      private var var_2635:Boolean = false;
      
      private var var_2636:Boolean = false;
      
      private var var_2633:int = 0;
      
      private var var_1525:Boolean = false;
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         this.var_227 = [];
         this.var_1548 = [];
         super(param1,param2,param3);
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set motto(param1:String) : void
      {
         this.var_1784 = param1;
      }
      
      public function get motto() : String
      {
         return this.var_1784;
      }
      
      public function set achievementScore(param1:int) : void
      {
         this.var_2305 = param1;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2305;
      }
      
      public function set webID(param1:int) : void
      {
         this.var_2308 = param1;
      }
      
      public function get webID() : int
      {
         return this.var_2308;
      }
      
      public function set xp(param1:int) : void
      {
         this.var_2307 = param1;
      }
      
      public function get xp() : int
      {
         return this.var_2307;
      }
      
      public function set figure(param1:String) : void
      {
         this.var_532 = param1;
      }
      
      public function get figure() : String
      {
         return this.var_532;
      }
      
      public function set image(param1:BitmapData) : void
      {
         this.var_43 = param1;
      }
      
      public function get image() : BitmapData
      {
         return this.var_43;
      }
      
      public function set badges(param1:Array) : void
      {
         this.var_227 = param1;
      }
      
      public function get badges() : Array
      {
         return this.var_227;
      }
      
      public function get givableBadges() : Array
      {
         return this.var_1548;
      }
      
      public function set givableBadges(param1:Array) : void
      {
         this.var_1548 = param1;
      }
      
      public function set groupId(param1:int) : void
      {
         this.var_1258 = param1;
      }
      
      public function get groupId() : int
      {
         return this.var_1258;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         this.var_2093 = param1;
      }
      
      public function get groupBadgeId() : String
      {
         return this.var_2093;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         this.var_2632 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return this.var_2632;
      }
      
      public function set respectLeft(param1:int) : void
      {
         this.var_1046 = param1;
      }
      
      public function get respectLeft() : int
      {
         return this.var_1046;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         this.var_2631 = param1;
      }
      
      public function get isIgnored() : Boolean
      {
         return this.var_2631;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         this.var_2630 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return this.var_2630;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         this.var_2637 = param1;
      }
      
      public function get amIController() : Boolean
      {
         return this.var_2637;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         this.var_2634 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return this.var_2634;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         this.var_2635 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return this.var_2635;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         this.var_2636 = param1;
      }
      
      public function get canTrade() : Boolean
      {
         return this.var_2636;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         this.var_2633 = param1;
      }
      
      public function get canTradeReason() : int
      {
         return this.var_2633;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         this.var_2638 = param1;
      }
      
      public function get canBeKicked() : Boolean
      {
         return this.var_2638;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         this.var_1525 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return this.var_1525;
      }
      
      public function set carryItem(param1:int) : void
      {
         this.var_2092 = param1;
      }
      
      public function get carryItem() : int
      {
         return this.var_2092;
      }
      
      public function set userRoomId(param1:int) : void
      {
         this.var_2094 = param1;
      }
      
      public function get userRoomId() : int
      {
         return this.var_2094;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         this.var_1527 = param1;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return this.var_1527;
      }
      
      public function set realName(param1:String) : void
      {
         this.var_1680 = param1;
      }
      
      public function get realName() : String
      {
         return this.var_1680;
      }
   }
}
