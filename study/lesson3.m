% --- Lesson 3: Across Disciplines ---
% Binary + probability unify physics, economics, biology, and computing (you may prefer to  run each block separtly).

% Physics: qubit simulation (30% chance of 0)
p0 = 0.3;
outcomes = rand(1,200) < p0; % 1=0 outcome, 0=1 outcome
figure; bar([sum(outcomes) sum(~outcomes)]);
set(gca,'XTickLabel',{'0','1'}); title('Qubit outcomes (30% chance of 0)');
% -> Quantum states are probabilistic binary outcomes (DO: change p0 to other values and compare results).

% Economics: market decisions (buy/sell)
traders = 50;
decisions = randi([0 1],1,traders); % 0=sell, 1=buy
[sum(decisions==1) sum(decisions==0)]
figure; stem([sum(decisions==1) sum(decisions==0)]);
title('Market round decisions (0 = buy, 1 = sell)');
% -> Market behavior is aggregated binary choices.

% Biology: DNA encoding into binary
dna_map = containers.Map({'A','T','C','G'}, {'00','01','10','11'});
sequence = {'A','T','C','G','A','T'};
binary_seq = cellfun(@(base) dna_map(base), sequence, 'UniformOutput', false);
disp(['DNA = ' strjoin(sequence,'') ' → Binary = ' strjoin(binary_seq,' ')])
% -> Biological coding expressed in binary.

% Computing: parity check for error detection
data = [1 0 1 1];
parity = mod(sum(data),2);
encoded = [data parity];
encoded(3) = 0; % simulate error
valid = mod(sum(encoded(1:end-1)),2) == encoded(end);
disp(['Received = ' num2str(encoded) ', Valid transmission? ' num2str(valid)])
% -> Binary parity integrates probability with computing reliability.
