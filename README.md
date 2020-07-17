# LJUserDefaultsUtils

=================
![alt text](/LJUser.jpg)

Why UserDefaults? Because sometimes we need to save a small amount of data like a setting, status, or a record in our app and we can use this in the place of Core Data.

`LJUserDefaultsUtils` is a singleton instance and can thus be called in your code safely from wherever you need to. This can support saving data types like Bool, Dictionary, Int, String, Data, andArray .


- - - 

## Installing the library

To use the library, just add the dependency to your `Podfile`:

```ruby
platform :ios
pod 'LJUserDefaultsUtils'
```

Run `pod install` to install the dependencies.


## When to Use UserDefaults

The user defaults are best used for simple pieces of data. If you need to store multiple objects of the same type it’s smarter to use an actual database, like Realm. Database design is an important aspect of the architecture of your app.

Good use cases for UserDefaults are:

   -  User information, like name, email address, age, occupation
   -  App settings, like user interface language, app color theme or “detailed vs. simple UI”
   -  Flags, more on this later


## Usage

`LJUserDefaultsUtils` provides APIs for the following tasks:

- Saving data types like `Bool, Dictionary, Int, String, Data, Array`

      import LJUserDefaultsUtils
      
      let UserDefaults = UserDefaultsUtils()


### Saving string

      UserDefaults.saveStringData(data: "Linto", dataName: "UserName")

### Retrieving string

    UserDefaults.getSavedStringData(dataName: "UserName")
    
### Saving Boolean value

    UserDefaults.setBoolData(boolValue: true, dataName: "loginCheck")
    
### Retrieving Boolean value
    UserDefaults.getBoolData(dataName: "loginCheck")

## License

Usage is provided under the [MIT License](http://opensource.org/licenses/mit-license.php).  See LICENSE for the full details.

## Contributions

All contributions are welcome. Please fork the project to add functionalities and submit a pull request to merge them in next releases.
