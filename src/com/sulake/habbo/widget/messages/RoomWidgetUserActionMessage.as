package com.sulake.habbo.widget.messages
{
   public class RoomWidgetUserActionMessage extends RoomWidgetMessage
   {
      
      public static const const_671:String = "RWUAM_WHISPER_USER";
      
      public static const const_868:String = "RWUAM_IGNORE_USER";
      
      public static const const_681:String = "RWUAM_UNIGNORE_USER";
      
      public static const const_452:String = "RWUAM_KICK_USER";
      
      public static const const_616:String = "RWUAM_BAN_USER";
      
      public static const const_667:String = "RWUAM_SEND_FRIEND_REQUEST";
      
      public static const const_600:String = "RWUAM_RESPECT_USER";
      
      public static const const_744:String = "RWUAM_GIVE_RIGHTS";
      
      public static const const_782:String = "RWUAM_TAKE_RIGHTS";
      
      public static const const_797:String = "RWUAM_START_TRADING";
      
      public static const const_862:String = "RWUAM_OPEN_HOME_PAGE";
      
      public static const const_492:String = "RWUAM_KICK_BOT";
      
      public static const const_713:String = "RWUAM_REPORT";
      
      public static const const_418:String = "RWUAM_PICKUP_PET";
      
      public static const const_1497:String = "RWUAM_TRAIN_PET";
      
      public static const const_556:String = " RWUAM_RESPECT_PET";
      
      public static const const_327:String = "RWUAM_REQUEST_PET_UPDATE";
       
      
      private var _userId:int = 0;
      
      public function RoomWidgetUserActionMessage(param1:String, param2:int = 0)
      {
         super(param1);
         this._userId = param2;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
   }
}
