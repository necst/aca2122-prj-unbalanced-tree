<AutoPilot:project xmlns:AutoPilot="com.autoesl.autopilot.project" projectType="C/C++" name="myproject_prj" top="myproject_axi">
    <solutions>
        <solution name="solution1" status=""/>
    </solutions>
    <Simulation argv="">
        <SimFlow name="csim" setup="false" optimizeCompile="false" clean="false" ldflags="" mflags=""/>
    </Simulation>
    <files>
        <file name="../../myproject_test.cpp" sc="0" tb="1" cflags=" -DRTL_SIM -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="../../tb_data" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="firmware/myproject.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="firmware/myproject_axi.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="firmware/BDT.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
    </files>
</AutoPilot:project>

