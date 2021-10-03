package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomEventData implements IDisposable
   {
       
      
      private var var_1069:Boolean;
      
      private var var_2603:int;
      
      private var var_2601:String;
      
      private var var_321:int;
      
      private var var_2604:int;
      
      private var var_2551:String;
      
      private var var_2602:String;
      
      private var var_2605:String;
      
      private var var_791:Array;
      
      private var _disposed:Boolean;
      
      public function RoomEventData(param1:IMessageDataWrapper)
      {
         var _loc5_:* = null;
         this.var_791 = new Array();
         super();
         var _loc2_:String = param1.readString();
         if(_loc2_ == "-1")
         {
            Logger.log("Got null room event");
            this.var_1069 = false;
            return;
         }
         this.var_1069 = true;
         this.var_2603 = int(_loc2_);
         this.var_2601 = param1.readString();
         this.var_321 = int(param1.readString());
         this.var_2604 = param1.readInteger();
         this.var_2551 = param1.readString();
         this.var_2602 = param1.readString();
         this.var_2605 = param1.readString();
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1.readString();
            this.var_791.push(_loc5_);
            _loc4_++;
         }
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
      
      public function get ownerAvatarId() : int
      {
         return this.var_2603;
      }
      
      public function get ownerAvatarName() : String
      {
         return this.var_2601;
      }
      
      public function get flatId() : int
      {
         return this.var_321;
      }
      
      public function get eventType() : int
      {
         return this.var_2604;
      }
      
      public function get eventName() : String
      {
         return this.var_2551;
      }
      
      public function get eventDescription() : String
      {
         return this.var_2602;
      }
      
      public function get creationTime() : String
      {
         return this.var_2605;
      }
      
      public function get tags() : Array
      {
         return this.var_791;
      }
      
      public function get exists() : Boolean
      {
         return this.var_1069;
      }
   }
}
