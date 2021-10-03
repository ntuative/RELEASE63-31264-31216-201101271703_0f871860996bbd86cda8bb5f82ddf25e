package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1194:String = "M";
      
      public static const const_1369:String = "F";
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_176:Number = 0;
      
      private var var_175:Number = 0;
      
      private var var_243:int = 0;
      
      private var _name:String = "";
      
      private var var_2309:int = 0;
      
      private var var_952:String = "";
      
      private var var_532:String = "";
      
      private var var_2302:String = "";
      
      private var var_2305:int;
      
      private var var_2308:int = 0;
      
      private var var_2304:String = "";
      
      private var var_2306:int = 0;
      
      private var var_2307:int = 0;
      
      private var var_2303:String = "";
      
      private var var_166:Boolean = false;
      
      public function UserMessageData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function setReadOnly() : void
      {
         this.var_166 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function set x(param1:Number) : void
      {
         if(!this.var_166)
         {
            this._x = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.var_176;
      }
      
      public function set y(param1:Number) : void
      {
         if(!this.var_166)
         {
            this.var_176 = param1;
         }
      }
      
      public function get z() : Number
      {
         return this.var_175;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.var_166)
         {
            this.var_175 = param1;
         }
      }
      
      public function get dir() : int
      {
         return this.var_243;
      }
      
      public function set dir(param1:int) : void
      {
         if(!this.var_166)
         {
            this.var_243 = param1;
         }
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         if(!this.var_166)
         {
            this._name = param1;
         }
      }
      
      public function get userType() : int
      {
         return this.var_2309;
      }
      
      public function set userType(param1:int) : void
      {
         if(!this.var_166)
         {
            this.var_2309 = param1;
         }
      }
      
      public function get sex() : String
      {
         return this.var_952;
      }
      
      public function set sex(param1:String) : void
      {
         if(!this.var_166)
         {
            this.var_952 = param1;
         }
      }
      
      public function get figure() : String
      {
         return this.var_532;
      }
      
      public function set figure(param1:String) : void
      {
         if(!this.var_166)
         {
            this.var_532 = param1;
         }
      }
      
      public function get custom() : String
      {
         return this.var_2302;
      }
      
      public function set custom(param1:String) : void
      {
         if(!this.var_166)
         {
            this.var_2302 = param1;
         }
      }
      
      public function get achievementScore() : int
      {
         return this.var_2305;
      }
      
      public function set achievementScore(param1:int) : void
      {
         if(!this.var_166)
         {
            this.var_2305 = param1;
         }
      }
      
      public function get webID() : int
      {
         return this.var_2308;
      }
      
      public function set webID(param1:int) : void
      {
         if(!this.var_166)
         {
            this.var_2308 = param1;
         }
      }
      
      public function get groupID() : String
      {
         return this.var_2304;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!this.var_166)
         {
            this.var_2304 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return this.var_2306;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!this.var_166)
         {
            this.var_2306 = param1;
         }
      }
      
      public function get xp() : int
      {
         return this.var_2307;
      }
      
      public function set xp(param1:int) : void
      {
         if(!this.var_166)
         {
            this.var_2307 = param1;
         }
      }
      
      public function get subType() : String
      {
         return this.var_2303;
      }
      
      public function set subType(param1:String) : void
      {
         if(!this.var_166)
         {
            this.var_2303 = param1;
         }
      }
   }
}
