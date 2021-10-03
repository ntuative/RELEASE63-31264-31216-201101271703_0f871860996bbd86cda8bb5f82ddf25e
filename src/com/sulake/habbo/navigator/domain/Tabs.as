package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_332:int = 1;
      
      public static const const_222:int = 2;
      
      public static const const_283:int = 3;
      
      public static const const_342:int = 4;
      
      public static const const_251:int = 5;
      
      public static const const_364:int = 1;
      
      public static const const_776:int = 2;
      
      public static const const_832:int = 3;
      
      public static const const_611:int = 4;
      
      public static const const_246:int = 5;
      
      public static const const_771:int = 6;
      
      public static const const_781:int = 7;
      
      public static const const_206:int = 8;
      
      public static const const_392:int = 9;
      
      public static const const_1837:int = 10;
      
      public static const const_708:int = 11;
      
      public static const const_459:int = 12;
       
      
      private var var_390:Array;
      
      private var _navigator:HabboNavigator;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_390 = new Array();
         this.var_390.push(new Tab(this._navigator,const_332,const_459,new EventsTabPageDecorator(this._navigator),MainViewCtrl.const_528));
         this.var_390.push(new Tab(this._navigator,const_222,const_364,new RoomsTabPageDecorator(this._navigator),MainViewCtrl.const_528));
         this.var_390.push(new Tab(this._navigator,const_342,const_708,new OfficialTabPageDecorator(this._navigator),MainViewCtrl.const_1059));
         this.var_390.push(new Tab(this._navigator,const_283,const_246,new MyRoomsTabPageDecorator(this._navigator),MainViewCtrl.const_528));
         this.var_390.push(new Tab(this._navigator,const_251,const_206,new SearchTabPageDecorator(this._navigator),MainViewCtrl.const_788));
         this.setSelectedTab(const_332);
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_342;
      }
      
      public function get tabs() : Array
      {
         return this.var_390;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         this.getTab(param1).selected = true;
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_390)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_390)
         {
            _loc1_.selected = false;
         }
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in this.var_390)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
   }
}
