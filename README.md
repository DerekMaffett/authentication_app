# Description

This is a follow-along of RailsCast #250. It contains a basic CRUD controller
for articles and implements authentication and minor authorization from scratch
using session. I decided to handle authorization differently from the video -
while it was originally advised to use before_filters for individual controllers
needing authorization, I went with a whitelisting approach, applying the
before_filter at the application controller level and applying skips for those
particular actions I decided should be available to the public. This helps keep
the app secure as it favors access denial over uninhibited access.

# Contributors

Just me, though of course, credit goes to Ryan Bates of RailsCasts for providing
the tutorial.
