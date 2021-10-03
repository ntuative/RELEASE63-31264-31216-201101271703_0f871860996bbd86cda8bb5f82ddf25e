package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionViralFurniStatusEvent extends RoomSessionEvent
   {
      
      public static const const_518:String = "RSVFS_STATUS";
      
      public static const const_475:String = "RSVFS_RECEIVED";
       
      
      private var var_142:String;
      
      private var var_307:int;
      
      private var var_366:int = -1;
      
      private var var_1275:String;
      
      private var var_1983:String;
      
      private var var_1984:Boolean;
      
      public function RoomSessionViralFurniStatusEvent(param1:String, param2:IRoomSession, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param2,param3,param4);
         this.var_366 = this.status;
         this.var_1275 = this.shareId;
      }
      
      public function get objectId() : int
      {
         return this.var_307;
      }
      
      public function get status() : int
      {
         return this.var_366;
      }
      
      public function get shareId() : String
      {
         return this.var_1275;
      }
      
      public function get firstClickUserName() : String
      {
         return this.var_1983;
      }
      
      public function get giftWasReceived() : Boolean
      {
         return this.var_1984;
      }
      
      public function set objectId(param1:int) : void
      {
         this.var_307 = param1;
      }
      
      public function set status(param1:int) : void
      {
         this.var_366 = param1;
      }
      
      public function set shareId(param1:String) : void
      {
         this.var_1275 = param1;
      }
      
      public function set firstClickUserName(param1:String) : void
      {
         this.var_1983 = param1;
      }
      
      public function set giftWasReceived(param1:Boolean) : void
      {
         this.var_1984 = param1;
      }
      
      public function get campaignID() : String
      {
         return this.var_142;
      }
      
      public function set campaignID(param1:String) : void
      {
         this.var_142 = param1;
      }
   }
}
