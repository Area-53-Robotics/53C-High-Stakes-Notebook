#import "@local/notebookinator:1.0.0": *

 // make these included in ctheme
#import "components/components.typ"
#import "entry-types.typ": *

#import "ctheme.typ": ctheme

#show: notebook.with(
  theme: ctheme
)

#create-frontmatter-entry(title: "Color Coding Guide")[
  This key represents each step of the Engineering Design Process with a color that corresponds to the Engineering Notebooking Rubric categories. In the table of contents, each page is assigned to a color which summarizes the content on that page. However, if a page highlights multiple sections of the Engineering Design Process, headings on the page will be colored accordingly.

  = Colors

  #let color-code-circle(type) = {
    let color = color-code-metadata.at(type)
    align(left + horizon, 
      circle(radius: 35pt, fill: color)
    )
  }

  #grid(columns: (1fr, 4fr), rows: (6), row-gutter: 10pt, 
  
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
]

#create-frontmatter-entry(title: "Table of Contents")[
  #components.toc()
]

#create-body-entry(
  title: "Hello there my name is bob", 
  type: "build", 
  date: datetime(year: 2008, month: 3, day: 13), 
  author: "Isaiah Blanc", 
  witness: "Isaiah Blanc")[
  
  = i like cheese

  #lorem(20)
  I'm in your walls.
  #lorem(50)

  #grid(columns: (1fr, 1fr), 
  [
    #align(center + horizon, square(size: 100pt, fill: gray))
  ],
  [
    == Box

    This is a box.
  ])

  = Actually nvm gorgonzola kinda gross

  #lorem(20)

  == Pros and Cons Table

  #components.pro-con(
    pros: [
      #list(
        [hi],
        [lmao]
      )
    ],
    cons: [
      #list(
          [uh idk]
      )
    ]
  )

  == Decision Matrix

  #components.decision-matrix(
    properties: (
      (name: "Good", weight: 100),
      (name: "Bad")
    ),
    ("English", 10, 3),
    ("German", -5, 168)
  )
]

#glossary.add-term("Term")[ definition ]

#create-appendix-entry(title: "Glossary")[
  #components.glossary()
]