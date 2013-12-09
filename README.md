Digital-Lock
============

Digital lock with code for arming and disarming. Created according to the following specifications:

Design an alarm system for a bicycle that has five input push-buttons: X4,X3, X2, X1 and X0. Assume that the buttons cannot be pressed simultaneously (an electromechanical interlock guarantees this). The alarm system should have the following features:
1. X4 represents the ENTER option of the inputs.
2. The main three states are:
  A. Reset State
  B. Lock/Armed State
  C. Alarm state
3. The lock/alarm system cannot be turned on if the electronic rope is not harnessed at both ends.
4. A. The combination for locking (arming from the Reset state) is X2-X0-X3-X3-X1-X4 sequence: 
            X4 X3 X2 X1 X0 Note: One button at a time is pressed.
            0  0  1  0  0 press
            0  0  0  0  0 release
            0  0  0  0  1 press
            0  0  0  0  0 release
            0  1  0  0  0
            0  0  0  0  0
            0  1  0  0  0
            0  0  0  0  0
            0  0  0  1  0
            0  0  0  0  0
            1  0  0  0  0 ENTER key
            0  0  0  0  0
   B. If any wrong button is pressed during the arming sequence, pushing X4 (ENTER) should get the system back to the RESET state.
5. The combination for unlocking (disarming from the Lock/Armed State) is X2-X0-X3-X3-X1-X4 (same sequence as Arming) In order to prevent tampering with the system, an ALARM signal will get activated if any wrong button was pressed. However, in order to make it harder to figure out the right sequence:
   A. We don’t want the alarm signal to get activated after the first wrong button has been pressed. Instead, the alarm    signal should get activated after pressing 6 buttons, as long as one of the 6 buttons pressed is a wrong one.
   B. While disarming, pressing the sequence X2-X2 during 2nd through 6th pushes should get the system back to the ARMED state.
   C. While disarming, pressing X4 during the first 5 pushes should get the system back to ARMED state.
6. The combination for getting out of the ALARM state is by pressing the X2-X0-X3-X3-X1-X4 (same sequence as Arm and disarm) sequence. (It goes back to the RESET state.) If any wrong button or X4 is pressed during the first 5 push, the system should go back to the ALARM state and the sequence should be reentered.
