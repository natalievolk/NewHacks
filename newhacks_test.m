
key = '1nvt2f8dS1jChkmXYDk4i6ajvOROoZzXj4u9sgRaq4Fk';

% importing spreadsheet
res = str2double(GetGoogleSpreadsheet(key));

difficulty = res(2:end, 4);

f1 = figure;
histfit(difficulty, 5, "Normal")
xlim([1 5])
ax1 = gca;                   % gca = get current axis
ax1.YAxis.Visible = 'off';   % remove y-axis
ax1.XAxis.Visible = 'on';   % keep x-axis
xlabel("Difficulty of Assignment")
title("Polled Difficulty of Assignment")
