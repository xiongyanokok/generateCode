<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE mapper PUBLIC "-//mybatis.org//DTD Mapper 3.0//EN" "http://mybatis.org/dtd/mybatis-3-mapper.dtd">
<mapper namespace="${basePackage}.mapper.${className}Mapper">
	
  	<resultMap id="BaseResultMap" type="${basePackage}.model.${className}">
		<#list list as item>
		<#if item_index == 0>
		<id column="${item.columnName}" property="${item.beanLable}" />	
		<#else>
	    <result column="${item.columnName}" property="${item.beanLable}" />
		</#if>
 		</#list>
  	</resultMap>
  	
  	<!-- 表所有字段 -->
  	<sql id="Base_Column_List">
  		<#list list as item>${item.columnName}<#if item_has_next>, </#if></#list>
  	</sql>
  	
  	<!-- 新增数据库记录 -->
  	<insert id="insert" parameterType="${basePackage}.model.${className}">
    	<selectKey resultType="java.lang.Integer" order="AFTER" keyProperty="<#list list as item><#if item_index == 0>${item.beanLable}<#break></#if></#list>">
			SELECT LAST_INSERT_ID()
		</selectKey>
	    insert into ${tableName}
    		<trim prefix="(" suffix=")" suffixOverrides=",">
    			<#list list as item>
		      	<if test="${item.beanLable} != null">
		        	${item.columnName},
		      	</if>
		      	</#list>
    		</trim>
    	values
    		<trim prefix="(" suffix=")" suffixOverrides=",">
    			<#list list as item>
      			<if test="${item.beanLable} != null">
        			${r"#{"}${item.beanLable}${r"}"},
      			</if>
      			</#list>
    		</trim>
  	</insert>
  	
  	<!-- 更新数据库记录 -->
  	<update id="update" parameterType="${basePackage}.model.${className}">
    	update ${tableName}
    	<set>
			<#list list as item>
			<#if item_index != 0 && item.columnName != "create_user_id" && item.columnName != "create_time" && item.columnName != "update_time">
			<if test="${item.beanLable} != null">
    			${item.columnName} = ${r"#{"}${item.beanLable}${r"}"},
  			</if>
  			</#if>
  			</#list>
    	</set>
    	<where>
    		<#list list as item>
    		<#if item_index == 0>
    		${item.columnName} = ${r"#{"}${item.beanLable}${r"}"}
    		<#break>
    		</#if>
    		</#list>
    	</where>
  	</update>
  	
  	<!-- 删除数据库记录 -->
  	<update id="delete" parameterType="${basePackage}.model.${className}">
    	update ${tableName} set is_delete = 1 where id = #{id}
  	</update>
  	
	<!-- 根据map查询 -->
  	<select id="getByMap" resultMap="BaseResultMap" parameterType="java.util.Map">
  		select
        <include refid="Base_Column_List"/>
        from ${tableName}
        <where>
			<#list list as item>
  			<if test="${item.beanLable} != null">
    			and ${item.columnName} = ${r"#{"}${item.beanLable}${r"}"}
  			</if>
  			</#list>
        </where>
  	</select>
  
  	<!-- 根据map查询 -->
  	<select id="listByMap" resultMap="BaseResultMap" parameterType="java.util.Map">
  		select
        <include refid="Base_Column_List"/>
        from ${tableName}
        <where>
        	<#list list as item>
        	<#if item_index != 0>
  			<if test="${item.beanLable} != null">
    			and ${item.columnName} = ${r"#{"}${item.beanLable}${r"}"}
  			</if>
  			</#if>
  			</#list>    	    
        </where>
        <if test="groupBy != null">
        	group by ${r"$"}{groupBy}
        </if>
        <if test="orderBy != null">
        	order by ${r"$"}{orderBy}
        </if>
  	</select>
  	
  	<!-- 批量保存 -->
	<insert id="batchInsert" parameterType="java.util.List">
		insert into ${tableName} (<include refid="Base_Column_List" />)
		values 
		<foreach collection="list" index="index" item="item" separator=",">
			<trim prefix="(" suffix=")" suffixOverrides=",">
			<#list list as item>
				${r"#{item."}${item.beanLable}${r"}"},
			</#list>
			</trim>
		</foreach>
	</insert>
	
	<!-- 批量更新 -->
  	<update id="batchUpdate" parameterType="java.util.List">
		<foreach collection="list" index="index" item="item" separator=";">
			update ${tableName}
			<set>
		 <#list list as item>
     		<#if item_index != 0 && item.columnName != "create_user_id" && item.columnName != "create_time" && item.columnName != "update_time">
        		<if test="item.${item.beanLable} != null">
        			${item.columnName} = ${r"#{item."}${item.beanLable}${r"}"},
        		</if>
     		</#if>
   		</#list>
			</set>
			<#list list as item>
		     	<#if item_index == 0 >
            where ${item.columnName} = ${r"#{item."}${item.beanLable}${r"}"}
               	<#break>
              	</#if>
	    	</#list> 
		</foreach>
	</update>
	
</mapper>