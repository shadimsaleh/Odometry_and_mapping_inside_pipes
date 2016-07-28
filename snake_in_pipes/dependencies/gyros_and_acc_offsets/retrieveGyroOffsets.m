function gyroOffsets = retrieveGyroOffsets(names)
   
known_names = ...
    {    'SA018'
    'SA013'
    'SA023'
    'SA025'
    'SA032'
    'SA010'
    'SA002'
    'SA005'
    'SA015'
    'SA014'
    'SA011'
    'SA019'
    'SA003'
    'SA007'
    'SA009'
    'SA040'
    'SA030'
    'SA008'};

%     known_names =  ...   
%     {   'SA002'
%         'SA017'
%         'SA006'
%         'SA004'
%         'SA007'
%         'SA005'
%         'SA032'
%         'SA003'
%         'SA013'
%         'SA010'
%         'SA008'
%         'SA031'
%         'SA025'
%         'SA012'
%         'SA023'
%         'SA018'
%         'SA011'
%         'SA015'};
    
%     known_names =  ...   
%     {'SA018'
%     'SA013'
%     'SA023'
%     'SA025'
%     'SA032'
%     'SA010'
%     'SA002'
%     'SA005'
%     'SA015'
%     'SA014'
%     'SA011'
%     'SA019'
%     'SA017'
%     'SA031'
%     'SA003'
%     'SA007'};

%     known_names =  ...   
%     {'SA002'
%     'SA017'
%     'SA006'
%     'SA004'
%     'SA007'
%     'SA005'
%     'SA032'
%     'SA003'
%     'SA013'
%     'SA010'
%     'SA031'
%     'SA025'
%     'SA012'
%     'SA023'
%     'SA018'
%     'SA008    'SA018'
%     'SA013'
%     'SA023'
%     'SA025'
%     'SA032'
%     'SA010'
%     'SA002'
%     'SA005'
%     'SA015'
%     'SA014'
%     'SA011'
%     'SA019'
%     'SA003'
%     'SA007'
%     'SA009'
%     'SA040'
%     'SA030'
%     'SA008''
%     'SA011'
%     'SA015'};

known_offsets = ...
    [    0.0775   -0.0140    0.0559    0.0142    0.0435   -0.0103    0.0869    0.0177    0.0201    0.0382   -0.0440   -0.2010   -0.0038    0.0557    0.0781   -0.0171 0.0320    0.0476; ...
   -0.0715   -0.0039   -0.0435   -0.0313   -0.0299   -0.0404   -0.0607   -0.0443   -0.0401   -0.0576   -0.0341   -0.0642   -0.0142   -0.0301   -0.0436   -0.0063 -0.0273   -0.0357; ...
   -0.0276   -0.0643   -0.0567   -0.0101    0.0115   -0.0408   -0.0347   -0.0661   -0.0684   -0.0166   -0.1441    0.0197   -0.0389   -0.0729   -0.0374   -0.0414 -0.0851    0.0338];

% known_offsets = ...
%     [    0.0820   -0.0146    0.0558    0.0146    0.0393   -0.0104    0.0870    0.0177    0.0217    0.0404   -0.0469   -0.2017   -0.0037    0.0541    0.0786   -0.0172    0.0341    0.0459; ...
%    -0.0683   -0.0019   -0.0413   -0.0327   -0.0316   -0.0388   -0.0619   -0.0454   -0.0433   -0.0577   -0.0344   -0.0604   -0.0157   -0.0295   -0.0444   -0.0036   -0.0262   -0.0372; ...
%    -0.0244   -0.0590   -0.0504   -0.0075    0.0159   -0.0356   -0.0319   -0.0610   -0.0645   -0.0103   -0.1356    0.0177   -0.0385   -0.0679   -0.0374   -0.0372   -0.0822    0.0343];

