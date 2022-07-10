randomize();

rnd = random_range(0, 100);
item = choose(0, 1);

if rnd > 50 && rnd <= 75
   item = 2
else if rnd > 75 && rnd <= 90
   item = choose(3, 4)
else if rnd > 90
   item = choose(5, 6)
   
return item;