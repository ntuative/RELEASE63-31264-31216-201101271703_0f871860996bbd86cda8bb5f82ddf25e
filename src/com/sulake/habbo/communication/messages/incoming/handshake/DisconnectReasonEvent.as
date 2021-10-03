package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_1802:int = 0;
      
      public static const const_1536:int = 1;
      
      public static const const_1446:int = 2;
      
      public static const const_1900:int = 3;
      
      public static const const_1783:int = 4;
      
      public static const const_1789:int = 5;
      
      public static const const_1504:int = 10;
      
      public static const const_1872:int = 11;
      
      public static const const_1711:int = 12;
      
      public static const const_1762:int = 13;
      
      public static const const_1881:int = 16;
      
      public static const const_1917:int = 17;
      
      public static const const_1784:int = 18;
      
      public static const const_1717:int = 19;
      
      public static const const_1851:int = 20;
      
      public static const const_1699:int = 22;
      
      public static const const_1799:int = 23;
      
      public static const const_1753:int = 24;
      
      public static const const_1860:int = 25;
      
      public static const const_1723:int = 26;
      
      public static const const_1835:int = 27;
      
      public static const const_1704:int = 28;
      
      public static const const_1749:int = 29;
      
      public static const const_1754:int = 100;
      
      public static const const_1911:int = 101;
      
      public static const const_1794:int = 102;
      
      public static const const_1781:int = 103;
      
      public static const const_1820:int = 104;
      
      public static const const_1719:int = 105;
      
      public static const const_1700:int = 106;
      
      public static const const_1838:int = 107;
      
      public static const const_1921:int = 108;
      
      public static const const_1777:int = 109;
      
      public static const const_1715:int = 110;
      
      public static const const_1775:int = 111;
      
      public static const const_1752:int = 112;
      
      public static const const_1856:int = 113;
      
      public static const const_1905:int = 114;
      
      public static const const_1886:int = 115;
      
      public static const const_1697:int = 116;
      
      public static const const_1785:int = 117;
      
      public static const const_1907:int = 118;
      
      public static const const_1787:int = 119;
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get reason() : int
      {
         return (this.var_10 as DisconnectReasonParser).reason;
      }
      
      public function get reasonString() : String
      {
         switch(this.reason)
         {
            case const_1536:
            case const_1504:
               return "banned";
            case const_1446:
               return "concurrentlogin";
            default:
               return "logout";
         }
      }
   }
}
