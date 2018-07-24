<?xml version="1.0" encoding="UTF-8"?>
<TestCase name="AutoDeploy" version="5">

<meta>
   <create author="wtruong" buildNumber="7.5.2.235" date="01/08/2015" host="Williams-MacBook-Pro.local" version="7.5.2"/>
   <lastEdited author="wtruong" buildNumber="7.5.2.235" date="01/09/2015" host="williams-mbp" version="7.5.2"/>
</meta>

<id>81D19ED08EC511E8804A025041000101</id>
<Documentation>Put documentation of the Test Case here.</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9MyZ0Y3Y9NSZsaXNhdj03LjUuMiAoNy41LjIuMjM1KSZub2Rlcz0xNjY1MTE1MzUy</sig>
<subprocess>false</subprocess>

<initState>
</initState>

<resultState>
</resultState>

<deletedProps>
</deletedProps>

    <Node log="" name="Create VSI from RRPair" next="Combine new VSI with Master VSI" quiet="false" think="500-1S" type="com.itko.lisa.utils.CommandLineExecNode" uid="81D19ED18EC511E8804A025041000101" useFilters="true" version="1"> 

<cmd>./ServiceImageManager --vrs=/Users/wtruong/CA/Projects/Echostar/LISA_Projects/STB/VirtualServices/VRScenarios/CatalogServer_DPH_REST_GXPP_SCRIPTABLE_EXP_AXP_rrpair.vrs
--si-file=/Users/wtruong/CA/Projects/Echostar/LISA_Projects/STB/VirtualServices/Images/tmpVSI.vsi
--record --go</cmd>
<basedir>{{LISA_HOME}}/bin</basedir>
<toNode>abort</toNode>
<exceptionNode>abort</exceptionNode>
<timeOut>300</timeOut>
<killAtEnd>false</killAtEnd>
<wait>true</wait>
<addToEnv>false</addToEnv>
<spawn>false</spawn>
<execShell>false</execShell>
<charset>DEFAULT</charset>
<env>
</env>
<exitCodes>
</exitCodes>
    </Node>


    <Node log="" name="Combine new VSI with Master VSI" next="Make MAR" quiet="false" think="500-1S" type="com.itko.lisa.utils.CommandLineExecNode" uid="81D19ED28EC511E8804A025041000101" useFilters="true" version="1"> 

<cmd>./ServiceImageManager --combine={{LISA_PROJ_ROOT}}/VirtualServices/Images/tmpVSI2.vsi {{LISA_PROJ_ROOT}}/VirtualServices/Images/tmpVSI.vsi
--favor=target</cmd>
<basedir>{{LISA_HOME}}/bin</basedir>
<toNode>abort</toNode>
<exceptionNode>abort</exceptionNode>
<timeOut>300</timeOut>
<killAtEnd>false</killAtEnd>
<wait>true</wait>
<addToEnv>false</addToEnv>
<spawn>false</spawn>
<execShell>false</execShell>
<charset>DEFAULT</charset>
<env>
</env>
<exitCodes>
</exitCodes>
    </Node>


    <Node log="" name="Make MAR" next="Deploy new VSI" quiet="false" think="500-1S" type="com.itko.lisa.utils.CommandLineExecNode" uid="81D19ED38EC511E8804A025041000101" useFilters="true" version="1"> 

<cmd>./MakeMar --create --marinfo={{LISA_PROJ_ROOT}}/VirtualServices/VSMRouterTrafficLogger_DynamicMode.mari</cmd>
<basedir>{{LISA_HOME}}/bin</basedir>
<toNode>abort</toNode>
<exceptionNode>abort</exceptionNode>
<timeOut>300</timeOut>
<killAtEnd>false</killAtEnd>
<wait>true</wait>
<addToEnv>false</addToEnv>
<spawn>false</spawn>
<execShell>false</execShell>
<charset>DEFAULT</charset>
<env>
</env>
<exitCodes>
</exitCodes>
    </Node>


    <Node log="" name="Deploy new VSI" next="Sleep 60 sec" quiet="false" think="500-1S" type="com.itko.lisa.utils.CommandLineExecNode" uid="81D1C5E48EC511E8804A025041000101" useFilters="true" version="1"> 


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Ensure Result Does Not Contain String" type="com.itko.lisa.test.CheckResultContains">
<log/>
<then>Redeploy new VSI</then>
        <param>ERROR: There is already a service</param>
</CheckResult>

<cmd>./VSEManager --vse VSE --deploy {{LISA_PROJ_ROOT}}/VirtualServices/VSMRouterTrafficLogger_DynamicMode.mar</cmd>
<basedir>{{LISA_HOME}}/bin</basedir>
<toNode>abort</toNode>
<exceptionNode>abort</exceptionNode>
<timeOut>300</timeOut>
<killAtEnd>false</killAtEnd>
<wait>true</wait>
<addToEnv>false</addToEnv>
<spawn>false</spawn>
<execShell>false</execShell>
<charset>DEFAULT</charset>
<env>
</env>
<exitCodes>
</exitCodes>
    </Node>


    <Node log="" name="Sleep 60 sec" next="Create VSI from RRPair" quiet="false" think="500-1S" type="com.itko.lisa.test.ScriptNode" uid="81D1C5E58EC511E8804A025041000101" useFilters="true" version="1"> 


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assertion name: Any Exception Then Fail checks for: true  is of type: Assert on Invocation Exception.</log>
<then>fail</then>
<valueToAssertKey/>
        <param>.*</param>
</CheckResult>

<onerror>abort</onerror>
<script>Thread.sleep(60000);</script>
    </Node>


    <Node log="" name="Redeploy new VSI" next="Sleep 60 sec" quiet="false" think="500-1S" type="com.itko.lisa.utils.CommandLineExecNode" uid="81D1C5E68EC511E8804A025041000101" useFilters="true" version="1"> 

<cmd>./VSEManager --vse VSE --redeploy {{LISA_PROJ_ROOT}}/VirtualServices/VSMRouterTrafficLogger_DynamicMode.mar</cmd>
<basedir>{{LISA_HOME}}/bin</basedir>
<toNode>abort</toNode>
<exceptionNode>abort</exceptionNode>
<timeOut>300</timeOut>
<killAtEnd>false</killAtEnd>
<wait>true</wait>
<addToEnv>false</addToEnv>
<spawn>false</spawn>
<execShell>false</execShell>
<charset>DEFAULT</charset>
<env>
</env>
<exitCodes>
</exitCodes>
    </Node>


    <Node log="" name="abort" next="" quiet="true" think="0h" type="com.itko.lisa.test.AbortStep" uid="81D1C5E78EC511E8804A025041000101" useFilters="true" version="1"> 

    </Node>


    <Node log="" name="fail" next="abort" quiet="true" think="0h" type="com.itko.lisa.test.Abend" uid="81D1C5E88EC511E8804A025041000101" useFilters="true" version="1"> 

    </Node>


    <Node log="" name="end" next="fail" quiet="true" think="0h" type="com.itko.lisa.test.NormalEnd" uid="81D1C5E98EC511E8804A025041000101" useFilters="true" version="1"> 

    </Node>


</TestCase>