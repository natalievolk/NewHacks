% Must have GetGoogleSpreadsheet.m open and in the same directory

key = '1nvt2f8dS1jChkmXYDk4i6ajvOROoZzXj4u9sgRaq4Fk';% DOCID of the spreadsheet

% importing spreadsheet
res = str2double(GetGoogleSpreadsheet(key));

difficulty = res(2:end, 4);
per_ass_done = res( 2:end , 2);
time_taken = res( 2:end , 3);

% Difficulty of Assignment histogram

f1 = figure;
histfit(difficulty, 5, "Normal")
xlim([1 5])
ax1 = gca;                   % gca = get current axis
ax1.YAxis.Visible = 'off';   % remove y-axis
ax1.XAxis.Visible = 'on';   % keep x-axis
xlabel("Difficulty of Assignment")
title("Polled Difficulty of Assignment")


% Percent of Assignment Done histogram

f2 = figure;
% histfit(per_ass_done, "Normal")
% f2 = figure;
histfit(per_ass_done, 10, "Normal")
xlim([0 100])
ax1 = gca;                   % gca = get current axis
ax1.YAxis.Visible = 'off';   % remove y-axis
ax1.XAxis.Visible = 'on';   % keep x-axis
xlabel("Percentage (%)")
title("Percentage of Assignment Completed")
