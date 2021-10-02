/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.obrii.mit.dp2021.manilo.javaproject1.springCrud;

import org.springframework.data.repository.CrudRepository;

/**
 *
 * @author Дмитрий
 */
public interface SpringInterface extends CrudRepository<Users , Integer> {
    
}
