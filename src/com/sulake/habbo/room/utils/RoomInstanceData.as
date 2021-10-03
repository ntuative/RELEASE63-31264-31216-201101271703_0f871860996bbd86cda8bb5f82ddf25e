package com.sulake.habbo.room.utils
{
   public class RoomInstanceData
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_730:TileHeightMap = null;
      
      private var var_1118:LegacyWallGeometry = null;
      
      private var var_1119:RoomCamera = null;
      
      private var var_731:SelectedRoomObjectData = null;
      
      private var var_732:SelectedRoomObjectData = null;
      
      private var var_2451:String = null;
      
      public function RoomInstanceData(param1:int, param2:int)
      {
         super();
         this._roomId = param1;
         this._roomCategory = param2;
         this.var_1118 = new LegacyWallGeometry();
         this.var_1119 = new RoomCamera();
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomCategory() : int
      {
         return this._roomCategory;
      }
      
      public function get tileHeightMap() : TileHeightMap
      {
         return this.var_730;
      }
      
      public function set tileHeightMap(param1:TileHeightMap) : void
      {
         if(this.var_730 != null)
         {
            this.var_730.dispose();
         }
         this.var_730 = param1;
      }
      
      public function get legacyGeometry() : LegacyWallGeometry
      {
         return this.var_1118;
      }
      
      public function get roomCamera() : RoomCamera
      {
         return this.var_1119;
      }
      
      public function get worldType() : String
      {
         return this.var_2451;
      }
      
      public function set worldType(param1:String) : void
      {
         this.var_2451 = param1;
      }
      
      public function get selectedObject() : SelectedRoomObjectData
      {
         return this.var_731;
      }
      
      public function set selectedObject(param1:SelectedRoomObjectData) : void
      {
         if(this.var_731 != null)
         {
            this.var_731.dispose();
         }
         this.var_731 = param1;
      }
      
      public function get placedObject() : SelectedRoomObjectData
      {
         return this.var_732;
      }
      
      public function set placedObject(param1:SelectedRoomObjectData) : void
      {
         if(this.var_732 != null)
         {
            this.var_732.dispose();
         }
         this.var_732 = param1;
      }
      
      public function dispose() : void
      {
         if(this.var_730 != null)
         {
            this.var_730.dispose();
            this.var_730 = null;
         }
         if(this.var_1118 != null)
         {
            this.var_1118.dispose();
            this.var_1118 = null;
         }
         if(this.var_1119 != null)
         {
            this.var_1119.dispose();
            this.var_1119 = null;
         }
         if(this.var_731 != null)
         {
            this.var_731.dispose();
            this.var_731 = null;
         }
         if(this.var_732 != null)
         {
            this.var_732.dispose();
            this.var_732 = null;
         }
      }
   }
}
