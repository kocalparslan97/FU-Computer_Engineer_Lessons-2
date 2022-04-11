// Mert Incidelen - Bilgisayar Mimarisi Dersi ALU Odevi

module ALU_170260101(AC,Sayi,IsKodu,Cikti); //ALU giris ve cikis degerleri

	input [7:0] AC;
	input [7:0] Sayi;                   
    input [3:0] IsKodu;
	output reg [7:0] Cikti;
    
    always @(*)
    begin
        
        if(IsKodu == 4'b0000)
			Cikti = AC + Sayi ; 	//Toplama islemi
		
		else if(IsKodu == 4'b0001)
			Cikti = AC - Sayi ; 	//Cikarma islemi
		
		else if(IsKodu == 4'b0010)
			Cikti = AC * Sayi ; 	//Carpma islemi
		
		else if(IsKodu == 4'b0011)
			Cikti = AC / Sayi ; 	//Bolme islemi
		
		else if(IsKodu == 4'b0100)
			Cikti = AC + 8'b00000001 ; //AC 1 arttırma
		
		else if(IsKodu == 4'b0101)
			Cikti = ~AC ; 			//AC'nin tumleyeni
			
		else if(IsKodu == 4'b0110)
			Cikti = ~AC + 8'b00000001 ; //AC negatif degeri
		
		else if(IsKodu == 4'b0111)
			Cikti = AC<<1 ; 		//AC sola kaydirma
		
		else if(IsKodu == 4'b1000)
			Cikti = AC>>1 ;			//AC saga kaydirma
		
		else if(IsKodu == 4'b1001)
			Cikti = AC & Sayi ;  	//ve islemi
		
		else if(IsKodu == 4'b1010)
			Cikti = AC | Sayi ;  	//veya islemi
			
		else if(IsKodu == 4'b1011)
			Cikti = ~(AC & Sayi) ;  //ve degil islemi
			
		else if(IsKodu == 4'b1100)
			Cikti = ~(AC | Sayi) ;  //veya degil islemi
			
		else if(IsKodu == 4'b1101)
			Cikti = AC ^ Sayi ;  	// xor islemi
		
		else if(IsKodu == 4'b1110)
			Cikti = AC > Sayi ;  	// buyukse sonuc = h'01 degilse sonuc = h'00
		
		else if(IsKodu == 4'b1111)
			Cikti = AC == Sayi ;  	// esitse sonuc = h'01 degilse sonuc = h'00
		
    end

endmodule
