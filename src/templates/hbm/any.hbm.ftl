<#assign value = property.value>
	<any name="<#if c2h.isFieldAccess(property)>${field_prefix}</#if>${property.name}" 
		id-type="${value.getIdentifierType()}" 
		meta-type="${value.getMetaType()}"
		<#if property.cascade != "none">
        cascade="${property.cascade}"
		</#if>
		<#if !property.basicPropertyAccessor>
        access="${property.propertyAccessorName}"
		</#if>>
	    	<#assign metaattributable=property>
		<#include "meta.hbm.ftl">
		<#if value.metaValues?exists>
		 <#foreach entry in value.metaValues.entrySet()>
              		<meta-value value="${entry.key}" class="${entry.value}"/>
           	</#foreach>
           	</#if>
           	<#foreach column in property.columnIterator>
              		<#include "column.hbm.ftl">
          	 </#foreach>
	</any>
	