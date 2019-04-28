/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.quiz;

import java.util.*;

/**
 *
 * @author davil
 */
public class Banco {
    public static HashMap<Integer, Object> getMathQuiz(){
        /*O HashMap funciona como um token que contém uma chave(key) e um valor(value);
          Foi criado um token="quiz" que contem uma chave=INTEGER com valor=OBJECT;
        */
        HashMap<Integer, Object> quiz = new HashMap<Integer, Object>();
        //O metodo .put() vai inserir a key e o value ao token
        quiz.put(1, new Pergunta("1+1","2",new String[]{"1","2","3"}));
        quiz.put(2, new Pergunta("1+1","2",new String[]{"1","2","3"}));
        quiz.put(3, new Pergunta("1+1","2",new String[]{"1","2","3"}));
        
        return quiz;
    }
}
