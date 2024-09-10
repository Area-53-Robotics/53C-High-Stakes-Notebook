#import "@local/notebookinator:1.0.1": *

#import "../ctheme/entry-types.typ": *
#import "../ctheme/ctheme.typ": ctheme, components

#show: notebook.with(theme: ctheme)

#create-body-entry(
  title: "Season Resolutions",
  type: "identify",
  date: datetime(year: 2024, month: 5, day: 10),
  author: "Isaiah Blanc",
  witness: "Brendan Hille, Max Nelkin, Evan McClelland",
  [
    After the conclusion of the Over Under season, we discussed the mistakes we made throughout the season and rules we want to implement this year.

    = Polycarbonate Map
    #components.citation(
      id: "R19",
      rule: "A limited amount of custom plastic is allowed.",
      [
        Robots may use custom-made parts cut from certain types of non-shattering plastic. It must be possible to have cut all of the plastic parts on the Robot from a single 12” x 24” sheet, up to 0.070” thick.
      ],
    )

    Although we were aware of this rule and have never used enough polycarbonate to exceed the limit, we want to make this apparent in our engineering notebook by including a polycarbonate map that demonstrates that our plastic use is legal.

    = Electronics Accessibility
    One major mistake we made in previous years was designing our robot without keeping the position of electronics such as the brain, battery, motors, and pneumatic tank in mind.

    == Brain
    Making the brain screen and ports easily accessible makes our workflow more efficient and reduces the risk of disconnections between the brain and other electronics. Also, using LemLib ()#footnote[See glossary.] allows us to record our robot's coordinates on the brain screen, so the ability to view the brain screen easily makes programming autonomous easier as well.

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

  ],
)
