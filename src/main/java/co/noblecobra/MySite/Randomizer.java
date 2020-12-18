package co.noblecobra.MySite;

import java.util.*;

public class Randomizer {
	
	public <T> T randList(List<T> L) {
		int rand = (int) (Math.random()*(L.size()));
		T r = L.get(rand);
		return r;
	}
	
	public int rollDice(int sides) {
		int rand = (int) (Math.random()*(sides));
		return rand;
	}
	
	public <T> List<T> listRandList(List<T> L, int num){
		List<T> newList = new ArrayList<>();
		
		for(int i = 0; i<num; i++) {
		int r = rollDice(L.size());
		newList.add(L.get(r));
		}
		return newList;
	}
}
