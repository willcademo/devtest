<?xml version="1.0" encoding="UTF-8"?>
<TestCase name="Scripting" version="5">

<meta>
   <create author="admin" buildNumber="10.1.0.283" date="07/23/2018" host="truwi01mac1448" version="10.1.0"/>
   <lastEdited author="admin" buildNumber="10.1.0.283" date="07/23/2018" host="truwi01mac1448" version="10.1.0"/>
</meta>

<id>E68534518EC911E89A8C025041000101</id>
<Documentation>Put documentation of the Test Case here.</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9NSZsaXNhdj0xMC4xLjAgKDEwLjEuMC4yODMpJm5vZGVzPS0xNjU2MzQ3NjA0</sig>
<subprocess>false</subprocess>

<initState>
</initState>

<resultState>
</resultState>

<deletedProps>
</deletedProps>

    <Node log="" name="Execute script (JSR-223)" next="end" quiet="false" think="500-1S" type="com.itko.lisa.test.UserScriptNode" uid="F17A616F8EC911E89A8C025041000101" useFilters="true" version="1"> 


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assertion name: Any Exception Then Fail checks for: true is of type: Assert on Invocation Exception.</log>
<then>fail</then>
<valueToAssertKey/>
        <param>.*</param>
</CheckResult>

<onerror>abort</onerror>
<language>BeanShell</language>
<copyProps>TestExecProps</copyProps>
<script>import com.mgm.devtest.demo.*;

return DemoUtility.concat("Foo", "Bar");</script>
    </Node>


    <Node log="" name="abort" next="" quiet="true" think="0h" type="com.itko.lisa.test.AbortStep" uid="E68534538EC911E89A8C025041000101" useFilters="true" version="1"> 

    </Node>


    <Node log="" name="fail" next="abort" quiet="true" think="0h" type="com.itko.lisa.test.Abend" uid="E68534558EC911E89A8C025041000101" useFilters="true" version="1"> 

    </Node>


    <Node log="" name="end" next="fail" quiet="true" think="0h" type="com.itko.lisa.test.NormalEnd" uid="E68534578EC911E89A8C025041000101" useFilters="true" version="1"> 

    </Node>


</TestCase>