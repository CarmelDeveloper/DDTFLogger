//
//  DDTFLogger.m
//  DKDnvKema
//
//  Created by Joe Lagomarsino on 10/15/13.
//  Copyright (c) 2013 Carmel Software. All rights reserved.
//

#import "DDTFLogger.h"
#import "TestFlight.h"

@implementation DDTFLogger

static DDTFLogger *sharedInstance;

+ (DDTFLogger *)sharedInstance
{
	return sharedInstance;
}

+ (void)initialize
{
	static BOOL initialized = NO;
	if (!initialized) {
		initialized = YES;
		sharedInstance = [[DDTFLogger alloc] init];
	}
}

- (id)init
{
	if (sharedInstance != nil) {
		return nil;
	}
	
	if ((self = [super init])) {
        
	}
    
	return self;
}

- (void)logMessage:(DDLogMessage *)logMessage
{
    NSString *logMsg = logMessage->logMsg;

	if (formatter)
	{
		logMsg = [formatter formatLogMessage:logMessage];
	}
    
    if (logMsg)
    {
		switch (logMessage->logFlag)
		{
			case LOG_FLAG_ERROR :
			case LOG_FLAG_WARN  : TFLog(@"%@", logMsg); break;
			case LOG_FLAG_INFO  : [TestFlight passCheckpoint:logMsg]; break;
			default             : break;
		}
    }
}

@end
