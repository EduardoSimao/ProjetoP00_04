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
        test.add(new Question("Qual desses é um mámifero?", "Ornitorrinco", new String[]{"Tubarão Branco", "Ornitorrinco", "Pato"}));
        test.add(new Question("Como são chamados os animais que se alimentam de vários alimentos como ervas, carnes, e outros alimentos?", "Onivoros", new String[]{"Carnivoros", "Herbivoros", "Onivoros"}));
        test.add(new Question("Qual é o único mamífero que voa?", "Morcego", new String[]{"Morcego", "Pinguim", "Pato"}));
        test.add(new Question("As cascavéis possuem no fim de sua cauda um chocalho, que ao sentir-se ameaçada balança-o fazendo um grande barulho, este chocalho é formado por:", "O chocalho é formado por pele morta, cada vez que a serpente troca de pele forma um novo guizo em seu chocalho.", new String[]{"Ao passar do tempo a cauda se engrossa cada vez mais e forma o chocalho.", "O chocalho é formado por pele morta, cada vez que a serpente troca de pele forma um novo guizo em seu chocalho.", "A serpente já nasce com esse chocalho, ele se forma juntamente com ela dentro do ovo materno."}));
        test.add(new Question("Ao morrer um elefante em um bando, os demais elefantes acariciam o corpo ou os ossos do elefante morto em sinal de tristeza. Verdadeiro ou Falso?", "Verdadeiro", new String[]{"Verdadeiro", "Falso", "Não sei"}));
        test.add(new Question("Qual destas sequencias está correta?", "Urso-pardo, Golfinho, Morcego", new String[]{"Tartarugas, Serpentes, Tigre", "Urso-pardo, Golfinho, Morcego", "Sardinha, Sapo, Lagartixa"}));
        test.add(new Question("O que significa dizer que um animal é ovovivíparo?", "Quer dizer que o animal nasce de um ovo, mas este ovo permanece no corpo da fêmea até o nascimento.", new String[]{"Quer dizer que o animal nasce de um ovo, mas este ovo permanece no corpo da fêmea até o nascimento.", "Quer dizer que este animal vive comendo ovos, ou seja, se alimenta somente de ovos.", "Os filhotes se desenvolvem dentro do corpo da fêmea e, após este desenvolvimento eles nascem."}));
        test.add(new Question("Os animais que não possuem ossos são chamados de:", "Invertebrados", new String[]{"Vertebrados", "Ossíodes", "Invertebrados"}));
        test.add(new Question("As baleias e os golfinhos são peixes. Verdadeiro ou Falso?", "Falso", new String[]{"Verdadeiro", "Falso", "Não sei"}));
        test.add(new Question("Marque a alternativa correta:", "Os anfíbios possuem dentes de pequeno tamanho", new String[]{"Todos os répteis são venenosos", "Os anfíbios possuem dentes de pequeno tamanho", "Todas as aves voam"}));
        test.add(new Question("Qual desses felinos não se encontra no Brasil?", "Guepardo", new String[]{"Onça", "Guepardo", "Pantera"}));
        test.add(new Question("Qual dessas alternativas é um aracnídeo?", "Escorpião", new String[]{"Borboleta ", "Barata", "Escorpião"}));
        test.add(new Question("Responda a alternativa que diga todos os tipos de animais vertebrados:", "Mamíferos, aves, répteis, peixes, anfíbios", new String[]{"Platelmintes e peixes", "Mamíferos, aves, répteis, peixes, anfíbios", "Mamíferos, poríferos, celenterados"}));
        test.add(new Question("Qual dessas cobras consegue engolir um ser humano?", "Sucuri", new String[]{"Jararaca ", "Coral-verdadeira", "Sucuri"}));
        test.add(new Question("Qual dessas alternativas não é peixe?", "Ostra", new String[]{"Sardinha ", "Ostra", "Salmão"}));
        Collections.shuffle(test);
        return test;
    }
}
