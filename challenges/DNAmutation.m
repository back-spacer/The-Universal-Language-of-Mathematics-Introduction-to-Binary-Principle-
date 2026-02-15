% --- Problem 3: DNA Mutation ---
% Encode DNA bases into binary, then flip a bit to simulate mutation
dna_map = containers.Map({'A','T','C','G'}, {'00','01','10','11'});
sequence = {'A','T','C','G'};
binary_seq = cellfun(@(base) dna_map(base), sequence, 'UniformOutput', false);
binary_str = strjoin(binary_seq,'');
disp(['Original DNA binary = ' binary_str])

% Simulate mutation: flip one bit
mutated = binary_str;
n = length(mutated); %length of the binary DNA string
i = randi(n);
% flip a bit
if mutated(i) == '0'
  mutated(i) = '1';
else
    mutated(i) = '0';
end
disp(['Mutated DNA binary = ' mutated])
