package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_800:BigInteger;
      
      private var var_2073:BigInteger;
      
      private var var_1537:BigInteger;
      
      private var var_2072:BigInteger;
      
      private var var_1261:BigInteger;
      
      private var var_1536:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         this.var_1261 = param1;
         this.var_1536 = param2;
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + this.var_1261.toString() + ",generator: " + this.var_1536.toString() + ",secret: " + param1);
         this.var_800 = new BigInteger();
         this.var_800.fromRadix(param1,param2);
         this.var_2073 = this.var_1536.modPow(this.var_800,this.var_1261);
         return true;
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         this.var_1537 = new BigInteger();
         this.var_1537.fromRadix(param1,param2);
         this.var_2072 = this.var_1537.modPow(this.var_800,this.var_1261);
         return this.getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return this.var_2073.toRadix(param1);
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return this.var_2072.toRadix(param1);
      }
   }
}
