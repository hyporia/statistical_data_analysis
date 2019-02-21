function [sample_array] = get_bootstrap_samples(original_array, samples_number)
%GET_BOOTSTRAP_SAMPLES Summary of this function goes here
%   Detailed explanation goes here
% get random matrix of inexes (max, rows, columns)
inexes = randi(length(original_array), length(original_array), samples_number);
%transpose original array
original_array = original_array.';
%repeat original array into matrix
repeated_array = repmat(original_array, 1, samples_number);
sample_array = repeated_array(inexes);
end