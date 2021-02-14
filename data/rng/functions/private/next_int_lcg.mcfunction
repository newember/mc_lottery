###
#    public int nextInt(int bound) {
#        if (bound <= 0)
#            throw new IllegalArgumentException(BadBound);
#
#        int r = next(31);
#        int m = bound - 1;
#        if ((bound & m) == 0)  // i.e., bound is a power of 2
#            r = (int)((bound * (long)r) >> 31);
#        else {
#            for (int u = r; u - (r = u % bound) + m < 0; u = next(31));
#        }
#        return r;
#    }

function rng:lcg

#scoreboard players operation #temp math = out math
#scoreboard players operation out math %= #range math
#scoreboard players operation #temp math -= out math
#scoreboard players operation #temp math += #m1 math
#execute if score #temp math matches ..-1 run function rng:private/next_int_lcg

scoreboard players operation @s rng_lcg_temp = @s rng_lcg_out
scoreboard players operation @s rng_lcg_out %= @s rng_lcg_range
scoreboard players operation @s rng_lcg_temp -= @s rng_lcg_out
scoreboard players operation @s rng_lcg_temp += @s rng_lcg_m1
execute if score @s rng_lcg_temp matches ..-1 run function rng:private/next_int_lcg
