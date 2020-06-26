package com.intellocent.mvc.aspect;

import java.util.logging.Logger;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.aspectj.lang.reflect.MethodSignature;
import org.springframework.stereotype.Component;

@Aspect
@Component
public class ApplicationLoggingAspect {

	private Logger myLogger = Logger.getLogger(ApplicationLoggingAspect.class.toString());

	@Pointcut("execution(* com.intellocent.mvc.controller.*.*(..))")
	private void forControllerPackage() {
	}

	@Pointcut("execution(* com.intellocent.mvc.service.*.*(..))")
	private void forServicePackage() {
	}

	@Pointcut("execution(* com.intellocent.mvc.dao.*.*(..))")
	private void forDAOPackage() {
	}

	@Pointcut("forControllerPackage() || forServicePackage() || forDAOPackage()")
	private void forAppFlow() {
	}

	@Before("forAppFlow()")
	public void befor(JoinPoint theJoinPoint) {
		MethodSignature theMethod = (MethodSignature) theJoinPoint.getSignature();
		myLogger.info("====> in @Befor : Calling method: " + theMethod);

		Object[] args = theJoinPoint.getArgs();
		for (Object tempArg : args) {
			System.out.println("=====> Args : " + tempArg);
		}
	}

	@AfterReturning(pointcut = "forAppFlow()", returning = "theResult")
	public void AfterReturning(JoinPoint theJoinPoint, Object theResult) {
		String theMethod = theJoinPoint.getSignature().toShortString();
		myLogger.info("====> in @AfterReturning : Calling method: " + theMethod);
		myLogger.info("====> Result : " + theResult);
	}
}
