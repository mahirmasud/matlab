%Mohammed Masud Chowdhury Mahir (2215151105)
observed = [
    60, 20, 10;  % Non-Smoker
    30, 25, 15;  % Occasional Smoker
    10, 15, 25;  % Regular Smoker
    40, 30, 10;  % Active Lifestyle
    20, 15, 35   % Sedentary Lifestyle
];

t_observed = sum(observed, 2);

total_by_outcome = sum(observed, 1);

expected = total_by_outcome / 5;


chi2_stat = sum((observed - expected).^2 ./ expected, 'all');

%Degrees of freedom (df)
[num_rows, num_cols] = size(observed);
df = (num_rows - 1) * (num_cols - 1);

alpha = 0.05;
critical_value = chi2inv(1 - alpha, df);

disp(chi2_stat) %Chi-square Statistic
disp(df); %Degrees of Freedom
disp(alpha) %alpha
disp(critical_value); %Critical Value (α = %.2f)

figure;
bar(categorical({'Non-Smoker','Occasional','Regular','Active','Sedentary'}), [sum(observed,2), repmat(sum(total_by_outcome / 5),5,1)]);
legend('Observed','Expected');
xlabel('Groups');
ylabel('Total Frequency');
title('Observed vs Expected Frequencies');
