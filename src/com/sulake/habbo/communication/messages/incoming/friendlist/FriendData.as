package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_803:int;
      
      private var var_710:Boolean;
      
      private var var_1783:Boolean;
      
      private var var_532:String;
      
      private var var_1251:int;
      
      private var var_1784:String;
      
      private var var_1679:String;
      
      private var var_1680:String;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_803 = param1.readInteger();
         this.var_710 = param1.readBoolean();
         this.var_1783 = param1.readBoolean();
         this.var_532 = param1.readString();
         this.var_1251 = param1.readInteger();
         this.var_1784 = param1.readString();
         this.var_1679 = param1.readString();
         this.var_1680 = param1.readString();
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get gender() : int
      {
         return this.var_803;
      }
      
      public function get online() : Boolean
      {
         return this.var_710;
      }
      
      public function get followingAllowed() : Boolean
      {
         return this.var_1783;
      }
      
      public function get figure() : String
      {
         return this.var_532;
      }
      
      public function get categoryId() : int
      {
         return this.var_1251;
      }
      
      public function get motto() : String
      {
         return this.var_1784;
      }
      
      public function get lastAccess() : String
      {
         return this.var_1679;
      }
      
      public function get realName() : String
      {
         return this.var_1680;
      }
   }
}
