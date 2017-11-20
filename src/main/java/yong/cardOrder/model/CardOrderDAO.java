package yong.cardOrder.model;

public interface CardOrderDAO {
	public int Order(CardOrderDTO dto);
	public CardOrderDTO cardoder(String name);
	public void mobileup(String idx, String name);
}