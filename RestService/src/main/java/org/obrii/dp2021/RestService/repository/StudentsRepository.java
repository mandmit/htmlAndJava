/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.obrii.dp2021.RestService.repository;

import java.util.List;
import org.obrii.dp2021.RestService.entity.Student;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

/**
 *
 * @author Дмитрий
 */
@RepositoryRestResource(collectionResourceRel="student", path="student")
public interface StudentsRepository extends PagingAndSortingRepository<Student,Long>{
    List<Student> findByName(@Param("name") String name);
}
