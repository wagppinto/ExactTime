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


##AFNetworking

###Step 3: Add a NetworkController
- Create an NSObject subclass called NetworkController
- Add a sessionManager property ```@property (nonatomic, strong) AFHTTPSessionManager *sessionManager;``` to the interface section of the implementation file (you may have to type it up yourself.
- Add the base URL of the new time request as a static string: ```NSString * const baseURL = @"http://time.jsontest.com";```
- Add an init method, and in the init method initialize the sessionManager with a default configuration and base URL.

###Step 4: Add a request method
- Add the method ```- (void)getExactTimeInfo:(void (^)(NSDictionary *exactTimeInfo, NSError *error))completion;``` to the header file.
- In the implementation of that method call GET on the session manager with the @"/" endpoint.

###Step 5: A simple UI
- Add a UILabel property to the class and wire it up in your storyboard

###Step 6: Call the request method
- In the viewDidLoad method initialize a NetworkController
- Call the getExactTimeInfo method on the network controller
- Set the label text to the exactTimeInfo[@"time"]