% known_offsets = ...
%     [0.0761   -0.0139    0.0555    0.0131    0.0448   -0.0105    0.0871    0.0170    0.0208    0.0359   -0.0407   -0.1977   -0.1035    0.0501   -0.0036    0.0549; ...
%    -0.0703   -0.0035   -0.0408   -0.0303   -0.0285   -0.0422   -0.0621   -0.0421   -0.0393   -0.0571   -0.0342   -0.0637   -0.0512   -0.0210   -0.0140   -0.0322; ...
%    -0.0307   -0.0671   -0.0604   -0.0128    0.0083   -0.0453   -0.0379   -0.0693   -0.0721   -0.0225   -0.1493    0.0229    0.0415   -0.0674   -0.0423   -0.0743];
% % 
% known_offsets = ...
%     [    0.0652   -0.1068    0.0298    0.0156    0.0402    0.0186    0.0290   -0.0069   -0.0142   -0.0063    0.0404    0.0112    0.0339    0.0476    0.0499    0.0430   -0.0290    0.0210; ...
%    -0.0589   -0.0390   -0.0330   -0.0524   -0.0282   -0.0417   -0.0372   -0.0142   -0.0029   -0.0430    0.0016   -0.0309   -0.0548   -0.0423   -0.0771   -0.0378   -0.0339   -0.0429; ...
%    -0.0513    0.0340   -0.0304   -0.0258   -0.0657   -0.0651    0.0063   -0.0403   -0.0686   -0.0394   -0.0662   -0.0246   -0.0103   -0.0627   -0.0437    0.0161   -0.1313   -0.0716];
%     
% known_offsets = ...
%     [    0.0675   -0.1073    0.0294    0.0157    0.0399    0.0195    0.0276   -0.0061   -0.0138   -0.0088    0.0400    0.0120    0.0338    0.0506    0.0564    0.0432   -0.0305    0.0201; ...
%    -0.0593   -0.0381   -0.0333   -0.0517   -0.0279   -0.0434   -0.0375   -0.0142   -0.0023   -0.0415    0.0016   -0.0314   -0.0541   -0.0431   -0.0732   -0.0404   -0.0343   -0.0449; ...
%    -0.0524    0.0348   -0.0261   -0.0217   -0.0638   -0.0617    0.0124   -0.0374   -0.0679   -0.0393   -0.0626   -0.0195   -0.0079   -0.0541   -0.0362    0.0195   -0.1247   -0.0683];

    
%     known_offsets = ...
%     [    0.0644   -0.1043    0.0297    0.0159    0.0400    0.0187    0.0275   -0.0062   -0.0149   -0.0037    0.0405    0.0108    0.0315    0.0480    0.0501    0.0429   -0.0297    0.0193; ...
%    -0.0582   -0.0367   -0.0311   -0.0522   -0.0282   -0.0428   -0.0347   -0.0160   -0.0028   -0.0424   -0.0002   -0.0297   -0.0551   -0.0431   -0.0735   -0.0386   -0.0336   -0.0444; ...
%    -0.0518    0.0319   -0.0319   -0.0287   -0.0667   -0.0670    0.0053   -0.0425   -0.0713   -0.0374   -0.0667   -0.0263   -0.0126   -0.0614   -0.0405    0.0163   -0.1288   -0.0702];
    
%     known_offsets =  ...
%     [    0.0636   -0.1046    0.0292    0.0153    0.0399    0.0183    0.0274   -0.0064   -0.0150   -0.0032    0.0405    0.0108    0.0317    0.0479    0.0505    0.0426   -0.0297    0.0194; ...
%    -0.0580   -0.0367   -0.0312   -0.0523   -0.0280   -0.0426   -0.0349   -0.0161   -0.0029   -0.0422   -0.0004   -0.0298   -0.0550   -0.0430   -0.0732   -0.0387   -0.0334   -0.0443; ...
%    -0.0516    0.0316   -0.0317   -0.0288   -0.0664   -0.0671    0.0053   -0.0428   -0.0707   -0.0368   -0.0661   -0.0263   -0.0128   -0.0612   -0.0403    0.0160   -0.1283   -0.0703];
%     
%     known_offsets = ...
%     [    0.0642   -0.1047    0.0288    0.0156    0.0400    0.0179    0.0276   -0.0065   -0.0146   -0.0027    0.0403    0.0110    0.0320    0.0479    0.0506    0.0431   -0.0294    0.0197;
%    -0.0575   -0.0367   -0.0312   -0.0522   -0.0288   -0.0419   -0.0357   -0.0160   -0.0027   -0.0415    0.0010   -0.0301   -0.0550   -0.0431   -0.0723   -0.0390   -0.0339   -0.0447;
%    -0.0491    0.0306   -0.0327   -0.0282   -0.0658   -0.0670    0.0049   -0.0424   -0.0692   -0.0357   -0.0668   -0.0254   -0.0115   -0.0617   -0.0409    0.0164   -0.1279   -0.0707];
    
