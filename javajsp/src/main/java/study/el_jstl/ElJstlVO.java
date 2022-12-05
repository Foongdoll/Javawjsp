package study.el_jstl;

public class ElJstlVO {
	private String atom;
	private String name;
	private int su1;
	private int su2;
	
	public String getAtom() {
		return atom;
	}
	public void setAtom(String atom) {
		this.atom = atom;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getSu1() {
		return su1;
	}
	public void setSu1(int su1) {
		this.su1 = su1;
	}
	public int getSu2() {
		return su2;
	}
	public void setSu2(int su2) {
		this.su2 = su2;
	}
	@Override
	public String toString() {
		return "ElJstlVO [atom=" + atom + ", name=" + name + ", su1=" + su1 + ", su2=" + su2 + "]";
	}
}
