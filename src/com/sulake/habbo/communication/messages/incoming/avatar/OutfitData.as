package com.sulake.habbo.communication.messages.incoming.avatar
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class OutfitData
   {
       
      
      private var var_1495:int;
      
      private var var_2385:String;
      
      private var var_803:String;
      
      public function OutfitData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1495 = param1.readInteger();
         this.var_2385 = param1.readString();
         this.var_803 = param1.readString();
      }
      
      public function get slotId() : int
      {
         return this.var_1495;
      }
      
      public function get figureString() : String
      {
         return this.var_2385;
      }
      
      public function get gender() : String
      {
         return this.var_803;
      }
   }
}
