package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class FramerateTracker
   {
       
      
      private var var_1485:int;
      
      private var var_2593:int;
      
      private var var_1171:int;
      
      private var var_439:Number;
      
      private var var_2595:Boolean;
      
      private var var_2594:int;
      
      private var var_1838:int;
      
      public function FramerateTracker()
      {
         super();
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_2593 = int(param1.getKey("tracking.framerate.reportInterval.seconds","300")) * 1000;
         this.var_2594 = int(param1.getKey("tracking.framerate.maximumEvents","5"));
         this.var_2595 = true;
      }
      
      public function trackUpdate(param1:uint, param2:IHabboTracking, param3:int) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         ++this.var_1171;
         if(this.var_1171 == 1)
         {
            this.var_439 = param1;
            this.var_1485 = param3;
         }
         else
         {
            _loc4_ = Number(this.var_1171);
            this.var_439 = this.var_439 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
         }
         if(this.var_2595 && param3 - this.var_1485 >= this.var_2593 && this.var_1838 < this.var_2594)
         {
            _loc5_ = 1000 / this.var_439;
            param2.track("performance","averageFramerate",Math.round(_loc5_));
            ++this.var_1838;
            this.var_1485 = param3;
            this.var_1171 = 0;
         }
      }
      
      public function dispose() : void
      {
      }
   }
}
