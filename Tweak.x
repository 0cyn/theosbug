#include <Foundation/Foundation.h>
#include <UIKit/UIKit.h>
%hook SBReachabilityBackgroundView
-(instancetype)initWithFrame:(CGRect)arg1 wallpaperVariant:(long long)arg2 {
    self = %orig;
    return self;
}
%end
