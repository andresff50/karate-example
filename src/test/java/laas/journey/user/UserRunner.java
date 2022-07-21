package laas.journey.user;

import com.intuit.karate.junit5.Karate;

class UserRunner {

    @Karate.Test
    Karate testSample() {
        return Karate.run("user-get").relativeTo(getClass());
    }

    /*@Karate.Test
    Karate testAll() {
        return Karate.run().relativeTo(getClass());
    }*/
}
