<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:UUIDUserFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.UUIDUserFunction" xmlns:IsUserInGroupFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.IsUserInGroupFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:IsUserInRoleFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.IsUserInRoleFunction" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:DVMFunctions="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.functions.dvm.DVMFunctions" xmlns:ns0="http://xmlns.xyzbank.com/schema/Customer" xmlns:tns="urn:xyzbank:cust:schema:customer" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java" xmlns:RuntimeTypeConversionFunctions="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.RuntimeTypeConversionFunctions" xmlns:XrefFunctions="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.functions.xref.XrefFunctions" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:BasicCredentialsUserFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.BasicCredentialsUserFunction" exclude-result-prefixes=" xsd oracle-xsl-mapper xsi xsl ns0 tns UUIDUserFunction IsUserInGroupFunction oraext IsUserInRoleFunction xp20 DVMFunctions oraxsl RuntimeTypeConversionFunctions XrefFunctions BasicCredentialsUserFunction"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/"
                xmlns:n3="urn:xyzbank:cust:wsdl:customer">
   <oracle-xsl-mapper:schema>
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/CustomerPS.wsdl"/>
            <oracle-xsl-mapper:rootElement name="Customer" namespace="http://xmlns.xyzbank.com/schema/Customer"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="WSDL">
            <oracle-xsl-mapper:schema location="../../XYZCommon/WSDLs/CustomerService.wsdl"/>
            <oracle-xsl-mapper:rootElement name="customer" namespace="urn:xyzbank:cust:schema:customer"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.2.0(XSLT Build 161003.0739.0018) AT [MON OCT 22 10:27:21 CDT 2018].-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:template match="/">
      <tns:customer>
         <xsl:if test="/ns0:Customer/CustomerID/text()">
            <customer_id>
               <xsl:value-of select="/ns0:Customer/CustomerID"/>
            </customer_id>
         </xsl:if>
         <full_name>
            <xsl:value-of select="concat (/ns0:Customer/FirstName, &quot;,&quot;, /ns0:Customer/LastName )"/>
         </full_name>
         <xsl:if test="/ns0:Customer/CustomerType/text()">
            <customer_type>
               <xsl:value-of select="/ns0:Customer/CustomerType"/>
            </customer_type>
         </xsl:if>
         <xsl:if test="/ns0:Customer/DOB/text()">
            <date_of_birth>
               <xsl:value-of select="/ns0:Customer/DOB"/>
            </date_of_birth>
         </xsl:if>
         <xsl:if test="/ns0:Customer/Email/text()">
            <email>
               <xsl:value-of select="/ns0:Customer/Email"/>
            </email>
         </xsl:if>
         <xsl:if test="/ns0:Customer/Phone/text()">
            <phone>
               <xsl:value-of select="/ns0:Customer/Phone"/>
            </phone>
         </xsl:if>
         <xsl:if test="/ns0:Customer/Address1/text()">
            <addr_line1>
               <xsl:value-of select="/ns0:Customer/Address1"/>
            </addr_line1>
         </xsl:if>
         <xsl:if test="/ns0:Customer/Address2/text()">
            <addr_line2>
               <xsl:value-of select="/ns0:Customer/Address2"/>
            </addr_line2>
         </xsl:if>
         <xsl:if test="/ns0:Customer/Address3/text()">
            <addr_line3>
               <xsl:value-of select="/ns0:Customer/Address3"/>
            </addr_line3>
         </xsl:if>
         <addr_line4>
            <xsl:value-of select='concat (/ns0:Customer/State, ",", /ns0:Customer/Country, ",", /ns0:Customer/ZipCode )'/>
         </addr_line4>
      </tns:customer>
   </xsl:template>
</xsl:stylesheet>
