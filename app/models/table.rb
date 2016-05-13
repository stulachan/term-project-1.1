class Table
    
    #An array that holds all types of ranking of cards
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

#CONSTRUCTOR is called, when we create an object
def initialize

		# First = Clubs, Second = Diamonds, Third = Hearts, Fourth = Spades
		# Ace is number 13
		# 12 is King
		# 11 is queen
		# and so on...

@cards = [[1,2,3,4,5,6,7,8,9,10,11,12,13],[1,2,3,4,5,6,7,8,9,10,11,12,13],[1,2,3,4,5,6,7,8,9,10,11,12,13],[1,2,3,4,5,6,7,8,9,10,11,12,13]];

end

	#Set one card from @cards array
def setCard

        #This card array can hold only 2 elements initialized with [0,0] 
		card = Array.new(2,0); 

		find = 0;  #find variables initialized with 0

		while find == 0
			suit = rand(1...4);   #pick a random no between 1-4 and store it in suit var
		
			rank = rand(1...13);  #pick a random no between 1-13 and store it in rank var
			card[0] = suit;   #put the suit var as first element in card array 

			card[1] = @cards[suit,rank];  
			if(card[1] != -1)
				find == 1;
		end

		@cards[suit][rank] = -1; #if that specific suit and rank was set already, then set it to -1
         
		return card;
	end
end




	#Set hands for player and table
	# numberOfCard = 2 for player and numberOfCard = 3 for table
	def setHands(table)
         
        #This firstCard  array can hold only 2 elements initialized with [0,0]
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


		 It can be High-Card, Straight, Flush, Straight-Flush, Royal-Flush
		#if(cardLen == 5){

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


