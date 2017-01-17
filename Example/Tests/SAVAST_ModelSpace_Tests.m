//
//  SAVAST_ModelSpace_Tests.m
//  SAModelSpace
//
//  Created by Gabriel Coman on 17/01/2017.
//  Copyright © 2017 Gabriel Coman. All rights reserved.
//

@import XCTest;

#import "SAVASTAd.h"
#import "SAVASTMedia.h"
#import "SATracking.h"

@interface SAVAST_ModelSpace_Tests : XCTestCase
@end

@implementation SAVAST_ModelSpace_Tests

- (void) setUp {
    [super setUp];
}

- (void)tearDown {
    [super tearDown];
}

- (void) testVASTMedia1 {
    
    // given
    NSString *fp1 = [[NSBundle mainBundle] pathForResource:@"vastjson1" ofType:@"json"];
    NSString *given = [NSString stringWithContentsOfFile:fp1 encoding:NSUTF8StringEncoding error:nil];
    
    SAVASTMedia *media = [[SAVASTMedia alloc] initWithJsonString:given];
    XCTAssertNotNil(media);
    
    NSString *expected_type = @"video/mp4";
    NSString *expected_mediaUrl = @"https://s3-eu-west-1.amazonaws.com/sb-ads-video-transcoded/c0sKSRTuPu8dDkok2HQTnLS1k3A6vL6c.mp4";
    int expected_bitrate = 720;
    int expected_width = 600;
    int expected_height = 480;
    
    XCTAssertEqualObjects(expected_type, media.type);
    XCTAssertEqualObjects(expected_mediaUrl, media.mediaUrl);
    XCTAssertEqual(expected_bitrate, media.bitrate);
    XCTAssertEqual(expected_width, media.width);
    XCTAssertEqual(expected_height, media.height);
    XCTAssertTrue([media isValid]);
}

- (void) testVASTMedia2 {
    
    // given
    NSString *fp1 = [[NSBundle mainBundle] pathForResource:@"vastjson2" ofType:@"json"];
    NSString *given = [NSString stringWithContentsOfFile:fp1 encoding:NSUTF8StringEncoding error:nil];
    
    SAVASTMedia *media = [[SAVASTMedia alloc] initWithJsonString:given];
    XCTAssertNotNil(media);
    
    NSString *expected_type = @"video/mp4";
    NSString *expected_mediaUrl = @"https://s3-eu-west-1.amazonaws.com/sb-ads-video-transcoded/c0sKSRTuPu8dDkok2HQTnLS1k3A6vL6c.mp4";
    int expected_bitrate = 0;
    int expected_width = 0;
    int expected_height = 480;
    
    XCTAssertEqualObjects(expected_type, media.type);
    XCTAssertEqualObjects(expected_mediaUrl, media.mediaUrl);
    XCTAssertEqual(expected_bitrate, media.bitrate);
    XCTAssertEqual(expected_width, media.width);
    XCTAssertEqual(expected_height, media.height);
    XCTAssertTrue([media isValid]);
}

- (void) testVASTMedia3 {
    
    // given
    NSString *fp1 = [[NSBundle mainBundle] pathForResource:@"vastjson3" ofType:@"json"];
    NSString *given = [NSString stringWithContentsOfFile:fp1 encoding:NSUTF8StringEncoding error:nil];
    
    SAVASTMedia *media = [[SAVASTMedia alloc] initWithJsonString:given];
    XCTAssertNotNil(media);
    
    NSString *expected_type = nil;
    NSString *expected_mediaUrl = nil;
    int expected_bitrate = 0;
    int expected_width = 0;
    int expected_height = 0;
    
    XCTAssertEqualObjects(expected_type, media.type);
    XCTAssertEqualObjects(expected_mediaUrl, media.mediaUrl);
    XCTAssertEqual(expected_bitrate, media.bitrate);
    XCTAssertEqual(expected_width, media.width);
    XCTAssertEqual(expected_height, media.height);
    XCTAssertFalse([media isValid]);
}

- (void) testVASTMedia4 {
    
    SAVASTMedia *media = [[SAVASTMedia alloc] initWithJsonString:nil];
    XCTAssertNotNil(media);
    
    NSString *expected_type = nil;
    NSString *expected_mediaUrl = nil;
    int expected_bitrate = 0;
    int expected_width = 0;
    int expected_height = 0;
    
    XCTAssertEqualObjects(expected_type, media.type);
    XCTAssertEqualObjects(expected_mediaUrl, media.mediaUrl);
    XCTAssertEqual(expected_bitrate, media.bitrate);
    XCTAssertEqual(expected_width, media.width);
    XCTAssertEqual(expected_height, media.height);
    XCTAssertFalse([media isValid]);
}

