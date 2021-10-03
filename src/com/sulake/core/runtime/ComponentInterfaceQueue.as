package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_1874:IID;
      
      private var var_750:Boolean;
      
      private var var_1178:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         this.var_1874 = param1;
         this.var_1178 = new Array();
         this.var_750 = false;
      }
      
      public function get identifier() : IID
      {
         return this.var_1874;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_750;
      }
      
      public function get receivers() : Array
      {
         return this.var_1178;
      }
      
      public function dispose() : void
      {
         if(!this.var_750)
         {
            this.var_750 = true;
            this.var_1874 = null;
            while(this.var_1178.length > 0)
            {
               this.var_1178.pop();
            }
            this.var_1178 = null;
         }
      }
   }
}
