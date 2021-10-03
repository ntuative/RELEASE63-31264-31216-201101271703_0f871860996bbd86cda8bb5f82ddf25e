package com.sulake.habbo.toolbar
{
   public class ToolbarIconBouncer
   {
       
      
      private var var_2324:Number;
      
      private var var_1586:Number;
      
      private var var_877:Number;
      
      private var var_878:Number = 0;
      
      public function ToolbarIconBouncer(param1:Number, param2:Number)
      {
         super();
         this.var_2324 = param1;
         this.var_1586 = param2;
      }
      
      public function reset(param1:int) : void
      {
         this.var_877 = param1;
         this.var_878 = 0;
      }
      
      public function update() : void
      {
         this.var_877 += this.var_1586;
         this.var_878 += this.var_877;
         if(this.var_878 > 0)
         {
            this.var_878 = 0;
            this.var_877 = this.var_2324 * -1 * this.var_877;
         }
      }
      
      public function get location() : Number
      {
         return this.var_878;
      }
   }
}
