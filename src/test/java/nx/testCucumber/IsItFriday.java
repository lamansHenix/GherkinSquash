package nx.testCucumber;

import static org.junit.Assert.assertEquals;

import io.cucumber.java.en.Then;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.When;

public class IsItFriday {
    private String today;
    private String actualAnswer;

    private static String isItFriday(String today) {
        if (today != "Friday"){
            return "Nope";
        }
        return null;
    }

    @Given("^today is Sunday$")
    public void today_is_Sunday()  {
        today = "Sunday";
    }

    @When("^I ask whether it's Friday yet$")
    public void i_ask_whether_it_s_Friday_yet()  {
        actualAnswer = IsItFriday.isItFriday(today);
    }

    @Then("^I should be told \"([^\"]*)\"$")
    public void i_should_be_told(String expectedAnswer) {
        assertEquals(expectedAnswer, actualAnswer);
       System.out.println("FRIDAYYY");
    }
}
