package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionUserFigureUpdateEvent extends RoomSessionEvent
   {
      
      public static const const_155:String = "RSUBE_FIGURE";
       
      
      private var _userId:int = 0;
      
      private var var_532:String = "";
      
      private var var_803:String = "";
      
      private var var_1891:String = "";
      
      private var var_2305:int;
      
      public function RoomSessionUserFigureUpdateEvent(param1:IRoomSession, param2:int, param3:String, param4:String, param5:String, param6:int, param7:Boolean = false, param8:Boolean = false)
      {
         super(const_155,param1,param7,param8);
         this._userId = param2;
         this.var_532 = param3;
         this.var_803 = param4;
         this.var_1891 = param5;
         this.var_2305 = param6;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
      
      public function get figure() : String
      {
         return this.var_532;
      }
      
      public function get gender() : String
      {
         return this.var_803;
      }
      
      public function get customInfo() : String
      {
         return this.var_1891;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2305;
      }
   }
}