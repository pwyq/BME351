#./test_helper.sh
uw-synth kirsch.uwp
uw-sim --nogui -Gtest_num=1 kirsch.uwp
uw-sim --nogui -Gtest_num=2 kirsch.uwp
uw-sim --nogui -Gtest_num=3 kirsch.uwp
uw-sim --nogui -Gtest_num=4 kirsch.uwp
uw-sim --nogui -Gtest_num=5 kirsch.uwp
cd tests
diff_ted res1_sim.ted res1_spec.ted
diff_ted res2_sim.ted res2_spec.ted
diff_ted res3_sim.ted res3_spec.ted
diff_ted res4_sim.ted res4_spec.ted
diff_ted res5_sim.ted res5_spec.ted
cd ..
