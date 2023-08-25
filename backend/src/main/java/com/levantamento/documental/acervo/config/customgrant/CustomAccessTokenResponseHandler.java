package com.levantamento.documental.acervo.config.customgrant;
/*
import com.levantamento.documental.acervo.entities.User;
import com.levantamento.documental.acervo.repositories.UserRepository;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.http.converter.HttpMessageConverter;
import org.springframework.http.server.ServletServerHttpResponse;
import org.springframework.security.core.Authentication;
import org.springframework.security.oauth2.core.OAuth2AccessToken;
import org.springframework.security.oauth2.core.OAuth2RefreshToken;
import org.springframework.security.oauth2.core.endpoint.OAuth2AccessTokenResponse;
import org.springframework.security.oauth2.core.http.converter.OAuth2AccessTokenResponseHttpMessageConverter;
import org.springframework.security.oauth2.server.authorization.authentication.OAuth2AccessTokenAuthenticationToken;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.util.CollectionUtils;

import java.io.IOException;
import java.time.temporal.ChronoUnit;
import java.util.HashMap;
import java.util.Map;


public class CustomAccessTokenResponseHandler implements AuthenticationSuccessHandler {

    private UserRepository userRepository;

    public CustomAccessTokenResponseHandler(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    private final HttpMessageConverter<OAuth2AccessTokenResponse> httpMessageConverter = new OAuth2AccessTokenResponseHttpMessageConverter();

    @Override
    public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
                                        Authentication authentication) throws IOException, ServletException {

        OAuth2AccessTokenAuthenticationToken accessTokenAuthentication = (OAuth2AccessTokenAuthenticationToken) authentication;

        OAuth2AccessToken accessToken = accessTokenAuthentication.getAccessToken();
        OAuth2RefreshToken refreshToken = accessTokenAuthentication.getRefreshToken();
        Map<String, Object> additionalParameters = accessTokenAuthentication.getAdditionalParameters();

        OAuth2AccessTokenResponse.Builder builder =
                OAuth2AccessTokenResponse.withToken(accessToken.getTokenValue())
                        .tokenType(accessToken.getTokenType())
                        .scopes(accessToken.getScopes());

        if (accessToken.getIssuedAt() != null && accessToken.getExpiresAt() != null) {
            builder.expiresIn(ChronoUnit.SECONDS.between(accessToken.getIssuedAt(), accessToken.getExpiresAt()));
        }
        if (refreshToken != null) {
            builder.refreshToken(refreshToken.getTokenValue());
        }
        if (!CollectionUtils.isEmpty(additionalParameters)) {
            builder.additionalParameters(additionalParameters);
        }

        Map<String, Object> successCodeMessageMap = getSuccessCodeMessageMap(additionalParameters, request);
        OAuth2AccessTokenResponse accessTokenResponse = builder.additionalParameters(successCodeMessageMap).build();

        ServletServerHttpResponse httpResponse = new ServletServerHttpResponse(response);
        httpMessageConverter.write(accessTokenResponse, null, httpResponse);
    }

    private Map<String, Object> getSuccessCodeMessageMap(Map<String, Object> additionalParameters, HttpServletRequest request) {
        User user = userRepository.findByEmail(request.getParameter("username"));

        Map<String, Object> successCodeMessageMap = new HashMap<>();
        successCodeMessageMap.putAll(additionalParameters);

        successCodeMessageMap.put("firstname", user.getFirstname());


        return successCodeMessageMap;
    }
}*/
