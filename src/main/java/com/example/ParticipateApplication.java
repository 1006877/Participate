package com.example;

import org.hsqldb.util.DatabaseManagerSwing;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.web.servlet.view.tiles3.TilesConfigurer;
import org.springframework.web.servlet.view.tiles3.TilesView;
import org.springframework.web.servlet.view.tiles3.TilesViewResolver;

@Configuration
@EnableAutoConfiguration
//@Import(DataSourceConfig.class)
@EntityScan(basePackages={"com.element.edb.entity"})
@EnableJpaRepositories(
        basePackages="com.element.repository"
      )
@ComponentScan(basePackages={"com.element"})
public class ParticipateApplication {

	public static void main(String[] args) {
		
		DatabaseManagerSwing.main(new String[]{"--url","jdbc:hsqldb:mem:testdb","--user","sa","--password",""});
		
		SpringApplication.run(ParticipateApplication.class, args);
	}
	
	
	
	@Bean
    public TilesConfigurer tilesConfigurer() {
        final TilesConfigurer configurer = new TilesConfigurer();
        configurer.setDefinitions(new String[] {"WEB-INF/views/tiles/tiles.xml" });
        configurer.setCheckRefresh(true);
        return configurer;
    }

    /**
     * Introduce a Tiles view resolver, this is a convenience implementation that extends URLBasedViewResolver.
     * 
     * @return tiles view resolver
     */
    @Bean
    public TilesViewResolver tilesViewResolver() {
        final TilesViewResolver resolver = new TilesViewResolver();
        resolver.setViewClass(TilesView.class);
        return resolver;
    }
    
	
}
