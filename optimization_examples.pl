%list of ships used in WWII,
us_ship('Laffey').
us_ship('Johnston').
us_ship('Indianapolis').
us_ship('England').
us_ship('Eldridge').
us_ship('Slater').
us_ship('Nevada').
us_ship('Oklahoma').
us_ship('Allen M. Sumner').
us_ship('North Carolina').
us_ship('Samuel B. Roberts').
us_ship('Gambier Bay').
us_ship('St. Lo').
us_ship('Casablanca').
us_ship('Long Island').
us_ship('Enterprise').
us_ship('Lexington').
us_ship('Saratoga').
us_ship('Texas').
us_ship('Portland').
us_ship('Spence').
us_ship('Independence').
us_ship('Olympia').
us_ship('Constitution').
us_ship('Salem').
us_ship('Bremerton').
us_ship('Benson').
us_ship('Pittsburgh').
us_ship('Little Rock').
us_ship('Albany').

%Class of each ship
is_class('Benson','Laffey').
is_class('Fletcher','Johnston').
is_class('Portland','Indianapolis').
is_class('Buckley','England').
is_class('Cannon','Eldridge').
is_class('Cannon','Slater').
is_class('Nevada', 'Nevada').
is_class('Nevada', 'Oklahoma').
is_class('Allen M. Sumner','Allen M. Sumner').
is_class('North Carolina','North Carolina').
is_class('John C. Butler','Samuel B. Roberts').
is_class('Casablanca','Gambier Bay').
is_class('Casablanca','St. Lo').
is_class('Casablanca','Casablanca').
is_class('Long Island','Long Island').
is_class('Yorktown', 'Enterprise').
is_class('Lexington','Lexington').
is_class('Lexington','Saratoga').
is_class('New York','Texas').
is_class('Portland','Portland').
is_class('Fletcher','Spence').
is_class('Independence','Independence').
is_class('Olympia','Olympia').
is_class('Constitution','Constitution').
is_class('Des Moines','Salem').
is_class('Baltimore','Bremerton').
is_class('Benson','Benson').
is_class('Baltimore', 'Pittsburgh').
is_class('Cleveland','Little Rock').
is_class('Baltimore', 'Albany').


%status of each vessel post war
sunk('Laffey').
sunk('Johnston').
sunk('Indianapolis').
sunk('Samuel B. Roberts').
sunk('Gambier Bay').
sunk('St. Lo').
sunk('Lexington').
sunk('Spence').

preserved('North Carolina').
preserved('Little Rock').
preserved('Texas').
preserved('Slater').
preserved('Olympia').
preserved('Constitution').
preserved('Salem').

sold('Benson').
sold('Eldridge').
sold('Long Island').

scrapped('Casablanca').
scrapped('Enterprise').
scrapped('Albany').
scrapped('England').
scrapped('Pittsburgh').
scrapped('Allen M. Sumner').
scrapped('Bremerton').
scrapped('Portland').

expended('Independence').
expended('Nevada').
expended('Oklahoma').
expended('Saratoga').

%Tells what type each ship is bassed on its class
destroyer_escort(X):- is_class('Cannon',X);
                      is_class('Buckley',X);
                      is_class('John C. Butler',X).

destroyer(X):- is_class('Fletcher', X);
               is_class('Benson', X);
               is_class('Allen M. Sumner',X).

battleship(X):- is_class('Nevada', X);
                is_class('North Carolina', X);
                is_class('New York', X).

heavy_cruiser(X):- is_class('Portland',X);
                   is_class('Baltimore',X);
                   is_class('Des Moines',X).

escort_carrier(X):- is_class('Casablanca', X);
                    is_class('Long Island', X).

fleet_carrier(X):- is_class('Yorktown', X);
					         is_class('Lexington', X).

cruiser(X):- is_class('Olympia',X).

light_carrier(X):- is_class('Independence',X).

%are 2 ships sisters/same class
sister_ship(X,Y):-  is_class(Z,X),
                    is_class(Z,Y),
                    X \= Y.
