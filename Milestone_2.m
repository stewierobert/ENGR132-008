all_data=readmatrix("Copy of extracted data-m2.xlsx");
voltage_data=all_data(:,2);
time_data=all_data(:,1);
delta_t=time_data(2)-time_data(1)
length_voltage_data=length(voltage_data);
time_total=delta_t*length_voltage_data;
time=[delta_t:delta_t:time_total];
time_column=time';
plot(time_data,voltage_data)

index=1;
while voltage_data(index)>0
    index=index+1;
end

index_1=index-1;

while voltage_data(index)<0
    index=index+1;
end

index_2=index-1;

while voltage_data(index)>0
    index=index+1;
end

index_3=index-1;

full_period=index_3-index_1
full_period_actual_time=full_period*0.000002
frequency=1/full_period_actual_time
maximum_voltage=max(voltage_data)
minimum_voltage=min(voltage_data)
average_voltage=mean(voltage_data)

fft_information=fft(voltage_data);

