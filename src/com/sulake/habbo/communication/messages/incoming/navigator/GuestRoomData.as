package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var var_321:int;
      
      private var var_666:Boolean;
      
      private var var_816:String;
      
      private var _ownerName:String;
      
      private var var_2468:int;
      
      private var var_2015:int;
      
      private var var_2660:int;
      
      private var var_1528:String;
      
      private var var_2659:int;
      
      private var var_2469:Boolean;
      
      private var var_650:int;
      
      private var var_1251:int;
      
      private var var_2658:String;
      
      private var var_791:Array;
      
      private var var_2657:RoomThumbnailData;
      
      private var var_2535:Boolean;
      
      private var _disposed:Boolean;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         this.var_791 = new Array();
         super();
         this.var_321 = param1.readInteger();
         this.var_666 = param1.readBoolean();
         this.var_816 = param1.readString();
         this._ownerName = param1.readString();
         this.var_2468 = param1.readInteger();
         this.var_2015 = param1.readInteger();
         this.var_2660 = param1.readInteger();
         this.var_1528 = param1.readString();
         this.var_2659 = param1.readInteger();
         this.var_2469 = param1.readBoolean();
         this.var_650 = param1.readInteger();
         this.var_1251 = param1.readInteger();
         this.var_2658 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            this.var_791.push(_loc4_);
            _loc3_++;
         }
         this.var_2657 = new RoomThumbnailData(param1);
         this.var_2535 = param1.readBoolean();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_791 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get flatId() : int
      {
         return this.var_321;
      }
      
      public function get event() : Boolean
      {
         return this.var_666;
      }
      
      public function get roomName() : String
      {
         return this.var_816;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get doorMode() : int
      {
         return this.var_2468;
      }
      
      public function get userCount() : int
      {
         return this.var_2015;
      }
      
      public function get maxUserCount() : int
      {
         return this.var_2660;
      }
      
      public function get description() : String
      {
         return this.var_1528;
      }
      
      public function get srchSpecPrm() : int
      {
         return this.var_2659;
      }
      
      public function get allowTrading() : Boolean
      {
         return this.var_2469;
      }
      
      public function get score() : int
      {
         return this.var_650;
      }
      
      public function get categoryId() : int
      {
         return this.var_1251;
      }
      
      public function get eventCreationTime() : String
      {
         return this.var_2658;
      }
      
      public function get tags() : Array
      {
         return this.var_791;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return this.var_2657;
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2535;
      }
   }
}
