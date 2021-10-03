package com.sulake.habbo.communication.messages.incoming.inventory.achievements
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementData
   {
       
      
      private var _type:int;
      
      private var var_1322:int;
      
      private var var_284:String;
      
      private var var_2445:int;
      
      private var var_2061:int;
      
      private var var_1673:int;
      
      private var var_2446:int;
      
      public function AchievementData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1322 = param1.readInteger();
         this.var_284 = param1.readString();
         this.var_2445 = param1.readInteger();
         this.var_2061 = param1.readInteger();
         this.var_1673 = param1.readInteger();
         this.var_2446 = param1.readInteger();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get badgeId() : String
      {
         return this.var_284;
      }
      
      public function get level() : int
      {
         return this.var_1322;
      }
      
      public function get scoreLimit() : int
      {
         return this.var_2445;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2061;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1673;
      }
      
      public function get currentPoints() : int
      {
         return this.var_2446;
      }
   }
}
