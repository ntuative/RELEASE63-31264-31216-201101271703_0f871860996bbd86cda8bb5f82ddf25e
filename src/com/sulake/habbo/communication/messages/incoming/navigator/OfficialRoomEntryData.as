package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_968:int = 1;
      
      public static const const_644:int = 2;
      
      public static const const_684:int = 3;
      
      public static const const_1390:int = 4;
       
      
      private var _index:int;
      
      private var var_2135:String;
      
      private var var_2136:String;
      
      private var var_2134:Boolean;
      
      private var var_2132:String;
      
      private var var_835:String;
      
      private var var_2133:int;
      
      private var var_2015:int;
      
      private var _type:int;
      
      private var var_2137:String;
      
      private var var_832:GuestRoomData;
      
      private var var_833:PublicRoomData;
      
      private var _open:Boolean;
      
      private var _disposed:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         this._index = param1.readInteger();
         this.var_2135 = param1.readString();
         this.var_2136 = param1.readString();
         this.var_2134 = param1.readInteger() == 1;
         this.var_2132 = param1.readString();
         this.var_835 = param1.readString();
         this.var_2133 = param1.readInteger();
         this.var_2015 = param1.readInteger();
         this._type = param1.readInteger();
         if(this._type == const_968)
         {
            this.var_2137 = param1.readString();
         }
         else if(this._type == const_684)
         {
            this.var_833 = new PublicRoomData(param1);
         }
         else if(this._type == const_644)
         {
            this.var_832 = new GuestRoomData(param1);
         }
         else
         {
            this._open = param1.readBoolean();
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_832 != null)
         {
            this.var_832.dispose();
            this.var_832 = null;
         }
         if(this.var_833 != null)
         {
            this.var_833.dispose();
            this.var_833 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get index() : int
      {
         return this._index;
      }
      
      public function get popupCaption() : String
      {
         return this.var_2135;
      }
      
      public function get popupDesc() : String
      {
         return this.var_2136;
      }
      
      public function get showDetails() : Boolean
      {
         return this.var_2134;
      }
      
      public function get picText() : String
      {
         return this.var_2132;
      }
      
      public function get picRef() : String
      {
         return this.var_835;
      }
      
      public function get folderId() : int
      {
         return this.var_2133;
      }
      
      public function get tag() : String
      {
         return this.var_2137;
      }
      
      public function get userCount() : int
      {
         return this.var_2015;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return this.var_832;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return this.var_833;
      }
      
      public function get open() : Boolean
      {
         return this._open;
      }
      
      public function toggleOpen() : void
      {
         this._open = !this._open;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_968)
         {
            return 0;
         }
         if(this.type == const_644)
         {
            return this.var_832.maxUserCount;
         }
         if(this.type == const_684)
         {
            return this.var_833.maxUsers;
         }
         return 0;
      }
   }
}
