# Contribute
- Check [issue section](https://github.com/pwyq/BME351/issues) if you can help
- Create your own branch for testing etc, and create PR for update

# How to Use
1. In school terminal, copy proj folder
	- `cp -rL /home/ece327/proj <name-of-target-folder>`
2. Replace `kirsch.vhd` in the `proj` folder with the one in GitHub repo
3. Compile with following
	- Validate kirsch.vhd is valid
		- `uw-synth kirsch.uwp`
	- Generate our own ted file
		- `uw-sim -Gtest_num=<number-of-test> kirsch.uwp`
	- Generate benchmark ted file
		- `uw-sim --nogui -Gtest_num=<number-of-test> -Gresult_suffix=spec kirsch_spec.uwp`
	- Compare the difference
		- `diff_ted *_sim.ted *_spec.ted`

## Other tools
- `diff_ted_to_bmp` Generates a .bmp bitmap image showing the differences between two .ted files
- `ted_to_bmp` converts a .ted file to a .bmp bitmap image. Each pixel in the input image is converted to a 2x2 block of pixels in the output, so that details in ouput image will be easier to see.
- `txt_to_bmp` converts a .txt file to a .bmp image. NOTE: there might be some bugs in this code.
- `bmp_to_txt` converts a .bmp image to a .txt file.


# DONE
- Stage 1 - 4 logic
- Able to generate a picture (at least) :))

# TODO
- Please see [issue section](https://github.com/pwyq/BME351/issues)
