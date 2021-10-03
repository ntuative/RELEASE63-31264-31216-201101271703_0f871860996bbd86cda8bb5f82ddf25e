package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
      
      public static const const_1798:int = 1;
      
      public static const const_1489:int = 2;
       
      
      private var var_872:String;
      
      private var var_2367:int;
      
      private var var_2366:int;
      
      private var var_2361:int;
      
      private var var_2365:int;
      
      private var var_2360:Boolean;
      
      private var var_2354:Boolean;
      
      private var var_2356:int;
      
      private var var_2355:int;
      
      private var var_2363:Boolean;
      
      private var var_2364:int;
      
      private var var_2362:int;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_872 = param1.readString();
         this.var_2367 = param1.readInteger();
         this.var_2366 = param1.readInteger();
         this.var_2361 = param1.readInteger();
         this.var_2365 = param1.readInteger();
         this.var_2360 = param1.readBoolean();
         this.var_2354 = param1.readBoolean();
         this.var_2356 = param1.readInteger();
         this.var_2355 = param1.readInteger();
         this.var_2363 = param1.readBoolean();
         this.var_2364 = param1.readInteger();
         this.var_2362 = param1.readInteger();
         return true;
      }
      
      public function get productName() : String
      {
         return this.var_872;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return this.var_2367;
      }
      
      public function get memberPeriods() : int
      {
         return this.var_2366;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return this.var_2361;
      }
      
      public function get responseType() : int
      {
         return this.var_2365;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return this.var_2360;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2354;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2356;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2355;
      }
      
      public function get isShowBasicPromo() : Boolean
      {
         return this.var_2363;
      }
      
      public function get basicNormalPrice() : int
      {
         return this.var_2364;
      }
      
      public function get basicPromoPrice() : int
      {
         return this.var_2362;
      }
   }
}
