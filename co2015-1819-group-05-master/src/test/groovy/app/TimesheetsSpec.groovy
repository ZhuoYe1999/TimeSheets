package app;

import static org.hamcrest.Matchers.*;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.ResultActions;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import app.controller.*
import app.domain.*
import app.repository.RoleRepository
import app.repository.UserRepository
import spock.lang.Specification;
import spock.lang.Unroll;

@SpringBootTest(classes=[WebConfig.class,UserRepository.class,MainController.class,TimesheetsApp.class, /*DbConfig.class*/])
//@ContextConfiguration(classes=[WebConfig.class,DbConfig.class,UserRepository.class,MainController.class,TimesheetsApp.class])
//@WebMvcTest(controllers=[MainController.class])
public class TimesheetsSpec extends Specification {

@Autowired
RoleRepository roleRepo;

@Autowired
UserRepository userRepo;

@Autowired
private WebApplicationContext wac;
private MockMvc mockMvc;
private ResultActions result;

@Unroll
def "adminpage/addemployee adds new employee"() {
   given: "the controller is setup"
    this.mockMvc = MockMvcBuilders.webAppContextSetup(this.wac).build()
   when: "I perform a post /addemployee request with parameter id=10"
    result = this.mockMvc.perform(post("/adminpage/addemployee/")
     .param('users', 'test.test@fdmgroup.com')
     .param('add', ''))
   then: "the status of the HTTP response should be 200"
    result.andExpect(status().is(200))
   and: "I should see the view admindone"
    result.andExpect(view().name("admindone"))
  }
 
def "addadmin/addadmin adds new admin"() {
   given: "the controller is setup"
    this.mockMvc = MockMvcBuilders.webAppContextSetup(this.wac).build()
   when: "I perform a post /addemployee request with parameter id=10"
    result = this.mockMvc.perform(post("/addadmin/addadmin/")
     .param('users', 'admin.test@fdmgroup.com')
     .param('add', ''))
   then: "the status of the HTTP response should be 200"
    result.andExpect(status().is(200))
   and: "I should see the view admindone"
    result.andExpect(view().name("adminfinished"))
  }
 
def "addlm/addlm adds new admin"() {
   given: "the controller is setup"
    this.mockMvc = MockMvcBuilders.webAppContextSetup(this.wac).build()
   when: "I perform a post /addemployee request with parameter id=10"
    result = this.mockMvc.perform(post("/addlm/addlm/")
     .param('users', 'lm.test@fdmgroup.com')
     .param('add', ''))
   then: "the status of the HTTP response should be 200"
    result.andExpect(status().is(200))
   and: "I should see the view admindone"
    result.andExpect(view().name("lmdone"))
  }

def "POST /submitsignup employee successful"() {
   given: "the controller is setup"
     this.mockMvc = MockMvcBuilders.webAppContextSetup(this.wac).build()
   when: "I perform an HTTP POST /create with"
      result = this.mockMvc.perform(post("/signup/submitsignup/")
         .param('email', 'test.test@fdmgroup.com')
         .param('password', 'coco')
         .param('password2', 'coco')
         .param('add', ''))
   then: "the status of the HTTP response should be 200"
      result.andExpect(status().is(200))
   and: "I should see the view signupsuccess"
      result.andExpect(view().name("signupsuccess"))
           }
 
def "POST /submitsignup admin successful"() {
    given: "the controller is setup"
       this.mockMvc = MockMvcBuilders.webAppContextSetup(this.wac).build()
    when: "I perform an HTTP POST /create with"
      result = this.mockMvc.perform(post("/signup/submitsignup/")
          .param('email', 'admin.test@fdmgroup.com')
          .param('password', 'coco')
          .param('password2', 'coco')
          .param('add', ''))
    then: "the status of the HTTP response should be 200"
      result.andExpect(status().is(200))
    and: "I should see the view signupsuccess"
      result.andExpect(view().name("signupsuccess"))
                    }
                   
def "POST /submitsignup lm successful"() {
    given: "the controller is setup"
        this.mockMvc = MockMvcBuilders.webAppContextSetup(this.wac).build()
    when: "I perform an HTTP POST /create with"
      result = this.mockMvc.perform(post("/signup/submitsignup/")
          .param('email', 'lm.test@fdmgroup.com')
          .param('password', 'coco')
          .param('password2', 'coco')
          .param('add', ''))
    then: "the status of the HTTP response should be 200"
      result.andExpect(status().is(200))
    and: "I should see the view signupsuccess"
      result.andExpect(view().name("signupsuccess"))
                                    }
def "POST /loginaccount for Employee"() {
   given: "the controller is setup"
     this.mockMvc = MockMvcBuilders.webAppContextSetup(this.wac).build()
   when: "I perform an HTTP POST /create with"
     result = this.mockMvc.perform(post("/loginaccount")
      .param('email', 'test.test@fdmgroup.com')
      .param('password', 'coco')
      .param('login', ''))
   then: "the status of the HTTP response should be 302"
     result.andExpect(status().is(302))
   and: "I should be redirected to URL /timesheetspage?name=test.test"
     result.andExpect(redirectedUrl("/timesheetspage?name=test.test"))        
           }
 def "POST /loginaccount for Admin"() {
   given: "the controller is setup"
      this.mockMvc = MockMvcBuilders.webAppContextSetup(this.wac).build()
   when: "I perform an HTTP POST /create with"
      result = this.mockMvc.perform(post("/loginaccount")
        .param('email', 'admin.test@fdmgroup.com')
        .param('password', 'coco')
        .param('login', ''))
    then: "the status of the HTTP response should be 200"
      result.andExpect(status().is(200))
    and: "I should see the view adminmain"
      result.andExpect(view().name("adminmain"))}
     
