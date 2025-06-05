names = {'1','2','3','4','5','A','B','C','D','E','F','G','H','I','V','W'...
    'X','Y','P1H','P1L','P2H','P2L','P3H','P3L','P4H','P4L'};
rounds = {'1','2','3','4'};
for j = 1:26
    qq = [];
    for idx = 1:4
        title = strcat('round',rounds{idx},names{j},'.csv');
        tempdata = readmatrix(title);
        tempdata = tempdata(1:40,:);
        qq = [qq;tempdata];
    end
    writematrix(qq,strcat(names{j},'.csv'))
end

% for j = 1:26
%     qq = [];
%         title = strcat('round5',names{j},'.csv');
%         tempdata = readmatrix(title);
%         tempdata = tempdata(1:20,:);
%         qq = [qq;tempdata];
%     writematrix(qq,strcat('testData',names{j},'.csv'))
% end