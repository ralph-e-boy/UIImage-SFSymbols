#!/usr/bin/env bash

# UIImage+SFSymbols 
# Generate an extension on UIImage for SFSymbols 

# instead of;
# let image = UIImage(systemName: "multiply.circle.fill")
# 
# 
# let image = UIImage(.multiply_circle_fill)
# let image: UIimage = .multiply_circle_fill
# let imageView = UIImageView(image: .multiply_circle_fill) 

# This program requires https://stedolan.github.io/jq/

set -eiu

PLIST_PATH="/Applications/SF Symbols.app/Contents/Resources/name_availability.plist"

if [[ -f "$PLIST_PATH" ]] ; then
# 
# Create a String enum to hold the system names of each SFSymbol
# so they can be called with dot syntax where a String is required


echo "/// SFSymbol image extension - generated by $0 on `date`"

echo "enum SFSymbolNames: String {"
echo    '/// i.e. - .sf_app_badge_fill() -> "app.badge.fill"'
echo "  func callAsFunction() -> String { rawValue }"
echo 

for i in  `plutil -extract symbols json "/Applications/SF Symbols.app/Contents/Resources/name_availability.plist"  -o output.json  &&  jq -r 'keys | .[] ' < output.json  ` ; 
do 
   VAL=$i
   TRANSFORMED=$(echo $i  | sed 's/\./_/g')
   CASELABEL="case sf_$TRANSFORMED = "
   echo '  ' $CASELABEL '"'$i'"'; 
done
echo "}"
echo
echo

# now the image category
echo 'public extension UIImage {'
echo '  convenience init(_ sfSymbol: SFSymbolName) {'
echo '    self.init(systemName: sfSymbol())!'
echo '  }'

for i in  `jq -r 'keys | .[] ' < output.json  ` ; 
do 
   VAL=$i
   TRANSFORMED=$(echo $i  | sed 's/\./_/g')
   VAR="sf_$TRANSFORMED"
   echo '  /// returns UIImage object for symbol: "'$VAL'"'
   echo '  static var '$VAR': UIImage { .init(.'$VAR') }'
done

echo "}"
echo

unlink output.json 

else 

echo "This script expects the SFSymbols app to be installed"
echo "$(PLIST_PATH) not found." 

fi


