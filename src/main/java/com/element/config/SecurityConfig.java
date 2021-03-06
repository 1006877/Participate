package com.element.config;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

	@Autowired
	DataSource dataSource;

	
	@Autowired
	public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
		
		
	
		
     auth.jdbcAuthentication().dataSource(dataSource)
         /*.passwordEncoder(passwordEncoder())*/
		 .usersByUsernameQuery(
				"select username,password,enabled from users where username=?")
		 .authoritiesByUsernameQuery(
		"select username, role from user_roles where username=?");
	
    /* 
      auth.inMemoryAuthentication().withUser("users").password("123456").roles("USER");
	  auth.inMemoryAuthentication().withUser("admin").password("123456").roles("ADMIN");
	  auth.inMemoryAuthentication().withUser("dba").password("123456").roles("DBA");*/
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {
 
	/*http.csrf().disable();*/
		
	  http.authorizeRequests()
	      .antMatchers("/**/admin").access("hasRole('ROLE_ADMIN') or hasRole('ROLE_DBA')")
          .antMatchers("/**").access("hasRole('ROLE_USER') or hasRole('ROLE_ADMIN') ")
          .and().formLogin();
	      
	      
	    

	}
	
	@Override
	public void configure(WebSecurity web) throws Exception {
	    web.ignoring().antMatchers("/tcs/**");
	}
	
	@Bean
	public PasswordEncoder passwordEncoder(){
		PasswordEncoder encoder = new BCryptPasswordEncoder();
		return encoder;
	}
	
}