 def "POST /loginaccount for linemanager"() {
   given: "the controller is setup"
      this.mockMvc = MockMvcBuilders.webAppContextSetup(this.wac).build()
   when: "I perform an HTTP POST /create with"
      result = this.mockMvc.perform(post("/loginaccount")
        .param('email', 'lm.test@fdmgroup.com')
        .param('password', 'coco')
        .param('login', ''))
   then: "the status of the HTTP response should be 200"
      result.andExpect(status().is(200))
    and: "I should see the view adminmain"
      result.andExpect(view().name("managerpage"))}
           
 def " shows view login"() {
   
     given: "the controller is setup"
      this.mockMvc = MockMvcBuilders.webAppContextSetup(this.wac).build()
      when: "I perform a get /"
       result = this.mockMvc.perform(get("/"))
      then: "the status of the HTTP response should be Ok (200)"
       result.andExpect(status().is(200))
      and: "I should see the view login"
       result.andExpect(view().name("login"))
    }
   
def "POST /loginaccount for not-a-registered-email error"() {
    given: "the controller is setup"
       this.mockMvc = MockMvcBuilders.webAppContextSetup(this.wac).build()
    when: "I perform an HTTP POST /create with"
       result = this.mockMvc.perform(post("/loginaccount")
        .param('email', 'lmsdfg@fdmgroup.com')
        .param('password', '1234')
        .param('login', ''))
    then: "the status of the HTTP response should be 200"
       result.andExpect(status().is(200))
    and: "I should see the view login"
    result.andExpect(view().name("login"))
    and: "the view shows error message"
    result.andExpect(model().attribute('error',is(true)))
              }
             
def "POST /loginaccount for wrong password error"() {
    given: "the controller is setup"
     this.mockMvc = MockMvcBuilders.webAppContextSetup(this.wac).build()
    when: "I perform an HTTP POST /create with"
     result = this.mockMvc.perform(post("/loginaccount")
       .param('email', 'lm@fdmgroup.com')
       .param('password', '123456')
       .param('login', ''))
    then: "the status of the HTTP response should be 200"
     result.andExpect(status().is(200))
    and: "I should see the view login"
     result.andExpect(view().name("login"))
    and: "the view shows error message"
     result.andExpect(model().attribute('error',is(true)))
}

def "/signup/ shows view signup"() {
     
     given: "the controller is setup"
      this.mockMvc = MockMvcBuilders.webAppContextSetup(this.wac).build()
     when: "I perform a get /adminpage/"
         result = this.mockMvc.perform(get("/signup/"))
     then: "the status of the HTTP response should be Ok (200)"
         result.andExpect(status().is(200))
     and: "I should see the view login"
         result.andExpect(view().name("signup"))
     
}


             
 def "POST /submitsignup"() {
      given: "the controller is setup"
       this.mockMvc = MockMvcBuilders.webAppContextSetup(this.wac).build()
      when: "I perform an HTTP POST /create with"
       result = this.mockMvc.perform(post("/signup/submitsignup/")
        .param('email', 'test@fdmgroup.com')
        .param('password', 'coco')
        .param('password2', 'coco')
        .param('add', ''))
      then: "the status of the HTTP response should be 200"
        result.andExpect(status().is(200))
      and: "I should see the view signupsuccess"
        result.andExpect(view().name("signup"))
      and: "the view shows error message"
        result.andExpect(model().attribute('error',is(true)))
                      }
         
def "POST /submitsignup password error"() {
      given: "the controller is setup"
       this.mockMvc = MockMvcBuilders.webAppContextSetup(this.wac).build()
      when: "I perform an HTTP POST /create with"
       result = this.mockMvc.perform(post("/signup/submitsignup/")
         .param('email', 'test@fdmgroup.com')
         .param('password', 'coco')
         .param('password2', 'cocco')
         .param('add', ''))
      then: "the status of the HTTP response should be 200"
       result.andExpect(status().is(200))
      and: "I should see the view signup"
       result.andExpect(view().name("signup"))
      and: "the model attribute users should have errors"
       result.andExpect(model().attributeHasErrors('user'))
      and: "the view shows error message"
       result.andExpect(model().attribute('error',is(true)))
             }
             
def "POST /submitsignup not-a-registered-email error"() {
      given: "the controller is setup"
        this.mockMvc = MockMvcBuilders.webAppContextSetup(this.wac).build()
      when: "I perform an HTTP POST /create with"
         result = this.mockMvc.perform(post("/signup/submitsignup/")
            .param('email', 'fest@fdmgroup.com')
            .param('password', 'coco')
            .param('password2', 'coco')
            .param('add', ''))
      then: "the status of the HTTP response should be 200"
          result.andExpect(status().is(200))
      and: "the model attribute users should have errors"
       result.andExpect(model().attributeHasErrors('user'))
      and: "the view shows error message"
       result.andExpect(model().attribute('error',is(true)))
                }
				def "POST /savetable for Employee"() {
					given: "the controller is setup"
					  this.mockMvc = MockMvcBuilders.webAppContextSetup(this.wac).build()
					when: "I perform an HTTP POST /create with"
					  result = this.mockMvc.perform(post("/timesheetspage/savetable/")
					   .param('tableArray', '#f4f4f4,#f4f4f4,#f4f4f4,#f4f4f4,#f4f4f4,#f4f4f4,#f4f4f4,#f4f4f4')
					   .param('tableCount', '8')
					   .param('textdate', '3/27/2019')
					   .param('username', 'test.test')
					   .param('submitTable', '')
					   .param('today', '3/27/2019')
					   )
					then: "the status of the HTTP response should be 302"
					  result.andExpect(status().is(302))
					and: "I should be redirected to URL /timesheetspage?name=test.test"
					  result.andExpect(redirectedUrl("/timesheetspage?name=test.test"))
				}

}