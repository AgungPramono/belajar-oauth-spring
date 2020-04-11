package com.agung.belajar.oauth.authserver;

import org.junit.Assert;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@SpringBootTest
class AuthServerApplicationTests {

	@Test
	public void createEncrypPswd(){
		String staffpswd = "staf123";
		String resultStaff = new BCryptPasswordEncoder().encode(staffpswd);
		Assert.assertNotNull(resultStaff);
		System.out.println(resultStaff);


		String adminPswd = "admin123";
		String resultAdmin = new BCryptPasswordEncoder().encode(adminPswd);
		Assert.assertNotNull(resultAdmin);
		System.out.println(resultAdmin);

	}

}
