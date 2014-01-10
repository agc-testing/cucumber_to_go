//Given("I have entered the SDK")
public void enterSDK() throws UiObjectNotFoundException, IOException {
  //use to access SDK app

  try {
    getUiDevice().wakeUp();
  } catch (RemoteException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
  }


  getUiDevice().pressHome();

  UiObject allAppsButton = new UiObject(new UiSelector().description("Apps"));

  allAppsButton.clickAndWaitForNewWindow();

  UiObject appsTab = new UiObject(new UiSelector().text("Apps"));

  appsTab.click();

  UiScrollable appViews = new UiScrollable(new UiSelector().scrollable(true));

  appViews.setAsHorizontalList();

  UiObject settingsApp = appViews.getChildByText(new UiSelector().className(android.widget.TextView.class.getName()),"Photo Effects Demo");
  settingsApp.clickAndWaitForNewWindow();


  UiObject nextImage = new UiObject(new UiSelector().text("Next Image"));

  nextImage.click();

  UiObject useImage = new UiObject(new UiSelector().text("Use Image"));

  useImage.click();

  screenShot("entered_sdk");

}


//When("I select (.*) crop 2 times")
public void selectCrop(String wCrop) throws UiObjectNotFoundException, InterruptedException {

  String mode = wCrop + " Crop";

  UiObject cropMode = new UiObject(new UiSelector().description(mode));
  cropMode.click();

  screenShot("crop_button_" + mode);

}
