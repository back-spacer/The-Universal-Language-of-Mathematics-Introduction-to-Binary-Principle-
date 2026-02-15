% --- Problem 2: Market Uncertainty ---
% Traders make binary decisions: 0 = sell, 1 = buy
traders = 100;
decisions = randi([0 1],1,traders);
p_buy = sum(decisions)/traders;
entropy = @(p) -p*log2(p) - (1-p)*log2(1-p);
H_market = entropy(p_buy);
disp(['Buy proportion = ' num2str(p_buy) ', Market entropy = ' num2str(H_market)])
