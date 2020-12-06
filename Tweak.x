#include <Foundation/Foundation.h>
%hook SBReachabilityBackgroundView
-(instancetype)initWithFrame:(CGRect)arg1 wallpaperVariant:(long long)arg2 {
    self = %orig;
    return self;
}
%end