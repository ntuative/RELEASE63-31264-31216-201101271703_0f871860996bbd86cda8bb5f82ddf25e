package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class LayerData
   {
      
      public static const const_876:String = "";
      
      public static const const_413:int = 0;
      
      public static const const_433:int = 255;
      
      public static const const_719:Boolean = false;
      
      public static const const_443:int = 0;
      
      public static const const_495:int = 0;
      
      public static const const_552:int = 0;
      
      public static const const_963:int = 1;
      
      public static const const_993:int = 2;
      
      public static const INK_DARKEN:int = 3;
       
      
      private var var_2137:String = "";
      
      private var var_1719:int = 0;
      
      private var var_2199:int = 255;
      
      private var var_2200:Boolean = false;
      
      private var var_2197:int = 0;
      
      private var var_2198:int = 0;
      
      private var var_2196:Number = 0;
      
      public function LayerData()
      {
         super();
      }
      
      public function set tag(param1:String) : void
      {
         this.var_2137 = param1;
      }
      
      public function get tag() : String
      {
         return this.var_2137;
      }
      
      public function set ink(param1:int) : void
      {
         this.var_1719 = param1;
      }
      
      public function get ink() : int
      {
         return this.var_1719;
      }
      
      public function set alpha(param1:int) : void
      {
         this.var_2199 = param1;
      }
      
      public function get alpha() : int
      {
         return this.var_2199;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         this.var_2200 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return this.var_2200;
      }
      
      public function set xOffset(param1:int) : void
      {
         this.var_2197 = param1;
      }
      
      public function get xOffset() : int
      {
         return this.var_2197;
      }
      
      public function set yOffset(param1:int) : void
      {
         this.var_2198 = param1;
      }
      
      public function get yOffset() : int
      {
         return this.var_2198;
      }
      
      public function set zOffset(param1:Number) : void
      {
         this.var_2196 = param1;
      }
      
      public function get zOffset() : Number
      {
         return this.var_2196;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            this.tag = param1.tag;
            this.ink = param1.ink;
            this.alpha = param1.alpha;
            this.ignoreMouse = param1.ignoreMouse;
            this.xOffset = param1.xOffset;
            this.yOffset = param1.yOffset;
            this.zOffset = param1.zOffset;
         }
      }
   }
}
