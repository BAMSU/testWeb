package yong.card.model;

import java.util.List;


public interface CardDAO {
	public List<CardDTO> cardList(int cp, int listSize, int type);
	public int getTotalCnt();
	public CardDTO cardSer(int idx);
}
