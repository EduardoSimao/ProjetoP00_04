package br.com.fatecpg.quiz;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author mateus
 */
public class Usuario {
    
    private String name;

    public Usuario(String name) {
        this.setUsuario(name);
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
    
    public void setUsuario(String name) {
        this.name = name;
    }
    
}
