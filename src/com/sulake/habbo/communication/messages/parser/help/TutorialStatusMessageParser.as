package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class TutorialStatusMessageParser implements IMessageParser
   {
       
      
      private var var_1122:Boolean;
      
      private var var_1121:Boolean;
      
      private var var_1370:Boolean;
      
      public function TutorialStatusMessageParser()
      {
         super();
      }
      
      public function get hasChangedLooks() : Boolean
      {
         return this.var_1122;
      }
      
      public function get hasChangedName() : Boolean
      {
         return this.var_1121;
      }
      
      public function get hasCalledGuideBot() : Boolean
      {
         return this.var_1370;
      }
      
      public function flush() : Boolean
      {
         this.var_1122 = false;
         this.var_1121 = false;
         this.var_1370 = false;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1122 = param1.readBoolean();
         this.var_1121 = param1.readBoolean();
         this.var_1370 = param1.readBoolean();
         return true;
      }
   }
}
