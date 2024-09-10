#import "@local/notebookinator:1.0.1": *

#import "../ctheme/entry-types.typ": *
#import "../ctheme/ctheme.typ": ctheme, components

#show: notebook.with(theme: ctheme)

#create-body-entry(
  title: "Climbing",
  type: "identify",
  date: datetime(year: 2024, month: 5, day: 31),
  author: "Brendan Hille",
  witness: "Isaiah Blanc",
  [
    = Climbing Rules

    Before brainstorming solutions to climbing the Ladder, we analyzed three significant rules that will influence how we approach the challenge.

    #components.citation(
      id: "SC7",
      rule: "'Climbed to a Level' Criteria",
      [
        A Robot is considered to have Climbed to a Level if it meets the following criteria:

        3. The Robot is not contacting any Mobile Goals.
      ],
    )

    This rule prevents robots from removing mobile goals from play by carrying them while climbing. Additionally, this enables the possiblity of getting disqualified by accidentally contacting a mobile goal, which can be used to exploit Match-affecting rounds.

    #components.citation(
      id: "SG3",
      rule: "Vertical expansion is limited.",
      [
        Once the Match begins, Robots may expand vertically, but may never be “breaking the plane” of more than two Levels of the Ladder at any given time. For the purposes of this rule, the Floor is considered a Level.

        1. For a Robot that is on the Floor (i.e., not Climbing), this is effectively a height limit of 32”, the distance between the Floor and the top of the middle rung of the Ladder.
        2. This vertical limit is measured from the perspective of the Field; i.e., it does not “rotate with the Robot.”
      ],
    )

    #grid(
      columns: (1fr, 1fr),
      gutter: 20pt,
      [
        #figure(
          image("../images/game-analysis/ladder2.png"),
          caption: "VEX V5 Robotics Competition High Stakes - Game Manual, SC7-1",
        )
      ],
    )

    #components.citation(
      id: "SC1",
      rule: "All Scoring statuses are evaluated after the Match ends.",
      [
        Scores are calculated 5 seconds after the Match ends, or once all Scoring Objects, Field Elements, and Robots on the Field come to rest, whichever comes first.
      ],
    )
  ],
)