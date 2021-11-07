%following code written by Liana Pangburn for Fall 2021 311-Principles of Programming Languages
top('white blouse').
top('black turtleneck').
top('red t-shirt').

bottom('jeans').
bottom('chinos').
bottom('shorts').

shoes('boots').
shoes('vans').
shoes('sandals').

accessory('oversized sunglasses').
accessory('hat').
accessory('scarf').
accessory('backpack').

make_Outfit(Top,Bottom,Shoe,Accessory) :-
    top(Top),
    bottom(Bottom),
    shoes(Shoe),
    accessory(Accessory).