    <timestamp
        name="<#if c2h.isFieldAccess(property)>${field_prefix}</#if>${property.name}"
<#if !property.basicPropertyAccessor>        access="${property.propertyAccessorName}"
</#if><#foreach column in property.columnIterator> <#-- always only one column, but no direct access method.-->
        column="${column.quotedName}" 
</#foreach>    />

