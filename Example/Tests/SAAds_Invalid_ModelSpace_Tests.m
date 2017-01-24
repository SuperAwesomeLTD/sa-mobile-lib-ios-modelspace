//
//  SAAds_Invalid_ModelSpace_Tests.m
//  SAModelSpace
//
//  Created by Gabriel Coman on 17/01/2017.
//  Copyright © 2017 Gabriel Coman. All rights reserved.
//

@import XCTest;

#import "SAAd.h"
#import "SACreative.h"
#import "SADetails.h"
#import "SAMedia.h"
#import "SAResponse.h"
#import "SATracking.h"

@interface SAAds_Invalid_ModelSpace_Tests : XCTestCase
@end

@implementation SAAds_Invalid_ModelSpace_Tests

- (void) setUp {
    [super setUp];
}

- (void) tearDown {
    [super tearDown];
}

- (void) testModelDefault {
    
    // when
    NSInteger expected_error = 0;
    NSInteger expected_advertiserId = 0;
    NSInteger expected_publisherId = 0;
    NSInteger expected_app = 0;
    NSInteger expected_lineItemId = 0;
    NSInteger expected_campaignId = 0;
    CGFloat expected_moat = 0.2;
    NSInteger expected_placementId = 0;
    SACampaignType expected_campaignType = SA_CPM;
    BOOL expected_test = false;
    BOOL expected_isFallback = false;
    BOOL expected_isFill = false;
    BOOL expected_isHouse = false;
    BOOL expected_safeAdApproved = false;
    BOOL expected_showPadlock = false;
    NSString *expected_device = nil;
    
    NSInteger expected_creative_id = 0;
    NSString *expected_creative_name = NULL;
    NSInteger expected_creative_cpm = 0;
    SACreativeFormat expected_creative_format = SA_Invalid;
    BOOL expected_creative_live = true;
    BOOL expected_creative_approved = true;
    NSString *expected_creative_customPayload = nil;
    NSString *expected_creative_clickUrl = nil;
    NSString *expected_creative_installUrl = nil;
    NSString *expected_creative_impressionUrl = nil;
    NSString *expected_creative_bundleId = nil;
    NSArray <SATracking*> *expected_creative_events = @[];
    
    NSInteger expected_details_width = 0;
    NSInteger expected_details_height = 0;
    NSString *expected_details_name = nil;
    NSString *expected_details_placementFormat = nil;
    NSInteger expected_details_bitrate = 0;
    NSInteger expected_details_duration = 0;
    NSInteger expected_details_value = 0;
    NSString *expected_details_image = nil;
    NSString *expected_details_video = nil;
    NSString *expected_details_tag = nil;
    NSString *expected_details_zipFile = nil;
    NSString *expected_details_url = nil;
    NSString *expected_details_cdnUrl = nil;
    NSString *expected_details_vast = nil;
    
    NSString *expected_media_html = nil;
    NSString *expected_media_playableDiskUrl = nil;
    NSString *expected_media_playableMediaUrl = nil;
    NSString *expected_media_type = nil;
    NSInteger expected_media_bitrate = 0;
    BOOL expected_media_isOnDisk = false;
    
    // then
    SAAd *result = [[SAAd alloc] init];
    
    // assert
    XCTAssertNotNil(result);
    XCTAssertFalse([result isValid]);
    XCTAssertEqual(result.error, expected_error);
    XCTAssertEqual(result.advertiserId, expected_advertiserId);
    XCTAssertEqual(result.publisherId, expected_publisherId);
    XCTAssertEqualWithAccuracy(result.moat, expected_moat, 0.01);
    XCTAssertEqual(result.app, expected_app);
    XCTAssertEqual(result.lineItemId, expected_lineItemId);
    XCTAssertEqual(result.campaignId, expected_campaignId);
    XCTAssertEqual(result.placementId, expected_placementId);
    XCTAssertEqual(result.campaignType, expected_campaignType);
    XCTAssertEqualObjects(result.device, expected_device);
    XCTAssertEqual(result.test, expected_test);
    XCTAssertEqual(result.isFallback, expected_isFallback);
    XCTAssertEqual(result.isFill, expected_isFill);
    XCTAssertEqual(result.isHouse, expected_isHouse);
    XCTAssertEqual(result.safeAdApproved, expected_safeAdApproved);
    XCTAssertEqual(result.showPadlock, expected_showPadlock);
    
    XCTAssertNotNil(result.creative);
    XCTAssertEqual(result.creative._id, expected_creative_id);
    XCTAssertEqualObjects(result.creative.name, expected_creative_name);
    XCTAssertEqual(result.creative.cpm, expected_creative_cpm);
    XCTAssertEqual(result.creative.format, expected_creative_format);
    XCTAssertEqual(result.creative.live, expected_creative_live);
    XCTAssertEqual(result.creative.approved, expected_creative_approved);
    XCTAssertEqualObjects(result.creative.customPayload, expected_creative_customPayload);
    XCTAssertEqualObjects(result.creative.clickUrl, expected_creative_clickUrl);
    XCTAssertEqualObjects(result.creative.installUrl, expected_creative_installUrl);
    XCTAssertEqualObjects(result.creative.impressionUrl, expected_creative_impressionUrl);
    XCTAssertEqualObjects(result.creative.bundleId, expected_creative_bundleId);
    XCTAssertEqualObjects(result.creative.events, expected_creative_events);
    
    XCTAssertNotNil(result.creative.details);
    XCTAssertEqual(result.creative.details.width, expected_details_width);
    XCTAssertEqual(result.creative.details.height, expected_details_height);
    XCTAssertEqualObjects(result.creative.details.name, expected_details_name);
    XCTAssertEqualObjects(result.creative.details.placementFormat, expected_details_placementFormat);
    XCTAssertEqual(result.creative.details.bitrate, expected_details_bitrate);
    XCTAssertEqual(result.creative.details.duration, expected_details_duration);
    XCTAssertEqual(result.creative.details.value, expected_details_value);
    XCTAssertEqualObjects(result.creative.details.image, expected_details_image);
    XCTAssertEqualObjects(result.creative.details.video, expected_details_video);
    XCTAssertEqualObjects(result.creative.details.tag, expected_details_tag);
    XCTAssertEqualObjects(result.creative.details.zipFile, expected_details_zipFile);
    XCTAssertEqualObjects(result.creative.details.url, expected_details_url);
    XCTAssertEqualObjects(result.creative.details.cdnUrl, expected_details_cdnUrl);
    XCTAssertEqualObjects(result.creative.details.vast, expected_details_vast);
    
    XCTAssertNotNil(result.creative.details.media);
    XCTAssertEqualObjects(result.creative.details.media.html, expected_media_html);
    XCTAssertEqualObjects(result.creative.details.media.playableDiskUrl, expected_media_playableDiskUrl);
    XCTAssertEqualObjects(result.creative.details.media.playableMediaUrl, expected_media_playableMediaUrl);
    XCTAssertEqualObjects(result.creative.details.media.type, expected_media_type);
    XCTAssertEqual(result.creative.details.media.bitrate, expected_media_bitrate);
    XCTAssertEqual(result.creative.details.media.isOnDisk, expected_media_isOnDisk);
    
}

@end