%     known_offsets = ...
%     [ 0.0622   -0.1052    0.0255    0.0101    0.0359    0.0204    0.0245   -0.0048   -0.0138   -0.0033    0.0384    0.0399    0.0105    0.0319    0.0487    0.0387   -0.0298    0.0225;
%    -0.0586   -0.0370   -0.0295   -0.0554   -0.0294   -0.0446   -0.0354   -0.0146   -0.0027   -0.0424   -0.0395    0.0013   -0.0317   -0.0567   -0.0431   -0.0741   -0.0348   -0.0447;
%    -0.0546    0.0343   -0.0287   -0.0271   -0.0632   -0.0630    0.0081   -0.0358   -0.0680   -0.0386    0.0109   -0.0642   -0.0263   -0.0100   -0.0579   -0.0404   -0.1232   -0.0685];
    
%     known_offsets = ...
%     [    0.0617   -0.1055    0.0259    0.0101    0.0362    0.0209    0.0242   -0.0045   -0.0136   -0.0031    0.0373    0.0404    0.0106    0.0316    0.0492    0.0392   -0.0303    0.0226;
%    -0.0590   -0.0370   -0.0295   -0.0555   -0.0295   -0.0457   -0.0356   -0.0145   -0.0028   -0.0421   -0.0360    0.0012   -0.0320   -0.0569   -0.0433   -0.0739   -0.0350   -0.0447;
%    -0.0556    0.0338   -0.0270   -0.0255   -0.0627   -0.0629    0.0089   -0.0344   -0.0676   -0.0392    0.0119   -0.0631   -0.0253   -0.0103   -0.0567   -0.0394   -0.1224   -0.0689];     
%      known_offsets = ...
%     [0.0596   -0.1039    0.0249    0.0108    0.0355    0.0194    0.0248   -0.0053   -0.0145   -0.0032    0.0387    0.0394    0.0095    0.0317    0.0467    0.0363   -0.0280    0.0231;
%    -0.0576   -0.0402   -0.0317   -0.0551   -0.0286   -0.0447   -0.0363   -0.0143   -0.0041   -0.0435   -0.0396    0.0006   -0.0310   -0.0567   -0.0417   -0.0755   -0.0352   -0.0449;
%    -0.0554    0.0309   -0.0327   -0.0316   -0.0640   -0.0670    0.0039   -0.0382   -0.0710   -0.0412    0.0073   -0.0689   -0.0306   -0.0143   -0.0619   -0.0434   -0.1250   -0.0707]; 
%     known_offsets = ...
%     [0.0616   -0.1038    0.0241    0.0105    0.0357    0.0196    0.0267   -0.0047   -0.0122   -0.0026    0.0383    0.0408    0.0106    0.0325    0.0498    0.0397   -0.0285    0.0240;
%    -0.0589   -0.0357   -0.0343   -0.0551   -0.0260   -0.0435   -0.0351   -0.0153   -0.0053   -0.0431   -0.0359    0.0005   -0.0318   -0.0570   -0.0441   -0.0747   -0.0348   -0.0446;
%    -0.0551    0.0344   -0.0322   -0.0276   -0.0642   -0.0651    0.0068   -0.0360   -0.0693   -0.0400    0.0134   -0.0666   -0.0258   -0.0098   -0.0590   -0.0423   -0.1253   -0.0701];  
%     known_offsets = ...
%     [0.0603   -0.1037    0.0251    0.0111    0.0360    0.0195    0.0273  ...
%     -0.0046   -0.0146   -0.0033    0.0400    0.0396    0.0098    0.0314   ...
%     0.0482    0.0353   -0.0269    0.0183;
%    -0.0584   -0.0382   -0.0337   -0.0547   -0.0290   -0.0423   -0.0359   ...
%    -0.0149   -0.0029   -0.0450   -0.0421    0.0024   -0.0307   -0.0563   ...
%    -0.0439   -0.0792   -0.0347   -0.0452;
%    -0.0566    0.0351   -0.0330   -0.0300   -0.0663   -0.0661    0.0042   ...
%    -0.0382   -0.0725   -0.0422    0.0086   -0.0702   -0.0315   -0.0145   ...
%    -0.0642   -0.0466   -0.1282   -0.0710];

    
    
    gyroOffsets = zeros(3,length(names));
    for i=1:length(names)
        index = find(strcmp(known_names, names(i)));
        if strcmp('', names(i))
            gyroOffsets(:,i) = [];
        elseif ~isempty(index)
            gyroOffsets(:,i) = known_offsets(:,index);
        else
           disp(['WARNING, this gyro offset of module ', num2str(i),' is unknown']);
           pause();
        end

    end
    
    

end