//
//  SBSLicense.h
//  ScanditBarcodeScanner
//
//  Created by Moritz Hartmeier on 28/05/15.
//  Copyright (c) 2015 Scandit AG. All rights reserved.
//

#import <Foundation/Foundation.h>


/**
 * \brief Holds settings that are needed to verify a Scandit Barcode Scanner license.
 */
@interface SBSLicense : NSObject

/**
 * \brief Set the Barcode Scanner application key to be used for this application
 *
 * Call this static method with the Scandit Barcode Scanner application key you downloaded 
 * from the Scandit website.  
 *
 * Setting the app key does not automatically activate the device. Device activations happen 
 * when a SBSBarcodePicker is instantiated for the first time. It is thus safe to set the 
 * app key at application start, irrespective if the user is going to scan barcodes or not.
 *
 * \param appKey the application key.
 * \since 4.7.0
 */
+ (void)setAppKey:(NSString *)appKey;

@end
