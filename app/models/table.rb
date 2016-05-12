class Table

	@handRanking = ["High-Card", 
					"One-Pair",
					"Two-Pair",
					"Three-Of-Kind",
					"Straight",
					"Flush",
					"Full-House",
					"Four-Of-Kind",
					"Straight-Flush",
					"Royal-Flush"];
	def initialize

		# First = Clubs, Second = Diamonds, Third = Hearts, Fourth = Spades
		# Ace is number 13

		@cards = [[1,2,3,4,5,6,7,8,9,10,11,12,13],[1,2,3,4,5,6,7,8,9,10,11,12,13],[1,2,3,4,5,6,7,8,9,10,11,12,13],[1,2,3,4,5,6,7,8,9,10,11,12,13]];

	end

	#Set one card from @cards array
	def setCard

		card = Array.new(2,0);

		find = 0;

		while find == 0
			suit = rand(4);
			rank = rand(13);
			card[0] = suit;
			card[1] = @cards[suit,rank];
			if(card[1] != -1)
				find == 1;
		end

		@cards[suit][rank] = -1;

		return card;
	end

	#Set hands for player and table
	# numberOfCard = 2 for player and numberOfCard = 3 for table
	def setHands(table)

		firstCard = Array.new(2,0);
		firstCard = setCard;
		secondCard = Array.new(2,0);
		secondCard = setCard;

		if(table){
			thirdCard = Array.new(2,0);
			thirdCard = setCard;
			return firstCard, secondCard, thirdCard;
		}else
			return firstCard, secondCard;
	end

	def evalHand (first, second, third, fourth, fifth)

		cardSuit = [first[0], second[0], third[0], fourth[0], fifth[0]];
		uniqSuit = cardSuit.uniq;
		suitLen = uniqSuit.length;

		cardNum = [first[1], second[1], third[1], fourth[1], fifth[1]];
		sortCards = cardNum.sort;
		min = sortCards.first;
		max = sortCards.last;
		uniqCards = cardNum.uniq;
		cardLen = uniqCards.length;


		# It can be High-Card, Straight, Flush, Straight-Flush, Royal-Flush
		if(cardLen == 5){

			# Check for Royal-Flush
			if((max-min) == 4 & max == 13 & suitLen == 1){
				return "Royal-Flush";

			# Check for Straight-Flush
			}elsif ((max-min) == 4 & suitLen == 1){
				return "Straight-Flush";
			
			# Check for Flush
			}elsif (suitLen == 1){
				return "Flush";
				
			}elsif ((max-min) == 4){
				return "Straight";

			}else
				return "High-Card";
			end
			

		# It's One-Pair
		}elsif(cardLen == 4){
			dupArr = cardNum.select{|element| array.count(element) > 1};
			return "High-Card", dupArr[0];

		
		# It can be Three-Of-Kind, Two-Pair
		}elsif (cardLen == 3){
			dupArr = cardNum.select{|element| array.count(element) > 1};
			if(dupArr.length == 4)
				return "Two-Pair";
			else
				return "Three-Of-Kind";
			end


		# It can be Full-House, Four-Of-Kind
		}elsif(cardLen == 2){
			
			dupArr = cardNum.select{|element| array.count(element) > 1};
			if(dupArr.length == 4)
				return "Four-Of-Kind";
			else
				return "Full-House";
			end

		}				

	end





end

