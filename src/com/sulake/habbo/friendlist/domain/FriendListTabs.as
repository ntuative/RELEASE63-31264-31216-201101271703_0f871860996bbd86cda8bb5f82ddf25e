package com.sulake.habbo.friendlist.domain
{
   import com.sulake.habbo.friendlist.FriendRequestsView;
   import com.sulake.habbo.friendlist.FriendsView;
   import com.sulake.habbo.friendlist.SearchView;
   
   public class FriendListTabs
   {
       
      
      private var var_398:IFriendListTabsDeps;
      
      private var var_390:Array;
      
      private var var_1816:FriendListTab;
      
      private var var_1163:int = 200;
      
      private var var_2582:int = 200;
      
      private var var_1817:int = 200;
      
      public function FriendListTabs(param1:IFriendListTabsDeps)
      {
         this.var_390 = new Array();
         super();
         this.var_398 = param1;
         this.var_390.push(new FriendListTab(this.var_398.getFriendList(),FriendListTab.const_93,new FriendsView(),"${friendlist.friends}","friends_footer","hdr_friends"));
         this.var_390.push(new FriendListTab(this.var_398.getFriendList(),FriendListTab.const_94,new FriendRequestsView(),"${friendlist.tab.friendrequests}","friend_requests_footer","hdr_friend_requests"));
         this.var_390.push(new FriendListTab(this.var_398.getFriendList(),FriendListTab.const_340,new SearchView(),"${generic.search}","search_footer","hdr_search"));
         this.toggleSelected(null);
      }
      
      public function getTabs() : Array
      {
         return this.var_390;
      }
      
      public function findTab(param1:int) : FriendListTab
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
      
      public function clearSelections() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_390)
         {
            _loc1_.setSelected(false);
         }
      }
      
      public function findSelectedTab() : FriendListTab
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
      
      public function toggleSelected(param1:FriendListTab) : void
      {
         var _loc2_:FriendListTab = this.findSelectedTab();
         if(_loc2_ == null)
         {
            this.var_1163 = this.var_2582;
            this.setSelected(this.determineDisplayedTab(param1),true);
         }
         else if(_loc2_ == param1 || param1 == null)
         {
            this.var_2582 = this.var_1163;
            this.var_1163 = 0;
            this.clearSelections();
         }
         else
         {
            this.setSelected(this.determineDisplayedTab(param1),true);
         }
      }
      
      private function setSelected(param1:FriendListTab, param2:Boolean) : void
      {
         var _loc3_:FriendListTab = this.findSelectedTab();
         this.clearSelections();
         param1.setSelected(param2);
         if(param2)
         {
            this.var_1816 = param1;
         }
      }
      
      private function determineDisplayedTab(param1:FriendListTab) : FriendListTab
      {
         if(param1 != null)
         {
            return param1;
         }
         if(this.var_1816 != null)
         {
            return this.var_1816;
         }
         return this.var_390[0];
      }
      
      public function get tabContentHeight() : int
      {
         return this.var_1163;
      }
      
      public function get windowWidth() : int
      {
         return this.var_1817;
      }
      
      public function get tabContentWidth() : int
      {
         return this.var_1817 - 2;
      }
      
      public function set tabContentHeight(param1:int) : void
      {
         this.var_1163 = param1;
      }
      
      public function set windowWidth(param1:int) : void
      {
         this.var_1817 = param1;
      }
   }
}