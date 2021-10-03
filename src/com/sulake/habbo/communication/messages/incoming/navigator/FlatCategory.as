package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FlatCategory
   {
       
      
      private var var_1552:int;
      
      private var var_2654:String;
      
      private var var_369:Boolean;
      
      public function FlatCategory(param1:IMessageDataWrapper)
      {
         super();
         this.var_1552 = param1.readInteger();
         this.var_2654 = param1.readString();
         this.var_369 = param1.readBoolean();
      }
      
      public function get nodeId() : int
      {
         return this.var_1552;
      }
      
      public function get nodeName() : String
      {
         return this.var_2654;
      }
      
      public function get visible() : Boolean
      {
         return this.var_369;
      }
   }
}
