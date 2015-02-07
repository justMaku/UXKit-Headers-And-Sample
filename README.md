# UXKitHeadersAndSample
This sample **does not** require having 10.10.3 beta installed. However, the framework binary itself is code-stripped and has modified `LC_ID_DYLIB` section, to make it possible to run it without 10.10.3 installed.

This is a sample project that uses new (and unfortunately private) framework that was found inside of new Photos.app in OSX 10.10.3 seed sent out to the developers on 05.02.2015.

The headers have been dumped using class-dump utility and then slightly modified to allow it's use in our own Xcode projects. 


# Notes
Please note though, that there are some missing protocol declarations so some classes interfaces had to be commented out.
One of such missing protocols were UXTableViewDataSource and UXTableViewDelegate, those two have been replaced by their UIKit counterparts and can be found in MissingTypes.h header file.

# @TODO:
* Clean the headers so they use the correct types (ie: animated:(BOOL)animated instead of animated(id):arg2)
* Check the possible enum values for UXBarButton withStyle etc
* Maybe get the Split View Controller working?

# Honorable Mentions

[Jan Klausa](https://github.com/jklausa) ([@klausa_qwpx](https://twitter.com/klausa_qwpx)) for pointing me in right direction with the UXTableView protocols and framework binary magic.

[Thomas Ricouard](https://github.com/Dimillian) ([@Dimillian](https://twitter.com/Dimillian)) for figuring out the UXCollectionView and fixing my mistakes from deep sleep deprivation coding.
