package com.sulake.habbo.avatar.animation
{
   public class SpriteDataContainer implements ISpriteDataContainer
   {
       
      
      private var var_2409:IAnimation;
      
      private var _id:String;
      
      private var var_1719:int;
      
      private var var_2408:String;
      
      private var var_2407:Boolean;
      
      private var _dx:Array;
      
      private var var_1352:Array;
      
      private var var_1351:Array;
      
      public function SpriteDataContainer(param1:IAnimation, param2:XML)
      {
         var _loc3_:* = null;
         var _loc4_:int = 0;
         super();
         this.var_2409 = param1;
         this._id = String(param2.@id);
         this.var_1719 = parseInt(param2.@ink);
         this.var_2408 = String(param2.@member);
         this.var_2407 = Boolean(parseInt(param2.@directions));
         this._dx = [];
         this.var_1352 = [];
         this.var_1351 = [];
         for each(_loc3_ in param2.direction)
         {
            _loc4_ = parseInt(_loc3_.@id);
            this._dx[_loc4_] = parseInt(_loc3_.@dx);
            this.var_1352[_loc4_] = parseInt(_loc3_.@dy);
            this.var_1351[_loc4_] = parseInt(_loc3_.@dz);
         }
      }
      
      public function getDirectionOffsetX(param1:int) : int
      {
         if(param1 < this._dx.length)
         {
            return this._dx[param1];
         }
         return 0;
      }
      
      public function getDirectionOffsetY(param1:int) : int
      {
         if(param1 < this.var_1352.length)
         {
            return this.var_1352[param1];
         }
         return 0;
      }
      
      public function getDirectionOffsetZ(param1:int) : int
      {
         if(param1 < this.var_1351.length)
         {
            return this.var_1351[param1];
         }
         return 0;
      }
      
      public function get animation() : IAnimation
      {
         return this.var_2409;
      }
      
      public function get id() : String
      {
         return this._id;
      }
      
      public function get ink() : int
      {
         return this.var_1719;
      }
      
      public function get member() : String
      {
         return this.var_2408;
      }
      
      public function get hasDirections() : Boolean
      {
         return this.var_2407;
      }
   }
}
