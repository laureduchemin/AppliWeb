package Test.ressources;
import com.ressources.*;
import junit.framework.TestCase;
import static org.junit.Assert.*;
public class HibernateUtilTest extends TestCase {
	public final void testGetChat(){
		assertNotNull(HibernateUtil.getChat("Snowball"));
	}
}
