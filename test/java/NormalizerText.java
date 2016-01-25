import java.text.Normalizer;

public class NormalizerTest {
	private void printIt(String string) {
		System.out.println(string);
		for (int i = 0; i < string.length(); i++) {
			System.out.println(string.format("U+%4X , ", string.codePointAt(i));
		}
		System.out.println();
	}
	public static void Main(String args) {
		String ui = "위";
		printIt(ui);
		String nfd = Normailizer.normalizer(ui, Normalizer.Form.NFD);
		printIt(nfd);
		String nfc = Normailizer.normalizer(nfd, Normalizer.Form.NFC);
		printIt(nfc);
	}
}
