package com.sulake.habbo.catalog.purse
{
   import flash.utils.Dictionary;
   
   public class Purse implements IPurse
   {
      
      public static const const_175:int = 0;
       
      
      private var var_2353:int = 0;
      
      private var var_1341:Dictionary;
      
      private var var_1701:int = 0;
      
      private var var_1702:int = 0;
      
      private var var_2354:Boolean = false;
      
      private var var_2356:int = 0;
      
      private var var_2355:int = 0;
      
      public function Purse()
      {
         this.var_1341 = new Dictionary();
         super();
      }
      
      public function get credits() : int
      {
         return this.var_2353;
      }
      
      public function set credits(param1:int) : void
      {
         this.var_2353 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1701;
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1701 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1702;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1702 = param1;
      }
      
      public function get hasClubLeft() : Boolean
      {
         return this.var_1701 > 0 || this.var_1702 > 0;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2354;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2354 = param1;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2356;
      }
      
      public function set pastClubDays(param1:int) : void
      {
         this.var_2356 = param1;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2355;
      }
      
      public function set pastVipDays(param1:int) : void
      {
         this.var_2355 = param1;
      }
      
      public function get activityPoints() : Dictionary
      {
         return this.var_1341;
      }
      
      public function set activityPoints(param1:Dictionary) : void
      {
         this.var_1341 = param1;
      }
      
      public function getActivityPointsForType(param1:int) : int
      {
         return this.var_1341[param1];
      }
   }
}
