# MSDyn365BC_AppTemplate
Template for MS Dynamics 365 Business Centrall App development with Azure DevOps pipeline

# Usage
Just fork the repo or download the files, edit the App.json in MainApp folder and TestApp folder and push to your Azure DevOps repository. 
You will be able to create Build pipeline with few clicks (or it will be created automatically if allowed/working). 

## Multi-level apps
If you have multi-level apps created from some base level app and depending apps, you can put the dependency apps into
Dependency subfolder as a git submodule. It should be automatically used when compiling the app.

Help/Feedback is welcome!
