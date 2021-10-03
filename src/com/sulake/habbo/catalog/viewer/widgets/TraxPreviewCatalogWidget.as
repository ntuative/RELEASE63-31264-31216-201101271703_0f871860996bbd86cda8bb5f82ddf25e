package com.sulake.habbo.catalog.viewer.widgets
{
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   
   public class TraxPreviewCatalogWidget extends CatalogWidget implements ICatalogWidget
   {
       
      
      private var var_1417:IButtonWindow;
      
      public function TraxPreviewCatalogWidget(param1:IWindowContainer)
      {
         super(param1);
         this.var_1417 = _window.findChildByName("listen") as IButtonWindow;
         Logger.log("Trax listener found button: " + this.var_1417);
         if(this.var_1417 != null)
         {
            this.var_1417.disable();
         }
      }
      
      override public function dispose() : void
      {
         super.dispose();
      }
      
      override public function init() : void
      {
         super.init();
      }
   }
}
