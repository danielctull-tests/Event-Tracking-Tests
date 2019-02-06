
# Event Tracking on the Responder Chain

An example of how event tracking could happen on the responder chain. The responder chain is a chain of responders, which includes the views, view controllers, window, application, and application delegate of an app. This would allow any view controller to call `trackEvent` with an event and for a custom tracker responder to catch the call and track the event. 
