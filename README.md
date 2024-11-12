# VIVIDUS Training: Practice Part 2

## Write a Simple Web Scenario

1. In your local repo switch to branch "02_task_Simple_Web_Scenario" and continue your work in it.

1. Rename the /properties/environment/saucedemo package to the /properties/environment/saucedemo_{yourSurname} (e.g.  "saucedemo_Ivanov"). Then update the environment reference in the configuration.properties file to match the new package name.

1. Meet the following preconditions:

    - Put your scenario into the Task_2.story file.

    - Use the login credentials defined as global variables in the file environment/saucedemo/environment.properties. Use the "good" user for this scenario.

   - Note that `Homepage_Demo.story` will be executed as a precondition to your Task_2.story file. The required syntax is already added to the .story file. For more info on this jbehave feature, visit the link https://jbehave.org/reference/latest/given-stories.html

1. Create a simple login scenario for the SauceDemo website that does the following: <br />

    - 4.1 Validate that the expected page loads after login. <br />

    - 4.2 Validate that there are six inventory items on the loaded page. <br />

    - 4.3 Take a screenshot of the loaded page. <br />

1. Run the resulting story on your local machine using the configuration from the suite.training file. Use the overriding.properties file to set the correct path for the suite.

    - 4.1 Make sure your test script validates the following:

       - The user logs in and navigates to the /inventory.html page.

       - Six inventory items are displayed on the /inventory.html page.

    - 4.2 Replace the "good" user with a "locked" user and rerun your script.

    - 4.3 Review the resulting Allure report. The validations mentioned in Item 4.1 should fail because the "locked" user cannot go beyond the login screen.

    - 4.4 Create two entries in the `known-issues.json` file labeled "BUG-001" and "BUG-002" to mark the above failures as "known issues" in the report.

1. Rerun the story as a "locked" user and ensure that there are no failed (red-colored) test cases in the Allure report this time.

1. Zip the second Allure report, which contains the known issues marked accordingly, and then upload the zipped file to the designated practical task page in the course. Your mentor will review it once you submit all the tasks.

1. Once the task is completed, make sure to commit all your local changes with commit message "{yourSurname}" to your current local branch.
