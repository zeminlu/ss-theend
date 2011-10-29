function num = random
%	num = rand;
	global seed = 0;
	persistent two48 = 2^48;
	persistent two27 = 2^27;
	persistent two21 = 2^21;
	persistent two22 = two21*2;
	persistent two53 = 2^53;
	seed = mod((seed * 25214903917 + 11), two48);
	num = (two27 * floor(seed/two22) + floor(seed/two21))/two53 ;
end



