%*The difficulty:*  
%Epidemiology models are complex, with many parameters. Beginners struggle to grasp the uncertainty of how infections spread.

%*Binary Principle Simulation (MATLAB/Octave):*
%matlab
% Epidemic spread simplified as binary states
% 0 = healthy, 1 = infected

population = 100;
people = zeros(1,population); % everyone starts healthy
people(1) = 1; % one initial infection

steps = 10;
infection_prob = 0.2; % chance of infecting neighbor

for t=1:steps
    for i=1:population
        if people(i)==1
            % infect neighbors with probability
            if i>1 && rand<infection_prob, people(i-1)=1; end
            if i<population && rand<infection_prob, people(i+1)=1; end
        end
    end
end

infected_count = sum(people);
disp(['Final infected count = ' num2str(infected_count)])


%*Interpretation:*  
%- Each person is binary (infected or not).  
%- Probability governs spread.  
%- You can see how uncertainty drives outcomes without needing advanced math.  

%This makes a difficult concept (epidemic modeling) *visible and simple*.
