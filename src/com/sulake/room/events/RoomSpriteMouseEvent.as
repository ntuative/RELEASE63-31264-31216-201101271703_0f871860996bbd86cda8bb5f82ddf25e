package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var _type:String = "";
      
      private var var_1550:String = "";
      
      private var var_1511:String = "";
      
      private var var_2436:String = "";
      
      private var var_2434:Number = 0;
      
      private var var_2435:Number = 0;
      
      private var var_2433:Number = 0;
      
      private var var_2432:Number = 0;
      
      private var var_2081:Boolean = false;
      
      private var var_2080:Boolean = false;
      
      private var var_2082:Boolean = false;
      
      private var var_2079:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:String, param5:Number, param6:Number, param7:Number = 0, param8:Number = 0, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false, param12:Boolean = false)
      {
         super();
         this._type = param1;
         this.var_1550 = param2;
         this.var_1511 = param3;
         this.var_2436 = param4;
         this.var_2434 = param5;
         this.var_2435 = param6;
         this.var_2433 = param7;
         this.var_2432 = param8;
         this.var_2081 = param9;
         this.var_2080 = param10;
         this.var_2082 = param11;
         this.var_2079 = param12;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get eventId() : String
      {
         return this.var_1550;
      }
      
      public function get canvasId() : String
      {
         return this.var_1511;
      }
      
      public function get spriteTag() : String
      {
         return this.var_2436;
      }
      
      public function get screenX() : Number
      {
         return this.var_2434;
      }
      
      public function get screenY() : Number
      {
         return this.var_2435;
      }
      
      public function get localX() : Number
      {
         return this.var_2433;
      }
      
      public function get localY() : Number
      {
         return this.var_2432;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2081;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2080;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.var_2082;
      }
      
      public function get buttonDown() : Boolean
      {
         return this.var_2079;
      }
   }
}
