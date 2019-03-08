# macos-make-icns
Script to create .icns icon file from a png image in MacOS 

## Usage

Run the command `make-icns`

`./make-icns.sh path/to/image/png [icon-name]`

The command will create a new icon file *icon-name*.icns (default icon-name is `app`)


## Replace application icons

You can replace the application icons copying the .icns file to the resources folder of the application:

```bash
cp app.icns myapplication.app/Contents/Resources/app.icns
cp app.icns myapplication.app/Contents/Resources/document.icns
```

