package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class ToolbarClickTracker
   {
       
      
      private var var_1223:IHabboTracking;
      
      private var var_1910:Boolean = false;
      
      private var var_2211:int = 0;
      
      private var var_1623:int = 0;
      
      public function ToolbarClickTracker(param1:IHabboTracking)
      {
         super();
         this.var_1223 = param1;
      }
      
      public function dispose() : void
      {
         this.var_1223 = null;
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_1910 = Boolean(parseInt(param1.getKey("toolbar.tracking.enabled","1")));
         this.var_2211 = parseInt(param1.getKey("toolbar.tracking.max.events","100"));
      }
      
      public function track(param1:String) : void
      {
         if(!this.var_1910)
         {
            return;
         }
         ++this.var_1623;
         if(this.var_1623 <= this.var_2211)
         {
            this.var_1223.track("toolbar",param1);
         }
      }
   }
}
