package laas.servicepaths.inventory;

import com.intuit.karate.junit5.Karate;

public class DummyRunner {

    @Karate.Test
    Karate testAll() {
        return Karate.run().relativeTo(getClass());
    }
}
