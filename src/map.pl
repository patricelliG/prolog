% Written by Gary Patricelli
% On or about 04/25/2014
% For CSC 435

% Facts

% Available color unique permentations
% red, green, blue, yellow
colors(red, green).
colors(red, blue).
colors(red, yellow).
color(green, red).
color(green, blue).
color(green, yellow).
color(blue, red).
color(blue, green).
color(blue, yellow).
color(yellow, red).
color(yellow, green).
color(yellow, blue).

% Rules 

% Calculate map coloring
color_map(A, B, C, D, E, F) :-
color(A,B),
color(A,C),
color(A,D),
color(C,D),
color(D,E),
color(C,E),
color(F,E),
color(C,F),
color(C,B),
color(F,B).
