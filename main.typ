#import "@local/notebookinator:1.0.0": *

 // make these included in ctheme
#import "components/components.typ"
#import "entry-types.typ": *

#import "ctheme.typ": ctheme

#show: notebook.with(
  theme: ctheme
)

#create-frontmatter-entry(title: "About the Notebook")[
  = Typst
  
  This notebook was programmed using a markup language called Typst, and formatted in a Typst package called the Notebookinator.

  #grid(columns: (1fr, 1fr), column-gutter: 10pt,
    [
      #align(center + horizon,
        square(size: 75pt, fill: surface-2)
      )
    ],
    [
    The Notebookinator is a formatting tool that allows us to organize and display our engineering design process efficiently and professionally. Isaiah and other programmers on Area 53 actively work on the Notebookinator to make developing notebooks easier for new programmers and notebookers alike.
    ]
  )

  = Color Coding Guide
  #let color-code-circle(type) = {
    let color = color-code-metadata.at(type)
    align(left + horizon, 
      circle(radius: 20pt, fill: color)
    )
  }

  #grid(
    columns: 2, 
    rows: 6, 
    column-gutter: 10pt, 
    row-gutter: 20pt, 
  
    color-code-circle("identify"), [
      #align(left + horizon, [ == Identify the Problem
        Identifies the game and robot design challenges in detail at the start of each design process cycle with words and pictures. States the goals for accomplishing the challenge.
      ])
    ],
    color-code-circle("brainstorm"), [
      #align(left + horizon, [ == Brainstorm, Diagram, or Prototype Solutions
        Lists three or more possible solutions to the challenge with labeled diagrams. Citations provided for ideas that came from outside sources such as online videos or other teams.
      ])
    ],
    color-code-circle("select"), [
      #align(left + horizon, [ == Select the Best Solution and Plan
        Explains why the solution was selected through testing and/or a decision matrix. Fully describes the plan to implement the solution.
      ])
    ],
    color-code-circle("build"), [
      #align(left + horizon, [ == Build the Solution
        Records the steps to build and program the solution. Includes enough detail that the reader can follow the logic used by the team to develop their robot design, as well as recreate the robot design from the documentation.
      ])
    ],
    color-code-circle("program"), [
      #align(left + horizon, [ == Program the Solution
        Records the steps to program the solution. Includes enough detail that the reader can follow the logic used by the team to develop their program, as well as recreate the program from the documentation.
      ])
    ],
    color-code-circle("test"), [
      #align(left + horizon, [ == Test the Solution
        Records all the steps to test the solution, including test results.
      ])
    ],
    color-code-circle("reflect"), [
      #align(left + horizon, [ == Reflect on Prior Solutions
        Evaluates the decisions and mistakes made in the past to better prepare and overcome challenges in the future
      ])
    ]
  )

  = Excalidraw Style Guide
]

#create-frontmatter-entry(title: "Game Analysis")[
  #emph[High Stakes] is a game in which robots need to retrieve and score rings onto multiple stakes around the field and mounted on mobile goals. Robots can score extra points by pushing the mobile goals into corners that add or subtract from their score by the total amount of rings on the mobile goals, and by elevating inside 1 of 3 levels using the ladder in the center of the field.

  = Game Elements

  #grid(
    columns: (1fr, 1fr), 
    rows: 6,
    gutter: 20pt,
    align: horizon,
    [
      == Field
      The field is composed of the following parts:
      - Corners (4)
        - #emph[2 positive corners]
        - #emph[2 negative corners]
      - Rings (48)
        - #emph[24 rings per alliance]
      - Mobile Goals (5)
        - #emph[1 autonomous neutral goal]
      - Stakes (4)
        - #emph[1 stake per alliance]
        - #emph[2 neutral stakes]
      - Ladder (1)
        - #emph[Including the High Stake]
    ],
    [
      #image("images/field1.png"),
    ],
    [
      == Corner
      The corners are 12” by 12” locations in which mobile goals can be placed to add or subtract points from either alliance.

      Rings placed on mobile goals inside the positive corner are worth double the points while rings placed on mobile goals inside the negative corner are reduced to zero points.

    ],
    [
      
    ],
    [
      == Ring
      The rings are the primary scoring objects in High Stakes. Each ring on a stake is worth 1 point and the top ring on a stake is worth 3 points.

    ],
    [
      #image("images/ring1.png")
      #image("images/ring2.png")
    ],
    [
      == Mobile Goal
      The mobile goals are the secondary scoring objects in High Stakes.

      Mobile goals can be possessed by the robot and placed inside Corners to earn more points, depending on the number of rings on the mobile goal.

    ],
    [
      #image("images/mogo1.png")
      #image("images/mogo2.png")
    ],
    [
      == Stakes
      The stakes are the tertiary scoring objects in High Stakes.
    ],
    [
      #image("images/stake2.png")
      #image("images/stake1.png")
    ],
    [
      == Ladder
      The ladder is the endgame scoring object in High Stakes. The ladder has three levels and the High Stake is located atop the vertical post nearest to the audience side of the Field.

      A robot elevated inside the first level is worth 3 points. A robot elevated inside the second level is worth 6 points. A robot elevated inside the third level is worth 12 points.

    ],
    [
      #image("images/ladder1.png")
    ]
  )
]

