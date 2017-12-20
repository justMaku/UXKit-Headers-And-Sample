//
//     Generated by class-dump 3.5 (64 bit).
//
//     class-dump is Copyright (C) 1997-1998, 2000-2001, 2004-2013 by Steve Nygard.
//

#import "NSLayoutGuide.h"

#import "UXLayoutSupport.h"

@class NSLayoutConstraint, NSLayoutDimension, NSLayoutYAxisAnchor, NSString;

@interface _UXLayoutSpacer : NSLayoutGuide <UXLayoutSupport>
{
    NSLayoutConstraint *_counterDimensionConstraint;
    NSLayoutConstraint *_dimensionConstraint;
    BOOL _horizontal;
    CDUnknownBlockType _lengthUpdateBlock;
}

+ (id)_horizontalLayoutSpacer;
+ (id)_verticalLayoutSpacer;
@property(copy, nonatomic) CDUnknownBlockType lengthUpdateBlock; // @synthesize lengthUpdateBlock=_lengthUpdateBlock;
@property(nonatomic) BOOL horizontal; // @synthesize horizontal=_horizontal;
- (void).cxx_destruct;
@property(readonly, copy) NSString *description;
@property(nonatomic) double length;
- (void)_activate;
- (void)_setUpDimensionConstraintWithLength:(double)arg1;
- (void)_setUpCounterDimensionConstraint;

// Remaining properties
@property(readonly) NSLayoutYAxisAnchor *bottomAnchor;
@property(readonly, copy) NSString *debugDescription;
@property(readonly) unsigned long long hash;
@property(readonly) NSLayoutDimension *heightAnchor;
@property(readonly) Class superclass;
@property(readonly) NSLayoutYAxisAnchor *topAnchor;

@end
