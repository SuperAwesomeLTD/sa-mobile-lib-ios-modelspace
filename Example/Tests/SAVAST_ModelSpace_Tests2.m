//
//  SAVAST_ModelSpace_Tests2.m
//  SAModelSpace
//
//  Created by Gabriel Coman on 28/02/2017.
//  Copyright © 2017 Gabriel Coman. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "SAVASTAd.h"
#import "SAVASTMedia.h"
#import "SAVASTEvent.h"

@interface SAVAST_ModelSpace_Tests2 : XCTestCase
@end

@implementation SAVAST_ModelSpace_Tests2

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void) testVASTAd1 {
    
    // given
    NSString *fp1 = [[NSBundle mainBundle] pathForResource:@"vastjson4" ofType:@"json"];
    NSString *given = [NSString stringWithContentsOfFile:fp1 encoding:NSUTF8StringEncoding error:nil];
    
    SAVASTAd *ad = [[SAVASTAd alloc] initWithJsonString:given];
    XCTAssertNotNil(ad);
    XCTAssertFalse([ad isValid]);
    
    NSString *expected_redirect = nil;
    SAVASTAdType expected_type = SA_Invalid_VAST;
    NSString *expected_url = nil;
    int expected_medias = 0;
    int expected_events = 0;
    
    XCTAssertEqualObjects(expected_redirect, ad.redirect);
    XCTAssertEqual(expected_type, ad.type);
    XCTAssertEqualObjects(expected_url, ad.url);
    XCTAssertNotNil([ad media]);
    XCTAssertEqual(expected_medias, [[ad media] count]);
    XCTAssertNotNil([ad events]);
    XCTAssertEqual(expected_events, [[ad events] count]);
}


- (void) testVASTAd2 {
    
    // given
    NSString *fp1 = [[NSBundle mainBundle] pathForResource:@"vastjson5" ofType:@"json"];
    NSString *given = [NSString stringWithContentsOfFile:fp1 encoding:NSUTF8StringEncoding error:nil];
    
    SAVASTAd *ad = [[SAVASTAd alloc] initWithJsonString:given];
    XCTAssertNotNil(ad);
    XCTAssertTrue([ad isValid]);
    
    NSString *expected_redirect = nil;
    SAVASTAdType expected_type = SA_InLine_VAST;
    NSString *expected_url = @"https://ads.superawesome.tv/v2/demo_images/video.mp4";
    int expected_medias = 1;
    int expected_events = 2;
    
    XCTAssertEqualObjects(expected_redirect, ad.redirect);
    XCTAssertEqual(expected_type, ad.type);
    XCTAssertEqualObjects(expected_url, ad.url);
    XCTAssertNotNil([ad media]);
    XCTAssertEqual(expected_medias, [[ad media] count]);
    XCTAssertNotNil([ad events]);
    XCTAssertEqual(expected_events, [[ad events] count]);
    
    for (SAVASTEvent *evt in [ad events]) {
        XCTAssertTrue([evt isValid]);
    }
    
    for (SAVASTMedia *media in [ad media]) {
        XCTAssertTrue([media isValid]);
    }
}

- (void) testVASTAd3 {
    
    // given
    NSString *fp1 = [[NSBundle mainBundle] pathForResource:@"vastjson6" ofType:@"json"];
    NSString *given = [NSString stringWithContentsOfFile:fp1 encoding:NSUTF8StringEncoding error:nil];
    
    SAVASTAd *ad = [[SAVASTAd alloc] initWithJsonString:given];
    XCTAssertNotNil(ad);
    XCTAssertTrue([ad isValid]);
    
    NSString *expected_redirect = nil;
    SAVASTAdType expected_type = SA_Wrapper_VAST;
    NSString *expected_url = @"https://ads.superawesome.tv/v2/demo_images/video.mp4";
    int expected_medias = 2;
    int expected_events = 3;
    
    XCTAssertEqualObjects(expected_redirect, ad.redirect);
    XCTAssertEqual(expected_type, ad.type);
    XCTAssertEqualObjects(expected_url, ad.url);
    XCTAssertNotNil([ad media]);
    XCTAssertEqual(expected_medias, [[ad media] count]);
    XCTAssertNotNil([ad events]);
    XCTAssertEqual(expected_events, [[ad events] count]);
    
    for (SAVASTEvent *evt in [ad events]) {
        XCTAssertTrue([evt isValid]);
    }
    
    for (SAVASTMedia *media in [ad media]) {
        XCTAssertTrue([media isValid]);
    }
}

- (void) testVASTAd4 {
    
    // given
    NSString *fp1 = [[NSBundle mainBundle] pathForResource:@"vastjson7" ofType:@"json"];
    NSString *given = [NSString stringWithContentsOfFile:fp1 encoding:NSUTF8StringEncoding error:nil];
    
    SAVASTAd *ad = [[SAVASTAd alloc] initWithJsonString:given];
    XCTAssertNotNil(ad);
    XCTAssertFalse([ad isValid]);
    
    NSString *expected_redirect = nil;
    SAVASTAdType expected_type = SA_Invalid_VAST;
    NSString *expected_url = nil;
    int expected_medias = 0;
    int expected_events = 0;
    
    XCTAssertEqualObjects(expected_redirect, ad.redirect);
    XCTAssertEqual(expected_type, ad.type);
    XCTAssertEqualObjects(expected_url, ad.url);
    XCTAssertNotNil([ad media]);
    XCTAssertEqual(expected_medias, [[ad media] count]);
    XCTAssertNotNil([ad events]);
    XCTAssertEqual(expected_events, [[ad events] count]);
}

@end
