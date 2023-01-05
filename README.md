# addXMPtoJPG
adds missing information (creation date) back to jpgs when exported from Apple Fotos

## install / dependencies

on osx:  ```brew install exiftool```

## use

export images from Apple Fotos as Original with XMP sidecar, then 
```./addXMPtoJPG.sh /path/to/folder/with/jpgs/```

it will go through all jpgs and write the xmp data from the xmp file back to the jpg (for example date created)