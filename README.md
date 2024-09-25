Design Approach:
States: Define the possible states of the traffic light: red, yellow, green.
Timers: Use counters to implement timers for each state.
State Transitions: Determine the transitions between states based on timer values and traffic flow conditions.

Explanation:
The module defines three outputs: red_light, yellow_light, and green_light.
The state variable tracks the current state of the traffic light.
Timers are used to control the duration of each state.
The always block handles state transitions and output assignments based on the current state and timer values

Customization:
Adjust the timer values to control the duration of each traffic light state.
Add more states or features like pedestrian signals or vehicle detection.
Consider using a more complex traffic management algorithm for real-world scenarios.

This code provides a basic framework for a traffic light controller. You can customize it to suit your specific requirements and implement more advanced features as needed.
