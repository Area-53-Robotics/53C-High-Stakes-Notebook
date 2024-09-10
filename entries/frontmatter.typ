#import "@local/notebookinator:1.0.1": *

#import "../ctheme/entry-types.typ": *
#import "../ctheme/ctheme.typ": ctheme, components

#show: notebook.with(theme: ctheme)

#create-frontmatter-entry(title: "About the Notebook")[
  = Typst

  This notebook was programmed using a markup language called Typst, and formatted in a Typst package called the Notebookinator.

  #grid(
    columns: (1fr, 1fr),
    column-gutter: 10pt,
    align: horizon,
    [
      #align(center, image("../images/typst.png", height: 1.7in, width: 1.7in))
    ],
    [
      The Notebookinator is a formatting tool that allows us to organize and display our engineering design process efficiently and professionally.

      Isaiah and other programmers on Area 53 actively work on the Notebookinator to make developing notebooks easier for new programmers and notebookers alike.
    ],
  )

  = Color Coding Guide
  #let color-code-circle(type) = {
    let color = color-code-metadata.at(type)
    align(
      left + horizon,
      circle(radius: 20pt, fill: color),
    )
  }

  #grid(
    columns: 2,
    rows: 6,
    column-gutter: 10pt,
    row-gutter: 20pt,
    color-code-circle("identify"),
    [
      #align(
        left + horizon,
        [ == Identify the Problem
          Identifies the game and robot design challenges in detail at the start of each design process cycle with words and pictures. States the goals for accomplishing the challenge.
        ],
      )
    ],

    color-code-circle("brainstorm"),
    [
      #align(
        left + horizon,
        [ == Brainstorm, Diagram, or Prototype Solutions
          Lists three or more possible solutions to the challenge with labeled diagrams. Citations provided for ideas that came from outside sources such as online videos or other teams.
        ],
      )
    ],

    color-code-circle("select"),
    [
      #align(
        left + horizon,
        [ == Select the Best Solution and Plan
          Explains why the solution was selected through testing and/or a decision matrix. Fully describes the plan to implement the solution.
        ],
      )
    ],

    color-code-circle("build"),
    [
      #align(
        left + horizon,
        [ == Build the Solution
          Records the steps to build and program the solution. Includes enough detail that the reader can follow the logic used by the team to develop their robot design, as well as recreate the robot design from the documentation.
        ],
      )
    ],

    color-code-circle("program"),
    [
      #align(
        left + horizon,
        [ == Program the Solution
          Records the steps to program the solution. Includes enough detail that the reader can follow the logic used by the team to develop their program, as well as recreate the program from the documentation.
        ],
      )
    ],

    color-code-circle("test"),
    [
      #align(
        left + horizon,
        [ == Test the Solution
          Records all the steps to test the solution, including test results.
        ],
      )
    ],

    color-code-circle("reflect"),
    [
      #align(
        left + horizon,
        [ == Reflect on Prior Solutions
          Evaluates the decisions and mistakes made in the past to better prepare and overcome challenges in the future
        ],
      )
    ],
  )

  = Excalidraw

  #image("../images/excalidrawings/style-guide.png")
]

#create-frontmatter-entry(title: "Game Analysis")[
  #emph[High Stakes] is a game in which robots need to retrieve and score rings onto multiple stakes around the field and mounted on mobile goals. Robots can score extra points by pushing the mobile goals into corners that add or subtract from their score by the total amount of rings on the mobile goals, and by elevating inside 1 of 3 levels using the ladder in the center of the field.

  = Game Elements

  == Field
  The field is composed of the following parts:

  #grid(
    columns: (1fr, 1fr),
    [
      - Rings (48)
        - #emph[24 rings per alliance]
      - Mobile Goals (5)
        - #emph[1 autonomous neutral goal]
      - Stakes (4)
        - #emph[1 stake per alliance]
        - #emph[2 neutral stakes]
    ],
    [
      - Ladder (1)
        - #emph[Including the High Stake]
      - Corners (4)
        - #emph[2 positive corners]
        - #emph[2 negative corners]
    ],
  )

  #align(center, image("../images/game-analysis/field1.png", width: 5.5in, height: 5.5in))

  == Corner
  The corners are 12” by 12” locations in which mobile goals can be placed to add or subtract points from either alliance.

  Rings placed on mobile goals inside the positive corner are worth double the points while rings placed on mobile goals inside thenegative corner are reduced to zero points.

  #align(center, image("../images/game-analysis/corner1.png"))

  == Ring
  The rings are the primary scoring objects in High Stakes.

  The color of a ring determines which alliance it scores points for. Each ring on a stake is worth 1 point and the top ring on a stack ofrings is worth 3 points.

  #align(
    center,
    [
      #image("../images/game-analysis/ring1.png")
      #image("../images/game-analysis/ring2.png")
    ],
  )

  == Mobile Goal
  The mobile goals are the secondary scoring objects in High Stakes.

  Mobile goals can be possessed by the robot and placed inside Corners to earn more points, depending on the number of rings on the mobile goal. A mobile goal can fit a total of six rings at once.

  #align(
    center,
    grid(
      columns: 2,
      [#image("../images/game-analysis/mogo1.png")], [#image("../images/game-analysis/mogo2.png")],
    ),
  )

  == Wall Stakes
  The wall stakes are the tertiary scoring objects in High Stakes.

  Wall stakes are either neutral or alliance-specific, meaning the color of the wall stake determines which alliance can score points on it.Neutral wall stakes are nine inches taller than alliance wall stakes,making them more difficult to score on.

  Rings scored on wall stakes are worth the same amount of points asrings scored on mobile goals.

  #align(
    center + bottom,
    grid(
      columns: 2,
      [#image("../images/game-analysis/stake2.png")], [#image("../images/game-analysis/stake1.png")],
    ),
  )

  == Ladder
  The ladder is the endgame scoring object in High Stakes.

  The ladder has three levels and the High Stake is located atop thevertical post nearest to the audience side of the Field.

  A robot elevated inside the first level is worth 3 points. A robotelevated inside the second level is worth 6 points. A robot elevatedinside the third level is worth 12 points.

  #image("../images/game-analysis/ladder1.png")
]

#create-frontmatter-entry(title: "Table of Contents")[ #components.toc() ]