% --- Lesson 1: Foundations ---
% Binary primitives (0 and 1) are the building blocks of arithmetic and sets.

% Peano successor: build numbers from zero
zero = 0; one = zero + 1; two = one + 1;
disp(['Zero = ' num2str(zero) ', One = ' num2str(one) ', Two = ' num2str(two)])
% -> Demonstrates how arithmetic emerges from the successor function.

% Binary sets: membership encoded as 1 (in) or 0 (out)
U = {'a','b','c'};
subset = [1 0 1]; % means {a,c}
disp(['Subset = ' strjoin(U(logical(subset)), ', ')])
% -> Shows how binary encodes set membership.
