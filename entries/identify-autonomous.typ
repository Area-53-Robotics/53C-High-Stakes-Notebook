#import "@local/notebookinator:1.0.1": *

#import "../ctheme/entry-types.typ": *
#import "../ctheme/ctheme.typ": ctheme, components

#show: notebook.with(theme: ctheme)

#create-body-entry(
  title: "Autonomous",
  type: "identify",
  date: datetime(year: 2024, month: 6, day: 8),
  author: "Isaiah Blanc",
  [
    It's important to acknowledge that the subsystems we plan to build accommodate for match strategy and autonomous strategy in High Stakes. Because there are different rules and tasks to complete for the Autonomous Period compared to the Driver Controlled Period, we must design our robot with both objectives in mind.

    = Autonomous Win Point

    The Autonomous Win Point provides a crucial advantage above other teams during the qualification matches of a competition and we want to ensure that our robot can perform the following tasks as early as possible.

    #components.citation(
      id: "SC8",
      rule: "Autonomous Win Point",
      [
        An Autonomous Win Point is awarded to any Alliance that ends the Autonomous Period with the following tasks completed, and that has not broken any rules during the Autonomous Period:
        1. At least three (3) Scored Rings
        2. A minimum of two (2) Stakes with at least (1) Ring Scored
        3. Neither Robot contacting / breaking the plane of the Starting Line
        4. One (1) Robot contacting the Ladder
      ],
    )

    #align(
      center,
      [
        _An important factor to consider when planning our autonomous route is that the second requirement doesn't specify what type of stake the robot must score on to qualify for AWP. This means we can score rings on the wall stakes or mobile goals depending on what is most convenient and time-efficient._
      ],
    )

    == Autonomous Skills

  ],
)