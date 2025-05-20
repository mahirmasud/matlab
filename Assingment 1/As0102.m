%Mohammed Masud Chowdhury Mahir (2215151105)
lang = {'Python', 'C', 'Java', 'Js', 'Others'};
use = [40, 20, 15, 15, 10];


colors = jet(numel(lang)); 


bar_handles = zeros(1, numel(lang));


hold on;
for i = 1:numel(lang)
    bar_handles(i) = bar(i, use(i), 'FaceColor', colors(i, :));
end
hold off;


title('Popularity of Programming Languages');
xlabel('Programming Languages');
ylabel('Usage (%)');


legend(bar_handles, lang, 'Location', 'northeast');
