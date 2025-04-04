package com.BookYourCab.CarBookingApp.Controller;

import com.BookYourCab.CarBookingApp.Dto.OnBoardDriverDto;
import com.BookYourCab.CarBookingApp.Dto.SignupDto;
import com.BookYourCab.CarBookingApp.Entity.User;
import com.BookYourCab.CarBookingApp.Entity.enums.Roles;
import com.BookYourCab.CarBookingApp.Repository.RiderRepository;
import com.BookYourCab.CarBookingApp.Repository.UserRepository;
import com.BookYourCab.CarBookingApp.TestContainerConfiguration;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.reactive.AutoConfigureWebTestClient;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.context.annotation.Import;
import org.springframework.test.web.reactive.server.WebTestClient;

import java.util.Set;

@AutoConfigureWebTestClient(timeout = "100000")
@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
@Import(TestContainerConfiguration.class)
class AuthControllerTest {

    @Autowired
    private WebTestClient webTestClient;

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private RiderRepository riderRepository;

    private User user;

    @BeforeEach
    void setUpEach() {
        user = new User();
        user.setId(1L);
        user.setEmail("test@example.com");
        user.setPassword("password");
        user.setRoles(Set.of(Roles.RIDER));
    }

    @Test
    void testSignUp_success() {
        SignupDto signupDto = new SignupDto();
        signupDto.setEmail("test@example.com");
        signupDto.setName("Test name");
        signupDto.setPassword("password");

        webTestClient.post()
                .uri("/auth/signup")
                .bodyValue(signupDto)
                .exchange()
                .expectStatus().isCreated()
                .expectBody()
                .jsonPath("$.data.email").isEqualTo(signupDto.getEmail())
                .jsonPath("$.data.name").isEqualTo(signupDto.getName());
    }

//        @Test
//    @WithUserDetails("admin@gmail.com")
    void testOnboardDriver_success() {

        if (!userRepository.existsById(1L)) {
            userRepository.save(user);
        }

        OnBoardDriverDto onBoardDriverDto = new OnBoardDriverDto();
        onBoardDriverDto.setVehicleId("ABC123");

        webTestClient
                .post()
                .uri("/auth/onBoardNewDriver/1")
                .bodyValue(onBoardDriverDto)
                .exchange()
                .expectStatus().isCreated();
    }
}
