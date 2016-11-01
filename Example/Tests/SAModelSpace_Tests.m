//
//  SAModelSpaceTests.m
//  SAModelSpaceTests
//
//  Created by Gabriel Coman on 06/27/2016.
//  Copyright (c) 2016 Gabriel Coman. All rights reserved.
//

@import XCTest;

// import ad
#import "SAAd.h"
#import "SACreative.h"
#import "SADetails.h"
#import "SAMedia.h"
#import "SAResponse.h"
#import "SATracking.h"

@interface SAModelSpace_Tests : XCTestCase
@end

@implementation SAModelSpace_Tests

- (void) setUp {
    [super setUp];
}

- (void)tearDown {
    [super tearDown];
}

- (void) testModelSpace1 {
    // given
    NSString *fp1 = [[NSBundle mainBundle] pathForResource:@"json1" ofType:@"json"];
    NSString *given = [NSString stringWithContentsOfFile:fp1 encoding:NSUTF8StringEncoding error:nil];
    
    // when
    NSInteger expected_error = 0;
    NSInteger expected_advertiserId = 1;
    NSInteger expected_publisherId = 1;
    NSInteger expected_app = 1484;
    NSInteger expected_lineItemId = 931;
    NSInteger expected_campaignId = 0;
    NSInteger expected_placementId = 0;
    SACampaignType expected_campaignType = cpm;
    BOOL expected_test = false;
    BOOL expected_isFallback = false;
    BOOL expected_isFill = false;
    BOOL expected_isHouse = false;
    BOOL expected_safeAdApproved = true;
    BOOL expected_showPadlock = true;
    BOOL expected_isVAST = false;
    NSString *expected_device = @"web";
    SAVASTAdType expected_vastType = InLine;
    NSString *expected_vastRedirect = NULL;
    
    NSInteger expected_creative_id = 4906;
    NSString *expected_creative_name = NULL;
    NSInteger expected_creative_cpm = 0;
    NSString *expected_creative_format = @"video";
    SACreativeFormat expected_creative_creativeFormat = invalid;
    BOOL expected_creative_live = true;
    BOOL expected_creative_approved = true;
    NSString *expected_creative_customPayload = NULL;
    NSString *expected_creative_clickUrl = @"https://superawesome.tv";
    NSString *expected_creative_installUrl = NULL;
    NSString *expected_creative_impressionUrl = NULL;
    NSString *expected_creative_bundleId = NULL;
    NSArray <SATracking*> *expected_creative_events = @[];
    
    NSInteger expected_details_width = 600;
    NSInteger expected_details_height = 480;
    NSString *expected_details_name = NULL;
    NSString *expected_details_placementFormat = @"video";
    NSInteger expected_details_bitrate = 0;
    NSInteger expected_details_duration = 32;
    NSInteger expected_details_value = 0;
    NSString *expected_details_image = @"https://s3-eu-west-1.amazonaws.com/sb-ads-video-transcoded/Jnit8s0LdkbOKbx6q6qn4A4jqMid2T4I.mp4";
    NSString *expected_details_video = @"https://s3-eu-west-1.amazonaws.com/sb-ads-video-transcoded/Jnit8s0LdkbOKbx6q6qn4A4jqMid2T4I.mp4";
    NSString *expected_details_tag = NULL;
    NSString *expected_details_zipFile = NULL;
    NSString *expected_details_url = @"https://s3-eu-west-1.amazonaws.com/sb-ads-video-transcoded/Jnit8s0LdkbOKbx6q6qn4A4jqMid2T4I.mp4";
    NSString *expected_details_cdnUrl = NULL;
    NSString *expected_details_vast = @"https://ads.staging.superawesome.tv/v2/video/vast/480/931/4906/?sdkVersion=unknown&rnd=434251983&device=web";
    
    NSString *expected_media_html = NULL;
    NSString *expected_media_playableDiskUrl = NULL;
    NSString *expected_media_playableMediaUrl = NULL;
    NSString *expected_media_type = NULL;
    NSInteger expected_media_bitrate = 0;
    BOOL expected_media_isOnDisk = false;
    
    // then
    SAAd *result = [[SAAd alloc] initWithJsonString:given];
    
    // assert
    XCTAssertNotNil(result);
    XCTAssertEqual(result.error, expected_error);
    XCTAssertEqual(result.advertiserId, expected_advertiserId);
    XCTAssertEqual(result.publisherId, expected_publisherId);
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
    XCTAssertEqual(result.isVAST, expected_isVAST);
    XCTAssertEqual(result.vastType, expected_vastType);
    XCTAssertEqualObjects(result.vastRedirect, expected_vastRedirect);
    
    XCTAssertNotNil(result.creative);
    XCTAssertEqual(result.creative._id, expected_creative_id);
    XCTAssertEqualObjects(result.creative.name, expected_creative_name);
    XCTAssertEqual(result.creative.cpm, expected_creative_cpm);
    XCTAssertEqualObjects(result.creative.format, expected_creative_format);
    XCTAssertEqual(result.creative.creativeFormat,  expected_creative_creativeFormat);
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

- (void) testModelSpace2 {
    // given
    NSString *fp1 = [[NSBundle mainBundle] pathForResource:@"json2" ofType:@"json"];
    NSString *given = [NSString stringWithContentsOfFile:fp1 encoding:NSUTF8StringEncoding error:nil];
    
    // when
    NSInteger expected_error = 0;
    NSInteger expected_advertiserId = 1;
    NSInteger expected_publisherId = 1;
    NSInteger expected_app = 105;
    NSInteger expected_lineItemId = 138;
    NSInteger expected_campaignId = 117;
    NSInteger expected_placementId = 0;
    SACampaignType expected_campaignType = cpm;
    NSString *expected_device = @"web";
    BOOL expected_test = false;
    BOOL expected_isFallback = false;
    BOOL expected_isFill = false;
    BOOL expected_isHouse = false;
    BOOL expected_safeAdApproved = true;
    BOOL expected_showPadlock = true;
    BOOL expected_isVAST = false;
    SAVASTAdType expected_vastType = InLine;
    NSString *expected_vastRedirect = nil;
    
    NSInteger expected_creative_id = 114;
    NSString *expected_creative_name = @"Banner 1";
    NSInteger expected_creative_cpm = 0;
    NSString *expected_creative_format = @"image_with_link";
    SACreativeFormat expected_creative_creativeFormat = invalid;
    BOOL expected_creative_live = true;
    BOOL expected_creative_approved = true;
    NSString *expected_creative_customPayload = nil;
    NSString *expected_creative_clickUrl = @"http://superawesome.tv";
    NSString *expected_creative_installUrl = nil;
    NSString *expected_creative_impressionUrl = @"http://superawesome.tv";
    NSString *expected_creative_bundleId = nil;
    NSArray <SATracking*> *expected_creative_events = @[];
    
    NSInteger expected_details_width = 320;
    NSInteger expected_details_height = 50;
    NSString *expected_details_name = nil;
    NSString *expected_details_placementFormat = @"mobile_display";
    NSInteger expected_details_bitrate = 0;
    NSInteger expected_details_duration = 0;
    NSInteger expected_details_value = 0;
    NSString *expected_details_image = @"https://s3-eu-west-1.amazonaws.com/sb-ads-uploads/images/cvWABPEIS7vUEtlv5U17MwaTNhRARYjB.png";
    NSString *expected_details_video = @"https://s3-eu-west-1.amazonaws.com/sb-ads-uploads/images/cvWABPEIS7vUEtlv5U17MwaTNhRARYjB.png";
    NSString *expected_details_tag = nil;
    NSString *expected_details_zipFile = nil;
    NSString *expected_details_url = @"https://s3-eu-west-1.amazonaws.com/sb-ads-uploads/images/cvWABPEIS7vUEtlv5U17MwaTNhRARYjB.png";
    NSString *expected_details_cdnUrl = nil;
    NSString *expected_details_vast = nil;
    
    NSString *expected_media_html = nil;
    NSString *expected_media_playableDiskUrl = nil;
    NSString *expected_media_playableMediaUrl = nil;
    NSString *expected_media_type = nil;
    NSInteger expected_media_bitrate = 0;
    BOOL expected_media_isOnDisk = false;
    
    // then
    SAAd *result = [[SAAd alloc] initWithJsonString:given];
    
    // assert
    XCTAssertNotNil(result);
    XCTAssertEqual(result.error, expected_error);
    XCTAssertEqual(result.advertiserId, expected_advertiserId);
    XCTAssertEqual(result.publisherId, expected_publisherId);
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
    XCTAssertEqual(result.isVAST, expected_isVAST);
    XCTAssertEqual(result.vastType, expected_vastType);
    XCTAssertEqualObjects(result.vastRedirect, expected_vastRedirect);
    
    XCTAssertNotNil(result.creative);
    XCTAssertEqual(result.creative._id, expected_creative_id);
    XCTAssertEqualObjects(result.creative.name, expected_creative_name);
    XCTAssertEqual(result.creative.cpm, expected_creative_cpm);
    XCTAssertEqualObjects(result.creative.format, expected_creative_format);
    XCTAssertEqual(result.creative.creativeFormat,  expected_creative_creativeFormat);
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

- (void) testModelSpace3 {
    // given
    NSString *fp1 = [[NSBundle mainBundle] pathForResource:@"json3" ofType:@"json"];
    NSString *given = [NSString stringWithContentsOfFile:fp1 encoding:NSUTF8StringEncoding error:nil];
    
    // when
    NSInteger expected_error = 0;
    NSInteger expected_advertiserId = 1;
    NSInteger expected_publisherId = 1;
    NSInteger expected_app = 105;
    NSInteger expected_lineItemId = 141;
    NSInteger expected_campaignId = 117;
    NSInteger expected_placementId = 0;
    SACampaignType expected_campaignType = cpm;
    NSString *expected_device = @"web";
    BOOL expected_test = false;
    BOOL expected_isFallback = false;
    BOOL expected_isFill = false;
    BOOL expected_isHouse = false;
    BOOL expected_safeAdApproved = true;
    BOOL expected_showPadlock = true;
    BOOL expected_isVAST = false;
    SAVASTAdType expected_vastType = InLine;
    NSString *expected_vastRedirect = nil;
    
    NSInteger expected_creative_id = 127;
    NSString *expected_creative_name = @"Interstitial 3-1";
    NSInteger expected_creative_cpm = 0;
    NSString *expected_creative_format = @"tag";
    SACreativeFormat expected_creative_creativeFormat = invalid;
    BOOL expected_creative_live = true;
    BOOL expected_creative_approved = true;
    NSString *expected_creative_customPayload = nil;
    NSString *expected_creative_clickUrl = nil;
    NSString *expected_creative_installUrl = nil;
    NSString *expected_creative_impressionUrl = nil;
    NSString *expected_creative_bundleId = nil;
    NSArray <SATracking*> *expected_creative_events = @[];
    
    NSInteger expected_details_width = 320;
    NSInteger expected_details_height = 480;
    NSString *expected_details_name = nil;
    NSString *expected_details_placementFormat = @"mobile_display";
    NSInteger expected_details_bitrate = 0;
    NSInteger expected_details_duration = 0;
    NSInteger expected_details_value = 0;
    NSString *expected_details_image = nil;
    NSString *expected_details_video = nil;
    NSString *expected_details_tag = @"<!-- Beginning PassBack for Ad unit FK:Site-Skyscraper-Passback ### size: [[120,600]] -->\\n\\t<script type='text/javascript' src='http://www.googletagservices.com/tag/js/gpt.js'>\\n\\t\\tgoogletag.pubads().definePassback('1002534/FK:Site-Skyscraper-Passback', [[120,600]]).display();\\n\\t</script>\\n<!-- End Passback -->";
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
    SAAd *result = [[SAAd alloc] initWithJsonString:given];
    
    // assert
    XCTAssertNotNil(result);
    XCTAssertEqual(result.error, expected_error);
    XCTAssertEqual(result.advertiserId, expected_advertiserId);
    XCTAssertEqual(result.publisherId, expected_publisherId);
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
    XCTAssertEqual(result.isVAST, expected_isVAST);
    XCTAssertEqual(result.vastType, expected_vastType);
    XCTAssertEqualObjects(result.vastRedirect, expected_vastRedirect);
    
    XCTAssertNotNil(result.creative);
    XCTAssertEqual(result.creative._id, expected_creative_id);
    XCTAssertEqualObjects(result.creative.name, expected_creative_name);
    XCTAssertEqual(result.creative.cpm, expected_creative_cpm);
    XCTAssertEqualObjects(result.creative.format, expected_creative_format);
    XCTAssertEqual(result.creative.creativeFormat,  expected_creative_creativeFormat);
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

- (void) testModelSpace4 {
    // given
    NSString *fp1 = [[NSBundle mainBundle] pathForResource:@"json4" ofType:@"json"];
    NSString *given = [NSString stringWithContentsOfFile:fp1 encoding:NSUTF8StringEncoding error:nil];
    
    // when
    NSInteger expected_error = 0;
    NSInteger expected_advertiserId = 1;
    NSInteger expected_publisherId = 1;
    NSInteger expected_app = 105;
    NSInteger expected_lineItemId = 140;
    NSInteger expected_campaignId = 117;
    NSInteger expected_placementId = 0;
    SACampaignType expected_campaignType = cpm;
    NSString *expected_device = @"web";
    BOOL expected_test = false;
    BOOL expected_isFallback = false;
    BOOL expected_isFill = false;
    BOOL expected_isHouse = false;
    BOOL expected_safeAdApproved = true;
    BOOL expected_showPadlock = true;
    BOOL expected_isVAST = false;
    SAVASTAdType expected_vastType = InLine;
    NSString *expected_vastRedirect = nil;
    
    NSInteger expected_creative_id = 116;
    NSString *expected_creative_name = @"Interstitial 2";
    NSInteger expected_creative_cpm = 0;
    NSString *expected_creative_format = @"rich_media";
    SACreativeFormat expected_creative_creativeFormat = invalid;
    BOOL expected_creative_live = true;
    BOOL expected_creative_approved = true;
    NSString *expected_creative_customPayload = nil;
    NSString *expected_creative_clickUrl = @"http://superawesome.tv";
    NSString *expected_creative_installUrl = nil;
    NSString *expected_creative_impressionUrl = @"http://superawesome.tv";
    NSString *expected_creative_bundleId = nil;
    NSArray <SATracking*> *expected_creative_events = @[];
    
    NSInteger expected_details_width = 320;
    NSInteger expected_details_height = 480;
    NSString *expected_details_name = nil;
    NSString *expected_details_placementFormat = @"mobile_display";
    NSInteger expected_details_bitrate = 0;
    NSInteger expected_details_duration = 0;
    NSInteger expected_details_value = 0;
    NSString *expected_details_image = @"https://s3-eu-west-1.amazonaws.com/sb-ads-uploads/rich-media/tNmFLJ7kGQWBbyORkIqTJ4oqykaGPU9w/rich-media/index.html";
    NSString *expected_details_video = @"https://s3-eu-west-1.amazonaws.com/sb-ads-uploads/rich-media/tNmFLJ7kGQWBbyORkIqTJ4oqykaGPU9w/rich-media/index.html";
    NSString *expected_details_tag = nil;
    NSString *expected_details_zipFile = nil;
    NSString *expected_details_url = @"https://s3-eu-west-1.amazonaws.com/sb-ads-uploads/rich-media/tNmFLJ7kGQWBbyORkIqTJ4oqykaGPU9w/rich-media/index.html";
    NSString *expected_details_cdnUrl = nil;
    NSString *expected_details_vast = nil;
    
    NSString *expected_media_html = nil;
    NSString *expected_media_playableDiskUrl = nil;
    NSString *expected_media_playableMediaUrl = nil;
    NSString *expected_media_type = nil;
    NSInteger expected_media_bitrate = 0;
    BOOL expected_media_isOnDisk = false;
    
    // then
    SAAd *result = [[SAAd alloc] initWithJsonString:given];
    
    // assert
    XCTAssertNotNil(result);
    XCTAssertEqual(result.error, expected_error);
    XCTAssertEqual(result.advertiserId, expected_advertiserId);
    XCTAssertEqual(result.publisherId, expected_publisherId);
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
    XCTAssertEqual(result.isVAST, expected_isVAST);
    XCTAssertEqual(result.vastType, expected_vastType);
    XCTAssertEqualObjects(result.vastRedirect, expected_vastRedirect);
    
    XCTAssertNotNil(result.creative);
    XCTAssertEqual(result.creative._id, expected_creative_id);
    XCTAssertEqualObjects(result.creative.name, expected_creative_name);
    XCTAssertEqual(result.creative.cpm, expected_creative_cpm);
    XCTAssertEqualObjects(result.creative.format, expected_creative_format);
    XCTAssertEqual(result.creative.creativeFormat,  expected_creative_creativeFormat);
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

- (void) testModelSpace5 {
    // given
    NSString *fp1 = [[NSBundle mainBundle] pathForResource:@"json5" ofType:@"json"];
    NSString *given = [NSString stringWithContentsOfFile:fp1 encoding:NSUTF8StringEncoding error:nil];
    
    // when
    NSInteger expected_error = 0;
    NSInteger expected_advertiserId = 1;
    NSInteger expected_publisherId = 1;
    NSInteger expected_app = 541;
    NSInteger expected_lineItemId = 673;
    NSInteger expected_campaignId = 556;
    NSInteger expected_placementId = 0;
    SACampaignType expected_campaignType = cpi;
    NSString *expected_device = @"phone";
    BOOL expected_test = false;
    BOOL expected_isFallback = false;
    BOOL expected_isFill = false;
    BOOL expected_isHouse = false;
    BOOL expected_safeAdApproved = true;
    BOOL expected_showPadlock = true;
    BOOL expected_isVAST = false;
    SAVASTAdType expected_vastType = InLine;
    NSString *expected_vastRedirect = nil;
    
    NSInteger expected_creative_id = 1051;
    NSString *expected_creative_name = @"CPI Gab iOS Banner";
    NSInteger expected_creative_cpm = 0;
    NSString *expected_creative_format = @"image_with_link";
    SACreativeFormat expected_creative_creativeFormat = invalid;
    BOOL expected_creative_live = true;
    BOOL expected_creative_approved = true;
    NSString *expected_creative_customPayload = nil;
    NSString *expected_creative_clickUrl = @"http://theguardian.com";
    NSString *expected_creative_installUrl = nil;
    NSString *expected_creative_impressionUrl = nil;
    NSString *expected_creative_bundleId = @"tv.superawesome.KWSDemo";
    NSArray <SATracking*> *expected_creative_events = @[];
    
    NSInteger expected_details_width = 320;
    NSInteger expected_details_height = 50;
    NSString *expected_details_name = nil;
    NSString *expected_details_placementFormat = @"mobile_display";
    NSInteger expected_details_bitrate = 0;
    NSInteger expected_details_duration = 0;
    NSInteger expected_details_value = 0;
    NSString *expected_details_image = @"https://s3-eu-west-1.amazonaws.com/sb-ads-uploads/images/iwPc7H9hU94gNhw8bx7SBgoQy0rUy3o5.jpg";
    NSString *expected_details_video = @"https://s3-eu-west-1.amazonaws.com/sb-ads-uploads/images/iwPc7H9hU94gNhw8bx7SBgoQy0rUy3o5.jpg";
    NSString *expected_details_tag = nil;
    NSString *expected_details_zipFile = nil;
    NSString *expected_details_url = @"https://s3-eu-west-1.amazonaws.com/sb-ads-uploads/images/iwPc7H9hU94gNhw8bx7SBgoQy0rUy3o5.jpg";
    NSString *expected_details_cdnUrl = nil;
    NSString *expected_details_vast = nil;
    
    NSString *expected_media_html = nil;
    NSString *expected_media_playableDiskUrl = nil;
    NSString *expected_media_playableMediaUrl = nil;
    NSString *expected_media_type = nil;
    NSInteger expected_media_bitrate = 0;
    BOOL expected_media_isOnDisk = false;
    
    // then
    SAAd *result = [[SAAd alloc] initWithJsonString:given];
    
    // assert
    XCTAssertNotNil(result);
    XCTAssertEqual(result.error, expected_error);
    XCTAssertEqual(result.advertiserId, expected_advertiserId);
    XCTAssertEqual(result.publisherId, expected_publisherId);
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
    XCTAssertEqual(result.isVAST, expected_isVAST);
    XCTAssertEqual(result.vastType, expected_vastType);
    XCTAssertEqualObjects(result.vastRedirect, expected_vastRedirect);
    
    XCTAssertNotNil(result.creative);
    XCTAssertEqual(result.creative._id, expected_creative_id);
    XCTAssertEqualObjects(result.creative.name, expected_creative_name);
    XCTAssertEqual(result.creative.cpm, expected_creative_cpm);
    XCTAssertEqualObjects(result.creative.format, expected_creative_format);
    XCTAssertEqual(result.creative.creativeFormat,  expected_creative_creativeFormat);
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

- (void) testModelSpace6 {
    // given
    NSString *fp1 = [[NSBundle mainBundle] pathForResource:@"json6" ofType:@"json"];
    NSString *given = [NSString stringWithContentsOfFile:fp1 encoding:NSUTF8StringEncoding error:nil];
    
    // when
    NSInteger expected_error = 0;
    NSInteger expected_advertiserId = 1;
    NSInteger expected_publisherId = 1;
    NSInteger expected_app = 1484;
    NSInteger expected_lineItemId = 932;
    NSInteger expected_campaignId = 0;
    NSInteger expected_placementId = 481;
    SACampaignType expected_campaignType = cpm;
    NSString *expected_device = nil;
    BOOL expected_test = false;
    BOOL expected_isFallback = false;
    BOOL expected_isFill = false;
    BOOL expected_isHouse = false;
    BOOL expected_safeAdApproved = true;
    BOOL expected_showPadlock = true;
    BOOL expected_isVAST = false;
    SAVASTAdType expected_vastType = InLine;
    NSString *expected_vastRedirect = nil;
    
    NSInteger expected_creative_id = 4907;
    NSString *expected_creative_name = nil;
    NSInteger expected_creative_cpm = 0;
    NSString *expected_creative_format = @"video";
    SACreativeFormat expected_creative_creativeFormat = video;
    BOOL expected_creative_live = false;
    BOOL expected_creative_approved = false;
    NSString *expected_creative_customPayload = nil;
    NSString *expected_creative_clickUrl = @"https://superawesome.tv";
    NSString *expected_creative_installUrl = nil;
    NSString *expected_creative_impressionUrl = nil;
    NSString *expected_creative_bundleId = nil;
    SATracking *t1 = [[SATracking alloc] init];
    t1.event = @"impression";
    t1.URL = @"https://ads.staging.superawesome.tv/v2/video/impression?placement=481&creative=4907&line_item=932&sdkVersion=ios_5.2.3&rnd=8832683&dauid=8798453893251470766&device=phone";
    SATracking *t2 = [[SATracking alloc] init];
    t2.event = @"impression";
    t2.URL = @"https://ads.staging.superawesome.tv/v2/video/impression?placement=481&creative=4907&line_item=932&sdkVersion=ios_5.2.3&rnd=8832683&dauid=8798453893251470766&device=phone";
    SATracking *t3 = [[SATracking alloc] init];
    t3.event = @"err_impression";
    t3.URL = @"https://ads.staging.superawesome.tv/v2/video/impression?placement=481&creative=4907&line_item=932&sdkVersion=ios_5.2.3&rnd=8832683&dauid=8798453893251470766&device=phone";
    SATracking *t4 = [[SATracking alloc] init];
    t4.event = @"err_impression";
    t4.URL = @"https://ads.staging.superawesome.tv/v2/video/tracking?event=skip&placement=481&creative=4907&line_item=932&sdkVersion=ios_5.2.3&rnd=1570851&dauid=8798453893251470766&device=phone";
    SATracking *t5 = [[SATracking alloc] init];
    t5.event = @"err_impression";
    t5.URL = @"https://ads.staging";
    NSArray <SATracking*> *expected_creative_events = @[t1, t2, t3, t4, t5];
    
    NSInteger expected_details_width = 600;
    NSInteger expected_details_height = 480;
    NSString *expected_details_name = nil;
    NSString *expected_details_placementFormat = @"video";
    NSInteger expected_details_bitrate = 0;
    NSInteger expected_details_duration = 32;
    NSInteger expected_details_value = 0;
    NSString *expected_details_image = @"https://s3-eu-west-1.amazonaws.com/sb-ads-video-transcoded/l2UWsR6EWLZ8amjR8dTierr9hNS1mkOP.mp4";
    NSString *expected_details_video = @"https://s3-eu-west-1.amazonaws.com/sb-ads-video-transcoded/l2UWsR6EWLZ8amjR8dTierr9hNS1mkOP.mp4";
    NSString *expected_details_tag = nil;
    NSString *expected_details_zipFile = nil;
    NSString *expected_details_url = @"https://s3-eu-west-1.amazonaws.com/sb-ads-video-transcoded/l2UWsR6EWLZ8amjR8dTierr9hNS1mkOP.mp4";
    NSString *expected_details_cdnUrl = @"https://s3-eu-west-1.amazonaws.com/sb-ads-video-transcoded/";
    NSString *expected_details_vast = @"https://ads.staging.superawesome.tv/v2/video/vast/481/932/4907/?sdkVersion=ios_5.2.3&rnd=621706701&dauid=8798453893251470766&device=phone";
    
    NSString *expected_media_html = nil;
    NSString *expected_media_playableDiskUrl = @"samov_19410.mp4";
    NSString *expected_media_playableMediaUrl = @"https://s3-eu-west-1.amazonaws.com/sb-ads-video-transcoded/l2UWsR6EWLZ8amjR8dTierr9hNS1mkOP.mp4";
    NSString *expected_media_type = @"video/mp4";
    NSInteger expected_media_bitrate = 720;
    BOOL expected_media_isOnDisk = true;
    
    // then
    SAAd *result = [[SAAd alloc] initWithJsonString:given];
    
    // assert
    XCTAssertNotNil(result);
    XCTAssertEqual(result.error, expected_error);
    XCTAssertEqual(result.advertiserId, expected_advertiserId);
    XCTAssertEqual(result.publisherId, expected_publisherId);
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
    XCTAssertEqual(result.isVAST, expected_isVAST);
    XCTAssertEqual(result.vastType, expected_vastType);
    XCTAssertEqualObjects(result.vastRedirect, expected_vastRedirect);
    
    XCTAssertNotNil(result.creative);
    XCTAssertEqual(result.creative._id, expected_creative_id);
    XCTAssertEqualObjects(result.creative.name, expected_creative_name);
    XCTAssertEqual(result.creative.cpm, expected_creative_cpm);
    XCTAssertEqualObjects(result.creative.format, expected_creative_format);
    XCTAssertEqual(result.creative.creativeFormat,  expected_creative_creativeFormat);
    XCTAssertEqual(result.creative.live, expected_creative_live);
    XCTAssertEqual(result.creative.approved, expected_creative_approved);
    XCTAssertEqualObjects(result.creative.customPayload, expected_creative_customPayload);
    XCTAssertEqualObjects(result.creative.clickUrl, expected_creative_clickUrl);
    XCTAssertEqualObjects(result.creative.installUrl, expected_creative_installUrl);
    XCTAssertEqualObjects(result.creative.impressionUrl, expected_creative_impressionUrl);
    XCTAssertEqualObjects(result.creative.bundleId, expected_creative_bundleId);
    XCTAssertEqual(result.creative.events.count, expected_creative_events.count);
    
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

