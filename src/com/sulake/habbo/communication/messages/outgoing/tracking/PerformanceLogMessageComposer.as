package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_2583:int = 0;
      
      private var var_1230:String = "";
      
      private var var_1483:String = "";
      
      private var var_2000:String = "";
      
      private var var_2587:String = "";
      
      private var var_1821:int = 0;
      
      private var var_2588:int = 0;
      
      private var var_2586:int = 0;
      
      private var var_1229:int = 0;
      
      private var var_2585:int = 0;
      
      private var var_1227:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         this.var_2583 = param1;
         this.var_1230 = param2;
         this.var_1483 = param3;
         this.var_2000 = param4;
         this.var_2587 = param5;
         if(param6)
         {
            this.var_1821 = 1;
         }
         else
         {
            this.var_1821 = 0;
         }
         this.var_2588 = param7;
         this.var_2586 = param8;
         this.var_1229 = param9;
         this.var_2585 = param10;
         this.var_1227 = param11;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2583,this.var_1230,this.var_1483,this.var_2000,this.var_2587,this.var_1821,this.var_2588,this.var_2586,this.var_1229,this.var_2585,this.var_1227];
      }
   }
}