#create-frontmatter-entry(title: "Table of Contents")[ #components.toc() ]

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
    When I first saw the reveal and noticed the climbing element, I was unsure whether it was worth attempting. Climbing gets you 12 points maximum, which can be simply countered by the opposing alliance placing one of your fully scored mobile goals in the negative corner. Climbing effectively surrenders the game unless you can do it quickly. However in the spirit of having a robot that can do everything, my original climb mechanism idea is to make an intake chain with hooks on the side of our robot. This would then grab the rungs of the ladder and pull the robot up. If we install a PTO ()<glossary> mechanism, then this process could be done very quickly. The only  foreseeable problem is that we would be using chains to hold up our entire robot. Chains are notorious for breaking when it's most inconvenient, at least from my experience.

    = Evan

    == Robot Design
    One of my first thoughts is that precision is going to be crucial in this game, but speed is still going to be pretty important. It seems like there is probably going to be a lot of shuffling around the mobile goals to the corner, because they can be used to score or subtract so many points. Also, this year a pushbot ()<glossary> won't be viable like it was last year, as all of the point-scoring actions need at least a claw to complete. This is nice because having a good robot early season will be as important as having a good driver.

    == Scoring Method
    My first thought was a forklift or 4-bar lift with a claw on the end, but after thinking it through, it seems like an intake is going to be faster and more efficient. We could add a pneumatic pusher at the top of the intake to push the rings over the barb at the top of the mobile goal. We also need some way to hold the mobile goals. This could either be some kind of claw or clamp. For descoring, we could do some kind of pneumatic pusher that pushed the rings off the mobile goal. However, we will have to test to see how hard it would be to descore so that we can decide if pneumatics will be enough.

    == Climbing
    It seems like climbing won't be super important because of the difficulty, the fact that you have to climb them like a ladder, and the fact that if you climb, the other team could move around the mobile goals in the corner and change the point difference by a lot. However, I have thought of a few ideas. The first one is some kind of climb where the robot climbs the first pole, flips upside down, climbs the second pole, flips right side up, then climbs the third pole and flips upside down again. Another idea is that you could have three claws that grab each pole sequentially.

    
  ]
)

#create-body-entry(
  title: "Season Resolutions",
  type: "identify",
  date: datetime(year: 2024, month: 5, day: 10),
  author: "Isaiah Blanc",
  witness: "Brendan Hille, Max Nelkin, Evan McClelland",
  [
    After the conclusion of the Over Under season, we discussed the mistakes we made throughout the season and rules we want to implement this year.

    = Polycarbonate Map
    #box(fill: surface-2, inset: 10pt, [
      *(R19)* 
      #set text(fill: red)
      *A limited amount of custom plastic is allowed.*
      #set text(fill: black)
      Robots may use custom-made parts cut from certain types of non-shattering plastic. It must be possible to have cut all of the plastic parts on the Robot from a single 12” x 24” sheet, up to 0.070” thick.
    ])

    Although we were aware of this rule and have never used enough polycarbonate to exceed the limit, we want to make this apparent in our engineering notebook by including a polycarbonate map that demonstrates that our plastic use is legal.

    = Electronics Accessibility
    One major mistake we made in previous years was designing our robot without keeping the position of electronics such as the brain, battery, motors, and pneumatic tank in mind.

    == Brain
    Making the brain screen and ports easily accessible makes our workflow more efficient and reduces the risk of disconnections between the brain and other electronics. Also, using LemLib ()<glossary> allows us to record our robot's coordinates on the brain screen, so the ability to view the brain screen easily makes programming autonomous easier as well.
    
    == Device Orientation
    Electronics such as the battery and pneumatic tank can be positioned so the length of the cable or pneumatic tubing is minimal, which makes cable management easier. By planning ahead, we can ensure that adding pneumatic pistons onto any section of our robot is fast and easy.

    == Quick Swapping Motors
    A strategy our team has maintained over multiple seasons is quick swapping motors, in which we hold the motor casing together with rubber bands in case we need to replace overheating motors or troubleshoot a motor's performance. However, poor planning can render this strategy useless, especially if the port of a motor is facing a flat surface, like another motor or C-channel.

    == Cable Management
    In previous years, poor cable management has proven to make repairs slower, more difficult, and clutters space for us to add new subsystems to the robot. Alternatively, proper cable management reduces the risk of disconnections while competing which could jeopardize our matches.

    = Autonomous

    == Universal Jig
    A major struggle last year was perfecting our Autonomous runs; although we use LemLib to assist in developing the routes and moving the robot accurately, the start position of each run was inconsistent.

    Originally we solved this with our jig, but as we needed more Autonomous programs for different tasks, the orientation became more confusing and depending on the teammate who set up the robot, the Autonomous program would run incorrectly. We can create a labeled jig with multiple orientations by rotating or flipping it so the start positions are less confusing. We also want to program the Autonomous route around the jig orientation, because it's easier to alter the program than it is to reconstruct the jig.

    We had multiple communication issues such that people were misinformed about how the orientation of the jig corresponded with the Autonomous routes, especially as the Autonomous routes changed or the jig was redesigned.

    = Progress Updates

    After rereading our Over Under notebook, I noticed a significant lack of 3D models or pictures of our entire robot as we developed it throughout the season. This year, I want to mark each official robot prototype in the notebook—defined by a major change or addition to the robot—so it's easier to track our progress and see where our engineering design process iterates.

  ]
)

#glossary.add-term("Term")[ definition ]

#create-appendix-entry(title: "Glossary")[
  #components.glossary()
]