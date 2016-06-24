//
//  DownloadWindowController.m
//  NPAPI_Download_Plugin
//
// Created by TanHao on 13-2-22.
// Copyright (c) 2012年 http://www.tanhao.me. All rights reserved.
//

#import "DownloadWindowController.h"

@implementation DownloadWindowController
@synthesize url;

- (id)init
{
    self = [super initWithWindowNibName:@"DownloadWindowController"];
    return self;
}

- (void)dealloc
{
    [super dealloc];
    [url release];
}

- (void)awakeFromNib
{
    if (url) {
        [urlField setStringValue:url];
    }
}

- (NSString *)url
{
    return url;
}

- (void)setUrl:(NSString *)aUrl
{
    if (aUrl != url) {
        if (url) {
            [url release];
        }
        url = [aUrl retain];
        [urlField setStringValue:url];
    }
}

@end
