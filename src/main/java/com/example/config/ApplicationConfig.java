package com.example.config;

import io.swagger.v3.jaxrs2.integration.resources.OpenApiResource;
import io.swagger.v3.oas.annotations.OpenAPIDefinition;
import io.swagger.v3.oas.annotations.info.Info;

import java.util.HashSet;
import java.util.Set;

import jakarta.ws.rs.ApplicationPath;
import jakarta.ws.rs.core.Application;

@OpenAPIDefinition(info = @Info(title = "My API", version = "v1"))
@ApplicationPath("/api") // 设置API根路径
public class ApplicationConfig extends Application {

	@Override
	public Set<Class<?>> getClasses() {
		Set<Class<?>> classes = new HashSet<>();
		classes.add(OpenApiResource.class); // 确保加入 OpenApiResource 来处理 /v3/api-docs 路径
		classes.add(com.example.service.UserService.class); // 加入你的服务类
		return classes;
	}
}
