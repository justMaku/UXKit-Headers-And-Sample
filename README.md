# UXKitHeadersAndSample
**This sample requires having 10.10.3 beta installed.**

This is a sample project that uses new (and unfortunately private) framework that was found inside of new Photos.app in 0SX 10.10.3 seed sent out to the developers on 05.02.2015.

The headers have been dumped using class-dump utility and then slightly modified to allow it's use in our own XCode projects. 


# Worth mentioning
Please note though, that there are some missing protocol declarations so some classes interfaces had to be commented out.
One of such missing protocols were UXTableViewDataSource and UXTableViewDelegate, those two have been replaced by their UIKit counterparts and can be found in MissinTypes.h header file.

# Honorable Mentions

[Jan Klausa](https://github.com/jklausa) ([@klausa_qwpx](https://twitter.com/klausa_qwpx)) for pointing me in right direction with the UXTableView protocols

[Thomas Ricouard](https://github.com/Dimillian) ([@Dimillian](https://twitter.com/Dimillian)) for figuring out the UXCollectionView and fixing my mistakes from deep sleep deprivation coding.
