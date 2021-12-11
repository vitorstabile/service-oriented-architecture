package com.myclass;

import org.apache.synapse.MessageContext;
import org.apache.synapse.mediators.AbstractMediator;

public class ClassPost extends AbstractMediator {

	public boolean mediate(MessageContext arg0) {

		String nome = (String) arg0.getProperty("AddClienteOpNome");
        System.out.println("Conteudo da Tag <nome></nome> : " + nome);
        
        nome = nome + "-AMA";
        
        System.out.println("Conteudo da Tag <nome></nome> ALTERADO : " + nome);
        
        arg0.setProperty("novoValor", nome);
		
		return true;
	}

}