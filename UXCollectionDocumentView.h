//
//     Generated by class-dump 3.5 (64 bit).
//
//     class-dump is Copyright (C) 1997-1998, 2000-2001, 2004-2013 by Steve Nygard.
//

#import "NSView.h"

@class UXCollectionView;

@interface UXCollectionDocumentView : NSView
{
    UXCollectionView *_collectionView;
}

@property(nonatomic) __weak UXCollectionView *collectionView; // @synthesize collectionView=_collectionView;
- (id)accessibilityHitTest:(struct CGPoint)arg1;
- (BOOL)acceptsFirstResponder;
- (void)prepareContentInRect:(struct CGRect)arg1;
- (void)_invalidateFocus;
- (BOOL)isFlipped;
- (BOOL)wantsUpdateLayer;
- (BOOL)isOpaque;
- (id)initWithFrame:(struct CGRect)arg1;

@end

