/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.quiz;

import java.util.ArrayList;
import java.util.Collections;


/**
 *
 * @author Positivo
 */
public class Bd {
    private static ArrayList<Usuario> users;

    public static ArrayList<Usuario> getUsuario(){
        if(users == null){
            users = new ArrayList<>();
            Usuario user = new Usuario("EduardoSimao", "1234");
            users.add(user);
        }
        return users;
    }

    public static ArrayList<Question> getBioTest() {
        ArrayList<Question> test = new ArrayList<>();
        test.add(new Question("1Qual desses é um mámifero?", "Ornitorrinco", new String[]{"Tubarão Branco", "Ornitorrinco", "Pato"}));
        test.add(new Question("2Qual desses é um mámifero?", "Ornitorrinco", new String[]{"Tubarão Branco", "Ornitorrinco", "Pato"}));
        test.add(new Question("3Qual desses é um mámifero?", "Ornitorrinco", new String[]{"Tubarão Branco", "Ornitorrinco", "Pato"}));
        test.add(new Question("4Qual desses é um mámifero?", "Ornitorrinco", new String[]{"Tubarão Branco", "Ornitorrinco", "Pato"}));
        test.add(new Question("5Qual desses é um mámifero?", "Ornitorrinco", new String[]{"Tubarão Branco", "Ornitorrinco", "Pato"}));
        test.add(new Question("6Qual desses é um mámifero?", "Ornitorrinco", new String[]{"Tubarão Branco", "Ornitorrinco", "Pato"}));
        test.add(new Question("7Qual desses é um mámifero?", "Ornitorrinco", new String[]{"Tubarão Branco", "Ornitorrinco", "Pato"}));
        test.add(new Question("8Qual desses é um mámifero?", "Ornitorrinco", new String[]{"Tubarão Branco", "Ornitorrinco", "Pato"}));
        test.add(new Question("9Qual desses é um mámifero?", "Ornitorrinco", new String[]{"Tubarão Branco", "Ornitorrinco", "Pato"}));
        test.add(new Question("0Qual desses é um mámifero?", "Ornitorrinco", new String[]{"Tubarão Branco", "Ornitorrinco", "Pato"}));
        test.add(new Question("11Qual desses é um mámifero?", "Ornitorrinco", new String[]{"Tubarão Branco", "Ornitorrinco", "Pato"}));
        test.add(new Question("12Qual desses é um mámifero?", "Ornitorrinco", new String[]{"Tubarão Branco", "Ornitorrinco", "Pato"}));
        test.add(new Question("13Qual desses é um mámifero?", "Ornitorrinco", new String[]{"Tubarão Branco", "Ornitorrinco", "Pato"}));
        test.add(new Question("14Qual desses é um mámifero?", "Ornitorrinco", new String[]{"Tubarão Branco", "Ornitorrinco", "Pato"}));
        test.add(new Question("15Qual desses é um mámifero?", "Ornitorrinco", new String[]{"Tubarão Branco", "Ornitorrinco", "Pato"}));
        Collections.shuffle(test);
        return test;
    }
}
