package com.sulake.habbo.room.events
{
   import com.sulake.room.events.RoomObjectEvent;
   
   public class RoomObjectFurnitureActionEvent extends RoomObjectEvent
   {
      
      public static const ROOM_OBJECT_DICE_OFF:String = "ROFCAE_DICE_OFF";
      
      public static const const_520:String = "ROFCAE_DICE_ACTIVATE";
      
      public static const const_430:String = "ROFCAE_USE_HABBOWHEEL";
      
      public static const const_559:String = "ROFCAE_STICKIE";
      
      public static const const_539:String = "ROFCAE_VIRAL_GIFT";
      
      public static const const_554:String = "ROFCAE_ENTER_ONEWAYDOOR";
      
      public static const const_501:String = "ROFCAE_QUEST_VENDING";
      
      public static const ROOM_OBJECT_SOUND_MACHINE_START:String = "ROFCAE_SOUND_MACHINE_START";
      
      public static const const_444:String = "ROFCAE_SOUND_MACHINE_STOP";
      
      public static const const_525:String = "ROFCAE_SOUND_MACHINE_DISPOSE";
      
      public static const const_468:String = "ROFCAE_JUKEBOX_INIT";
      
      public static const const_423:String = "ROFCAE_JUKEBOX_DISPOSE";
       
      
      public function RoomObjectFurnitureActionEvent(param1:String, param2:int, param3:String, param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param2,param3,param4,param5);
      }
   }
}
