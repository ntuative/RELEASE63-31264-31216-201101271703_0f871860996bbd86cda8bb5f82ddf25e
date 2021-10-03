package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_1701:int = 0;
      
      private var var_1702:int = 0;
      
      private var var_2689:int = 0;
      
      private var var_2688:Boolean = false;
      
      private var var_2354:Boolean = false;
      
      public function Purse()
      {
         super();
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1701 = Math.max(0,param1);
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1702 = Math.max(0,param1);
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         this.var_2689 = Math.max(0,param1);
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         this.var_2688 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2354 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1701;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1702;
      }
      
      public function get clubPastPeriods() : int
      {
         return this.var_2689;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return this.var_2688;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2354;
      }
   }
}
