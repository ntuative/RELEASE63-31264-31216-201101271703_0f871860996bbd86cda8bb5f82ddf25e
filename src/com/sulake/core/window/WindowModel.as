package com.sulake.core.window
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.enum.WindowState;
   import com.sulake.core.window.utils.IRectLimiter;
   import com.sulake.core.window.utils.WindowRectLimits;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class WindowModel implements IDisposable
   {
       
      
      protected var var_11:Rectangle;
      
      protected var var_368:Rectangle;
      
      protected var var_58:Rectangle;
      
      protected var var_134:Rectangle;
      
      protected var var_133:Rectangle;
      
      protected var var_69:WindowRectLimits;
      
      protected var var_15:WindowContext;
      
      protected var var_432:Boolean = false;
      
      protected var var_225:uint = 16777215;
      
      protected var var_525:uint;
      
      protected var var_433:uint = 10;
      
      protected var var_790:Boolean = true;
      
      protected var var_369:Boolean = true;
      
      protected var var_739:Number = 1.0;
      
      protected var var_19:uint;
      
      protected var _state:uint;
      
      protected var var_80:uint;
      
      protected var _type:uint;
      
      protected var var_20:String = "";
      
      protected var _name:String;
      
      protected var _id:uint;
      
      protected var var_791:Array;
      
      protected var _disposed:Boolean = false;
      
      public function WindowModel(param1:uint, param2:String, param3:uint, param4:uint, param5:uint, param6:WindowContext, param7:Rectangle, param8:Array = null)
      {
         super();
         this._id = param1;
         this._name = param2;
         this._type = param3;
         this.var_19 = param5;
         this._state = WindowState.const_98;
         this.var_80 = param4;
         this.var_791 = param8 == null ? new Array() : param8;
         this.var_15 = param6;
         this.var_11 = param7.clone();
         this.var_368 = param7.clone();
         this.var_58 = param7.clone();
         this.var_134 = new Rectangle();
         this.var_133 = null;
         this.var_69 = new WindowRectLimits(this as IWindow);
      }
      
      public function get x() : int
      {
         return this.var_11.x;
      }
      
      public function get y() : int
      {
         return this.var_11.y;
      }
      
      public function get width() : int
      {
         return this.var_11.width;
      }
      
      public function get height() : int
      {
         return this.var_11.height;
      }
      
      public function get position() : Point
      {
         return this.var_11.topLeft;
      }
      
      public function get rectangle() : Rectangle
      {
         return this.var_11;
      }
      
      public function get limits() : IRectLimiter
      {
         return this.var_69;
      }
      
      public function get context() : IWindowContext
      {
         return this.var_15;
      }
      
      public function get mouseThreshold() : uint
      {
         return this.var_433;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get background() : Boolean
      {
         return this.var_432;
      }
      
      public function get clipping() : Boolean
      {
         return this.var_790;
      }
      
      public function get visible() : Boolean
      {
         return this.var_369;
      }
      
      public function get color() : uint
      {
         return this.var_225;
      }
      
      public function get alpha() : uint
      {
         return this.var_525 >>> 24;
      }
      
      public function get blend() : Number
      {
         return this.var_739;
      }
      
      public function get param() : uint
      {
         return this.var_19;
      }
      
      public function get state() : uint
      {
         return this._state;
      }
      
      public function get style() : uint
      {
         return this.var_80;
      }
      
      public function get type() : uint
      {
         return this._type;
      }
      
      public function get caption() : String
      {
         return this.var_20;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get id() : uint
      {
         return this._id;
      }
      
      public function get tags() : Array
      {
         return this.var_791;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            this._disposed = true;
            this.var_11 = null;
            this.var_15 = null;
            this._state = WindowState.const_526;
            this.var_791 = null;
         }
      }
      
      public function invalidate(param1:Rectangle = null) : void
      {
      }
      
      public function getInitialWidth() : int
      {
         return this.var_368.width;
      }
      
      public function getInitialHeight() : int
      {
         return this.var_368.height;
      }
      
      public function getPreviousWidth() : int
      {
         return this.var_58.width;
      }
      
      public function getPreviousHeight() : int
      {
         return this.var_58.height;
      }
      
      public function getMinimizedWidth() : int
      {
         return this.var_134.width;
      }
      
      public function getMinimizedHeight() : int
      {
         return this.var_134.height;
      }
      
      public function getMaximizedWidth() : int
      {
         return this.var_133.width;
      }
      
      public function getMaximizedHeight() : int
      {
         return this.var_133.height;
      }
      
      public function hasMaxWidth() : Boolean
      {
         return this.var_69.maxWidth < int.MAX_VALUE;
      }
      
      public function getMaxWidth() : int
      {
         return this.var_69.maxWidth;
      }
      
      public function setMaxWidth(param1:int) : int
      {
         var _loc2_:int = this.var_69.maxWidth;
         this.var_69.maxWidth = param1;
         return _loc2_;
      }
      
      public function hasMinWidth() : Boolean
      {
         return this.var_69.minWidth > int.MIN_VALUE;
      }
      
      public function getMinWidth() : int
      {
         return this.var_69.minWidth;
      }
      
      public function setMinWidth(param1:int) : int
      {
         var _loc2_:int = this.var_69.minWidth;
         this.var_69.minWidth = param1;
         return _loc2_;
      }
      
      public function hasMaxHeight() : Boolean
      {
         return this.var_69.maxHeight < int.MAX_VALUE;
      }
      
      public function getMaxHeight() : int
      {
         return this.var_69.maxHeight;
      }
      
      public function setMaxHeight(param1:int) : int
      {
         var _loc2_:int = this.var_69.maxHeight;
         this.var_69.maxHeight = param1;
         return _loc2_;
      }
      
      public function hasMinHeight() : Boolean
      {
         return this.var_69.minHeight > int.MIN_VALUE;
      }
      
      public function getMinHeight() : int
      {
         return this.var_69.minHeight;
      }
      
      public function setMinHeight(param1:int) : int
      {
         var _loc2_:int = this.var_69.minHeight;
         this.var_69.minHeight = param1;
         return _loc2_;
      }
      
      public function testTypeFlag(param1:uint, param2:uint = 0) : Boolean
      {
         if(param2 > 0)
         {
            return (this._type & param2 ^ param1) == 0;
         }
         return (this._type & param1) == param1;
      }
      
      public function testStateFlag(param1:uint, param2:uint = 0) : Boolean
      {
         if(param2 > 0)
         {
            return (this._state & param2 ^ param1) == 0;
         }
         return (this._state & param1) == param1;
      }
      
      public function testStyleFlag(param1:uint, param2:uint = 0) : Boolean
      {
         if(param2 > 0)
         {
            return (this.var_80 & param2 ^ param1) == 0;
         }
         return (this.var_80 & param1) == param1;
      }
      
      public function testParamFlag(param1:uint, param2:uint = 0) : Boolean
      {
         if(param2 > 0)
         {
            return (this.var_19 & param2 ^ param1) == 0;
         }
         return (this.var_19 & param1) == param1;
      }
   }
}
