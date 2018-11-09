/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.quiz;

import java.util.ArrayList;

/**
 *
 * @author Positivo
 */
public class Bd {
    public static ArrayList<Usuario> getUsuario(){
       ArrayList<Usuario> user = new ArrayList<>();
        user.add(new Usuario("EduardoSimao", "1234"));
       
       return user;
   }
   public static ArrayList<Question> getBioTest() {
       ArrayList<Question> test = new ArrayList<>();
       test.add(new Question("Qual desses é um mámifero?","Ornitorrinco", new String[]{"Tubarão Branco","Ornitorrinco","Pato"}));
       test.add(new Question("Qual desses é um mámifero?","Ornitorrinco", new String[]{"Tubarão Branco","Ornitorrinco","Pato"}));
       test.add(new Question("Qual desses é um mámifero?","Ornitorrinco", new String[]{"Tubarão Branco","Ornitorrinco","Pato"}));
       test.add(new Question("Qual desses é um mámifero?","Ornitorrinco", new String[]{"Tubarão Branco","Ornitorrinco","Pato"}));
       test.add(new Question("Qual desses é um mámifero?","Ornitorrinco", new String[]{"Tubarão Branco","Ornitorrinco","Pato"}));
       test.add(new Question("Qual desses é um mámifero?","Ornitorrinco", new String[]{"Tubarão Branco","Ornitorrinco","Pato"}));
       test.add(new Question("Qual desses é um mámifero?","Ornitorrinco", new String[]{"Tubarão Branco","Ornitorrinco","Pato"}));
       test.add(new Question("Qual desses é um mámifero?","Ornitorrinco", new String[]{"Tubarão Branco","Ornitorrinco","Pato"}));
       test.add(new Question("Qual desses é um mámifero?","Ornitorrinco", new String[]{"Tubarão Branco","Ornitorrinco","Pato"}));
       test.add(new Question("Qual desses é um mámifero?","Ornitorrinco", new String[]{"Tubarão Branco","Ornitorrinco","Pato"}));
       return test;
   }
}
