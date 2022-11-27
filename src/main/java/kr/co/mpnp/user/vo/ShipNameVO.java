package kr.co.mpnp.user.vo;

public class ShipNameVO {
	 private String name,id,desId;

	public ShipNameVO() {
	}

	public ShipNameVO(String name, String id, String desId) {
		this.name = name;
		this.id = id;
		this.desId = desId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getDesId() {
		return desId;
	}

	public void setDesId(String desId) {
		this.desId = desId;
	}

	@Override
	public String toString() {
		return "ShipNameVO [name=" + name + ", id=" + id + ", desId=" + desId + "]";
	}

	 

}
