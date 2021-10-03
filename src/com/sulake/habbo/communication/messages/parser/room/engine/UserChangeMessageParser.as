package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserChangeMessageParser implements IMessageParser
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var _id:int;
      
      private var var_532:String;
      
      private var var_952:String;
      
      private var var_1891:String;
      
      private var var_2305:int;
      
      public function UserChangeMessageParser()
      {
         super();
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomCategory() : int
      {
         return this._roomCategory;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get figure() : String
      {
         return this.var_532;
      }
      
      public function get sex() : String
      {
         return this.var_952;
      }
      
      public function get customInfo() : String
      {
         return this.var_1891;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2305;
      }
      
      public function flush() : Boolean
      {
         this._id = 0;
         this.var_532 = "";
         this.var_952 = "";
         this.var_1891 = "";
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = param1.readInteger();
         this.var_532 = param1.readString();
         this.var_952 = param1.readString();
         this.var_1891 = param1.readString();
         this.var_2305 = param1.readInteger();
         if(this.var_952)
         {
            this.var_952 = this.var_952.toUpperCase();
         }
         return true;
      }
   }
}
