package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct implements IDisposable
   {
       
      
      private var var_1416:IID;
      
      private var var_1839:String;
      
      private var var_111:IUnknown;
      
      private var var_760:uint;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         this.var_1416 = param1;
         this.var_1839 = getQualifiedClassName(this.var_1416);
         this.var_111 = param2;
         this.var_760 = 0;
      }
      
      public function get iid() : IID
      {
         return this.var_1416;
      }
      
      public function get iis() : String
      {
         return this.var_1839;
      }
      
      public function get unknown() : IUnknown
      {
         return this.var_111;
      }
      
      public function get references() : uint
      {
         return this.var_760;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_111 == null;
      }
      
      public function dispose() : void
      {
         this.var_1416 = null;
         this.var_1839 = null;
         this.var_111 = null;
         this.var_760 = 0;
      }
      
      public function reserve() : uint
      {
         return ++this.var_760;
      }
      
      public function release() : uint
      {
         return this.references > 0 ? uint(--this.var_760) : uint(0);
      }
   }
}
