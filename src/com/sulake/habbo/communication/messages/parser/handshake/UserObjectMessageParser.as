package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_532:String;
      
      private var var_952:String;
      
      private var var_2252:String;
      
      private var var_1680:String;
      
      private var var_2253:int;
      
      private var var_2249:String;
      
      private var var_2251:int;
      
      private var var_2250:int;
      
      private var _respectTotal:int;
      
      private var var_1046:int;
      
      private var var_687:int;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this.var_532 = param1.readString();
         this.var_952 = param1.readString();
         this.var_2252 = param1.readString();
         this.var_1680 = param1.readString();
         this.var_2253 = param1.readInteger();
         this.var_2249 = param1.readString();
         this.var_2251 = param1.readInteger();
         this.var_2250 = param1.readInteger();
         this._respectTotal = param1.readInteger();
         this.var_1046 = param1.readInteger();
         this.var_687 = param1.readInteger();
         return true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get figure() : String
      {
         return this.var_532;
      }
      
      public function get sex() : String
      {
         return this.var_952;
      }
      
      public function get customData() : String
      {
         return this.var_2252;
      }
      
      public function get realName() : String
      {
         return this.var_1680;
      }
      
      public function get tickets() : int
      {
         return this.var_2253;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2249;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2251;
      }
      
      public function get directMail() : int
      {
         return this.var_2250;
      }
      
      public function get respectTotal() : int
      {
         return this._respectTotal;
      }
      
      public function get respectLeft() : int
      {
         return this.var_1046;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_687;
      }
   }
}
