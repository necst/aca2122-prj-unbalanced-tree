<project xmlns="com.autoesl.autopilot.project" name="myproject_prj" top="myproject_axi">
    <includePaths/>
    <libraryPaths/>
    <Simulation argv="">
        <SimFlow name="csim" ldflags="" mflags=""/>
    </Simulation>
    <files xmlns="">
        <file name="../../tb_data" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="../../myproject_test.cpp" sc="0" tb="1" cflags=" -DRTL_SIM -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="firmware/BDT.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="firmware/myproject_axi.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="firmware/myproject.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
    </files>
    <solutions xmlns="">
        <solution name="solution1" status="active"/>
    </solutions>
</project>

