//
//  DDTFLogger.h
//  DKDnvKema
//
//  Created by Joe Lagomarsino on 10/15/13.
//  Copyright (c) 2013 Carmel Software. All rights reserved.
//

#import "DDLog.h"

@interface DDTFLogger : DDAbstractLogger <DDLogger>

+ (DDTFLogger *)sharedInstance;

@end
