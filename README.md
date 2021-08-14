<!-- PROJECT LOGO -->
<br />

![GitHub repo size](https://img.shields.io/github/repo-size/dylandasilva1999/plantly-ios-app?color=%2330975B)
![GitHub watchers](https://img.shields.io/github/watchers/dylandasilva1999/plantly-ios-app?color=%2330975B)
![GitHub language count](https://img.shields.io/github/languages/count/dylandasilva1999/plantly-ios-app?color=%2330975B)
![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/dylandasilva1999/plantly-ios-app?color=%2330975B)
[![LinkedIn][linkedin-shield]][linkedin-url]

<h6 align="center">Dylan da Silva iOS 303</h6>
<p align="center">
</br>
   
  <a href="https://github.com/dylandasilva1999/plantly-ios-app">
    <img src="Images/App Icon.png" alt="Logo" width="140" height="140">
  </a>
  
  <h3 align="center">Plantly</h3>

  <p align="center">
    Plant Care Application <br>
      <a href="https://github.com/dylandasilva1999/plantly-ios-app"><strong>Explore the docs »</strong></a>
   <br />
   <br />
   <a href="">View Demo</a>
    ·
    <a href="https://github.com/dylandasilva1999/plantly-ios-app/issues">Report Bug</a>
    ·
    <a href="https://github.com/dylandasilva1999/plantly-ios-app/issues">Request Feature</a>
  </p>

<!-- TABLE OF CONTENTS -->
## Table of Contents

* [About the Project](#about-the-project)
* * [Project Description](#project-description)
  * [Built with](#built-with)
* [Getting Started](#getting-started)
  * [Prerequisites](#prerequisites)
  * [Installation](#installation)
* [Features and Functionality](#features-and-functionality)
   * [Features](#features)
   * [Functionality](#functionality)
* [Concept Process](#concept-process)
   * [Ideation](#ideation)
   * [Wireframes](#wireframes)
   * [User-flow](#user-flow)
* [Development Process](#development-process)
   * [Implementation](#implementation)
* [Mockups](#mockups)
* [Video Demonstration](#video-demonstration)
* [Roadmap](#roadmap)
* [Contributing](#contributing)
* [License](#license)
* [Contact](#contact)
* [Acknowledgements](#acknowledgements)

<!--PROJECT DESCRIPTION-->
## About the Project

![image1][image1]

### Project Description

Research that emerged in 2014, that was very interesting was posted on The World in 2014, with the title “New research on plant intelligence may forever change how you think about plants” by Science Friday. There was stated that “Pollan says plants have all the same senses as humans, and then some. In addition to hearing, taste, for example, they can sense gravity, the presence of water, or even feel that an obstruction is in the way of its roots, before coming into contact with it.”

This essentially states that plants have forms of emotion, and having an app to tell you exactly how to take care of a plant is important. According to an article by Crazy Critters in 2020 “70,000 PLANT SPECIES ARE UTILIZED FOR MEDICINE” which means taking care of plants save people and patients.

Plantly is an interactive plant care mobile application for those who need knowledge on plants and a guide to gardening success.

### Built With

* [Swift](https://swift.org/)
* [SwiftUI](https://developer.apple.com/xcode/swiftui/#:~:text=SwiftUI%20helps%20you%20build%20great,set%20of%20tools%20and%20APIs.)
* [GitHub](https://github.com/)

<img src="https://images.ctfassets.net/yr4qj72ki4ky/legacyBlogPost670Thumbnail/93e6c8af94bd3aef65a7efdaaeb522f3/img.png" width="5%" height="5%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="https://www.swiftbysundell.com/images/discover/swiftui/icon.png" width="5%" height="5%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="https://upload.wikimedia.org/wikipedia/commons/9/91/Octicons-mark-github.svg" width="5%" height="5%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

<!-- GETTING STARTED -->
## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

Requires iOS 13 and Xcode 11

### Installation

1. In Xcode go to
  ```sh
  File -> Swift Packages -> Add Package Dependency
  ```
2. and paste in the repo's url:
`https://github.com/ClaudiaAF/Alchemist`

<!-- FEATURES AND FUNCTIONALITY-->
## Features and Functionality

### Features

![image2][image2]
### Customised Onboarding
A full onboarding to assist the user in understanding the app features and functionality.

### Plant Tips
A plant tips slider on the dashboard that shuffle daily tips on growing plants.

![image3][image3]
### Multiple Plant Categories
Mutliple plant categories to make is easier for the user.

![image4][image4]
### Individual Plant Details
View a list of plants, and click on them to go to an individual details view.

![image5][image5]
### Custom Menu
Customised menu that shows a preview of the current screen.

### Reset Settings
Ability to reset settings to default.

### Search Bar
Search bar on each plant list screen. The ability to search by name or type of plant.

### Functionality

* `@AppStorage` utilised for the onboarding, holding the value of the current page.
* `@AppStorage` utilised for the onboarding, whether the user has done the onboarding.
* `@State` used for holding the "index" of all pages for the menu, and "show" for when to display the view.
* `ScrollView` and `LazyVStack` used for the list of plants.
* `GeometryReader` utilised to create a customised plant tips scroll animation.
* `@Binding` utilised for holding the value typed in the search bar, and if the user is typing in the search bar.

<!-- CONCEPT PROCESS -->
## Concept Process

The `Conceptual Process` is the set of actions, activities and research that was done when starting this project.

### Ideation

![image6][image6]
![image7][image7]

### Wireframes

![image8][image8]

### User-flow

![image9][image9]

<!-- DEVELOPMENT PROCESS -->
## Development Process

The `Development Process` is the technical implementations and functionality done in the backend of the application.

### Implementation

#### Challenges

* Understanding Swift and SwiftUI logic.
* Grasping how to create functional responsive layouts.
* MVVM coding structure and file structure.
* Transitioning between views using `NavigationView` alongside `NavigationLink`.
* Resetting the settings to the defaults.
* Utilising the `Property Wrapper` when needed.

#### Highlights

* Managing to fix a bug when resettings the settings crashing the current view.
* The user interface design and user experience of the application.
* Building a customised menu to switch between views.
* Time and scope management, finishing the project in time.
* Personalising the application with extra features, like animations and adding categories with more data.

#### Future Changes

* Making the category cards on the dashboard clickable to navigate to the specific screen.
* Add a full login system and profile section within the app.
* Customised back button in the plant details view.
* Ability to favourite which plants you like most.
* Scanning a plant and adding it to the library.

<!-- MOCKUPS -->
## Mockups

![image10][image10]

<!-- VIDEO DEMONSTRATION -->
## Video Demonstration

To see a run through of the application, click below:

[View Demo]()

<!-- PROMO VIDEO -->
## Promo Video

To see the promo video, click below:

[View Promo Video]()

<!-- ROADMAP -->
## Roadmap

See the [open issues](https://github.com/dylandasilva1999/plantly-ios-app/issues) for a list of proposed features (and known issues).

<!-- CONTRIBUTING -->
## Contributing

Contributions are what makes the open-source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<!-- AUTHORS -->
## Authors

* **Dylan da Silva** - [DylandaSilva](https://github.com/dylandasilva1999)

<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE` for more information.\

<!-- LICENSE -->
## Contact

* **Dylan da Silva** - [@dylandasilva.designs](https://www.instagram.com/dylandasilva.designs/) - 190082@virtualwindow.co.za
* **Project Link** - https://github.com/dylandasilva1999/plantly-ios-app

<!-- ACKNOWLEDGEMENTS -->
## Acknowledgements

* [My lecturer Armand Pretorius](https://github.com/ArmandPretorius)
* [New Research Article](https://www.pri.org/stories/2014-01-09/new-research-plant-intelligence-may-forever-change-how-you-think-about-plants)
* [Medicine and Facts Article](https://crazycrittersinc.com/over-50-amazing-plant-facts/)
* [Plant Library Website](https://www.bhg.com/gardening/plant-dictionary/)
* [Onboarding Tutorial](https://www.youtube.com/watch?v=HVAMShhJOUo)
* [SwiftUI Basic App Tutorial](https://www.youtube.com/watch?v=99nevoaOxXA&t=4s)
* [Custom Menu](https://www.youtube.com/watch?v=D_KTHUVzy0c)
* [Custom Animated Scroller](https://www.youtube.com/watch?v=EBbhIbI2Hg8&t=10s)
* [SwiftUI Documentation](https://developer.apple.com/design/human-interface-guidelines/ios/overview/themes/)
* [Hacking With Swift](https://www.hackingwithswift.com/quick-start/swiftui)

<!-- MARKDOWN LINKS & IMAGES -->
<!--[image1]: Images/Image1.png-->

[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=flat-square&logo=linkedin&colorB=555
[linkedin-url]: https://www.linkedin.com/in/dylan-da-silva-72b56a20a/

<!-- MARKDOWN LINKS & IMAGES -->
[image1]: Images/Image1-new.png
[image2]: Images/Image2.png
[image3]: Images/Image3.png
[image4]: Images/Image4.png
[image5]: Images/Image5.png
[image6]: Images/Image6.png
[image7]: Images/Image7.png
[image8]: Images/Image8.png
[image9]: Images/Image9.png
[image10]: Images/Image10.jpg
