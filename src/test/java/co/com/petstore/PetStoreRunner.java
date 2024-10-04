package co.com.petstore;

import com.intuit.karate.junit5.Karate;

public class PetStoreRunner {

    @Karate.Test
    Karate testAll() {
        return Karate.run("petstore").relativeTo(getClass());
    }


}
