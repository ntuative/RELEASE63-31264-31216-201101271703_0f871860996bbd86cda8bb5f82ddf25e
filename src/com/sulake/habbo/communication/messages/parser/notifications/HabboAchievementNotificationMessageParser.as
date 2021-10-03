package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class HabboAchievementNotificationMessageParser implements IMessageParser
   {
       
      
      private var _type:int;
      
      private var var_1322:int;
      
      private var var_1726:int;
      
      private var var_2061:int;
      
      private var var_1673:int;
      
      private var var_1323:int;
      
      private var var_2063:String = "";
      
      private var var_2062:String = "";
      
      private var var_2064:int;
      
      public function HabboAchievementNotificationMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._type = param1.readInteger();
         this.var_1322 = param1.readInteger();
         this.var_2063 = param1.readString();
         this.var_1726 = param1.readInteger();
         this.var_2061 = param1.readInteger();
         this.var_1673 = param1.readInteger();
         this.var_1323 = param1.readInteger();
         this.var_2064 = param1.readInteger();
         this.var_2062 = param1.readString();
         return true;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get level() : int
      {
         return this.var_1322;
      }
      
      public function get points() : int
      {
         return this.var_1726;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2061;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1673;
      }
      
      public function get bonusPoints() : int
      {
         return this.var_1323;
      }
      
      public function get badgeID() : String
      {
         return this.var_2063;
      }
      
      public function get achievementID() : int
      {
         return this.var_2064;
      }
      
      public function get removedBadgeID() : String
      {
         return this.var_2062;
      }
   }
}
