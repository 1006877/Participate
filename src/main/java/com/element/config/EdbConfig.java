package com.element.config;


import java.util.HashMap;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.jpa.JpaTransactionManager;
import org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean;
import org.springframework.orm.jpa.vendor.HibernateJpaVendorAdapter;
import org.springframework.transaction.PlatformTransactionManager;

import com.example.ParticipateApplication;


@Configuration
@PropertySource({"classpath:application.properties"})
@ConfigurationProperties("spring.datasource_edb")
@EnableJpaRepositories(
		                basePackages="com.element.repository",
		                entityManagerFactoryRef="edbEntityManager",
		                transactionManagerRef="edbTransactionManager"
		              )
public class EdbConfig   {

	@Autowired
	private Environment env;
	
	
	@Bean
	public LocalContainerEntityManagerFactoryBean edbEntityManager(){
		LocalContainerEntityManagerFactoryBean em=new LocalContainerEntityManagerFactoryBean();

		em.setDataSource(dataSource());
		em.setPackagesToScan(new String[]{"com.element.edb.entity"});
		HibernateJpaVendorAdapter vendorAdapter=new HibernateJpaVendorAdapter();
		em.setJpaVendorAdapter(vendorAdapter);
		HashMap<String, Object> properties=new HashMap<String,Object>();
		properties.put("hibernate.show_sql", env.getProperty("spring.jpa.show-sql"));
		properties.put("hibernate.dialect", env.getProperty("spring.jpa.properties.hibernate.dialect"));
		properties.put("hibernate.default_schema", env.getProperty("participation.edb.schema"));
		em.setJpaPropertyMap(properties);

		return em;
	}

	@Bean(name="datasourceEdb")
	public DriverManagerDataSource dataSource() {
		DriverManagerDataSource driverManagerDataSource= new DriverManagerDataSource();
		driverManagerDataSource.setDriverClassName("com.sybase.jdbc3.jdbc.SybDriver");
		driverManagerDataSource.setUrl("jdbc:sybase:Tds:psplsyb01p.fleet.ad:2050");
		driverManagerDataSource.setPassword("feVutH6q");
		driverManagerDataSource.setUsername("gen_funding_auth");
	    return driverManagerDataSource;
	}
	
	@Bean(name = "jdbcEdb")
    @Qualifier("datasourceEdb")
    public JdbcTemplate getEdbJdbcTemplate(DataSource datasourceEdb){
   	 return new JdbcTemplate(datasourceEdb);
    }

	@Bean
		PlatformTransactionManager edbTransactionManager(){
		JpaTransactionManager transactionManager=new JpaTransactionManager();
		transactionManager.setEntityManagerFactory(edbEntityManager().getObject());
		return transactionManager;
	}
	
	
	
}
 
