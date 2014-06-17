ExactTime
=========

An iOS demonstrating using submodules.

###Step 1:
- Clone down this project (or create a new single view controller in Xcode)
- Add AFNetworking as a submodule (https://github.com/AFNetworking/AFNetworking)
  - In terminal navigate to the directory of your project
  - ```git submodule add https://github.com/AFNetworking/AFNetworking.git External/AFNetworking```
  - Note: This clones the code to our computer, we need to add it to the project
- Add the source code in the AFNetworking folder to your app
  - Note: Do not select "Copy items into destination group's folder" - We want references, not actual copies of the files
  
###Step 2:
- Use AFNetworking
- In the viewDidLoad method create a NSURLRequest for the URL http://www.timeapi.org/utc/now
- Initialize an AFHTTPRequestOperation with that urlrequest
- setCompletionBlock on the request operation
- Call start on that operation

###You just made a network request.
