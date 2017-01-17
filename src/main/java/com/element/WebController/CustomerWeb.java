package com.element.WebController;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.element.edb.entity.Users;
import com.element.service.CustomerService;
import com.jcraft.jsch.Channel;
import com.jcraft.jsch.ChannelSftp;
import com.jcraft.jsch.JSch;
import com.jcraft.jsch.Session;

@Controller
@RequestMapping("participation")
public class CustomerWeb {
	
	private static final Logger logger =
	
    LoggerFactory.getLogger(CustomerWeb.class);

	@Autowired
	@Qualifier("customerProxyService")
	private CustomerService customerService;
	
	
	@RequestMapping(value="/home" ,method=RequestMethod.GET)
    public  String home(){
  
	logger.debug("getWelcome is executed!");		
	logger.error("This is Error message");
		
	
	
		return "home";
		
	}
	
	
	@RequestMapping(value = { "/", "/welcome**" }, method = RequestMethod.GET)
	public ModelAndView welcomePage() {

		ModelAndView model = new ModelAndView();
		model.addObject("title", "Spring Security Hello World");
		model.addObject("message", "This is welcome page!");
		model.setViewName("hello");
		return model;

	}

	@RequestMapping(value = "/admin**", method = RequestMethod.GET)
	public ModelAndView adminPage() {

		ModelAndView model = new ModelAndView();
		model.addObject("title", "Spring Security Hello World");
		model.addObject("message", "This is protected page - Admin Page!");
		model.setViewName("admin");

		return model;

	}

	@RequestMapping(value = "/dba**", method = RequestMethod.GET)
	public ModelAndView dbaPage() {

		ModelAndView model = new ModelAndView();
		model.addObject("title", "Spring Security Hello World");
		model.addObject("message", "This is protected page - Database Page!");
		model.setViewName("admin");

		return model;

	}
	
	
	
	@RequestMapping(value="/getcustomer" ,method=RequestMethod.GET)
    public  @ResponseBody List<Users> getCustomer(){
    	
	    List<Users> customerList = new ArrayList<Users>();
	    customerList = customerService.getCustomer();
	    
		return customerList;
		
	}
   
    
    @RequestMapping(value="/getLogTextFile" ,method=RequestMethod.GET,produces = "text/plain")
    @ResponseBody
    public String getCustomerByName(){
    	
    	 JSch jsch = new JSch();
    	
    	int sftpPort  =22;
    	
    	String hostName = "test.rebex.net";
    	String userName = "demo";
    	String passwords = "password";
    	String ftp_src_folder = "/opt/clarus/apache-tomcat-7.0.72/logs";
    	String ftp_src_file  ="bobjRestServices-dev.log";
    	
    	 Session session = null;
         Channel channel = null;
         ChannelSftp channelSftp = null;
         InputStream InputStream = null;
         
        
    	try {
    		
    		session = jsch.getSession(userName, hostName, sftpPort);
    		
    		  
    		  java.util.Properties config = new java.util.Properties();
    		  
    		/*  config.put("cipher.s2c", 
    	                 "aes128-ctr,aes128-cbc,3des-ctr,3des-cbc,blowfish-cbc");
    	      config.put("cipher.c2s",
    	                 "aes128-ctr,aes128-cbc,3des-ctr,3des-cbc,blowfish-cbc");*/
    	      config.put("kex", "ecdh-sha2-nistp256,ecdh-sha2-nistp384,ecdh-sha2-nistp521");
    	    	
    	      
    	 
          
              session.setPassword(passwords);
              session.setConfig(config);
              session.connect();
              logger.info("Host connected.");
            
              channel = session.openChannel("sftp");
              channel.connect();
              logger.info("sftp channel opened and connected.");
              channelSftp = (ChannelSftp) channel;
              channelSftp.cd(ftp_src_folder);
              InputStream =channelSftp.get(ftp_src_file);
             
             
    		
		}  catch (Exception e3) {
			
			 logger.error("Error",new Exception(e3));
			 }
    	finally{

            channelSftp.exit();
            System.out.println("sftp Channel exited.");
            channel.disconnect();
            System.out.println("Channel disconnected.");
            session.disconnect();
            System.out.println("Host Session disconnected.");
        }
    	
    	
    	 StringBuilder sb = new StringBuilder();
    	 
    	FileReader file = null;
    	try {
    		file = new FileReader("C:/tmp/rest-demo.log");
    	} catch (FileNotFoundException e) {
    		
    		e.printStackTrace();
    	}
    	
    	BufferedReader textReader  = new BufferedReader(file);
    	
  	  String line = null;
	try {
		line = textReader.readLine();
	} catch (IOException e1) {
		
		e1.printStackTrace();
	}
	while (line != null) {
    	{
    		try {
    			sb.append(line);
    	        sb.append("/");
    	        line = textReader.readLine();
    		} catch (IOException e) {
    		
    			e.printStackTrace();
    		}
    		
    	}
	}
    	 return sb.toString();
}
    
   
    
}
