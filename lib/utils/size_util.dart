const double boardSize = 1000;

double boardHalf = boardSize / 2;

double cornerSize = boardSize / 6.5;
double cornerSizeHalf = cornerSize / 2;

double nonCornerSize = (boardSize - (cornerSize * 2)) / 9;
double nonCornerSizeHalf = nonCornerSize / 2;

double propertyHeaderSize = cornerSize / 4;
double propertyBodySize = cornerSize - propertyHeaderSize;
double propertyBodySizeHalf = propertyBodySize / 2;

final tokenSize = propertyBodySize / 2.5;

const double diceSize = 45;
const diceDotSize = diceSize / 15;