package dev.srivatsan.employee.config;

import jakarta.annotation.PostConstruct;
import lombok.Data;
import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

@Data
@Slf4j
@Component
@ConfigurationProperties(prefix = "global")
public class AppConfig {

    private boolean debugModeEnabled;

    @PostConstruct
    public void initialize() {
        log.info("Application Config : {}", this);
    }

}