% --- Lesson 2: Information Theory ---
% Binary sequences encode uncertainty and information.

% Entropy function: measure of uncertainty in binary outcomes
entropy = @(p) -p*log2(p) - (1-p)*log2(1-p);
ps = 0.1:0.1:0.9;
values = arrayfun(entropy, ps);

figure; plot(ps, values, 'o-');
xlabel('Probability of 1'); ylabel('Entropy (bits)');
title('Entropy vs Probability');
% -> Maximum entropy at p=0.5 (fair coin), minimum at p=0 or 1 (certain outcome).

% Binary coding: map letters to binary strings
alphabet = containers.Map({'A','B','C','D'}, {'00','01','10','11'});
message = {'A','B','C','D'};
binary_message = cellfun(@(ch) alphabet(ch), message, 'UniformOutput', false);
disp(['Message = ' strjoin(message,'') ' → Binary (Uniform) = ' strjoin(binary_message,'')])
% -> Validates binary as a universal coding system (all letters are assume to have the same probability (uniform distribution).

% Binary coding: map letters to binary strings (not uniform distribution)
% The Huffman code for probabilities  {0.5,0.25,0.125,0.125} for each letter {A,B,C,D}, respectively.
alphabet = containers.Map({'A','B','C','D'}, {'0','10','110','111'});
message = {'A','B','A','A','B','C','A','D'}; %respects probability
binary_message = cellfun(@(ch) alphabet(ch), message, 'UniformOutput', false);
disp(['Message = ' strjoin(message,'') ' → Binary (Huffman) = ' strjoin(binary_message,'')])
% -> Creates optimal binary codes for shortest possible binary string.

