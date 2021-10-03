package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ModeratorUserInfoData
   {
       
      
      private var _userId:int;
      
      private var _userName:String;
      
      private var var_2624:int;
      
      private var var_2626:int;
      
      private var var_710:Boolean;
      
      private var var_2627:int;
      
      private var var_2623:int;
      
      private var var_2622:int;
      
      private var var_2625:int;
      
      public function ModeratorUserInfoData(param1:IMessageDataWrapper)
      {
         super();
         this._userId = param1.readInteger();
         this._userName = param1.readString();
         this.var_2624 = param1.readInteger();
         this.var_2626 = param1.readInteger();
         this.var_710 = param1.readBoolean();
         this.var_2627 = param1.readInteger();
         this.var_2623 = param1.readInteger();
         this.var_2622 = param1.readInteger();
         this.var_2625 = param1.readInteger();
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
      
      public function get userName() : String
      {
         return this._userName;
      }
      
      public function get minutesSinceRegistration() : int
      {
         return this.var_2624;
      }
      
      public function get minutesSinceLastLogin() : int
      {
         return this.var_2626;
      }
      
      public function get online() : Boolean
      {
         return this.var_710;
      }
      
      public function get cfhCount() : int
      {
         return this.var_2627;
      }
      
      public function get abusiveCfhCount() : int
      {
         return this.var_2623;
      }
      
      public function get cautionCount() : int
      {
         return this.var_2622;
      }
      
      public function get banCount() : int
      {
         return this.var_2625;
      }
   }
}
