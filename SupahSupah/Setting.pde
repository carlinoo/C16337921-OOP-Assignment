// This class will represent the settings of the machine

class Setting {
 private boolean hidden = true;
 Modal modal;
 
 Setting() {
   modal = new Modal(50, 50, width - 100, height - 100);
   modal.set_text("© 2017-2018 CARLOS GONZALEZ - C16337921 ALL RIGHTS RESERVED");
   modal.set_text("Contact me on:");
   modal.set_text("\t Email: carlinoo@icloud.com");
   modal.set_text("\t LinkedIn: Carlos Gonzalez");
   modal.set_text("\n To add more battery, you only need to re-charge it");
 }
}