function [sample_array] = get_bootstrap_sample(original_array)
%get_bootstrap_sample Returns bootstrap sample drawn from original vector
%create random indexes from 1 to length(original_array)
rand_indexes = ceil(length(original_array) * rand(1, length(original_array)));
%return sample array based on elements in randomized indexes of original
%array
sample_array = original_array(rand_indexes);
end

