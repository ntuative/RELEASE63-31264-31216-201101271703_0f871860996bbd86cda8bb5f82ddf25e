package com.sulake.habbo.communication.messages.incoming.sound
{
   public class PlayListEntry
   {
       
      
      private var var_2496:int;
      
      private var var_2497:int;
      
      private var var_2499:String;
      
      private var var_2495:String;
      
      private var var_2498:int = 0;
      
      public function PlayListEntry(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         this.var_2496 = param1;
         this.var_2497 = param2;
         this.var_2499 = param3;
         this.var_2495 = param4;
      }
      
      public function get id() : int
      {
         return this.var_2496;
      }
      
      public function get length() : int
      {
         return this.var_2497;
      }
      
      public function get name() : String
      {
         return this.var_2499;
      }
      
      public function get creator() : String
      {
         return this.var_2495;
      }
      
      public function get startPlayHeadPos() : int
      {
         return this.var_2498;
      }
      
      public function set startPlayHeadPos(param1:int) : void
      {
         this.var_2498 = param1;
      }
   }
}
