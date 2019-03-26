# How to Use
1. In school terminal, copy proj folder
	- `cp -rL /home/ece327/proj <name-of-target-folder>`
2. Replace `kirsch.vhd` in the `proj` folder with the one in GitHub repo
3. Compile with following
	- `uw-synth kirsch.uwp`
	- `uw-sim -Gtest_num=<number-of-test> kirsch.uwp`

# DONE
- Stage 1 - 4 logic

# TODO
- Fix stage 3 and stage 4 of `kirsch.vhd`
	- main issue is bit arrangement of each signal (ie, the width of each signal is hard to match)
	- second issue is we're considering moving the shifter in stage 3 to stage 4 (doing right now)
