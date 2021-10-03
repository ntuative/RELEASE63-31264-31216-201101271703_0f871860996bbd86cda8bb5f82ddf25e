package com.sulake.habbo.room.object.visualization.avatar
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.IAvatarImage;
   import com.sulake.habbo.avatar.IAvatarImageListener;
   import com.sulake.habbo.avatar.animation.IAnimationLayerData;
   import com.sulake.habbo.avatar.animation.ISpriteDataContainer;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import com.sulake.habbo.avatar.enum.AvatarSetType;
   import com.sulake.habbo.room.object.RoomObjectVariableEnum;
   import com.sulake.room.object.IRoomObject;
   import com.sulake.room.object.IRoomObjectModel;
   import com.sulake.room.object.visualization.IRoomObjectSprite;
   import com.sulake.room.object.visualization.IRoomObjectVisualizationData;
   import com.sulake.room.object.visualization.RoomObjectSpriteVisualization;
   import com.sulake.room.utils.IRoomGeometry;
   import flash.display.BitmapData;
   import flash.display.BlendMode;
   
   public class AvatarVisualization extends RoomObjectSpriteVisualization implements IAvatarImageListener
   {
      
      private static const const_937:String = "avatar";
      
      private static const const_590:Number = -0.01;
      
      private static const const_589:Number = -0.409;
      
      private static const const_935:int = 2;
      
      private static const const_1285:Array = [0,0,0];
      
      private static const const_1322:int = 3;
       
      
      private var var_614:AvatarVisualizationData = null;
      
      private var var_489:Map;
      
      private var var_509:Map;
      
      private var var_1113:int = 0;
      
      private var var_875:Boolean;
      
      private var var_532:String;
      
      private var var_803:String;
      
      private var var_1112:int = 0;
      
      private var var_616:BitmapDataAsset;
      
      private var var_933:BitmapDataAsset;
      
      private var var_1732:int = -1;
      
      private var var_1829:int = -1;
      
      private var var_1835:int = -1;
      
      private const const_936:int = 0;
      
      private const const_1670:int = 1;
      
      private const const_1685:int = 2;
      
      private const const_1686:int = 3;
      
      private const const_1284:int = 4;
      
      private var var_1490:int = -1;
      
      private var var_259:String = "";
      
      private var _postureParameter:String = "";
      
      private var var_1832:Boolean = false;
      
      private var var_1834:Boolean = false;
      
      private var var_1830:Boolean = false;
      
      private var var_1409:Boolean = false;
      
      private var var_542:Boolean = false;
      
      private var var_1358:int = 0;
      
      private var var_1411:int = 0;
      
      private var var_2516:int = 0;
      
      private var var_755:int = 0;
      
      private var var_757:int = 0;
      
      private var var_615:int = 0;
      
      private var var_1410:int = 0;
      
      private var var_1169:Boolean = false;
      
      private var var_1831:Boolean = false;
      
      private var var_1168:int = 0;
      
      private var var_756:int = 0;
      
      private var var_1833:Boolean = false;
      
      private var var_1170:int = 0;
      
      private var var_57:IAvatarImage = null;
      
      private var var_750:Boolean;
      
      public function AvatarVisualization()
      {
         super();
         this.var_489 = new Map();
         this.var_509 = new Map();
         this.var_875 = false;
      }
      
      override public function dispose() : void
      {
         if(this.var_489 != null)
         {
            this.resetImages();
            this.var_489.dispose();
            this.var_509.dispose();
            this.var_489 = null;
         }
         this.var_614 = null;
         this.var_616 = null;
         this.var_933 = null;
         super.dispose();
         this.var_750 = true;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_750;
      }
      
      override public function initialize(param1:IRoomObjectVisualizationData) : Boolean
      {
         this.var_614 = param1 as AvatarVisualizationData;
         createSprites(this.const_1284);
         return true;
      }
      
      private function updateModel(param1:IRoomObjectModel, param2:Number, param3:Boolean) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:* = false;
         var _loc6_:int = 0;
         var _loc7_:* = null;
         var _loc8_:* = null;
         if(param1.getUpdateID() != var_223)
         {
            _loc4_ = false;
            _loc5_ = false;
            _loc6_ = 0;
            _loc7_ = "";
            _loc5_ = Boolean(param1.getNumber(RoomObjectVariableEnum.const_216) > 0 && param3);
            if(_loc5_ != this.var_1832)
            {
               this.var_1832 = _loc5_;
               _loc4_ = true;
            }
            _loc5_ = param1.getNumber(RoomObjectVariableEnum.const_230) > 0;
            if(_loc5_ != this.var_1834)
            {
               this.var_1834 = _loc5_;
               _loc4_ = true;
            }
            _loc5_ = param1.getNumber(RoomObjectVariableEnum.const_428) > 0;
            if(_loc5_ != this.var_1830)
            {
               this.var_1830 = _loc5_;
               _loc4_ = true;
            }
            _loc5_ = Boolean(param1.getNumber(RoomObjectVariableEnum.const_850) > 0 && param3);
            if(_loc5_ != this.var_1409)
            {
               this.var_1409 = _loc5_;
               _loc4_ = true;
            }
            _loc5_ = param1.getNumber(RoomObjectVariableEnum.const_1080) > 0;
            if(_loc5_ != this.var_542)
            {
               this.var_542 = _loc5_;
               _loc4_ = true;
               this.updateTypingBubble(param2);
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_282);
            if(_loc6_ != this.var_1358)
            {
               this.var_1358 = _loc6_;
               _loc4_ = true;
            }
            _loc7_ = param1.getString(RoomObjectVariableEnum.const_550);
            if(_loc7_ != this.var_259)
            {
               this.var_259 = _loc7_;
               _loc4_ = true;
            }
            _loc7_ = param1.getString(RoomObjectVariableEnum.const_712);
            if(_loc7_ != this._postureParameter)
            {
               this._postureParameter = _loc7_;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_1173);
            if(_loc6_ != this.var_1411)
            {
               this.var_1411 = _loc6_;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_431);
            if(_loc6_ != this.var_755)
            {
               this.var_755 = _loc6_;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_416);
            if(_loc6_ != this.var_757)
            {
               this.var_757 = _loc6_;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_363);
            if(_loc6_ != this.var_615)
            {
               this.var_615 = _loc6_;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_353);
            if(_loc6_ != this.var_1732)
            {
               this.var_1732 = _loc6_;
               _loc4_ = true;
            }
            if(this.var_757 > 0 && param1.getNumber(RoomObjectVariableEnum.const_363) > 0)
            {
               if(this.var_615 != this.var_757)
               {
                  this.var_615 = this.var_757;
                  _loc4_ = true;
               }
            }
            else if(this.var_615 != 0)
            {
               this.var_615 = 0;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_629);
            if(_loc6_ != this.var_1168)
            {
               this.var_1168 = _loc6_;
               _loc4_ = true;
               this.updateNumberBubble(param2);
            }
            this.validateActions(param2);
            _loc7_ = param1.getString(RoomObjectVariableEnum.const_1030);
            if(_loc7_ != this.var_803)
            {
               this.var_803 = _loc7_;
               _loc4_ = true;
            }
            _loc8_ = param1.getString(RoomObjectVariableEnum.const_169);
            if(this.updateFigure(_loc8_))
            {
               _loc4_ = true;
            }
            var_223 = param1.getUpdateID();
            return _loc4_;
         }
         return false;
      }
      
      private function updateFigure(param1:String) : Boolean
      {
         if(this.var_532 != param1)
         {
            this.var_532 = param1;
            this.resetImages();
            return true;
         }
         return false;
      }
      
      private function resetImages() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         for each(_loc1_ in this.var_489)
         {
            if(_loc1_)
            {
               _loc1_.dispose();
            }
         }
         for each(_loc1_ in this.var_509)
         {
            if(_loc1_)
            {
               _loc1_.dispose();
            }
         }
         this.var_489.reset();
         this.var_509.reset();
         this.var_57 = null;
         _loc2_ = getSprite(this.const_936);
         if(_loc2_ != null)
         {
            _loc2_.asset = null;
            _loc2_.alpha = 255;
         }
      }
      
      private function validateActions(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(param1 < 48)
         {
            this.var_1409 = false;
         }
         if(this.var_259 == "sit" || this.var_259 == "lay")
         {
            this.var_1410 = param1 / 2;
         }
         else
         {
            this.var_1410 = 0;
         }
         this.var_1831 = false;
         this.var_1169 = false;
         if(this.var_259 == "lay")
         {
            this.var_1169 = true;
            _loc2_ = int(this._postureParameter);
            if(_loc2_ < 0)
            {
               this.var_1831 = true;
            }
         }
      }
      
      private function getAvatarImage(param1:Number, param2:int) : IAvatarImage
      {
         var _loc3_:* = null;
         var _loc4_:String = "avatarImage" + param1.toString();
         if(param2 == 0)
         {
            _loc3_ = this.var_489.getValue(_loc4_) as IAvatarImage;
         }
         else
         {
            _loc4_ += "-" + param2;
            _loc3_ = this.var_509.getValue(_loc4_) as IAvatarImage;
         }
         if(_loc3_ == null)
         {
            _loc3_ = this.var_614.getAvatar(this.var_532,param1,this.var_803,this);
            if(_loc3_ != null)
            {
               if(param2 == 0)
               {
                  this.var_489.add(_loc4_,_loc3_);
               }
               else
               {
                  if(this.var_509.length >= const_1322)
                  {
                     this.var_509.remove(this.var_509.getKeys().shift());
                  }
                  this.var_509.add(_loc4_,_loc3_);
               }
            }
         }
         return _loc3_;
      }
      
      private function updateObject(param1:IRoomObject, param2:IRoomGeometry, param3:Boolean, param4:Boolean = false) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         if(param4 || var_427 != param1.getUpdateID() || this.var_1490 != param2.updateId)
         {
            _loc5_ = param3;
            _loc6_ = param1.getDirection().x - param2.direction.x;
            _loc6_ = (_loc6_ % 360 + 360) % 360;
            _loc7_ = this.var_1732;
            if(this.var_259 == "float")
            {
               _loc7_ = _loc6_;
            }
            else
            {
               _loc7_ -= param2.direction.x;
            }
            _loc7_ = (_loc7_ % 360 + 360) % 360;
            if(_loc6_ != this.var_1829 || param4)
            {
               _loc5_ = true;
               this.var_1829 = _loc6_;
               _loc6_ -= 112.5;
               _loc6_ = (_loc6_ + 360) % 360;
               this.var_57.setDirectionAngle(AvatarSetType.const_33,_loc6_);
            }
            if(_loc7_ != this.var_1835 || param4)
            {
               _loc5_ = true;
               this.var_1835 = _loc7_;
               if(this.var_1835 != this.var_1829)
               {
                  _loc7_ -= 112.5;
                  _loc7_ = (_loc7_ + 360) % 360;
                  this.var_57.setDirectionAngle(AvatarSetType.const_46,_loc7_);
               }
            }
            var_427 = param1.getUpdateID();
            this.var_1490 = param2.updateId;
            return _loc5_;
         }
         return false;
      }
      
      private function updateShadow(param1:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc2_:IRoomObjectSprite = getSprite(this.const_1670);
         this.var_616 = null;
         if(this.var_259 == "mv" || this.var_259 == "std")
         {
            _loc2_.visible = true;
            if(this.var_616 == null || param1 != var_222)
            {
               _loc3_ = 0;
               _loc4_ = 0;
               if(param1 < 48)
               {
                  this.var_616 = this.var_57.getAsset("sh_std_sd_1_0_0");
                  _loc3_ = -8;
                  _loc4_ = -3;
               }
               else
               {
                  this.var_616 = this.var_57.getAsset("h_std_sd_1_0_0");
                  _loc3_ = -17;
                  _loc4_ = -7;
               }
               if(this.var_616 != null)
               {
                  _loc2_.asset = this.var_616.content as BitmapData;
                  _loc2_.offsetX = _loc3_;
                  _loc2_.offsetY = _loc4_;
                  _loc2_.alpha = 50;
                  _loc2_.relativeDepth = 1;
               }
               else
               {
                  _loc2_.visible = false;
               }
            }
         }
         else
         {
            this.var_616 = null;
            _loc2_.visible = false;
         }
      }
      
      private function updateTypingBubble(param1:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         this.var_933 = null;
         var _loc2_:IRoomObjectSprite = getSprite(this.const_1685);
         if(this.var_542)
         {
            _loc2_.visible = true;
            _loc5_ = 64;
            if(param1 < 48)
            {
               this.var_933 = this.var_614.getAvatarRendererAsset("user_typing_small_png") as BitmapDataAsset;
               _loc3_ = 3;
               _loc4_ = -42;
               _loc5_ = 32;
            }
            else
            {
               this.var_933 = this.var_614.getAvatarRendererAsset("user_typing_png") as BitmapDataAsset;
               _loc3_ = 14;
               _loc4_ = -83;
            }
            if(this.var_259 == "sit")
            {
               _loc4_ += _loc5_ / 2;
            }
            else if(this.var_259 == "lay")
            {
               _loc4_ += _loc5_;
            }
            if(this.var_933 != null)
            {
               _loc2_.asset = this.var_933.content as BitmapData;
               _loc2_.offsetX = _loc3_;
               _loc2_.offsetY = _loc4_;
               _loc2_.relativeDepth = -0.02;
            }
         }
         else
         {
            _loc2_.visible = false;
         }
      }
      
      private function updateNumberBubble(param1:Number) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc2_:* = null;
         var _loc3_:IRoomObjectSprite = getSprite(this.const_1686);
         if(this.var_1168 > 0)
         {
            _loc6_ = 64;
            if(param1 < 48)
            {
               _loc2_ = this.var_614.getAvatarRendererAsset("number_" + this.var_1168 + "_small_png") as BitmapDataAsset;
               _loc4_ = -6;
               _loc5_ = -52;
               _loc6_ = 32;
            }
            else
            {
               _loc2_ = this.var_614.getAvatarRendererAsset("number_" + this.var_1168 + "_png") as BitmapDataAsset;
               _loc4_ = -8;
               _loc5_ = -105;
            }
            if(this.var_259 == "sit")
            {
               _loc5_ += _loc6_ / 2;
            }
            else if(this.var_259 == "lay")
            {
               _loc5_ += _loc6_;
            }
            if(_loc2_ != null)
            {
               _loc3_.visible = true;
               _loc3_.asset = _loc2_.content as BitmapData;
               _loc3_.offsetX = _loc4_;
               _loc3_.offsetY = _loc5_;
               _loc3_.relativeDepth = -0.01;
               this.var_756 = 1;
               this.var_1833 = true;
               this.var_1170 = 0;
               _loc3_.alpha = 0;
            }
            else
            {
               _loc3_.visible = false;
            }
         }
         else if(_loc3_.visible)
         {
            this.var_756 = -1;
         }
      }
      
      private function animateNumberBubble(param1:int) : Boolean
      {
         var _loc5_:int = 0;
         var _loc2_:IRoomObjectSprite = getSprite(this.const_1686);
         var _loc3_:int = _loc2_.alpha;
         var _loc4_:Boolean = false;
         if(this.var_1833)
         {
            ++this.var_1170;
            if(this.var_1170 < 10)
            {
               return false;
            }
            if(this.var_756 < 0)
            {
               if(param1 < 48)
               {
                  _loc2_.offsetY -= 2;
               }
               else
               {
                  _loc2_.offsetY -= 4;
               }
            }
            else
            {
               _loc5_ = 4;
               if(param1 < 48)
               {
                  _loc5_ = 8;
               }
               if(this.var_1170 % _loc5_ == 0)
               {
                  --_loc2_.offsetY;
                  _loc4_ = true;
               }
            }
         }
         if(this.var_756 > 0)
         {
            if(_loc3_ < 255)
            {
               _loc3_ += 32;
            }
            if(_loc3_ >= 255)
            {
               _loc3_ = 255;
               this.var_756 = 0;
            }
            _loc2_.alpha = _loc3_;
            return true;
         }
         if(this.var_756 < 0)
         {
            if(_loc3_ >= 0)
            {
               _loc3_ -= 32;
            }
            if(_loc3_ <= 0)
            {
               this.var_756 = 0;
               this.var_1833 = false;
               _loc3_ = 0;
               _loc2_.visible = false;
            }
            _loc2_.alpha = _loc3_;
            return true;
         }
         return _loc4_;
      }
      
      override public function update(param1:IRoomGeometry, param2:int, param3:Boolean) : void
      {
         var _loc15_:* = null;
         var _loc16_:* = null;
         var _loc17_:* = null;
         var _loc18_:int = 0;
         var _loc19_:* = null;
         var _loc20_:* = null;
         var _loc21_:* = null;
         var _loc22_:int = 0;
         var _loc23_:int = 0;
         var _loc24_:* = null;
         var _loc25_:int = 0;
         var _loc26_:int = 0;
         var _loc27_:int = 0;
         var _loc28_:int = 0;
         var _loc29_:int = 0;
         var _loc30_:* = null;
         var _loc31_:* = null;
         var _loc4_:IRoomObject = object;
         if(_loc4_ == null)
         {
            return;
         }
         if(param1 == null)
         {
            return;
         }
         if(this.var_614 == null)
         {
            return;
         }
         var _loc5_:IRoomObjectModel = _loc4_.getModel();
         var _loc6_:Number = param1.scale;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = false;
         var _loc10_:int = this.var_755;
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = this.updateModel(_loc5_,_loc6_,param3);
         if(this.animateNumberBubble(_loc6_))
         {
            increaseUpdateId();
         }
         if(_loc12_ || _loc6_ != var_222 || this.var_57 == null)
         {
            if(_loc6_ != var_222)
            {
               _loc8_ = true;
               this.validateActions(_loc6_);
            }
            if(_loc10_ != this.var_755)
            {
               _loc11_ = true;
            }
            if(_loc8_ || this.var_57 == null || _loc11_)
            {
               this.var_57 = this.getAvatarImage(_loc6_,this.var_755);
               if(this.var_57 == null)
               {
                  return;
               }
               _loc7_ = true;
               _loc15_ = getSprite(this.const_936);
               if(_loc15_ && this.var_57 && this.var_57.isPlaceholder())
               {
                  _loc15_.alpha = 150;
               }
               else if(_loc15_)
               {
                  _loc15_.alpha = 255;
               }
            }
            if(this.var_57 == null)
            {
               return;
            }
            this.updateShadow(_loc6_);
            if(_loc8_)
            {
               this.updateTypingBubble(_loc6_);
               this.updateNumberBubble(_loc6_);
            }
            _loc9_ = this.updateObject(_loc4_,param1,param3,true);
            this.updateActions(this.var_57);
            var_222 = _loc6_;
         }
         else
         {
            _loc9_ = this.updateObject(_loc4_,param1,param3);
         }
         var _loc13_:Boolean = _loc9_ || _loc12_ || _loc8_;
         var _loc14_:Boolean = (this.var_875 || this.var_1112 > 0) && param3;
         if(_loc13_)
         {
            this.var_1112 = const_935;
         }
         if(_loc13_ || _loc14_)
         {
            increaseUpdateId();
            --this.var_1112;
            --this.var_1113;
            if(!(this.var_1113 <= 0 || _loc8_ || _loc12_ || _loc7_))
            {
               return;
            }
            this.var_57.updateAnimationByFrames(1);
            this.var_1113 = const_935;
            _loc17_ = this.var_57.getCanvasOffsets();
            if(_loc17_ == null || _loc17_.length < 3)
            {
               _loc17_ = const_1285;
            }
            _loc16_ = getSprite(this.const_936);
            if(_loc16_ != null)
            {
               _loc20_ = this.var_57.getImage(AvatarSetType.const_33,false);
               if(_loc20_ != null)
               {
                  _loc16_.asset = _loc20_;
               }
               if(_loc16_.asset)
               {
                  _loc16_.offsetX = -1 * _loc6_ / 2 + _loc17_[0];
                  _loc16_.offsetY = -_loc16_.asset.height + _loc6_ / 4 + _loc17_[1] + this.var_1410;
               }
               if(this.var_1169)
               {
                  if(this.var_1831)
                  {
                     _loc16_.relativeDepth = -0.5;
                  }
                  else
                  {
                     _loc16_.relativeDepth = const_589 + _loc17_[2];
                  }
               }
               else
               {
                  _loc16_.relativeDepth = const_590 + _loc17_[2];
               }
            }
            _loc16_ = getSprite(this.const_1685);
            if(_loc16_ != null && _loc16_.visible)
            {
               if(!this.var_1169)
               {
                  _loc16_.relativeDepth = const_590 - 0.01 + _loc17_[2];
               }
               else
               {
                  _loc16_.relativeDepth = const_589 - 0.01 + _loc17_[2];
               }
            }
            this.var_875 = this.var_57.include();
            _loc18_ = this.const_1284;
            for each(_loc19_ in this.var_57.getSprites())
            {
               if(_loc19_.id == const_937)
               {
                  _loc16_ = getSprite(this.const_936);
                  _loc21_ = this.var_57.getLayerData(_loc19_);
                  _loc22_ = _loc19_.getDirectionOffsetX(this.var_57.getDirection());
                  _loc23_ = _loc19_.getDirectionOffsetY(this.var_57.getDirection());
                  if(_loc21_ != null)
                  {
                     _loc22_ += _loc21_.dx;
                     _loc23_ += _loc21_.dy;
                  }
                  if(_loc6_ < 48)
                  {
                     _loc22_ /= 2;
                     _loc23_ /= 2;
                  }
                  _loc16_.offsetX += _loc22_;
                  _loc16_.offsetY += _loc23_;
               }
               else
               {
                  _loc16_ = getSprite(_loc18_);
                  if(_loc16_ != null)
                  {
                     _loc16_.capturesMouse = false;
                     _loc16_.visible = true;
                     _loc24_ = this.var_57.getLayerData(_loc19_);
                     _loc25_ = 0;
                     _loc26_ = _loc19_.getDirectionOffsetX(this.var_57.getDirection());
                     _loc27_ = _loc19_.getDirectionOffsetY(this.var_57.getDirection());
                     _loc28_ = _loc19_.getDirectionOffsetZ(this.var_57.getDirection());
                     _loc29_ = 0;
                     if(_loc19_.hasDirections)
                     {
                        _loc29_ = this.var_57.getDirection();
                     }
                     if(_loc24_ != null)
                     {
                        _loc25_ = _loc24_.animationFrame;
                        _loc26_ += _loc24_.dx;
                        _loc27_ += _loc24_.dy;
                        _loc29_ += _loc24_.directionOffset;
                     }
                     if(_loc6_ < 48)
                     {
                        _loc26_ /= 2;
                        _loc27_ /= 2;
                     }
                     if(_loc29_ < 0)
                     {
                        _loc29_ += 8;
                     }
                     else if(_loc29_ > 7)
                     {
                        _loc29_ -= 8;
                     }
                     _loc30_ = this.var_57.getScale() + "_" + _loc19_.member + "_" + _loc29_ + "_" + _loc25_;
                     _loc31_ = this.var_57.getAsset(_loc30_);
                     if(_loc31_ == null)
                     {
                        continue;
                     }
                     _loc16_.asset = _loc31_.content as BitmapData;
                     _loc16_.offsetX = -_loc31_.offset.x - _loc6_ / 2 + _loc26_;
                     _loc16_.offsetY = -_loc31_.offset.y + _loc27_ + this.var_1410;
                     if(this.var_1169)
                     {
                        _loc16_.relativeDepth = const_589 - 0.001 * spriteCount * _loc28_;
                     }
                     else
                     {
                        _loc16_.relativeDepth = const_590 - 0.001 * spriteCount * _loc28_;
                     }
                     if(_loc19_.ink == 33)
                     {
                        _loc16_.blendMode = BlendMode.ADD;
                     }
                     else
                     {
                        _loc16_.blendMode = BlendMode.NORMAL;
                     }
                  }
                  _loc18_++;
               }
            }
         }
      }
      
      private function updateActions(param1:IAvatarImage) : void
      {
         var _loc3_:* = null;
         if(param1 == null)
         {
            return;
         }
         param1.initActionAppends();
         param1.appendAction(AvatarAction.const_390,this.var_259,this._postureParameter);
         if(this.var_1358 > 0)
         {
            param1.appendAction(AvatarAction.const_303,AvatarAction.const_1458[this.var_1358]);
         }
         if(this.var_1411 > 0)
         {
            param1.appendAction(AvatarAction.const_648,this.var_1411);
         }
         if(this.var_2516 > 0)
         {
            param1.appendAction(AvatarAction.const_705,this.var_2516);
         }
         if(this.var_757 > 0)
         {
            param1.appendAction(AvatarAction.const_601,this.var_757);
         }
         if(this.var_615 > 0)
         {
            param1.appendAction(AvatarAction.const_866,this.var_615);
         }
         if(this.var_1832)
         {
            param1.appendAction(AvatarAction.const_296);
         }
         if(this.var_1830 || this.var_1409)
         {
            param1.appendAction(AvatarAction.const_448);
         }
         if(this.var_1834)
         {
            param1.appendAction(AvatarAction.const_214);
         }
         if(this.var_755 > 0)
         {
            param1.appendAction(AvatarAction.const_292,this.var_755);
         }
         param1.endActionAppends();
         this.var_875 = param1.include();
         var _loc2_:int = this.const_1284;
         for each(_loc3_ in this.var_57.getSprites())
         {
            if(_loc3_.id != const_937)
            {
               _loc2_++;
            }
         }
         if(_loc2_ != spriteCount)
         {
            createSprites(_loc2_);
         }
      }
      
      public function avatarImageReady(param1:String) : void
      {
         this.resetImages();
      }
   }
}
