package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarFigureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_532:String;
      
      private var var_2115:String;
      
      private var var_803:String;
      
      public function RoomObjectAvatarFigureUpdateMessage(param1:String, param2:String = null, param3:String = null)
      {
         super();
         this.var_532 = param1;
         this.var_803 = param2;
         this.var_2115 = param3;
      }
      
      public function get figure() : String
      {
         return this.var_532;
      }
      
      public function get race() : String
      {
         return this.var_2115;
      }
      
      public function get gender() : String
      {
         return this.var_803;
      }
   }
}
