package dev.project.employee.aop;

import lombok.extern.slf4j.Slf4j;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.*;
import org.springframework.stereotype.Component;

import java.util.Arrays;

@Slf4j
@Aspect
@Component
public class LoggingAspect {

    @Pointcut("execution(* dev.project.employee.service.EmployeeService.*(..))")
    public void allServiceMethods() {
    }

    @Before("allServiceMethods()")
    public void logBefore(JoinPoint joinPoint) {
        Object[] args = joinPoint.getArgs();
        if (args.length > 0) {
            log.info("Method: '{}' called, Method parameters: '{}'. ", joinPoint.getSignature().getName(), Arrays.toString(args));
        } else {
            log.info("Method '{}' called with no Method Parameters.", joinPoint.getSignature().getName());
        }
    }

    @AfterReturning(pointcut = "allServiceMethods()", returning = "value")
    public void logReturn(JoinPoint joinPoint, Object value) {
        if (value != null) {
            log.info("Method: '{}', returned with value: {}", joinPoint.getSignature().getName(), value);
        } else {
            log.info("Method: '{}', completed with no return value.", joinPoint.getSignature().getName());
        }
    }

    @AfterThrowing(pointcut = "allServiceMethods()", throwing = "ex")
    public void logException(Exception ex) {
        log.info("Exception message: {}", ex.getMessage());
    }

}
