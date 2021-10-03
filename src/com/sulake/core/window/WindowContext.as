package com.sulake.core.window
{
   import com.sulake.core.localization.ICoreLocalizationManager;
   import com.sulake.core.localization.ILocalizable;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.core.window.components.DesktopController;
   import com.sulake.core.window.components.IDesktopWindow;
   import com.sulake.core.window.components.SubstituteParentController;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.enum.WindowState;
   import com.sulake.core.window.graphics.IGraphicContextHost;
   import com.sulake.core.window.graphics.IWindowRenderer;
   import com.sulake.core.window.services.IInternalWindowServices;
   import com.sulake.core.window.services.ServiceManager;
   import com.sulake.core.window.utils.EventProcessorState;
   import com.sulake.core.window.utils.IEventProcessor;
   import com.sulake.core.window.utils.IEventQueue;
   import com.sulake.core.window.utils.IMouseCursor;
   import com.sulake.core.window.utils.IWindowParser;
   import com.sulake.core.window.utils.MouseCursorControl;
   import com.sulake.core.window.utils.MouseEventProcessor;
   import com.sulake.core.window.utils.MouseEventQueue;
   import com.sulake.core.window.utils.WindowParser;
   import com.sulake.core.window.utils.tablet.TabletEventProcessor;
   import com.sulake.core.window.utils.tablet.TabletEventQueue;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.geom.Rectangle;
   
   public class WindowContext implements IWindowContext, IDisposable, IUpdateReceiver
   {
      
      public static const const_435:uint = 0;
      
      public static const const_1402:uint = 1;
      
      public static const const_1846:int = 0;
      
      public static const const_1891:int = 1;
      
      public static const const_1821:int = 2;
      
      public static const const_1693:int = 3;
      
      public static const const_1439:int = 4;
      
      public static const const_377:int = 5;
      
      public static var var_1463:IMouseCursor;
      
      public static var var_364:IEventQueue;
      
      private static var var_578:IEventProcessor;
      
      private static var var_1711:uint = const_435;
      
      private static var stage:Stage;
      
      private static var var_151:IWindowRenderer;
       
      
      private var _eventProcessorState:EventProcessorState;
      
      private var var_2376:IWindowContextStateListener;
      
      protected var _localization:ICoreLocalizationManager;
      
      protected var var_179:DisplayObjectContainer;
      
      protected var var_2766:Boolean = true;
      
      protected var var_1214:Error;
      
      protected var var_1962:int = -1;
      
      protected var var_1215:IInternalWindowServices;
      
      protected var var_1468:IWindowParser;
      
      protected var var_2709:IWindowFactory;
      
      protected var var_132:IDesktopWindow;
      
      protected var var_1469:SubstituteParentController;
      
      private var _disposed:Boolean = false;
      
      private var var_522:Boolean = false;
      
      private var var_2375:Boolean = false;
      
      private var _name:String;
      
      public function WindowContext(param1:String, param2:IWindowRenderer, param3:IWindowFactory, param4:ICoreLocalizationManager, param5:DisplayObjectContainer, param6:Rectangle, param7:IWindowContextStateListener)
      {
         super();
         this._name = param1;
         var_151 = param2;
         this._localization = param4;
         this.var_179 = param5;
         this.var_1215 = new ServiceManager(this,param5);
         this.var_2709 = param3;
         this.var_1468 = new WindowParser(this);
         this.var_2376 = param7;
         if(!stage)
         {
            if(this.var_179 is Stage)
            {
               stage = this.var_179 as Stage;
            }
            else if(this.var_179.stage)
            {
               stage = this.var_179.stage;
            }
         }
         Classes.init();
         if(param6 == null)
         {
            param6 = new Rectangle(0,0,800,600);
         }
         this.var_132 = new DesktopController("_CONTEXT_DESKTOP_" + this._name,this,param6);
         this.var_179.addChild(this.var_132.getDisplayObject());
         this.var_179.doubleClickEnabled = true;
         this.var_179.addEventListener(Event.RESIZE,this.stageResizedHandler);
         this._eventProcessorState = new EventProcessorState(var_151,this.var_132,this.var_132,null,this.var_2376);
         inputMode = const_435;
         this.var_1469 = new SubstituteParentController(this);
      }
      
      public static function get inputMode() : uint
      {
         return var_1711;
      }
      
      public static function set inputMode(param1:uint) : void
      {
         var value:uint = param1;
         if(var_364)
         {
            if(var_364 is IDisposable)
            {
               IDisposable(var_364).dispose();
            }
         }
         if(var_578)
         {
            if(var_578 is IDisposable)
            {
               IDisposable(var_578).dispose();
            }
         }
         switch(value)
         {
            case const_435:
               var_364 = new MouseEventQueue(stage);
               var_578 = new MouseEventProcessor();
               try
               {
               }
               catch(e:Error)
               {
               }
               break;
            case const_1402:
               var_364 = new TabletEventQueue(stage);
               var_578 = new TabletEventProcessor();
               try
               {
               }
               catch(e:Error)
               {
               }
               break;
            default:
               inputMode = const_435;
               throw new Error("Unknown input mode " + value);
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            this._disposed = true;
            this.var_179.removeEventListener(Event.RESIZE,this.stageResizedHandler);
            this.var_179.removeChild(IGraphicContextHost(this.var_132).getGraphicContext(true) as DisplayObject);
            this.var_132.destroy();
            this.var_132 = null;
            this.var_1469.destroy();
            this.var_1469 = null;
            if(this.var_1215 is IDisposable)
            {
               IDisposable(this.var_1215).dispose();
            }
            this.var_1215 = null;
            this.var_1468.dispose();
            this.var_1468 = null;
            var_151 = null;
         }
      }
      
      public function getLastError() : Error
      {
         return this.var_1214;
      }
      
      public function getLastErrorCode() : int
      {
         return this.var_1962;
      }
      
      public function handleError(param1:int, param2:Error) : void
      {
         this.var_1214 = param2;
         this.var_1962 = param1;
         if(this.var_2766)
         {
            throw param2;
         }
      }
      
      public function flushError() : void
      {
         this.var_1214 = null;
         this.var_1962 = -1;
      }
      
      public function getWindowServices() : IInternalWindowServices
      {
         return this.var_1215;
      }
      
      public function getWindowParser() : IWindowParser
      {
         return this.var_1468;
      }
      
      public function getWindowFactory() : IWindowFactory
      {
         return this.var_2709;
      }
      
      public function getDesktopWindow() : IDesktopWindow
      {
         return this.var_132;
      }
      
      public function getMouseCursor() : IMouseCursor
      {
         if(var_1463 == null)
         {
            var_1463 = new MouseCursorControl(this.var_179);
         }
         return var_1463;
      }
      
      public function findWindowByName(param1:String) : IWindow
      {
         return this.var_132.findChildByName(param1);
      }
      
      public function registerLocalizationListener(param1:String, param2:IWindow) : void
      {
         this._localization.registerListener(param1,param2 as ILocalizable);
      }
      
      public function removeLocalizationListener(param1:String, param2:IWindow) : void
      {
         this._localization.removeListener(param1,param2 as ILocalizable);
      }
      
      public function create(param1:String, param2:String, param3:uint, param4:uint, param5:uint, param6:Rectangle, param7:Function, param8:IWindow, param9:uint, param10:Array = null, param11:Array = null) : IWindow
      {
         var _loc12_:* = null;
         var _loc13_:Class = Classes.getWindowClassByType(param3);
         if(_loc13_ == null)
         {
            this.handleError(WindowContext.const_1439,new Error("Failed to solve implementation for window \"" + param1 + "\"!"));
            return null;
         }
         if(param8 == null)
         {
            if(param5 & 0)
            {
               param8 = this.var_1469;
            }
         }
         _loc12_ = new _loc13_(param1,param3,param4,param5,this,param6,param8 != null ? param8 : this.var_132,param7,param10,param11,param9);
         if(param2 && param2.length)
         {
            _loc12_.caption = param2;
         }
         return _loc12_;
      }
      
      public function destroy(param1:IWindow) : Boolean
      {
         if(param1 == this.var_132)
         {
            this.var_132 = null;
         }
         if(param1.state != WindowState.const_526)
         {
            param1.destroy();
         }
         return true;
      }
      
      public function invalidate(param1:IWindow, param2:Rectangle, param3:uint) : void
      {
         if(!this.disposed)
         {
            var_151.addToRenderQueue(WindowController(param1),param2,param3);
         }
      }
      
      public function update(param1:uint) : void
      {
         this.var_522 = true;
         if(this.var_1214)
         {
            throw this.var_1214;
         }
         var_578.process(this._eventProcessorState,var_364);
         this.var_522 = false;
      }
      
      public function render(param1:uint) : void
      {
         this.var_2375 = true;
         var_151.update(param1);
         this.var_2375 = false;
      }
      
      private function stageResizedHandler(param1:Event) : void
      {
         if(this.var_132 != null && !this.var_132.disposed)
         {
            if(this.var_179 is Stage)
            {
               this.var_132.width = Stage(this.var_179).stageWidth;
               this.var_132.height = Stage(this.var_179).stageHeight;
            }
            else
            {
               this.var_132.width = this.var_179.width;
               this.var_132.height = this.var_179.height;
            }
         }
      }
   }
}
