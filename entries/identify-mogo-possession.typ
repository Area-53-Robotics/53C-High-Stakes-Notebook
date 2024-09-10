#import "@local/notebookinator:1.0.1": *

#import "../ctheme/entry-types.typ": *
#import "../ctheme/ctheme.typ": ctheme, components

#show: notebook.with(theme: ctheme)

#create-body-entry(
  title: "Mobile Goal Possession",
  type: "identify",
  date: datetime(year: 2024, month: 5, day: 31),
  author: "Brendan Hille",
  witness: "Isaiah Blanc",
  [
    The ability to possess a mobile goal is important because it will allow our robot to change its location and score rings consistently. We want the robot to hold the goal by the base rather than the stake, because the subsystem may make scoring rings on the stake more difficult.

    = Design Criteria

    The following table lists our criteria for an ideal mobile goal posession subsystem.

    #components.pro-con(
      pros: [
        - Holds the mobile goal consistently and securely
        - Tilts the mobile goal at a desired angle consistently
      ],
      cons: [
        - Must not expand more than one inch outside of the drivetrain perimeter
        - Must not use a motor
        - Must not use more than three pistons
      ],
    )

    An important aspect of robot design is using our motors wisely. By limiting this function to pneumatic pistons, we can save motors for future subsystems.

    #components.citation(
      id: "R13",
      rule: "Motors are limited",
      [
        Robots may use any combination of VEX V5 Smart Motors (11W) (276-4840) and EXP Smart Motors (5.5W) (276-4842), within the following criteria:

        1. The combined power of all motors (11W & 5.5W) must not exceed 88W. This limit applies to all motors on the Robot, even those which are not plugged in.
        2. V5 Smart Motors, and EXP Smart Motors connected to Smart Ports, are the only motors that may be used with a V5 Robot Brain. The 3-wire ports may not be used to control motors of any kind.
      ],
    )

    By strategically distributing our motor wattage to subsystems that need more or less power than others, we can maximize our robot's efficiency. This begins with determining which subsystems *don't* need motors to function properly because of the simplicity of the task.

    = Decision Matrix Categories

    Using this criteria, we determined the following categories to be most important when considering what mobile goal possession subsystem to build.

    #table(
      columns: (1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
      rows: 3,
      align: center + horizon,
      inset: 10pt,
      [Category], [Tilt], [Grip], [Efficiency], [Bulk], [Simplicity], [Weight],
      [Scale], table.cell(colspan: 6)[0-5],
      [Weight], table.cell(colspan: 2)[2x], table.cell(colspan: 3)[1x], [1/2x]
    )

    - *Tilt*: How consistent we speculate the clamp to be at angling and positioning the mobile goal correctly

    - *Grip*: How securely the mechanism holds the goal

    - *Efficiency*: How few pistons and motors a design can use to function properly

    - *Bulk*: How much the mechanism interferes with other systems on the robot and how much the mechanism expands from the robot. A higher score means a less bulky mechanism.

    - *Simplicity*: How easily or quickly we can construct the subsystem

    - *Weight*: How heavy we speculate the mechanism to be. A higher score means a lighter mechanism.

  ],
)