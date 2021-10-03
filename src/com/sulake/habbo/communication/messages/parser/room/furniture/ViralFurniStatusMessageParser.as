package com.sulake.habbo.communication.messages.parser.room.furniture
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ViralFurniStatusMessageParser implements IMessageParser
   {
       
      
      private var var_142:String;
      
      private var var_307:int;
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_366:int;
      
      private var var_1275:String;
      
      private var var_1983:String;
      
      public function ViralFurniStatusMessageParser()
      {
         super();
      }
      
      public function get campaignID() : String
      {
         return this.var_142;
      }
      
      public function get objectId() : int
      {
         return this.var_307;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomCategory() : int
      {
         return this._roomCategory;
      }
      
      public function get shareId() : String
      {
         return this.var_1275;
      }
      
      public function get status() : int
      {
         return this.var_366;
      }
      
      public function get firstClickUserName() : String
      {
         return this.var_1983;
      }
      
      public function flush() : Boolean
      {
         this._roomId = 0;
         this._roomCategory = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_142 = param1.readString();
         this.var_307 = param1.readInteger();
         this.var_366 = param1.readInteger();
         this.var_1275 = param1.readString();
         this.var_1983 = param1.readString();
         return true;
      }
   }
}
