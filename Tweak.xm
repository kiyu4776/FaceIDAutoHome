@import UIKit;

@interface CSLockScreenSettings : UIView
@end

%hook CSLockScreenSettings
- (void)setDefaultValues {
    %orig;
[self setValue:@YES forKey:@"autoDismissUnlockedLockScreen"];


}
%end
