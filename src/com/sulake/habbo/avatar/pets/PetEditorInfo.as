package com.sulake.habbo.avatar.pets
{
   public class PetEditorInfo
   {
       
      
      private var var_2006:Boolean;
      
      private var var_2007:Boolean;
      
      public function PetEditorInfo(param1:XML)
      {
         super();
         this.var_2006 = Boolean(parseInt(param1.@club));
         this.var_2007 = Boolean(parseInt(param1.@selectable));
      }
      
      public function get isClub() : Boolean
      {
         return this.var_2006;
      }
      
      public function get isSelectable() : Boolean
      {
         return this.var_2007;
      }
   }
}
