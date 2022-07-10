randomize();

rnd = random_range(0, 100);
item = choose(0, 1);

if rnd > 40 && rnd <= 70
   item = 2
else if rnd > 70 && rnd <= 90
   item = choose(3, 4)
else if rnd > 90
   item = choose(5, 6)
   
return item;
