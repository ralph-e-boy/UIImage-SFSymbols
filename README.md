
## UIImage-SFSymbols (version 2.1 / 3)

### Extension / Category on UIImage for SFSymbols

#### Example:

instead of;

       let image = UIImage(systemName: "multiply.circle.fill")
       
use:

       let image = UIImage(.sf_multiply_circle_fill)
       let image: UIimage = .sf_multiply_circle_fill
       let imageView = UIImageView(image: .sf_multiply_circle_fill) 


### Installation - Swift Package Manager

       .package(url: "https://github.com/ralph-e-boy/UIImage-SFSymbols", branch: "main")


### Versions / tags 

Version 2.0.0 of this library was built against SFSymbols 2.1 

Version 3.0.0 of this library was built against SFSymbols 3.0 


The source is is generated using the shell script in bin/ against the plist found in the SFSymbols App

Adjust format as you see fit, and regenerate the swift by typing "make" from the root directory 


