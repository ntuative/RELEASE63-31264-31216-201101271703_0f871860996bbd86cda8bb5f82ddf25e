package com.sulake.habbo.communication.messages.parser.poll
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoteQuestionMessageParser implements IMessageParser
   {
       
      
      private var var_1015:String;
      
      private var var_1236:Array;
      
      public function VoteQuestionMessageParser()
      {
         super();
      }
      
      public function get question() : String
      {
         return this.var_1015;
      }
      
      public function get choices() : Array
      {
         return this.var_1236.slice();
      }
      
      public function flush() : Boolean
      {
         this.var_1015 = "";
         this.var_1236 = [];
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1015 = param1.readString();
         this.var_1236 = [];
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            param1.readInteger();
            this.var_1236.push(param1.readString());
            _loc3_++;
         }
         return true;
      }
   }
}
