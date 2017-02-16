%% 2.3
clear all; close all;clc;


LR = [0.002, 0.01, 0.05, 0.2, 1.0, 5.0, 20];
Mom = [0 0.9];


for i = LR
    for j = Mom
        figure
        net(0,10,70,i,j,false,4);
        string = sprintf('Learning rate %f, momentum %f',i,j);
        title(string)
    end
end

%% 2.4
clear all; close all; clc;

%a The cost on the validation data is 0.430185
%net(0,200,1000,0.35,0.9,false,100)

%b The cost on the validation data is 0.334505
%net(0,200,1000,0.35,0.9,true,100)

%c 
%%% wd = 10
% The cost on the training data is 182.202177
% The classification cost (i.e. without weight decay) on the training data is 22.652490
% The classification error rate on the training data is 0.900000
% 
% The cost on the validation data is 182.162460
% The classification cost (i.e. without weight decay) on the validation data is 22.612774
% The classification error rate on the validation data is 0.900000
% 
% The cost on the test data is 182.213042
% The classification cost (i.e. without weight decay) on the test data is 22.663356
% The classification error rate on the test data is 0.900000

%%% wd = 1
% The cost on the training data is 2.302585
% The classification cost (i.e. without weight decay) on the training data is 2.302585
% The classification error rate on the training data is 0.900000
% 
% The cost on the validation data is 2.302585
% The classification cost (i.e. without weight decay) on the validation data is 2.302585
% The classification error rate on the validation data is 0.900000
% 
% The cost on the test data is 2.302585
% The classification cost (i.e. without weight decay) on the test data is 2.302585
% The classification error rate on the test data is 0.900000
% 

%%% wd = 0.0001
% The cost on the training data is 0.047568
% The classification cost (i.e. without weight decay) on the training data is 0.007561
% The classification error rate on the training data is 0.000000
% 
% The cost on the validation data is 0.388301
% The classification cost (i.e. without weight decay) on the validation data is 0.348294
% The classification error rate on the validation data is 0.085000
% 
% The cost on the test data is 0.409104
% The classification cost (i.e. without weight decay) on the test data is 0.369097
% The classification error rate on the test data is 0.090778
% 

%%% wd = 0.001
% The cost on the training data is 0.245358
% The classification cost (i.e. without weight decay) on the training data is 0.070793
% The classification error rate on the training data is 0.005000
% 
% The cost on the validation data is 0.462475
% The classification cost (i.e. without weight decay) on the validation data is 0.287910
% The classification error rate on the validation data is 0.090000
% 
% The cost on the test data is 0.464538
% The classification cost (i.e. without weight decay) on the test data is 0.289973
% The classification error rate on the test data is 0.086556
% 
%%% wd = 5
% The cost on the training data is 2.302585
% The classification cost (i.e. without weight decay) on the training data is 2.302585
% The classification error rate on the training data is 0.900000
% 
% The cost on the validation data is 2.302585
% The classification cost (i.e. without weight decay) on the validation data is 2.302585
% The classification error rate on the validation data is 0.900000
% 
% The cost on the test data is 2.302585
% The classification cost (i.e. without weight decay) on the test data is 2.302585
% The classification error rate on the test data is 0.900000

% for i=[10,1,.0001,.001,5]
%     figure
%     string = sprintf('Weight decay %f', i);
%     title(string)
%     net(i,200,1000,0.35,0.9,false,100)
% end


%d
% hn = 10
% The cost on the training data is 0.011050
% The classification error rate on the training data is 0.000000
% 
% The cost on the validation data is 0.421705
% The classification error rate on the validation data is 0.107000
% 
% The cost on the test data is 0.389471
% The classification error rate on the test data is 0.100333

%hn = 30
% The cost on the training data is 0.004042
% The classification error rate on the training data is 0.000000
% 
% The cost on the validation data is 0.317077
% The classification error rate on the validation data is 0.078000
% 
% The cost on the test data is 0.364651
% The classification error rate on the test data is 0.087222

%hn = 100
% The cost on the training data is 0.002849
% The classification error rate on the training data is 0.000000
% 
% The cost on the validation data is 0.368593
% The classification error rate on the validation data is 0.082000
% 
% The cost on the test data is 0.408845
% The classification error rate on the test data is 0.086444

%hn = 130
% The cost on the training data is 0.002715
% The classification error rate on the training data is 0.000000
% 
% The cost on the validation data is 0.397597
% The classification error rate on the validation data is 0.087000
% 
% The cost on the test data is 0.418396
% The classification error rate on the test data is 0.088667

%hn = 200
% The cost on the training data is 0.002614
% The classification error rate on the training data is 0.000000
% 
% The cost on the validation data is 0.430185
% The classification error rate on the validation data is 0.087000
% 
% The cost on the test data is 0.464988
% The classification error rate on the test data is 0.093778


% for i=[10,30,100,130,200]
%     figure
%     string = sprintf('Hidden neurons %i', i);
%     title(string)
%     net(0,i,1000,0.35,0.9,false,100)
% end
% 

%e
% hd = 18
% The cost on the training data is 0.037047
% The classification error rate on the training data is 0.002000
% 
% The cost on the validation data is 0.306083
% The classification error rate on the validation data is 0.092000
% 
% The cost on the test data is 0.284525
% The classification error rate on the test data is 0.083000

%hd = 37
% The cost on the training data is 0.038770
% The classification error rate on the training data is 0.002000
% 
% The cost on the validation data is 0.265165
% The classification error rate on the validation data is 0.081000
% 
% The cost on the test data is 0.282510
% The classification error rate on the test data is 0.084333

%hd = 83
% The cost on the training data is 0.059285
% The classification error rate on the training data is 0.007000
% 
% The cost on the validation data is 0.311244
% The classification error rate on the validation data is 0.083000
% 
% The cost on the test data is 0.337624
% The classification error rate on the test data is 0.092778

%hd = 113
% The cost on the training data is 0.064678
% The classification error rate on the training data is 0.014000
% 
% The cost on the validation data is 0.313749
% The classification error rate on the validation data is 0.093000
% 
% The cost on the test data is 0.347098
% The classification error rate on the test data is 0.094667


%hd = 236
% The cost on the training data is 0.076253
% The classification error rate on the training data is 0.017000
% 
% The cost on the validation data is 0.343841
% The classification error rate on the validation data is 0.095000
% 
% The cost on the test data is 0.339124
% The classification error rate on the test data is 0.094111
for i=[18,37,83,113,236]
    figure
    string = sprintf('Hidden neurons %i', i);
    net(0,i,1000,0.35,0.9,true,100)
    title(string)

end