# CLI Icon Gallery
To contribute your own icon pack, please submit a pull request. Put your icons into a new folder and make sure to include a file named `metadata.json` in it.  
The structure of `metadata.json` is as follows:

```
{
  "author": {
    "name": "<Your name>",
    "github": "<Your GitHub Name>"
  },
  "name": "<Your icon pack name>",
  "version": "<Your icon pack version>",
  "format": 1,
  "ondark": <true if your icons need to be presented on a dark background, otherwise false>
}
```

---

> **Warning**

Please make sure all of your files are actually valid ICO files. An easy way to convert from PNG to ICO is to use [ImageMagick](https://imagemagick.org) and use the following command:

```
magick mogrify -format ico *.png
```

To verify, please use the `Validate-Icos.ps1` script. It will point out every ico file with an invalid format.

---

Also, please note that all uploaded icons will fall under the [**CC BY-NC-SA** license](https://creativecommons.org/licenses/by-nc-sa/4.0/).
