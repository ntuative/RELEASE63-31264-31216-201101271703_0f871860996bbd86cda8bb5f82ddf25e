package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2035:int;
      
      private var var_1678:String;
      
      private var var_2030:String;
      
      private var var_2032:Boolean;
      
      private var var_2033:Boolean;
      
      private var var_2034:int;
      
      private var var_2029:String;
      
      private var var_2031:String;
      
      private var var_1680:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2035 = param1.readInteger();
         this.var_1678 = param1.readString();
         this.var_2030 = param1.readString();
         this.var_2032 = param1.readBoolean();
         this.var_2033 = param1.readBoolean();
         param1.readString();
         this.var_2034 = param1.readInteger();
         this.var_2029 = param1.readString();
         this.var_2031 = param1.readString();
         this.var_1680 = param1.readString();
      }
      
      public function get avatarId() : int
      {
         return this.var_2035;
      }
      
      public function get avatarName() : String
      {
         return this.var_1678;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_2030;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2032;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2033;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2034;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_2029;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2031;
      }
      
      public function get realName() : String
      {
         return this.var_1680;
      }
   }
}
