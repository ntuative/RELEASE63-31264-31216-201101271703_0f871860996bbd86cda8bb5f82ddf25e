package com.sulake.habbo.ui
{
   import com.sulake.habbo.session.events.RoomSessionVoteEvent;
   import com.sulake.habbo.widget.RoomWidgetEnum;
   import com.sulake.habbo.widget.events.RoomWidgetFrameUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetVoteUpdateEvent;
   import com.sulake.habbo.widget.messages.RoomWidgetMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetVoteMessage;
   import flash.events.Event;
   
   public class VoteWidgetHandler implements IRoomWidgetHandler
   {
       
      
      private var var_750:Boolean = false;
      
      private var _container:IRoomWidgetHandlerContainer = null;
      
      public function VoteWidgetHandler()
      {
         super();
      }
      
      public function get disposed() : Boolean
      {
         return this.var_750;
      }
      
      public function get type() : String
      {
         return RoomWidgetEnum.const_115;
      }
      
      public function set container(param1:IRoomWidgetHandlerContainer) : void
      {
         this._container = param1;
      }
      
      public function dispose() : void
      {
         this.var_750 = true;
         this._container = null;
      }
      
      public function getWidgetMessages() : Array
      {
         return [RoomWidgetVoteMessage.const_115];
      }
      
      public function processWidgetMessage(param1:RoomWidgetMessage) : RoomWidgetUpdateEvent
      {
         var _loc2_:* = null;
         switch(param1.type)
         {
            case RoomWidgetVoteMessage.const_115:
               _loc2_ = param1 as RoomWidgetVoteMessage;
               if(_loc2_ == null)
               {
                  return null;
               }
               this._container.roomSession.sendVote(_loc2_.vote);
               break;
         }
         return null;
      }
      
      public function getProcessedEvents() : Array
      {
         var _loc1_:* = [];
         _loc1_.push(RoomSessionVoteEvent.const_131);
         _loc1_.push(RoomSessionVoteEvent.const_126);
         return _loc1_;
      }
      
      public function processEvent(param1:Event) : void
      {
         var _loc3_:* = null;
         if(this._container == null || this._container.events == null)
         {
            return;
         }
         var _loc2_:RoomSessionVoteEvent = param1 as RoomSessionVoteEvent;
         if(_loc2_ == null)
         {
            return;
         }
         switch(param1.type)
         {
            case RoomSessionVoteEvent.const_131:
               _loc3_ = new RoomWidgetVoteUpdateEvent(RoomWidgetVoteUpdateEvent.const_131,_loc2_.question,_loc2_.choices);
               break;
            case RoomSessionVoteEvent.const_126:
               _loc3_ = new RoomWidgetVoteUpdateEvent(RoomWidgetVoteUpdateEvent.const_126,_loc2_.question,_loc2_.choices,_loc2_.votes,_loc2_.totalVotes);
         }
         if(_loc3_ == null)
         {
            return;
         }
         this._container.events.dispatchEvent(_loc3_);
      }
      
      public function update() : void
      {
         this._container.events.dispatchEvent(new RoomWidgetFrameUpdateEvent());
      }
   }
}
