<?xml version="1.0" ?>

<TestCase name="MakeMar" version="5">

<meta>
   <create version="10.1.0" buildNumber="10.1.0.283" author="admin" date="07/23/2018" host="truwi01mac1448" />
   <lastEdited version="10.1.0" buildNumber="10.1.0.283" author="admin" date="07/23/2018" host="truwi01mac1448" />
</meta>

<id>9D80428A8EC511E8804A025041000101</id>
<Documentation>Put documentation of the Test Case here.</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9NSZsaXNhdj0xMC4xLjAgKDEwLjEuMC4yODMpJm5vZGVzPS0xOTcwMTI3ODQw</sig>
<subprocess>false</subprocess>

<initState>
</initState>

<resultState>
</resultState>

<deletedProps>
</deletedProps>

    <Node name="Make MAR" log=""
          type="com.itko.lisa.utils.CommandLineExecNode" 
          version="1" 
          uid="A04B97AF8EC511E8804A025041000101" 
          think="500-1S" 
          useFilters="true" 
          quiet="false" 
          next="Make MAR" > 

<cmd>./MakeMar --create --marinfo={{LISA_PROJ_ROOT}}/VirtualServices/sample-vs.mari --archive={{LISA_PROJ_ROOT}}/VirtualServices/sample-vs.mar</cmd>
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


    <Node name="abort" log=""
          type="com.itko.lisa.test.AbortStep" 
          version="1" 
          uid="9D80428C8EC511E8804A025041000101" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="" > 

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          uid="9D80428E8EC511E8804A025041000101" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="abort" > 

    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          uid="9D8042908EC511E8804A025041000101" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="fail" > 

    </Node>


</TestCase>
