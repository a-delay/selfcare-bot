require 'tumblr_client'


def post_a_thing
	# Authenticate with OAuth
	client = Tumblr::Client.new({
	  :consumer_key => C_KEY, #consumer key
	  :consumer_secret => C_SEC, #consumer secret
	  :oauth_token => OAT, #oauth token
	  :oauth_token_secret => OAT_SEC #oauth token secret
	})

	pleases = ["please",
		   "please",
		   "please",
		   "",
		   ""]
	please = pleases.sample

	prompts = ["remember",
		  "take some time",
		  "remember to take some time",
		  "remember to take time",
		  "remember to take some time right now",
		  "remember to take some time rn",
		  "take a break",
		  "take a quick break",
		  "remember to take a quick break",
		  "don't forget",
		  "take a moment",
		  "take a moment right now",
		  "take a moment rn",
		  "take a little time today",
		  "take a little time",
		  "take a little time right now",
		  "take a little time rn",
		  "find some time",
		  "find some time today",
		  "find some time right now",
		  "find some time rn",
		  "take a little bit of time",
		  "dont forget",
		  "",
		  "",
		  ""]
	prompt = prompts.sample

	transitions = ["to","and"]
	transition = transitions.sample
	if prompt == ""
		transition = ""
	end
	
	actiontags = {1 => "water", 2=> "food", 3 => "stretch", 4=> "breathe", 5=> "take a break", 6=> "help"}

	actions = {"drink some water" => 1,
		   "drink a cup of water"=> 1,
		   "hydrate yourself"=> 1,
		   "take a sip of water"=> 1,
		   "pour yourself a glass of water"=> 1,
		   "have some water"=> 1,
		   "have a glass of water"=> 1,
		   "have some water "=> 1,
		   "eat a snack"=> 2,
		   "find a snack"=> 2,
		   "eat something healthy"=> 2,
		   "have some food if you haven't yet"=> 2,
		   "eat some fruit"=> 2,
		   "have some chips"=> 2,
		   "eat a little something"=> 2,
		   "eat"=> 2,
		   "have some food"=> 2,
		   "eat something"=> 2,
		   "stand and stretch"=> 3,
		   "check your posture"=> 3,
		   "look up from your screen"=> 5,
		   "stretch your back"=> 3,
		   "look outside for a while"=> 3,
		   "look at a bird or something"=> 3,
		   "take a deep breath"=> 4,
		   "take a deep breath and relax"=> 4,
		   "sit up and stretch your shoulders"=> 3,
		   "take a break"=> 5,
		   "get some fresh air"=> 4,
		   "stretch"=> 3,
		   "adjust your posture"=> 3,
		   "breathe"=> 4,
		   "stretch your legs"=> 3,
		   "take your meds"=> 5,
		   "rest your eyes"=> 5,
		   "crack your knuckles"=> 3,
		   "ask for help if you need it"=> 6,
		   "ask for help if you need it "=> 6,
		   "laugh at something funny"=> 5,
		   "watch a cat video"=> 5}
	action = actions.keys.sample
	tag = actiontags[actions[action]]

	punctuations = ["",
		       "",
		       "",
		       "",
		       "",
		       "",
		       "!",
		       "!",
		       "!",
		       "!!",
		       "!!!",
		       "!!!",
		       "!!!",
		       "!!!",
		       " !!",
		       " !!",
		       " !!!",
		       " !!!"]

	punctuation = punctuations.sample

	titles = ["hey!!!",
		 "frembly remembly",
		 "frembly rememlby",
		 "be kind to urself",
		 "reminder:",
		 "<3", 
		 "ilu",
		 "hello?",
		 "pls listen",
		 "are you doing ok",
		 "u ok?",
		 "hey!!",
		 "hey",
		 "<3 !!!!",
		 "take a moment",
		 "got a moment?",
		 "please take a break!!!!",
		 "please take a break!",
		 "*with love and support*",
		 "*a soft bird lands on your shoulder*",
		 "times are rough but please take care of urself",
		 "\u{1f3b6} *whistles a happy tune*"]
	
	emojis = ["\u{1f3b6}",
		  "\u270c",
		  "\u{1f44c}",
		  "\u{1f44d}",
		  "\u{1f64c}",
		  "\u2764",
		  "\u{1f499}",
		  "\u{1f49a}",
		  "\u{1f49b}",
		  "\u{1f49c}",
		  "\u{1f5a4}",
		  "\u{1f338}",
		  "\u{1f3f5}",
		  "\u{1f339}",
		  "\u{1f33a}",
		  "\u{1f33b}",
		  "\u{1f33c}",
		  "\u{1f337}",
		  "\u{1f331}",
		  "\u{2b50}",
		  "\u{1f31f}",
		  "\u2728",
		  "\u{1f3b5}",
		  "\u{1f4af}"]
	emoji = emojis.sample

	emoji = [ emoji, emoji+emoji, emoji+emoji+emoji].sample

	selfcare = "#{please} #{prompt} #{transition} #{action}#{punctuation} #{emoji}"
	reminder = titles.sample

	client.text("selfcare-bot", title: reminder, body: selfcare, tags: "selfcare, self care, selfcare bot, " + tag)
end

