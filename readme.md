1. click on `<> code`  -> `Download ZIP`
2. move to its own folder and extract the files
3. in file explorer, top left, click file -> `Open in Windows Powershell` (it should open a scary blue window)
4. type `.\ianseo_setup.bat` and press enter
4a. If it fails, let me know the error, you might need to run `wsl --install` beforehand, but maybe not. its hard to test if this is needed for reasons.
5. It will probably ask for your password at some point.
6. In the terminal, it should say something like: `...Buffer pool(s) load completed at 250704 15:46:26`, then it is setup successfully (I hope)
7. Open your browser, and go to `localhost/ianseo`. and voila, out of the frying pan...

Inspired by [this repo](https://github.com/allan-young/ianseo-docker) by [Allan Young](https://github.com/allan-young)