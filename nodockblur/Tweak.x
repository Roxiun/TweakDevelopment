#import <Cephei/HBPreferences.h> // Import Preferences

%hook HBForceCepheiPrefs

+ (BOOL)forceCepheiPrefsWhichIReallyNeedToAccessAndIKnowWhatImDoingISwear {
    return YES;
}

%end
#

BOOL isEnabled; // Blank Enabled Variable

%hook SBDockView // Hook into Dock
-(void)setBackgroundAlpha:(double)arg1 {
	if(isEnabled) {
		%orig(0.0); // Remove Blur
	}
}
%end


// Load Preferences
%ctor {
	// Adds pref variables
	HBPreferences *preferences = [[HBPreferences alloc] initWithIdentifier:@"com.roxiun.nodockblurprefs"];
	[preferences registerBool:&isEnabled default:YES forKey:@"isEnabled"];

}