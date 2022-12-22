`timescale 1ns / 1ps

module floating_point_arithmetic(
    input clk,rst,[78:0]buyruk,
    output reg[31:0]cikis=0,cikis_gecerli=0
    );
    

    integer i;
    reg [23:0]mantissa1_baslangic=0;
    
    reg [23:0]mantissa2_baslangic=0;
    
    reg[7:0] exponent_sonuc1 = 0;reg[7:0] exponent_sonuc7 = 0;reg[7:0] exponent_sonuc13 = 0;reg[7:0] exponent_sonuc19 = 0;
    reg[7:0] exponent_sonuc2 = 0;reg[7:0] exponent_sonuc8 = 0;reg[7:0] exponent_sonuc14 = 0;reg[7:0] exponent_sonuc20 = 0;
    reg[7:0] exponent_sonuc3 = 0;reg[7:0] exponent_sonuc9 = 0;reg[7:0] exponent_sonuc15 = 0;reg[7:0] exponent_sonuc21 = 0;
    reg[7:0] exponent_sonuc4 = 0;reg[7:0] exponent_sonuc10 = 0;reg[7:0] exponent_sonuc16 = 0;reg[7:0] exponent_sonuc22 = 0;
    reg[7:0] exponent_sonuc5 = 0;reg[7:0] exponent_sonuc11 = 0;reg[7:0] exponent_sonuc17 = 0;reg[7:0] exponent_sonuc23 = 0;
    reg[7:0] exponent_sonuc6 = 0;reg[7:0] exponent_sonuc12 = 0;reg[7:0] exponent_sonuc18 = 0;reg[7:0] exponent_sonuc24 = 0;
    reg[7:0] exponent_sonuc25 = 0;reg[7:0] exponent_sonuc26 = 0;
    
    reg sign_sonuc1 = 0;reg sign_sonuc5 = 0;reg sign_sonuc9 = 0;reg sign_sonuc13 = 0;reg sign_sonuc17 = 0;reg sign_sonuc21 = 0;
    reg sign_sonuc2 = 0;reg sign_sonuc6 = 0;reg sign_sonuc10 = 0;reg sign_sonuc14 = 0;reg sign_sonuc18 = 0;reg sign_sonuc22 = 0;
    reg sign_sonuc3 = 0;reg sign_sonuc7 = 0;reg sign_sonuc11 = 0;reg sign_sonuc15 = 0;reg sign_sonuc19 = 0;reg sign_sonuc23 = 0;
    reg sign_sonuc4 = 0;reg sign_sonuc8 = 0;reg sign_sonuc12 = 0;reg sign_sonuc16 = 0;reg sign_sonuc20 = 0;reg sign_sonuc24 = 0;
    reg sign_sonuc25 = 0; reg sign_sonuc26 = 0;
    
    reg[47:0] islem1 = 0;reg[47:0] islem5 = 0;reg[47:0] islem9 = 0;reg[47:0] islem13 = 0;reg[47:0] islem17 = 0;reg[47:0] islem21 = 0;
    reg[47:0] islem2 = 0;reg[47:0] islem6 = 0;reg[47:0] islem10 = 0;reg[47:0] islem14 = 0;reg[47:0] islem18 = 0;reg[47:0] islem22 = 0;
    reg[47:0] islem3 = 0;reg[47:0] islem7 = 0;reg[47:0] islem11 = 0;reg[47:0] islem15 = 0;reg[47:0] islem19 = 0;reg[47:0] islem23 = 0;
    reg[47:0] islem4 = 0;reg[47:0] islem8 = 0;reg[47:0] islem12 = 0;reg[47:0] islem16 = 0;reg[47:0] islem20 = 0;reg[47:0] islem24 = 0;
    reg[47:0] islem25 = 0;
    
    reg[47:0] islem_sonraki1 = 0;reg[47:0] islem_sonraki5 = 0;reg[47:0] islem_sonraki9 = 0;reg[47:0] islem_sonraki13 = 0;reg[47:0] islem_sonraki17 = 0;reg[47:0] islem_sonraki21 = 0;
    reg[47:0] islem_sonraki2 = 0;reg[47:0] islem_sonraki6 = 0;reg[47:0] islem_sonraki10 = 0;reg[47:0] islem_sonraki14 = 0;reg[47:0] islem_sonraki18 = 0;reg[47:0] islem_sonraki22 = 0;
    reg[47:0] islem_sonraki3 = 0;reg[47:0] islem_sonraki7 = 0;reg[47:0] islem_sonraki11 = 0;reg[47:0] islem_sonraki15 = 0;reg[47:0] islem_sonraki19 = 0;reg[47:0] islem_sonraki23 = 0;
    reg[47:0] islem_sonraki4 = 0;reg[47:0] islem_sonraki8 = 0;reg[47:0] islem_sonraki12 = 0;reg[47:0] islem_sonraki16 = 0;reg[47:0] islem_sonraki20 = 0;reg[47:0] islem_sonraki24 = 0;
    reg[47:0] islem_sonraki25 = 0;
    
    reg[1:0]islem_turu_baslangic=0;reg[1:0]islem_turu0;
    reg[1:0]islem_turu1=0;reg[1:0]islem_turu7=0;reg[1:0]islem_turu13=0;reg[1:0]islem_turu19=0;
    reg[1:0]islem_turu2=0;reg[1:0]islem_turu8=0;reg[1:0]islem_turu14=0;reg[1:0]islem_turu20=0;
    reg[1:0]islem_turu3=0;reg[1:0]islem_turu9=0;reg[1:0]islem_turu15=0;reg[1:0]islem_turu21=0;
    reg[1:0]islem_turu4=0;reg[1:0]islem_turu10=0;reg[1:0]islem_turu16=0;reg[1:0]islem_turu22=0;
    reg[1:0]islem_turu5=0;reg[1:0]islem_turu11=0;reg[1:0]islem_turu17=0;reg[1:0]islem_turu23=0;
    reg[1:0]islem_turu6=0;reg[1:0]islem_turu12=0;reg[1:0]islem_turu18=0;reg[1:0]islem_turu24=0;
    reg[1:0]islem_turu25=0; 
    
    reg[31:0] sayi1_baslangic = 0; reg[31:0] sayi2_baslangic = 0;
    
    reg[31:0]sayi1_baslangic_sonraki=0;
    reg[23:0] sayi1_r1=0; reg[23:0] sayi1_r7=0; reg[23:0] sayi1_r13=0; reg[23:0] sayi1_r19=0; 
    reg[23:0] sayi1_r2=0; reg[23:0] sayi1_r8=0; reg[23:0] sayi1_r14=0; reg[23:0] sayi1_r20=0; 
    reg[23:0] sayi1_r3=0; reg[23:0] sayi1_r9=0; reg[23:0] sayi1_r15=0; reg[23:0] sayi1_r21=0; 
    reg[23:0] sayi1_r4=0; reg[23:0] sayi1_r10=0; reg[23:0] sayi1_r16=0; reg[23:0] sayi1_r22=0;
    reg[23:0] sayi1_r5=0; reg[23:0] sayi1_r11=0; reg[23:0] sayi1_r17=0; reg[23:0] sayi1_r23=0;
    reg[23:0] sayi1_r6=0; reg[23:0] sayi1_r12=0; reg[23:0] sayi1_r18=0; reg[23:0] sayi1_r24=0;
    
    reg[7:0]exponent1_baslangic=0;
    
    reg[7:0]exponent2_baslangic=0;
    
    reg sign1_baslangic;
    reg sign2_baslangic;
    
    reg[31:0]sayi2_baslangic_sonraki=0;
    reg[23:0] sayi2_r1 = 0;reg[23:0] sayi2_r7 = 0;reg[23:0] sayi2_r13 = 0;reg[23:0] sayi2_r19 = 0;
    reg[23:0] sayi2_r2 = 0;reg[23:0] sayi2_r8 = 0;reg[23:0] sayi2_r14 = 0;reg[23:0] sayi2_r20 = 0;
    reg[23:0] sayi2_r3 = 0;reg[23:0] sayi2_r9 = 0;reg[23:0] sayi2_r15 = 0;reg[23:0] sayi2_r21 = 0;
    reg[23:0] sayi2_r4 = 0;reg[23:0] sayi2_r10 = 0;reg[23:0] sayi2_r16 = 0;reg[23:0] sayi2_r22 = 0;
    reg[23:0] sayi2_r5 = 0;reg[23:0] sayi2_r11 = 0;reg[23:0] sayi2_r17 = 0;reg[23:0] sayi2_r23 = 0;
    reg[23:0] sayi2_r6 = 0;reg[23:0] sayi2_r12 = 0;reg[23:0] sayi2_r18 = 0;reg[23:0] sayi2_r24 = 0;
    reg birbit = 1'b0;
    reg birbit_sonraki = 1'b0;
    
    reg[47:0] bolme_yardimci1 = 0;reg[47:0] bolme_yardimci7 = 0;reg[47:0] bolme_yardimci13 = 0;reg[47:0] bolme_yardimci19 = 0;
    reg[47:0] bolme_yardimci2 = 0;reg[47:0] bolme_yardimci8 = 0;reg[47:0] bolme_yardimci14 = 0;reg[47:0] bolme_yardimci20 = 0;
    reg[47:0] bolme_yardimci3 = 0;reg[47:0] bolme_yardimci9 = 0;reg[47:0] bolme_yardimci15 = 0;reg[47:0] bolme_yardimci21 = 0;
    reg[47:0] bolme_yardimci4 = 0;reg[47:0] bolme_yardimci10 = 0;reg[47:0] bolme_yardimci16 = 0;reg[47:0] bolme_yardimci22 = 0;
    reg[47:0] bolme_yardimci5 = 0;reg[47:0] bolme_yardimci11 = 0;reg[47:0] bolme_yardimci17 = 0;reg[47:0] bolme_yardimci23 = 0;
    reg[47:0] bolme_yardimci6 = 0;reg[47:0] bolme_yardimci12 = 0;reg[47:0] bolme_yardimci18 = 0;reg[47:0] bolme_yardimci24 = 0;
    
    reg[31:0] sonuc_bellegi[8191:0];
    reg[12:0] adres_baslangic = 0;
    reg[12:0] adres1=0;reg[12:0] adres6=0;reg[12:0] adres11=0;reg[12:0] adres16=0;reg[12:0] adres21=0;
    reg[12:0] adres2=0;reg[12:0] adres7=0;reg[12:0] adres12=0;reg[12:0] adres17=0;reg[12:0] adres22=0;
    reg[12:0] adres3=0;reg[12:0] adres8=0;reg[12:0] adres13=0;reg[12:0] adres18=0;reg[12:0] adres23=0;
    reg[12:0] adres4=0;reg[12:0] adres9=0;reg[12:0] adres14=0;reg[12:0] adres19=0;reg[12:0] adres24=0;
    reg[12:0] adres5=0;reg[12:0] adres10=0;reg[12:0] adres15=0;reg[12:0] adres20=0;reg[12:0] adres25=0;
    reg[12:0] adres26=0;reg[12:0] adres27=0;
    
    reg cikis_gecerli1 = 1'b1;reg cikis_gecerli7 = 1'b0;reg cikis_gecerli13 = 1'b0;reg cikis_gecerli18 = 1'b0;
    reg cikis_gecerli2 = 1'b0;reg cikis_gecerli8 = 1'b0;reg cikis_gecerli14 = 1'b0;reg cikis_gecerli19 = 1'b0;
    reg cikis_gecerli3 = 1'b0;reg cikis_gecerli9 = 1'b0;reg cikis_gecerli15 = 1'b0;reg cikis_gecerli20 = 1'b0;
    reg cikis_gecerli4 = 1'b0;reg cikis_gecerli10 = 1'b0;reg cikis_gecerli16 = 1'b0;reg cikis_gecerli21 = 1'b0;
    reg cikis_gecerli5 = 1'b0;reg cikis_gecerli11 = 1'b0;reg cikis_gecerli17 = 1'b0;reg cikis_gecerli22 = 1'b0;
    reg cikis_gecerli6 = 1'b0;reg cikis_gecerli12 = 1'b0;reg cikis_gecerli24 = 1'b0;reg cikis_gecerli23 = 1'b0;
    reg cikis_gecerli25 = 1'b0;reg cikis_gecerli26 = 1'b0;reg cikis_gecerli27 = 1'b0;
    always@*begin
        adres_baslangic = buyruk[12:0];
        islem_turu_baslangic = buyruk[78-:2];
        sayi1_baslangic_sonraki = buyruk[76-:32];
        sayi2_baslangic_sonraki = buyruk[44-:32];
        
        exponent1_baslangic = sayi1_baslangic[30:23];
        exponent2_baslangic = sayi2_baslangic[30:23];
        
        sign1_baslangic = sayi1_baslangic[31];
        sign2_baslangic = sayi2_baslangic[31];
        
        birbit_sonraki = 1'b1;
        mantissa1_baslangic = {birbit,sayi1_baslangic[22:0]};
        mantissa2_baslangic = {birbit,sayi2_baslangic[22:0]};
        if(islem_turu0 == 2'b10)begin
            exponent_sonuc1 = (exponent1_baslangic - 8'd127) + (exponent2_baslangic - 8'd127) + 8'd127;
            sign_sonuc1 = sign1_baslangic ^ sign2_baslangic;
        end
        if(islem_turu0 == 2'b00)begin
            if(exponent1_baslangic > exponent2_baslangic) begin
                    exponent_sonuc1 = exponent1_baslangic;
                    sign_sonuc1 = sign1_baslangic;
                    mantissa2_baslangic = mantissa2_baslangic >> (exponent1_baslangic - exponent2_baslangic);
                end
                else if(exponent1_baslangic < exponent2_baslangic) begin
                    exponent_sonuc1 = exponent2_baslangic;
                    sign_sonuc1 = sign2_baslangic;
                    mantissa1_baslangic = mantissa1_baslangic >> (exponent2_baslangic - exponent1_baslangic);
                end
                else begin
                    exponent_sonuc1 = exponent1_baslangic;
                    if(mantissa1_baslangic > mantissa2_baslangic)
                        sign_sonuc1 = sign1_baslangic;
                    else
                        sign_sonuc1 = sign2_baslangic;
                end
        end    
        
        if(islem_turu0 == 2'b01)begin
            if(exponent1_baslangic > exponent2_baslangic)begin
                exponent_sonuc1 = exponent1_baslangic;
                if(sign1_baslangic == 1'b0 && sign2_baslangic == 1'b0)
                    sign_sonuc1 = 1'b0;
                else if(sign1_baslangic == 1'b1 && sign2_baslangic == 1'b1) 
                    sign_sonuc1 = 1'b1;   
                mantissa2_baslangic = mantissa2_baslangic >> (exponent1_baslangic - exponent2_baslangic);
            end
            else if(exponent1_baslangic < exponent2_baslangic) begin
                exponent_sonuc1 = exponent2_baslangic;
                if(sign1_baslangic == 1'b0 && sign2_baslangic == 1'b0)
                    sign_sonuc1 = 1'b1;
                else if(sign1_baslangic == 1'b1 && sign2_baslangic == 1'b1) 
                    sign_sonuc1 = 1'b0;  
                mantissa1_baslangic = mantissa1_baslangic >> (exponent2_baslangic - exponent1_baslangic);
            end
            else begin
                exponent_sonuc1 = exponent1_baslangic;
                if(mantissa1_baslangic > mantissa2_baslangic)
                    sign_sonuc1 = 1'b0;
                else
                    sign_sonuc1 = 1'b1;
            end
            
            if(sign1_baslangic == 1'b0&&sign2_baslangic == 1'b1)begin
                sign_sonuc1 = 1'b0;
                islem_turu0 = 2'b00;
            end
            else if(sign1_baslangic == 1'b1 && sign2_baslangic == 1'b0)begin
                sign_sonuc1 = 1'b1;
                islem_turu0 = 2'b00;
            end
            else begin
                mantissa2_baslangic = ~mantissa2_baslangic;
            end    
        end
        
        if(islem_turu0 == 2'b11)begin
            exponent_sonuc1 = (exponent1_baslangic - 8'd127) - (exponent2_baslangic - 8'd127) + 8'd127;
            sign_sonuc1 = sign1_baslangic ^ sign2_baslangic;     
        end
            
        if(islem_turu1 == 2'b10)begin
             islem_sonraki1 = sayi2_r1[0] == 1'b1 ? islem1 + sayi1_r1 : islem1;
        end
        if(islem_turu1 == 2'b00)begin
            islem_sonraki1[1-:2] = sayi1_r1[0]+ sayi2_r1[0];
        end
        
        if(islem_turu1 == 2'b01)begin
            islem_sonraki1[1-:2] = sayi1_r1[0]+ sayi2_r1[0] + 1'b1;
        end
        
        if(islem_turu1 == 2'b11)begin
            if(sayi1_r1 >= sayi2_r1) begin
                islem_sonraki1[0] = 1'b1;
                sayi1_r1 = sayi1_r1 - sayi2_r1;
            end     
        end
        
        if(islem_turu2 == 2'b10)begin
             islem_sonraki2 = sayi2_r2[1] == 1'b1 ? islem2 + {sayi1_r2,1'b0} : islem2;
        end
        if(islem_turu2 == 2'b00)begin
            islem_sonraki2[0] = islem2[0];    
            islem_sonraki2[2:1] = sayi1_r2[1] + sayi2_r2[1] + islem2[1];
        end
        
        if(islem_turu2 == 2'b01)begin
            islem_sonraki2[0] = islem2[0];    
            islem_sonraki2[2:1] = sayi1_r2[1] + sayi2_r2[1] + islem2[1];
        end
        
        if(islem_turu2 == 2'b11)begin
            islem_sonraki2 = islem2 << 1;
            if(bolme_yardimci2 >= sayi2_r2) begin
                islem_sonraki2[0] = 1'b1;
                bolme_yardimci2 = bolme_yardimci2 - sayi2_r2;
            end      
        end
        
        if(islem_turu3 == 2'b10)begin
             islem_sonraki3 = sayi2_r3[2] == 1'b1 ? islem3 + {sayi1_r3,2'b00} : islem3;
        end
        if(islem_turu3 == 2'b00)begin
            islem_sonraki3[1:0] = islem3[1:0];
            islem_sonraki3[3:2] = sayi1_r3[2] + sayi2_r3[2] + islem3[2];
        end
        
        if(islem_turu3 == 2'b01)begin
            islem_sonraki3[1:0] = islem3[1:0];
            islem_sonraki3[3:2] = sayi1_r3[2] + sayi2_r3[2] + islem3[2];
        end
        
        if(islem_turu3 == 2'b11)begin
            islem_sonraki3 = islem3 << 1;
            if(bolme_yardimci3 >= sayi2_r2) begin
                islem_sonraki3[0] = 1'b1;
                bolme_yardimci3 = bolme_yardimci3 - sayi2_r3;
            end      
        end
        
        if(islem_turu4 == 2'b10)begin
             islem_sonraki4 = sayi2_r4[3] == 1'b1 ? islem4 + {sayi1_r4,3'b000} : islem4;
        end
        if(islem_turu4 == 2'b00)begin
            islem_sonraki4[2:0] = islem4[2:0];
            islem_sonraki4[4:3] = sayi1_r4[3] + sayi2_r4[3] + islem4[3];
        end
        
        if(islem_turu4 == 2'b01)begin
            islem_sonraki4[2:0] = islem4[2:0];
            islem_sonraki4[4:3] = sayi1_r4[3] + sayi2_r4[3] + islem4[3];
        end
        
        if(islem_turu4 == 2'b11)begin
            islem_sonraki4 = islem4 << 1;
            if(bolme_yardimci4 >= sayi2_r4) begin
                islem_sonraki4[0] = 1'b1;
                bolme_yardimci4 = bolme_yardimci4 - sayi2_r4;
            end     
        end
        
        if(islem_turu5 == 2'b10)begin
             islem_sonraki5 = sayi2_r5[4] == 1'b1 ? islem5 + {sayi1_r5,4'b0000} : islem5;
        end
        if(islem_turu5 == 2'b00)begin
            islem_sonraki5[3:0] = islem5[3:0];
            islem_sonraki5[5:4] = sayi1_r5[4] + sayi2_r5[4] + islem5[4];
        end
        
        if(islem_turu5 == 2'b01)begin
            islem_sonraki5[3:0] = islem5[3:0];
            islem_sonraki5[5:4] = sayi1_r5[4] + sayi2_r5[4] + islem5[4];
        end
        
        if(islem_turu5 == 2'b11)begin
            islem_sonraki5 = islem5 << 1;
            if(bolme_yardimci5 >= sayi2_r5) begin
                islem_sonraki5[0] = 1'b1;
                bolme_yardimci5 = bolme_yardimci5 - sayi2_r5;
            end     
        end
        
        if(islem_turu6 == 2'b10)begin
             islem_sonraki6 = sayi2_r6[5] == 1'b1 ? islem6 + {sayi1_r6,5'b00000} : islem6;
        end
        if(islem_turu6 == 2'b00)begin
            islem_sonraki6[4:0] = islem6[4:0];
            islem_sonraki6[6:5] = sayi1_r6[5] + sayi2_r6[5] + islem6[5];
        end
        
        if(islem_turu6 == 2'b01)begin
             islem_sonraki6[4:0] = islem6[4:0];
            islem_sonraki6[6:5] = sayi1_r6[5] + sayi2_r6[5] + islem6[5];
        end
        
        if(islem_turu6 == 2'b11)begin
             islem_sonraki6 = islem6 << 1;
            if(bolme_yardimci6 >= sayi2_r6) begin
                islem_sonraki6[0] = 1'b1;
                bolme_yardimci6 = bolme_yardimci6 - sayi2_r6;
            end
        end
        
        if(islem_turu7 == 2'b10)begin
             islem_sonraki7 = sayi2_r7[6] == 1'b1 ? islem7 + {sayi1_r7,6'b000000} : islem7;
        end
        if(islem_turu7 == 2'b00)begin
            islem_sonraki7[5:0] = islem7[5:0];
            islem_sonraki7[7:6] = sayi1_r7[6] + sayi2_r7[6] + islem7[6];
        end
        
        if(islem_turu7 == 2'b01)begin
            islem_sonraki7[5:0] = islem7[5:0];
            islem_sonraki7[7:6] = sayi1_r7[6] + sayi2_r7[6] + islem7[6];
        end
        
        if(islem_turu7 == 2'b11)begin
             islem_sonraki7 = islem7 << 1;
            if(bolme_yardimci7 >= sayi2_r7) begin
                islem_sonraki7[0] = 1'b1;
                bolme_yardimci7 = bolme_yardimci7 - sayi2_r7;
            end
        end
        
        if(islem_turu8 == 2'b10)begin
             islem_sonraki8 = sayi2_r8[7] == 1'b1 ? islem8 + {sayi1_r8,7'b0000000} : islem8;
        end
        if(islem_turu8 == 2'b00)begin
            islem_sonraki8[6:0] = islem8[6:0];
            islem_sonraki8[8:7] = sayi1_r8[7] + sayi2_r8[7] + islem8[7];
        end
        
        if(islem_turu8 == 2'b01)begin
            islem_sonraki8[6:0] = islem8[6:0];
            islem_sonraki8[8:7] = sayi1_r8[7] + sayi2_r8[7] + islem8[7];
        end
        
        if(islem_turu8 == 2'b11)begin
             islem_sonraki8 = islem8 << 1;
            if(bolme_yardimci8 >= sayi2_r8) begin
                islem_sonraki8[0] = 1'b1;
                bolme_yardimci8 = bolme_yardimci8 - sayi2_r8;
            end
        end
        
        if(islem_turu9 == 2'b10)begin
             islem_sonraki9 = sayi2_r9[8] == 1'b1 ? islem9 + {sayi1_r9,8'b00000000} : islem9;
        end
        if(islem_turu9 == 2'b00)begin
            islem_sonraki9[7:0] = islem9[7:0];
            islem_sonraki9[9:8] = sayi1_r9[8] + sayi2_r9[8] + islem9[8];
        end
        
        if(islem_turu9 == 2'b01)begin
             islem_sonraki9[7:0] = islem9[7:0];
            islem_sonraki9[9:8] = sayi1_r9[8] + sayi2_r9[8] + islem9[8];
        end
        
        if(islem_turu9 == 2'b11)begin
             islem_sonraki9 = islem9 << 1;
            if(bolme_yardimci9 >= sayi2_r9) begin
                islem_sonraki9[0] = 1'b1;
                bolme_yardimci9 = bolme_yardimci9 - sayi2_r9;
            end
        end
        
        if(islem_turu10 == 2'b10)begin
             islem_sonraki10 = sayi2_r10[9] == 1'b1 ? islem10 + {sayi1_r10,9'b000000000} : islem10;
        end
        if(islem_turu10 == 2'b00)begin
            islem_sonraki10[8:0] = islem10[8:0];
            islem_sonraki10[10:9] = sayi1_r10[9] + sayi2_r10[9] + islem10[9];
        end
        
        if(islem_turu10 == 2'b01)begin
            islem_sonraki10[8:0] = islem10[8:0];
            islem_sonraki10[10:9] = sayi1_r10[9] + sayi2_r10[9] + islem10[9];
        end
        
        if(islem_turu10 == 2'b11)begin
            islem_sonraki10 = islem10 << 1;
            if(bolme_yardimci10 >= sayi2_r10) begin
                islem_sonraki10[0] = 1'b1;
                bolme_yardimci10 = bolme_yardimci10 - sayi2_r10;
            end
        end
        
        if(islem_turu11 == 2'b10)begin
             islem_sonraki11 = sayi2_r11[10] == 1'b1 ? islem11 + {sayi1_r11,10'b0000000000} : islem11;
        end
        if(islem_turu11 == 2'b00)begin
            islem_sonraki11[9:0] = islem11[9:0];
            islem_sonraki11[11:10] = sayi1_r11[10] + sayi2_r11[10] + islem11[10];
        end
        
        if(islem_turu11 == 2'b01)begin
            islem_sonraki11[9:0] = islem11[9:0];
            islem_sonraki11[11:10] = sayi1_r11[10] + sayi2_r11[10] + islem11[10];
        end
        
        if(islem_turu11 == 2'b11)begin
             islem_sonraki11 = islem11 << 1;
            if(bolme_yardimci11 >= sayi2_r11) begin
                islem_sonraki11[0] = 1'b1;
                bolme_yardimci11 = bolme_yardimci11 - sayi2_r11;
            end  
        end
        
        if(islem_turu12 == 2'b10)begin
             islem_sonraki12 = sayi2_r12[11] == 1'b1 ? islem12 + {sayi1_r12,11'b00000000000} : islem12;
        end
        if(islem_turu12 == 2'b00)begin
           islem_sonraki12[10:0] = islem12[10:0];
           islem_sonraki12[12:11] = sayi1_r12[11] + sayi2_r12[11] + islem12[11];
        end
        
        if(islem_turu12 == 2'b01)begin
           islem_sonraki12[10:0] = islem12[10:0];
           islem_sonraki12[12:11] = sayi1_r12[11] + sayi2_r12[11] + islem12[11];
        end
        
        if(islem_turu12 == 2'b11)begin
             islem_sonraki12 = islem12 << 1;
            if(bolme_yardimci12 >= sayi2_r12) begin
                islem_sonraki12[0] = 1'b1;
                bolme_yardimci12 = bolme_yardimci12 - sayi2_r12;
            end 
        end
        
        if(islem_turu13 == 2'b10)begin
             islem_sonraki13 = sayi2_r13[12] == 1'b1 ? islem13 + {sayi1_r13,12'b000000000000} : islem13;
        end
        if(islem_turu13 == 2'b00)begin
            islem_sonraki13[11:0] = islem13[11:0];
            islem_sonraki13[13:12] = sayi1_r13[12] + sayi2_r13[12] + islem13[12];
        end
        
        if(islem_turu13 == 2'b01)begin
            islem_sonraki13[11:0] = islem13[11:0];
            islem_sonraki13[13:12] = sayi1_r13[12] + sayi2_r13[12] + islem13[12];
        end
        
        if(islem_turu13 == 2'b11)begin
           islem_sonraki13 = islem13 << 1;
            if(bolme_yardimci13 >= sayi2_r13) begin
                islem_sonraki13[0] = 1'b1;
                bolme_yardimci13 = bolme_yardimci13 - sayi2_r13;
            end   
        end
        
        if(islem_turu14 == 2'b10)begin
             islem_sonraki14 = sayi2_r14[13] == 1'b1 ? islem14 + {sayi1_r14,13'b0000000000000} : islem14;
        end
        if(islem_turu14 == 2'b00)begin
            islem_sonraki14[12:0] = islem14[12:0];
            islem_sonraki14[14:13] = sayi1_r14[13] + sayi2_r14[13] + islem14[13];
        end
        
        if(islem_turu14 == 2'b01)begin
            islem_sonraki14[12:0] = islem14[12:0];
            islem_sonraki14[14:13] = sayi1_r14[13] + sayi2_r14[13] + islem14[13];
        end
        
        if(islem_turu14 == 2'b11)begin
            islem_sonraki14 = islem14 << 1;
            if(bolme_yardimci14 >= sayi2_r14) begin
                islem_sonraki14[0] = 1'b1;
                bolme_yardimci14 = bolme_yardimci14 - sayi2_r14;
            end 
        end
        
        if(islem_turu15 == 2'b10)begin
             islem_sonraki15 = sayi2_r15[14] == 1'b1 ? islem15 + {sayi1_r15,14'b00000000000000} : islem15;
        end
        if(islem_turu15 == 2'b00)begin
            islem_sonraki15[13:0] = islem15[13:0];
            islem_sonraki15[15:14] = sayi1_r15[14] + sayi2_r15[14] + islem15[14];
        end
        
        if(islem_turu15 == 2'b01)begin
            islem_sonraki15[13:0] = islem15[13:0];
            islem_sonraki15[15:14] = sayi1_r15[14] + sayi2_r15[14] + islem15[14];
        end
        
        if(islem_turu15 == 2'b11)begin
             islem_sonraki15 = islem15 << 1;
            if(bolme_yardimci15 >= sayi2_r15) begin
                islem_sonraki15[0] = 1'b1;
                bolme_yardimci15 = bolme_yardimci15 - sayi2_r15;
            end
        end
        
        if(islem_turu16 == 2'b10)begin
             islem_sonraki16 = sayi2_r16[15] == 1'b1 ? islem16 + {sayi1_r16,15'b000000000000000} : islem16;
        end
        if(islem_turu16 == 2'b00)begin
            islem_sonraki16[14:0] = islem16[14:0];
            islem_sonraki16[16:15] = sayi1_r16[15] + sayi2_r16[15] + islem16[15];
        end
        
        if(islem_turu16 == 2'b01)begin
            islem_sonraki16[14:0] = islem16[14:0];
            islem_sonraki16[16:15] = sayi1_r16[15] + sayi2_r16[15] + islem16[15];
        end
        
        if(islem_turu16 == 2'b11)begin
            islem_sonraki16 = islem16 << 1;
            if(bolme_yardimci16 >= sayi2_r16) begin
                islem_sonraki16[0] = 1'b1;
                bolme_yardimci16 = bolme_yardimci16 - sayi2_r16;
            end 
        end
        
        if(islem_turu17 == 2'b10)begin
             islem_sonraki17 = sayi2_r17[16] == 1'b1 ? islem17 + {sayi1_r17,16'b0000000000000000} : islem17;
        end
        if(islem_turu17 == 2'b00)begin
            islem_sonraki17[15:0] = islem17[15:0];
            islem_sonraki17[17:16] = sayi1_r17[16] + sayi2_r17[16] + islem17[16];
        end
        
        if(islem_turu17 == 2'b01)begin
            islem_sonraki17[15:0] = islem17[15:0];
            islem_sonraki17[17:16] = sayi1_r17[16] + sayi2_r17[16] + islem17[16];
        end
        
        if(islem_turu17 == 2'b11)begin
             islem_sonraki17 = islem17 << 1;
            if(bolme_yardimci17 >= sayi2_r17) begin
                islem_sonraki17[0] = 1'b1;
                bolme_yardimci17 = bolme_yardimci17 - sayi2_r17;
            end 
        end
        
        if(islem_turu18 == 2'b10)begin
             islem_sonraki18 = sayi2_r18[17] == 1'b1 ? islem18 + {sayi1_r18,17'b00000000000000000} : islem18;
        end
        if(islem_turu18 == 2'b00)begin
            islem_sonraki18[16:0] = islem18[16:0];
            islem_sonraki18[18:17] = sayi1_r18[17] + sayi2_r18[17] + islem18[17];
        end
        
        if(islem_turu18 == 2'b01)begin
            islem_sonraki18[16:0] = islem18[16:0];
            islem_sonraki18[18:17] = sayi1_r18[17] + sayi2_r18[17] + islem18[17];
        end
        
        if(islem_turu18 == 2'b11)begin
             islem_sonraki18 = islem18 << 1;
            if(bolme_yardimci18 >= sayi2_r18) begin
                islem_sonraki18[0] = 1'b1;
                bolme_yardimci18 = bolme_yardimci18 - sayi2_r18;
            end      
        end
        
        if(islem_turu19 == 2'b10)begin
             islem_sonraki19 = sayi2_r19[18] == 1'b1 ? islem19 + {sayi1_r19,18'b000000000000000000} : islem19;
        end
        if(islem_turu19 == 2'b00)begin
            islem_sonraki19[17:0] = islem19[17:0];
            islem_sonraki19[19:18] = sayi1_r19[18] + sayi2_r19[18] + islem19[18];
        end
        
        if(islem_turu19 == 2'b01)begin
            islem_sonraki19[17:0] = islem19[17:0];
            islem_sonraki19[19:18] = sayi1_r19[18] + sayi2_r19[18] + islem19[18];
        end
        
        if(islem_turu19 == 2'b11)begin
             islem_sonraki19 = islem19 << 1;
            if(bolme_yardimci19 >= sayi2_r19) begin
                islem_sonraki19[0] = 1'b1;
                bolme_yardimci19 = bolme_yardimci19 - sayi2_r19;
            end
        end
        
        if(islem_turu20 == 2'b10)begin
             islem_sonraki20 = sayi2_r20[19] == 1'b1 ? islem20 + {sayi1_r20,19'b0000000000000000000} : islem20;
        end
        if(islem_turu20 == 2'b00)begin
            islem_sonraki20[18:0] = islem20[18:0];
            islem_sonraki20[20:19] = sayi1_r20[19] + sayi2_r20[19] + islem20[19];
        end
        
        if(islem_turu20 == 2'b01)begin
            islem_sonraki20[18:0] = islem20[18:0];
            islem_sonraki20[20:19] = sayi1_r20[19] + sayi2_r20[19] + islem20[19];
        end
        
        if(islem_turu20 == 2'b11)begin
             islem_sonraki20 = islem20 << 1;
            if(bolme_yardimci20 >= sayi2_r20) begin
                islem_sonraki20[0] = 1'b1;
                bolme_yardimci20 = bolme_yardimci20 - sayi2_r20;
            end
        end
        
        if(islem_turu21 == 2'b10)begin
             islem_sonraki21 = sayi2_r21[20] == 1'b1 ? islem21 + {sayi1_r21,20'b00000000000000000000} : islem21;
        end
        if(islem_turu21 == 2'b00)begin
            islem_sonraki21[19:0] = islem21[19:0];
            islem_sonraki21[21:20] = sayi1_r21[20] + sayi2_r21[20] + islem21[20];
        end
        
        if(islem_turu21 == 2'b01)begin
            islem_sonraki21[19:0] = islem21[19:0];
            islem_sonraki21[21:20] = sayi1_r21[20] + sayi2_r21[20] + islem21[20];
        end
        
        if(islem_turu21 == 2'b11)begin
             islem_sonraki21 = islem21 << 1;
            if(bolme_yardimci21 >= sayi2_r21) begin
                islem_sonraki21[0] = 1'b1;
                bolme_yardimci21 = bolme_yardimci21 - sayi2_r21;
            end
        end
        
        if(islem_turu22 == 2'b10)begin
             islem_sonraki22 = sayi2_r22[21] == 1'b1 ? islem22 + {sayi1_r22,21'b000000000000000000000} : islem22;
        end
        if(islem_turu22 == 2'b00)begin
            islem_sonraki22[20:0] = islem22[20:0];
            islem_sonraki22[22:21] = sayi1_r22[21] + sayi2_r22[21] + islem22[21];
        end
        
        if(islem_turu22 == 2'b01)begin
            islem_sonraki22[20:0] = islem22[20:0];
            islem_sonraki22[22:21] = sayi1_r22[21] + sayi2_r22[21] + islem22[21];
        end
        
        if(islem_turu22 == 2'b11)begin
             islem_sonraki22 = islem22 << 1;
            if(bolme_yardimci22 >= sayi2_r22) begin
                islem_sonraki22[0] = 1'b1;
                bolme_yardimci22 = bolme_yardimci22 - sayi2_r22;
            end
        end
        
        if(islem_turu23 == 2'b10)begin
             islem_sonraki23 = sayi2_r23[22] == 1'b1 ? islem23 + {sayi1_r23,22'b0000000000000000000000} : islem23;
        end
        if(islem_turu23 == 2'b00)begin
            islem_sonraki23[21:0] = islem23[21:0];
            islem_sonraki23[23:22] = sayi1_r23[22] + sayi2_r23[22] + islem23[22];
        end
        
        if(islem_turu23 == 2'b01)begin
            islem_sonraki23[21:0] = islem23[21:0];
            islem_sonraki23[23:22] = sayi1_r23[22] + sayi2_r23[22] + islem23[22];
        end
        
        if(islem_turu23 == 2'b11)begin
             islem_sonraki23 = islem23 << 1;
            if(bolme_yardimci23 >= sayi2_r23) begin
                islem_sonraki23[0] = 1'b1;
                bolme_yardimci23 = bolme_yardimci23 - sayi2_r23;
            end 
        end
        
        if(islem_turu24 == 2'b10)begin
             islem_sonraki24 = sayi2_r24[23] == 1'b1 ? islem24 + {sayi1_r24,23'b00000000000000000000000} : islem24;
        end
        if(islem_turu24 == 2'b00)begin
           islem_sonraki24[22:0] = islem24[22:0];
           islem_sonraki24[24:23] = sayi1_r24[23] + sayi2_r24[23] + islem24[23];
        end
        
        if(islem_turu24 == 2'b01)begin
           islem_sonraki24[22:0] = islem24[22:0];
           islem_sonraki24[24:23] = sayi1_r24[23] + sayi2_r24[23] + islem24[23];
        end
        
        if(islem_turu24 == 2'b11)begin
             islem_sonraki24 = islem24 << 1;
            if(bolme_yardimci24 >= sayi2_r24) begin
                islem_sonraki24[0] = 1'b1;
                bolme_yardimci24 = bolme_yardimci24 - sayi2_r24;
            end
        end
        
        if(islem_turu25 == 2'b10)begin
            if(islem25[24])begin
                exponent_sonuc26 = exponent_sonuc26 + 1;
                islem_sonraki25 = islem25 >> 24;    
            end
            else
                islem_sonraki25 = islem25 >> 23;
        end
        if(islem_turu25 == 2'b00)begin
           if(islem25[24])begin
                exponent_sonuc26 = exponent_sonuc26 + 1;
                islem_sonraki25 = islem25 >> 1;
            end
            else
                islem_sonraki25 = islem25;
        end
        
        if(islem_turu25 == 2'b01)begin
            islem_sonraki25 = islem25;
            for(i=0 ; islem_sonraki25[23]==0 && i<24 ; i= i+1)begin
                exponent_sonuc26 = exponent_sonuc26-1;
                islem_sonraki25 = islem_sonraki25 << 1;
            end
        end
        
        if(islem_turu25 == 2'b11)begin
             islem_sonraki25 = islem25;
        end
    end

    always@(posedge clk)begin
        if(rst) begin
             mantissa1_baslangic<=0;
            
             mantissa2_baslangic<=0;
    
            exponent_sonuc1 <= 0;exponent_sonuc7 <= 0;exponent_sonuc13 <= 0;exponent_sonuc19 <= 0;
            exponent_sonuc2 <= 0;exponent_sonuc8 <= 0;exponent_sonuc14 <= 0;exponent_sonuc20 <= 0;
            exponent_sonuc3 <= 0;exponent_sonuc9 <= 0;exponent_sonuc15 <= 0;exponent_sonuc21 <= 0;
            exponent_sonuc4 <= 0;exponent_sonuc10 <= 0;exponent_sonuc16 <= 0;exponent_sonuc22 <= 0;
            exponent_sonuc5 <= 0;exponent_sonuc11 <= 0;exponent_sonuc17 <= 0;exponent_sonuc23 <= 0;
            exponent_sonuc6 <= 0;exponent_sonuc12 <= 0;exponent_sonuc18 <= 0;exponent_sonuc24 <= 0;
            exponent_sonuc25 <= 0;exponent_sonuc26 <= 0;
    
            sign_sonuc1 <= 0; sign_sonuc5 <= 0; sign_sonuc9 <= 0; sign_sonuc13 <= 0; sign_sonuc17 <= 0; sign_sonuc21 <= 0;
            sign_sonuc2 <= 0; sign_sonuc6 <= 0; sign_sonuc10 <= 0; sign_sonuc14 <= 0; sign_sonuc18 <= 0; sign_sonuc22 <= 0;
            sign_sonuc3 <= 0; sign_sonuc7 <= 0; sign_sonuc11 <= 0; sign_sonuc15 <= 0; sign_sonuc19 <= 0; sign_sonuc23 <= 0;
            sign_sonuc4 <= 0; sign_sonuc8 <= 0; sign_sonuc12 <= 0; sign_sonuc16 <= 0; sign_sonuc20 <= 0; sign_sonuc24 <= 0;
            sign_sonuc25 <= 0;  sign_sonuc26 <= 0;
    
            islem1 <= 0;islem5 <= 0;islem9 <= 0;islem13 <= 0;islem17 <= 0;islem21 <= 0;
            islem2 <= 0;islem6 <= 0;islem10 <= 0;islem14 <= 0;islem18 <= 0;islem22 <= 0;
            islem3 <= 0;islem7 <= 0;islem11 <= 0;islem15 <= 0;islem19 <= 0;islem23 <= 0;
            islem4 <= 0;islem8 <= 0;islem12 <= 0;islem16 <= 0;islem20 <= 0;islem24 <= 0;
            islem25 <= 0;
    
            islem_sonraki1 <= 0;islem_sonraki5 <= 0;islem_sonraki9 <= 0;islem_sonraki13 <= 0;islem_sonraki17 <= 0;islem_sonraki21 <= 0;
            islem_sonraki2 <= 0;islem_sonraki6 <= 0;islem_sonraki10 <= 0;islem_sonraki14 <= 0;islem_sonraki18 <= 0;islem_sonraki22 <= 0;
            islem_sonraki3 <= 0;islem_sonraki7 <= 0;islem_sonraki11 <= 0;islem_sonraki15 <= 0;islem_sonraki19 <= 0;islem_sonraki23 <= 0;
            islem_sonraki4 <= 0;islem_sonraki8 <= 0;islem_sonraki12 <= 0;islem_sonraki16 <= 0;islem_sonraki20 <= 0;islem_sonraki24 <= 0;
            islem_sonraki25 <= 0;
    
            islem_turu_baslangic<=0;islem_turu0<=0;
            islem_turu1<=0;islem_turu7<=0;islem_turu13<=0;islem_turu19<=0;
            islem_turu2<=0;islem_turu8<=0;islem_turu14<=0;islem_turu20<=0;
            islem_turu3<=0;islem_turu9<=0;islem_turu15<=0;islem_turu21<=0;
            islem_turu4<=0;islem_turu10<=0;islem_turu16<=0;islem_turu22<=0;
            islem_turu5<=0;islem_turu11<=0;islem_turu17<=0;islem_turu23<=0;
            islem_turu6<=0;islem_turu12<=0;islem_turu18<=0;islem_turu24<=0;
            islem_turu25<=0; 
    
            sayi1_baslangic <= 0; sayi2_baslangic <= 0;
            
            sayi1_baslangic_sonraki<=0;
            sayi1_r1<=0; sayi1_r7<=0; sayi1_r13<=0; sayi1_r19<=0; 
            sayi1_r2<=0; sayi1_r8<=0; sayi1_r14<=0; sayi1_r20<=0; 
            sayi1_r3<=0; sayi1_r9<=0; sayi1_r15<=0; sayi1_r21<=0; 
            sayi1_r4<=0; sayi1_r10<=0; sayi1_r16<=0; sayi1_r22<=0;
            sayi1_r5<=0; sayi1_r11<=0; sayi1_r17<=0; sayi1_r23<=0;
            sayi1_r6<=0; sayi1_r12<=0; sayi1_r18<=0; sayi1_r24<=0;
    
            exponent1_baslangic<=0;
            
            exponent2_baslangic<=0;
            
             sign1_baslangic <= 1'b0;
             sign2_baslangic <= 1'b0;
            
            sayi2_baslangic_sonraki<=0;
            sayi2_r1 <= 0;sayi2_r7 <= 0;sayi2_r13 <= 0;sayi2_r19 <= 0;
            sayi2_r2 <= 0;sayi2_r8 <= 0;sayi2_r14 <= 0;sayi2_r20 <= 0;
            sayi2_r3 <= 0;sayi2_r9 <= 0;sayi2_r15 <= 0;sayi2_r21 <= 0;
            sayi2_r4 <= 0;sayi2_r10 <= 0;sayi2_r16 <= 0;sayi2_r22 <= 0;
            sayi2_r5 <= 0;sayi2_r11 <= 0;sayi2_r17 <= 0;sayi2_r23 <= 0;
            sayi2_r6 <= 0;sayi2_r12 <= 0;sayi2_r18 <= 0;sayi2_r24 <= 0;
            birbit <= 1'b0;
            birbit_sonraki <= 1'b0;
    
            bolme_yardimci1 <= 0;bolme_yardimci7 <= 0;bolme_yardimci13 <= 0;bolme_yardimci19 <= 0;
            bolme_yardimci2 <= 0;bolme_yardimci8 <= 0;bolme_yardimci14 <= 0;bolme_yardimci20 <= 0;
            bolme_yardimci3 <= 0;bolme_yardimci9 <= 0;bolme_yardimci15 <= 0;bolme_yardimci21 <= 0;
            bolme_yardimci4 <= 0;bolme_yardimci10 <= 0;bolme_yardimci16 <= 0;bolme_yardimci22 <= 0;
            bolme_yardimci5 <= 0;bolme_yardimci11 <= 0;bolme_yardimci17 <= 0;bolme_yardimci23 <= 0;
            bolme_yardimci6 <= 0;bolme_yardimci12 <= 0;bolme_yardimci18 <= 0;bolme_yardimci24 <= 0;
            
            adres_baslangic <= 0;
            adres1<=0;adres6<=0;adres11<=0;adres16<=0;adres21<=0;
            adres2<=0;adres7<=0;adres12<=0;adres17<=0;adres22<=0;
            adres3<=0;adres8<=0;adres13<=0;adres18<=0;adres23<=0;
            adres4<=0;adres9<=0;adres14<=0;adres19<=0;adres24<=0;
            adres5<=0;adres10<=0;adres15<=0;adres20<=0;adres25<=0;
            adres26<=0;adres27<=0;
            
            cikis_gecerli1 <= 1'b0; cikis_gecerli7 <= 1'b0; cikis_gecerli13 <= 1'b0; cikis_gecerli18 <= 1'b0;
            cikis_gecerli2 <= 1'b0; cikis_gecerli8 <= 1'b0; cikis_gecerli14 <= 1'b0; cikis_gecerli19 <= 1'b0;
            cikis_gecerli3 <= 1'b0; cikis_gecerli9 <= 1'b0; cikis_gecerli15 <= 1'b0; cikis_gecerli20 <= 1'b0;
            cikis_gecerli4 <= 1'b0; cikis_gecerli10 <= 1'b0; cikis_gecerli16 <= 1'b0; cikis_gecerli21 <= 1'b0;
            cikis_gecerli5 <= 1'b0; cikis_gecerli11 <= 1'b0; cikis_gecerli17 <= 1'b0; cikis_gecerli22 <= 1'b0;
            cikis_gecerli6 <= 1'b0; cikis_gecerli12 <= 1'b0; cikis_gecerli24 <= 1'b0; cikis_gecerli23 <= 1'b0;
            cikis_gecerli25 <= 1'b0; cikis_gecerli26 <= 1'b0; cikis_gecerli27 <= 1'b0;
            for(i = 0; i < 8192;i = i + 1) begin
                sonuc_bellegi[i] <= 32'b0;
            end
        end
        else begin
        birbit<=birbit_sonraki;

       cikis_gecerli2  <= cikis_gecerli1;
       cikis_gecerli3  <= cikis_gecerli2;
       cikis_gecerli4  <= cikis_gecerli3;
       cikis_gecerli5  <= cikis_gecerli4;
       cikis_gecerli6  <= cikis_gecerli5;
       cikis_gecerli7  <= cikis_gecerli6;
       cikis_gecerli8  <= cikis_gecerli7;
       cikis_gecerli9  <= cikis_gecerli8;
       cikis_gecerli10 <= cikis_gecerli9;
        cikis_gecerli11  <= cikis_gecerli10;
        cikis_gecerli12  <= cikis_gecerli11;
        cikis_gecerli13  <= cikis_gecerli12;
        cikis_gecerli14  <= cikis_gecerli13;
        cikis_gecerli15  <= cikis_gecerli14;
        cikis_gecerli16  <= cikis_gecerli15;
        cikis_gecerli17  <= cikis_gecerli16;
        cikis_gecerli18  <= cikis_gecerli17;
        cikis_gecerli19  <= cikis_gecerli18;
        cikis_gecerli20  <= cikis_gecerli19;
        cikis_gecerli21  <= cikis_gecerli20;
        cikis_gecerli22  <= cikis_gecerli21;
        cikis_gecerli23  <= cikis_gecerli22;
        cikis_gecerli24  <= cikis_gecerli23;
        cikis_gecerli25  <= cikis_gecerli24;
        cikis_gecerli26 <= cikis_gecerli25;
        cikis_gecerli27 <= cikis_gecerli26;
        cikis_gecerli <= cikis_gecerli27;
        
        adres1 <= adres_baslangic;
        adres2 <= adres1;
        adres3 <= adres2;
        adres4 <= adres3;
        adres5 <= adres4;
        adres6 <= adres5;
        adres7 <= adres6;
        adres8 <= adres7;
        adres9 <= adres8;
        adres10 <= adres9;
        adres11 <= adres10;
        adres12 <= adres11;
        adres13 <= adres12;
        adres14 <= adres13;
        adres15 <= adres14;
        adres16 <= adres15;
        adres17 <= adres16;
        adres18 <= adres17;
        adres19 <= adres18;
        adres20 <= adres19;
        adres21 <= adres20;
        adres22 <= adres21;
        adres23 <= adres22;
        adres24 <= adres23;
        adres25 <= adres24;
        adres26 <= adres25;
        adres27 <= adres26;
        sonuc_bellegi[adres27] <= cikis;
        
        
        
        
        
        
        islem_turu0<=islem_turu_baslangic;
        islem_turu1<=islem_turu0;
        islem_turu2<=islem_turu1;
        islem_turu3<=islem_turu2;
        islem_turu4<=islem_turu3;
        islem_turu5<=islem_turu4;
        islem_turu6<=islem_turu5;
        islem_turu7<=islem_turu6;
        islem_turu8<=islem_turu7;
        islem_turu9<=islem_turu8;
        islem_turu10<=islem_turu9;
        islem_turu11<=islem_turu10;
        islem_turu12<=islem_turu11;
        islem_turu13<=islem_turu12;
        islem_turu14<=islem_turu13;
        islem_turu15<=islem_turu14;
        islem_turu16<=islem_turu15;
        islem_turu17<=islem_turu16;
        islem_turu18<=islem_turu17;
        islem_turu19<=islem_turu18;
        islem_turu20<=islem_turu19;
        islem_turu21<=islem_turu20;
        islem_turu22<=islem_turu21;
        islem_turu23<=islem_turu22;
        islem_turu24<=islem_turu23;
        islem_turu25<=islem_turu24;
        
        sayi1_baslangic<=sayi1_baslangic_sonraki;
        sayi1_r1<=mantissa1_baslangic;
        sayi1_r2<=sayi1_r1;
        sayi1_r3<=sayi1_r2;
        sayi1_r4<=sayi1_r3;
        sayi1_r5<=sayi1_r4;
        sayi1_r6<=sayi1_r5;
        sayi1_r7<=sayi1_r6;
        sayi1_r8<=sayi1_r7;
        sayi1_r9<=sayi1_r8;
        sayi1_r10<=sayi1_r9;
        sayi1_r11<=sayi1_r10;
        sayi1_r12<=sayi1_r11;
        sayi1_r13<=sayi1_r12;
        sayi1_r14<=sayi1_r13;
        sayi1_r15<=sayi1_r14;
        sayi1_r16<=sayi1_r15;
        sayi1_r17<=sayi1_r16;
        sayi1_r18<=sayi1_r17;
        sayi1_r19<=sayi1_r18;
        sayi1_r20<=sayi1_r19;
        sayi1_r21<=sayi1_r20;
        sayi1_r22<=sayi1_r21;
        sayi1_r23<=sayi1_r22;
        sayi1_r24<=sayi1_r23;
        
        sayi2_baslangic<=sayi2_baslangic_sonraki;
        sayi2_r1<=mantissa2_baslangic;
        sayi2_r2<=sayi2_r1;
        sayi2_r3<=sayi2_r2;
        sayi2_r4<=sayi2_r3;
        sayi2_r5<=sayi2_r4;
        sayi2_r6<=sayi2_r5;
        sayi2_r7<=sayi2_r6;
        sayi2_r8<=sayi2_r7;
        sayi2_r9<=sayi2_r8;
        sayi2_r10<=sayi2_r9;
        sayi2_r11<=sayi2_r10;
        sayi2_r12<=sayi2_r11;
        sayi2_r13<=sayi2_r12;
        sayi2_r14<=sayi2_r13;
        sayi2_r15<=sayi2_r14;
        sayi2_r16<=sayi2_r15;
        sayi2_r17<=sayi2_r16;
        sayi2_r18<=sayi2_r17;
        sayi2_r19<=sayi2_r18;
        sayi2_r20<=sayi2_r19;
        sayi2_r21<=sayi2_r20;
        sayi2_r22<=sayi2_r21;
        sayi2_r23<=sayi2_r22;
        sayi2_r24<=sayi2_r23;
        
        sign_sonuc2 <= sign_sonuc1;
        sign_sonuc3 <= sign_sonuc2;
        sign_sonuc4 <= sign_sonuc3;
        sign_sonuc5 <= sign_sonuc4;
        sign_sonuc6 <= sign_sonuc5;
        sign_sonuc7 <= sign_sonuc6;
        sign_sonuc8 <= sign_sonuc7;
        sign_sonuc9 <= sign_sonuc8;
        sign_sonuc10 <= sign_sonuc9;
        sign_sonuc11 <= sign_sonuc10;
        sign_sonuc12 <= sign_sonuc11;
        sign_sonuc13 <= sign_sonuc12;
        sign_sonuc14 <= sign_sonuc13;
        sign_sonuc15 <= sign_sonuc14;
        sign_sonuc16 <= sign_sonuc15;
        sign_sonuc17 <= sign_sonuc16;
        sign_sonuc18 <= sign_sonuc17;
        sign_sonuc19 <= sign_sonuc18;
        sign_sonuc20 <= sign_sonuc19;
        sign_sonuc21 <= sign_sonuc20;
        sign_sonuc22 <= sign_sonuc21;
        sign_sonuc23 <= sign_sonuc22;
        sign_sonuc24 <= sign_sonuc23;
        sign_sonuc25 <= sign_sonuc24;
        sign_sonuc26 <= sign_sonuc25;
        cikis[31] <= sign_sonuc26;
        
        exponent_sonuc2 <= exponent_sonuc1;
        exponent_sonuc3 <= exponent_sonuc2;
        exponent_sonuc4 <= exponent_sonuc3;
        exponent_sonuc5 <= exponent_sonuc4;
        exponent_sonuc6 <= exponent_sonuc5;
        exponent_sonuc7 <= exponent_sonuc6;
        exponent_sonuc8 <= exponent_sonuc7;
        exponent_sonuc9 <= exponent_sonuc8;
        exponent_sonuc10 <= exponent_sonuc9;
        exponent_sonuc11 <= exponent_sonuc10;
        exponent_sonuc12 <= exponent_sonuc11;
        exponent_sonuc13 <= exponent_sonuc12;
        exponent_sonuc14 <= exponent_sonuc13;
        exponent_sonuc15 <= exponent_sonuc14;
        exponent_sonuc16 <= exponent_sonuc15;
        exponent_sonuc17 <= exponent_sonuc16;
        exponent_sonuc18 <= exponent_sonuc17;
        exponent_sonuc19 <= exponent_sonuc18;
        exponent_sonuc20 <= exponent_sonuc19;
        exponent_sonuc21 <= exponent_sonuc20;
        exponent_sonuc22 <= exponent_sonuc21;
        exponent_sonuc23 <= exponent_sonuc22;
        exponent_sonuc24 <= exponent_sonuc23;
        exponent_sonuc25 <= exponent_sonuc24;
        exponent_sonuc26 <= exponent_sonuc25;
        cikis[30:23] <= exponent_sonuc26;
        
        bolme_yardimci2 <= {sayi1_r1,1'b0};
        bolme_yardimci3 <= bolme_yardimci2 << 1;
        bolme_yardimci4 <= bolme_yardimci3 << 1;
        bolme_yardimci5 <= bolme_yardimci4 << 1;
        bolme_yardimci6 <= bolme_yardimci5 << 1;
        bolme_yardimci7 <= bolme_yardimci6 << 1;
        bolme_yardimci8 <= bolme_yardimci7 << 1;
        bolme_yardimci9 <= bolme_yardimci8 << 1;
        bolme_yardimci10 <= bolme_yardimci9 << 1;
        bolme_yardimci11 <= bolme_yardimci10 << 1;
        bolme_yardimci12 <= bolme_yardimci11 << 1;
        bolme_yardimci13 <= bolme_yardimci12 << 1;
        bolme_yardimci14 <= bolme_yardimci13 << 1;
        bolme_yardimci15 <= bolme_yardimci14 << 1;
        bolme_yardimci16 <= bolme_yardimci15 << 1;
        bolme_yardimci17 <= bolme_yardimci16 << 1;
        bolme_yardimci18 <= bolme_yardimci17 << 1;
        bolme_yardimci19 <= bolme_yardimci18 << 1;
        bolme_yardimci20 <= bolme_yardimci19 << 1;
        bolme_yardimci21 <= bolme_yardimci20 << 1;
        bolme_yardimci22 <= bolme_yardimci21 << 1;
        bolme_yardimci23 <= bolme_yardimci22 << 1;
        bolme_yardimci24 <= bolme_yardimci23 << 1;
                                         
        islem2 <= islem_sonraki1;
        islem3 <= islem_sonraki2;
        islem4 <= islem_sonraki3;
        islem5 <= islem_sonraki4;
        islem6 <= islem_sonraki5;
        islem7 <= islem_sonraki6;
        islem8 <= islem_sonraki7;
        islem9 <= islem_sonraki8;
        islem10 <= islem_sonraki9;
        islem11 <= islem_sonraki10;
        islem12 <= islem_sonraki11;
        islem13 <= islem_sonraki12;
        islem14 <= islem_sonraki13;
        islem15 <= islem_sonraki14;
        islem16 <= islem_sonraki15;
        islem17 <= islem_sonraki16;
        islem18 <= islem_sonraki17;
        islem19 <= islem_sonraki18;
        islem20 <= islem_sonraki19;
        islem21 <= islem_sonraki20;
        islem22 <= islem_sonraki21;
        islem23 <= islem_sonraki22;
        islem24 <= islem_sonraki23;
        islem25 <= islem_sonraki24;
        cikis[22:0]<=islem_sonraki25;
        end
    end

endmodule
