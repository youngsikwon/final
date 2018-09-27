package com.cufflink.common;

import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service //CommonLogic와 연동을 위한 @Autowired

public class CommonDao {
	
	// @Autowired
	// SqlSessionTemplate sqlSessionTemplate;
	
	// sqlSessionTemplate는 제공받는 것으로 Service를 선언할수 없으므로 bean으로 대체
	// applicationData.xml 아래코드 필요
	
	/* <bean id="sqlSessionFactory" class="org.mybatis.spring.SqlSessionFactoryBean">
	*  	<property name="mapperLocations" value="classpath:com/mybatis/mappers/*.xml"/>
	*  	<property name="dataSource" ref="data-Source" />
	*  </bean>
 	*  	<bean id="sqlSessionTemplate"	class="org.mybatis.spring.SqlSessionTemplate">
	*  	<constructor-arg index="0" ref="sqlSessionFactory" />
	*  </bean> */
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	public Map<String,Object> getList(){
		Map<String,Object> map = new HashMap<>();
		//map = sqlSessionTemplate.selectOne("select");
		return map;
	}
}
