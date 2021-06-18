
## UIImage-SFSymbols (version 2.1 )

### Extension / Category on UIImage to use SFSymbols with autocomplete 


nstead of;


       let image = UIImage(systemName: "multiply.circle.fill")

       
use:

       let image = UIImage(.sf_multiply_circle_fill)
       let image: UIimage = .sf_multiply_circle_fill
       let imageView = UIImageView(image: .sf_multiply_circle_fill) 



This was generated using shell script in bin/ here against the plist found in the SFSymbols App version 2.1

Adjust format  as you see fit, and regenerate the swift by typing "make" from the root directory 


