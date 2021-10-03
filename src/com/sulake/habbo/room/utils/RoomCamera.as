package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_920:int = 3;
       
      
      private var var_2480:int = -1;
      
      private var var_2482:int = -2;
      
      private var var_348:Vector3d = null;
      
      private var var_404:Vector3d = null;
      
      private var var_2479:Boolean = false;
      
      private var var_2484:Boolean = false;
      
      private var var_2486:Boolean = false;
      
      private var var_2488:Boolean = false;
      
      private var var_2483:int = 0;
      
      private var var_2487:int = 0;
      
      private var var_2485:int = 0;
      
      private var var_2481:int = 0;
      
      private var var_1375:int = 0;
      
      public function RoomCamera()
      {
         super();
      }
      
      public function get location() : IVector3d
      {
         return this.var_404;
      }
      
      public function get targetId() : int
      {
         return this.var_2480;
      }
      
      public function get targetCategory() : int
      {
         return this.var_2482;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return this.var_2479;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return this.var_2484;
      }
      
      public function get centeredLocX() : Boolean
      {
         return this.var_2486;
      }
      
      public function get centeredLocY() : Boolean
      {
         return this.var_2488;
      }
      
      public function get screenWd() : int
      {
         return this.var_2483;
      }
      
      public function get screenHt() : int
      {
         return this.var_2487;
      }
      
      public function get roomWd() : int
      {
         return this.var_2485;
      }
      
      public function get roomHt() : int
      {
         return this.var_2481;
      }
      
      public function set targetId(param1:int) : void
      {
         this.var_2480 = param1;
      }
      
      public function set targetCategory(param1:int) : void
      {
         this.var_2482 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         this.var_2479 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         this.var_2484 = param1;
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         this.var_2486 = param1;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         this.var_2488 = param1;
      }
      
      public function set screenWd(param1:int) : void
      {
         this.var_2483 = param1;
      }
      
      public function set screenHt(param1:int) : void
      {
         this.var_2487 = param1;
      }
      
      public function set roomWd(param1:int) : void
      {
         this.var_2485 = param1;
      }
      
      public function set roomHt(param1:int) : void
      {
         this.var_2481 = param1;
      }
      
      public function set target(param1:IVector3d) : void
      {
         if(this.var_348 == null)
         {
            this.var_348 = new Vector3d();
         }
         if(this.var_348.x != param1.x || this.var_348.y != param1.y || this.var_348.z != param1.z)
         {
            this.var_348.assign(param1);
            this.var_1375 = 0;
         }
      }
      
      public function dispose() : void
      {
         this.var_348 = null;
         this.var_404 = null;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(this.var_404 != null)
         {
            return;
         }
         this.var_404 = new Vector3d();
         this.var_404.assign(param1);
      }
      
      public function update(param1:uint, param2:Number, param3:Number) : void
      {
         var _loc4_:* = null;
         if(this.var_348 != null && this.var_404 != null)
         {
            ++this.var_1375;
            _loc4_ = Vector3d.dif(this.var_348,this.var_404);
            if(_loc4_.length <= param2)
            {
               this.var_404 = this.var_348;
               this.var_348 = null;
            }
            else
            {
               _loc4_.div(_loc4_.length);
               if(_loc4_.length < param2 * (const_920 + 1))
               {
                  _loc4_.mul(param2);
               }
               else if(this.var_1375 <= const_920)
               {
                  _loc4_.mul(param2);
               }
               else
               {
                  _loc4_.mul(param3);
               }
               this.var_404 = Vector3d.sum(this.var_404,_loc4_);
            }
         }
      }
   }
}
