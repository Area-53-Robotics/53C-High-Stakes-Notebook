#import "@local/notebookinator:1.0.1": *

#import "../ctheme/entry-types.typ": *
#import "../ctheme/ctheme.typ": ctheme, components

#show: notebook.with(theme: ctheme)

#create-body-entry(
  title: "Ring Scoring",
  type: "identify",
  date: datetime(year: 2024, month: 5, day: 31),
  author: "Brendan Hille",
  witness: "Isaiah Blanc",
  [
    The challenge about scoring rings on stakes is the barb #footnote[See glossary.].

    #grid(
      columns: (1fr, 1fr, 1fr),
      align: center + horizon,
      [
        #image("../images/game-analysis/barb1.png")
      ],
      [
        #image("../images/game-analysis/barb2.png")
      ],
      [
        #image("../images/game-analysis/barb3.png")
      ],
    )

    // Show dimensions of each image and explain why they are significant

    = Design Criteria

    #components.pro-con(
      pros: [
        - Picks up rings off the ground
        - Provides a downward force to score rings
        - Scores on possessed and unpossessed mobile goals
        - Scores on neutral and alliance wall stakes
      ],
      cons: [
        - Must not expand over 16.5 inches
        - Must not use more than two motors
      ],
    )

    // Explain the cons
    // Explain why not worrying about descoring right now

    = Decision Matrix Categories

    Using this criteria, we determined the following categories to be most important when considering what ring intake subsystem to build. Although we didn't include descoring rings in our pros and cons table, we still want to consider it in the decision matrix because we may revisit this mechanic after our first prototype.


    #table(
      columns: (1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
      rows: 3,
      align: center + horizon,
      inset: 10pt,
      [Category], [Intaking], [Scoring], [Range], [Descoring], [Simplicity], [Weight],
      [Scale], table.cell(colspan: 6)[0-5],
      [Weight], table.cell(colspan: 2)[2x], [1x], table.cell(colspan: 3)[1/2x],
    )

    - *Intaking*: The ability to pick up rings off the ground

    - *Scoring*: The ability to score rings on mobile goals and wall stakes

    - *Descoring*: The ability to remove rings from mobile goals and wall stakes

    - *Range*: How high we can raise rings to score on stakes of different heights

    - *Simplicity*: How easily or quickly we can build the mechanism

    - *Weight*: How heavy we speculate the mechanism to be. A higher score means a heavier mechanism.

  ],
)