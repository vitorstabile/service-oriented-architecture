package com.myclass;

import org.apache.synapse.MessageContext;
import org.apache.synapse.mediators.AbstractMediator;

public class ClassPost extends AbstractMediator {

	public boolean mediate(MessageContext arg0) {
		System.out.println("===============Passando pela Classe ClassPost============================");
		return true;
	}

}