- (void) testVASTMedia5 {
    
    // given
    NSString *fp1 = [[NSBundle mainBundle] pathForResource:@"vastjson4" ofType:@"json"];
    NSString *given = [NSString stringWithContentsOfFile:fp1 encoding:NSUTF8StringEncoding error:nil];
    
    SAVASTAd *ad = [[SAVASTAd alloc] initWithJsonString:given];
    XCTAssertNotNil(ad);
    XCTAssertFalse([ad isValid]);
    
    NSString *expected_vastRedirect = nil;
    SAVASTAdType expected_vastType = SA_Invalid;
    NSString *expected_mediaUrl = nil;
    int expected_medias = 0;
    int expected_events = 0;
    
    XCTAssertEqualObjects(expected_vastRedirect, ad.vastRedirect);
    XCTAssertEqual(expected_vastType, ad.vastType);
    XCTAssertEqualObjects(expected_mediaUrl, ad.mediaUrl);
    XCTAssertNotNil([ad mediaList]);
    XCTAssertEqual(expected_medias, [[ad mediaList] count]);
    XCTAssertNotNil([ad vastEvents]);
    XCTAssertEqual(expected_events, [[ad vastEvents] count]);
}

- (void) testVASTMedia6 {
    
    // given
    NSString *fp1 = [[NSBundle mainBundle] pathForResource:@"vastjson5" ofType:@"json"];
    NSString *given = [NSString stringWithContentsOfFile:fp1 encoding:NSUTF8StringEncoding error:nil];
    
    SAVASTAd *ad = [[SAVASTAd alloc] initWithJsonString:given];
    XCTAssertNotNil(ad);
    XCTAssertTrue([ad isValid]);
    
    NSString *expected_vastRedirect = nil;
    SAVASTAdType expected_vastType = SA_InLine;
    NSString *expected_mediaUrl = @"https://ads.superawesome.tv/v2/demo_images/video.mp4";
    int expected_medias = 1;
    int expected_events = 2;
    
    XCTAssertEqualObjects(expected_vastRedirect, ad.vastRedirect);
    XCTAssertEqual(expected_vastType, ad.vastType);
    XCTAssertEqualObjects(expected_mediaUrl, ad.mediaUrl);
    XCTAssertNotNil([ad mediaList]);
    XCTAssertEqual(expected_medias, [[ad mediaList] count]);
    XCTAssertNotNil([ad vastEvents]);
    XCTAssertEqual(expected_events, [[ad vastEvents] count]);
    
    for (SATracking *tracking in [ad vastEvents]) {
        XCTAssertTrue([tracking isValid]);
    }
    
    for (SAVASTMedia *media in [ad mediaList]) {
        XCTAssertTrue([media isValid]);
    }
}

- (void) testVASTMedia7 {
    
    // given
    NSString *fp1 = [[NSBundle mainBundle] pathForResource:@"vastjson6" ofType:@"json"];
    NSString *given = [NSString stringWithContentsOfFile:fp1 encoding:NSUTF8StringEncoding error:nil];
    
    SAVASTAd *ad = [[SAVASTAd alloc] initWithJsonString:given];
    XCTAssertNotNil(ad);
    XCTAssertTrue([ad isValid]);
    
    NSString *expected_vastRedirect = nil;
    SAVASTAdType expected_vastType = SA_Wrapper;
    NSString *expected_mediaUrl = @"https://ads.superawesome.tv/v2/demo_images/video.mp4";
    int expected_medias = 2;
    int expected_events = 3;
    
    XCTAssertEqualObjects(expected_vastRedirect, ad.vastRedirect);
    XCTAssertEqual(expected_vastType, ad.vastType);
    XCTAssertEqualObjects(expected_mediaUrl, ad.mediaUrl);
    XCTAssertNotNil([ad mediaList]);
    XCTAssertEqual(expected_medias, [[ad mediaList] count]);
    XCTAssertNotNil([ad vastEvents]);
    XCTAssertEqual(expected_events, [[ad vastEvents] count]);
    
    for (SATracking *tracking in [ad vastEvents]) {
        XCTAssertTrue([tracking isValid]);
    }
    
    for (SAVASTMedia *media in [ad mediaList]) {
        XCTAssertTrue([media isValid]);
    }
}

- (void) testVASTMedia8 {
    
    // given
    NSString *fp1 = [[NSBundle mainBundle] pathForResource:@"vastjson7" ofType:@"json"];
    NSString *given = [NSString stringWithContentsOfFile:fp1 encoding:NSUTF8StringEncoding error:nil];
    
    SAVASTAd *ad = [[SAVASTAd alloc] initWithJsonString:given];
    XCTAssertNotNil(ad);
    XCTAssertFalse([ad isValid]);
    
    NSString *expected_vastRedirect = nil;
    SAVASTAdType expected_vastType = SA_Invalid;
    NSString *expected_mediaUrl = nil;
    int expected_medias = 0;
    int expected_events = 0;
    
    XCTAssertEqualObjects(expected_vastRedirect, ad.vastRedirect);
    XCTAssertEqual(expected_vastType, ad.vastType);
    XCTAssertEqualObjects(expected_mediaUrl, ad.mediaUrl);
    XCTAssertNotNil([ad mediaList]);
    XCTAssertEqual(expected_medias, [[ad mediaList] count]);
    XCTAssertNotNil([ad vastEvents]);
    XCTAssertEqual(expected_events, [[ad vastEvents] count]);
}


@end
