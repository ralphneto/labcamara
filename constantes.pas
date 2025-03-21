unit constantes;

interface

const
        //Canais Analógicos
        chTI1                   = 15;
        chTI2                   = 7;
        chTI3                   = 14;
        chTI4                   = 8;
        chTAS1                  = 13;
        chTAS2                  = 5;
        chTAE1                  = 12;
        chTAE2                  = 4;
        chTTanque               = 6;
        chUmid                  = 0;
        chCel1                  = 1;
        chCel2                  = 9;
        chPressao1              = 2;
        chPressao2              = 10;
        chNivel                 = 3;

        //Bits de Entrada Digital (PORT_CL)
        bitChEmergenciaIn       = 0; //PC0
        bitPortaIn              = 1; //PC1
        bitPressaoCompIn        = 2; //PC2
        
        //Bits de Saída Digital (PORT_A)
        bitSelTempAguaEntOut    = 0; //PA0
        bitUmidificadorOut      = 1; //PA1
        bitSaidaAgua1Out        = 2; //PA2
        bitSaidaAgua2Out        = 3; //PA3
        bitRecirculacaoOut      = 4; //PA4
        bitProcCompIntOut       = 5; //PA5
        bitCircArOut            = 6; //PA6
        bitProcCompTanqueOut    = 7; //PA7
        
        //Bits de Saída Digital (PORT_B)
        bitGasQuenteIntOut      = 0; //PB0
        bitGasQuenteTanqueOut   = 1; //PB1
        bitCompIntOut           = 2; //PB2
        bitCompTanqueOut        = 3; //PB3
        bitBombaAguaOut         = 4; //PB4
        bitResCamara3Out        = 5; //PB5
        bitResCamara2Out        = 6; //PB6
        bitResTanqueOut         = 7; //PB7

        //Arquivos
        fileEmpresas            = 'Empresas.dat';
        fileModelos             = 'Modelos.dat';

implementation


end.