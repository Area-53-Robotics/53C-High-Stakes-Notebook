#import "@local/notebookinator:1.0.1": *

#import "../ctheme/entry-types.typ": *
#import "../ctheme/ctheme.typ": ctheme, components

#show: notebook.with(theme: ctheme)

#create-body-entry(
  title: "Season Reveal Thoughts",
  type: "identify",
  date: datetime(year: 2024, month: 4, day: 27),
  author: "Brendan Hille",
  witness: "Isaiah Blanc, Max Nelkin, Evan McClelland",
  [
    = Brendan

    == Climb
    I thought that an Over Under style winch mech could be used easily to climb to the highest tier as well as to get the robot within scoring range of the High Stake. This method would not use any extra motors and would be able to climb as high as the engagement system can go.

    == Mobile Goal Possession
    For possessing a mobile goal, I first thought of a Tipping Point style pneumatic clamp. This method is effective because, based on previous Tipping Point robots, the mechanism was able to grab and move the goals efficiently, so I believe they will work similarly in both function and performance for this year's game.

    == Drivetrain
    I think a fast drivetrain is crucial because I predict a race for the neutral mobile goal during autonomous will provide a necessary advantage for each .

    == Scoring
    Due to the existence of the flanges that resist scoring rings, which i have dubbed “umbrellas” at the top of the mogos and stakes, I believe that intaking the rings directly onto the scoring poles may not be feasible. As such, i think that a multi segmented arm with a form of passive intake would be ideal, as the motorized force of the arms would be able to force the ring onto the stake. Additionally, the arm would be more versatile than an intake as it could be designed to score onto the alliance and wall stakes.

    = Isaiah

    == Robot Design
    After watching the #emph[High Stakes] reveal, I envisioned our robot to be fast and reliant on programming to be precise, since I infer that the game will require a lot of movement that will put the driver under a lot of stress and will be unrealistic to perform efficiently, especially without practice. I think our drivetrain should be faster than it was last year because of the significance of the mobile goal on the alliance line. Since both alliances can access it, I feel it would be incredibly advantageous to gain control of it first, but we would require a fast drivetrain. I also think our robot should have the ability to increase and decrease its vertical height entirely, because there are rings underneath the ladder and I want to ensure that we can reach them without struggle. In addition, the ability to change our height can help us grab different bars on the ladder like a forklift to elevate easier.

    == Scoring Method
    Depending on the flexibility of the mobile goal stakes, I want to construct a robot that can hold the mobile goals upside down and push the rings onto the stake, like a pogo stick. I think this method of scoring can be useful because it
    - Removes the risk of bypassing the game object possession limit of 1 mobile goal and 2 rings
    - Prevents the opposing alliance from taking our mobile goal and moving it to a negative corner
    - Would theoretically be faster than precisely placing rings onto a mobile goal instead of moving over a ring and using a color sensor to stop at the right position to lower the stake

    == Ladder Significance
    After leaving the Over Under season, the points gained from climbing the ladder seem underwhelming and insignificant to the game. Because the score for climbing was relative in the previous season, climbing low was very important in early tournaments. However, due to the game changing corners, I don't think we will prioritize climbing over our robot's primary scoring function.

    == Corner Significance
    Conversely, I think the addition and subtraction of points by placing mobile goals in the corners of the field will be incredibly important throughout the season. I think a lot of strategy will come from allowing the opposing alliance to stack rings on a single mobile goal so you can subtract them all at once by pushing it into the corner. However, I believe the game strategy will be tricky, especially if the color of the rings on mobile goals are mixed, because you can sabotage yourself by subtracting your own points. I also believe the top rings will change the tide of matches and cause tough decision making because, waiting until the last minute to place a ring can provide you with a valuable top ring, but prevent you from spending your time scoring on other goals or preparing to climb.

    = Max

    == Robot Design
    Our robot should be capable of performing all functions in #emph[High Stakes]. My ideal design for the primary scoring method would be an intake that can be positioned to load the rings onto the mobile goals, the alliance stakes, neutral stakes and the High Stake. The robot would also be able to pick up a mobile goal, presumably with a pneumatic clamp, and score rings onto that goal as the rings are being collected.

    == Climb
    When I first saw the reveal and noticed the climbing element, I was unsure whether it was worth attempting. Climbing gets you 12 points maximum, which can be simply countered by the opposing alliance placing one of your fully scored mobile goals in the negative corner. Climbing effectively surrenders the game unless you can do it quickly. However in the spirit of having a robot that can do everything, my original climb mechanism idea is to make an intake chain with hooks on the side of our robot. This would then grab the rungs of the ladder and pull the robot up. If we install a PTO #footnote[See glossary.] mechanism, then this process could be done very quickly. The only foreseeable problem is that we would be using chains to hold up our entire robot. Chains are notorious for breaking when it's most inconvenient, at least from my experience.

    = Evan

    == Robot Design
    One of my first thoughts is that precision is going to be crucial in this game, but speed is still going to be pretty important. It seems like there is probably going to be a lot of shuffling around the mobile goals to the corner, because they can be used to score or subtract so many points. Also, this year a pushbot #footnote[See glossary.] won't be viable like it was last year, as all of the point-scoring actions need at least a claw to complete. This is nice because having a good robot early season will be as important as having a good driver.

    == Scoring Method
    My first thought was a forklift or 4-bar lift with a claw on the end, but after thinking it through, it seems like an intake is going to be faster and more efficient. We could add a pneumatic pusher at the top of the intake to push the rings over the barb at the top of the mobile goal. We also need some way to hold the mobile goals. This could either be some kind of claw or clamp. For descoring, we could do some kind of pneumatic pusher that pushed the rings off the mobile goal. However, we will have to test to see how hard it would be to descore so that we can decide if pneumatics will be enough.

    == Climbing
    It seems like climbing won't be super important because of the difficulty, the fact that you have to climb them like a ladder, and the fact that if you climb, the other team could move around the mobile goals in the corner and change the point difference by a lot. However, I have thought of a   few ideas. The first one is some kind of climb where the robot climbs the first pole, flips upside down, climbs the second pole, flips right side up, then climbs the third pole and flips upside down again. Another idea is that you could have three claws that grab each pole sequentially.


  ],
)