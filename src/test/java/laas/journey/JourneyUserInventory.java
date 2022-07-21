package laas.journey;

import com.intuit.karate.junit5.Karate;

public class JourneyUserInventory {

    @Karate.Test
    Karate testSample() {
        return Karate.run("journey_user_json").relativeTo(getClass());
    }
}
