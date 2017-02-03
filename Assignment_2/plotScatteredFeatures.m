function [] = plotScatteredFeatures(feature_data, feature_idx, label_data)

class_idx = unique (label_data);

fig = figure;
hold on

for i=1:length(class_idx)
   idx = class_idx(i);
   data_idx = find(label_data==idx);
   plot(feature_data(data_idx,feature_idx(1)),feature_data(data_idx,feature_idx(2)),'x')
end



end