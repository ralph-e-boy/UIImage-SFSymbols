
## UIImage-SFSymbols (version 2.1 )

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


This was generated using the shell script in bin/ against the plist found in the SFSymbols App version 2.1

Adjust format  as you see fit, and regenerate the swift by typing "make" from the root directory 


