package com.sulake.habbo.communication.messages.parser.moderation
{
   public class IssueMessageData
   {
      
      public static const const_156:int = 1;
      
      public static const const_371:int = 2;
      
      public static const const_1341:int = 3;
       
      
      private var var_2050:int;
      
      private var _state:int;
      
      private var var_1251:int;
      
      private var _reportedCategoryId:int;
      
      private var var_1655:int;
      
      private var var_2575:int;
      
      private var var_2578:int = 0;
      
      private var var_2576:int;
      
      private var var_2577:String;
      
      private var var_1457:int;
      
      private var var_1905:String;
      
      private var var_2214:int;
      
      private var var_2574:String;
      
      private var _message:String;
      
      private var var_2322:int;
      
      private var var_816:String;
      
      private var var_1622:int;
      
      private var var_2573:String;
      
      private var var_321:int;
      
      private var var_2572:String;
      
      private var var_2067:String;
      
      private var var_2261:int;
      
      private var var_2213:int;
      
      public function IssueMessageData(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int, param7:int, param8:String, param9:int, param10:String, param11:int, param12:String, param13:String, param14:int, param15:String, param16:int, param17:String, param18:int, param19:String, param20:String, param21:int, param22:int)
      {
         super();
         this.var_2050 = param1;
         this._state = param2;
         this.var_1251 = param3;
         this._reportedCategoryId = param4;
         this.var_1655 = param5;
         this.var_2575 = param6;
         this.var_2576 = param7;
         this.var_2577 = param8;
         this.var_1457 = param9;
         this.var_1905 = param10;
         this.var_2214 = param11;
         this.var_2574 = param12;
         this._message = param13;
         this.var_2322 = param14;
         this.var_816 = param15;
         this.var_1622 = param16;
         this.var_2573 = param17;
         this.var_321 = param18;
         this.var_2572 = param19;
         this.var_2067 = param20;
         this.var_2261 = param21;
         this.var_2213 = param22;
      }
      
      public function get issueId() : int
      {
         return this.var_2050;
      }
      
      public function get state() : int
      {
         return this._state;
      }
      
      public function get categoryId() : int
      {
         return this.var_1251;
      }
      
      public function get reportedCategoryId() : int
      {
         return this._reportedCategoryId;
      }
      
      public function get timeStamp() : int
      {
         return this.var_1655;
      }
      
      public function get priority() : int
      {
         return this.var_2575 + this.var_2578;
      }
      
      public function get reporterUserId() : int
      {
         return this.var_2576;
      }
      
      public function get reporterUserName() : String
      {
         return this.var_2577;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1457;
      }
      
      public function get reportedUserName() : String
      {
         return this.var_1905;
      }
      
      public function get pickerUserId() : int
      {
         return this.var_2214;
      }
      
      public function get pickerUserName() : String
      {
         return this.var_2574;
      }
      
      public function get message() : String
      {
         return this._message;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_2322;
      }
      
      public function get roomName() : String
      {
         return this.var_816;
      }
      
      public function get roomType() : int
      {
         return this.var_1622;
      }
      
      public function get flatType() : String
      {
         return this.var_2573;
      }
      
      public function get flatId() : int
      {
         return this.var_321;
      }
      
      public function get flatOwnerName() : String
      {
         return this.var_2572;
      }
      
      public function get roomResources() : String
      {
         return this.var_2067;
      }
      
      public function get unitPort() : int
      {
         return this.var_2261;
      }
      
      public function get worldId() : int
      {
         return this.var_2213;
      }
      
      public function set temporalPriority(param1:int) : void
      {
         this.var_2578 = param1;
      }
      
      public function getOpenTime(param1:int) : String
      {
         var _loc2_:int = (param1 - this.var_1655) / 1000;
         var _loc3_:int = _loc2_ % 60;
         var _loc4_:int = _loc2_ / 60;
         var _loc5_:int = _loc4_ % 60;
         var _loc6_:int = _loc4_ / 60;
         var _loc7_:String = _loc3_ < 10 ? "0" + _loc3_ : "" + _loc3_;
         var _loc8_:String = _loc5_ < 10 ? "0" + _loc5_ : "" + _loc5_;
         var _loc9_:String = _loc6_ < 10 ? "0" + _loc6_ : "" + _loc6_;
         return _loc9_ + ":" + _loc8_ + ":" + _loc7_;
      }
   }
}
