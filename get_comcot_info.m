function [simulation_time , output_dt , dt , layer_onoff] = get_comcot_info()
    fid=fopen('comcot.ctl','r');
    for ii=1:10; fgetl(fid); end;
    tt=fgetl(fid); simulation_time=str2num(tt(50:length(tt)));
    tt=fgetl(fid); output_dt=str2num(tt(50:length(tt)));
    for ii=1:58; fgetl(fid); end;
    tt=fgetl(fid); dt=str2num(tt(50:length(tt)));
    layer_onoff=zeros(1,50);
    layer_onoff(1)=1;
    for ii=1:16; fgetl(fid); end;
    tt=fgetl(fid); layer2=str2num(tt(50:length(tt)));
    if(layer2<=0); layer_onoff(2)=1; end
    for lay = 3:10
        for ii=1:19; fgetl(fid); end;
        tt=fgetl(fid); layer2=str2num(tt(50:length(tt)));
        if(layer2<=0); layer_onoff(lay)=1; end;
    end
    fclose(fid); clear(tt);
end