#import "YoutubeLauncher.h"
#import "spawn.h"

@interface UIApplication (PrivateMethods)
- (BOOL)launchApplicationWithIdentifier:(NSString *)identifier suspended:(BOOL)suspend;
@end

@interface UIImage ()
+ (UIImage *)imageNamed:(NSString *)name inBundle:(NSBundle *)bundle;
@end

@implementation YoutubeLauncher
- (UIImage *)iconGlyph {
	return [UIImage imageNamed:@"Icon" inBundle:[NSBundle bundleForClass:[self class]]];
}

- (UIColor *)selectedColor {
	return nil;// not much point having this as it can confuse people
}

- (BOOL)isSelected {
	return self.YoutubeLauncher;
}

- (void)setSelected:(BOOL)selected {
  self.YoutubeLauncher = selected;
	[super refreshState];
    [self youtube];
}

- (void)youtube {
  NSString *bundleID = @"com.google.ios.youtube";
  [[UIApplication sharedApplication] launchApplicationWithIdentifier:bundleID suspended:FALSE];
		self.YoutubeLauncher = NO;
		
}
@end
