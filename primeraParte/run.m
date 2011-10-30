seed =  1320005715
nums = rnd_ss(seed, 10000)
ksTest(nums, 10)
squaredChiTest(nums, 10)
hist(nums, 10)
[nums(1:length(nums)-2); nums(2:length(nums)-1); nums(3:length(nums))]
