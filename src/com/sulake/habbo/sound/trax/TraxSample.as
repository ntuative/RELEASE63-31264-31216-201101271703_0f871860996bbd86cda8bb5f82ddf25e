package com.sulake.habbo.sound.trax
{
   import flash.utils.ByteArray;
   
   public class TraxSample
   {
      
      private static const const_942:int = 32;
       
      
      private var var_1427:Vector.<Number> = null;
      
      private var _id:int;
      
      public function TraxSample(param1:ByteArray, param2:int)
      {
         var _loc5_:Number = NaN;
         super();
         this._id = param2;
         var _loc3_:int = param1.length / 8;
         this.var_1427 = new Vector.<Number>(_loc3_,true);
         param1.position = 0;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1.readFloat();
            param1.readFloat();
            if(_loc4_ >= _loc3_ - 1 - const_942)
            {
               _loc5_ *= (_loc3_ - _loc4_ - 1) / Number(const_942);
            }
            this.var_1427[_loc4_] = _loc5_;
            _loc4_++;
         }
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get length() : uint
      {
         return this.var_1427.length;
      }
      
      public function get data() : Vector.<Number>
      {
         return this.var_1427;
      }
   }
}