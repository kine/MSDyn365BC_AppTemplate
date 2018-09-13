# MSDyn365BC_AppTemplate
Template for MS Dynamics 365 Business Centrall App development with Azure DevOps pipeline

# Usage
Just fork the repo or download the files, edit the App.json in MainApp folder and TestApp folder and push to your Azure DevOps repository. 
You will be able to create Build pipeline with few clicks (or it will be created automatically if allowed/working). 

## What to change
- App.json in MainApp and TestApp folders
- Settings1.ps1 in Scripts folder (container name, image name, license file)
- .vsts-ci.yml in root folder (TestCodeunitId, CertFile, CertPwd, check the queue:demands, by default there is set Docker - the agent must have this requirement set or remove the demand)

## Needed settings in Azure DevOps
- Go to "Project settings - Service Connections" and create one for GitHub and name it GitHub (or use another name, but change the endpoint name in the .vsts-ci.yml file).
- If the Build Pipeline is not created after you push the code to the Azure DevOps repository, just create new pipeline and select the repository. It will detect the yml file and set the pipeline for you. Not all settings could be set from the yml yet.


## Multi-level apps
If you have multi-level apps created from some base level app and depending apps, you can put the dependency apps into
Dependency subfolder as a git submodule. It should be automatically used when compiling the app.

Help/Feedback is welcome!
