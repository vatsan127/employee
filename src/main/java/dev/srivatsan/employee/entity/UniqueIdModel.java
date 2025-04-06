package dev.srivatsan.employee.entity;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;

@JsonIdentityInfo( // To avoid infinite recursion during serialization
        generator = ObjectIdGenerators.PropertyGenerator.class,
        property = "id")
public class UniqueIdModel {
}
