//
//  MegaBato.m
//  MegabatoPlus
//
//  Created by Luis Venegas on 10/10/12.
//  Copyright (c) 2012 Luis Venegas. All rights reserved.
//

#import "MegaBato.h"
#import "AppDelegate.h"
// Not included in "cocos2d.h"
#import "CCPhysicsSprite.h"
// Not included in "cocos2d.h"

@implementation MegaBato
@synthesize playerShootingAnimated;

-(id) init{
    if( (self=[super init])) {
        
       // CGSize winSize = [[CCDirector sharedDirector] winSize];
        
        CCSpriteBatchNode *playerSpriteSheet= [CCSpriteBatchNode batchNodeWithFile:@"spritesMegaman.png"];
        [self addChild:playerSpriteSheet];
        
      //  CCSprite *player = [[CCSprite alloc]init];
      //  player = [CCSprite spriteWithSpriteFrame:[CCSpriteFrame frameWithTexture:playerSpriteSheet.texture rect:CGRectMake(0,0,32,32)]];
        //player.position = ccp(player.contentSize.width/2, winSize.height/2);
        
        CCPhysicsSprite *player = [[CCPhysicsSprite alloc]init];
        player = [CCPhysicsSprite spriteWithSpriteFrame:[CCSpriteFrame frameWithTexture:playerSpriteSheet.texture rect:CGRectMake(0,0,32,32)]];
        
        [player.texture setAliasTexParameters];
        [playerSpriteSheet addChild:player];
        
        //define los cuadros de animacion flipbook
        NSArray *runningFrames = [[NSArray alloc] initWithObjects:
                                  [CCSpriteFrame frameWithTexture:playerSpriteSheet.texture rect:CGRectMake(96,0,32,32)],
                                  [CCSpriteFrame frameWithTexture:playerSpriteSheet.texture rect:CGRectMake(128,0,32,32)],
                                  [CCSpriteFrame frameWithTexture:playerSpriteSheet.texture rect:CGRectMake(160,0,32,32)],
                                  [CCSpriteFrame frameWithTexture:playerSpriteSheet.texture rect:CGRectMake(128,0,32,32)],
                                  nil];
        CCAnimation *playerRunningAnimation = [CCAnimation animationWithSpriteFrames:runningFrames delay:0.15];
        [runningFrames release];
        CCAnimate *playerRunningAnimated = [CCAnimate actionWithAnimation:playerRunningAnimation];
        CCRepeatForever *playerRunningAnimatedLoop = [CCRepeatForever actionWithAction:playerRunningAnimated];
        
        
     /*   NSArray *shootingFrames = [[NSArray alloc] initWithObjects:
                                   [CCSpriteFrame frameWithTexture:playerSpriteSheet.texture rect:CGRectMake(130,382,43,42)],
                                   [CCSpriteFrame frameWithTexture:playerSpriteSheet.texture rect:CGRectMake(176,380,44,44)],
                                   nil];
        CCAnimation *playerShootingAnimation = [CCAnimation animationWithSpriteFrames:shootingFrames delay:0.07];
        [shootingFrames release];
        
        self.playerShootingAnimated =[CCAnimate actionWithAnimation:playerShootingAnimation];
        
        NSArray *dyingFrames = [[NSArray alloc] initWithObjects:
                                [CCSpriteFrame frameWithTexture:playerSpriteSheet.texture rect:CGRectMake(154,205,30,46)],
                                [CCSpriteFrame frameWithTexture:playerSpriteSheet.texture rect:CGRectMake(191,207,30,44)],
                                [CCSpriteFrame frameWithTexture:playerSpriteSheet.texture rect:CGRectMake(231,213,32,38)],
                                [CCSpriteFrame frameWithTexture:playerSpriteSheet.texture rect:CGRectMake(383,229,47,22)],
                                [CCSpriteFrame frameWithTexture:playerSpriteSheet.texture rect:CGRectMake(433,229,47,22)],
                                nil];
        CCAnimation *playerDyingAnimation = [CCAnimation animationWithSpriteFrames:dyingFrames delay:0.07];
        self.playerDyingAnimated =[CCAnimate actionWithAnimation:playerDyingAnimation];
        [dyingFrames release];*/
        
        
        
        
        
        [player runAction:playerRunningAnimatedLoop];

    }
    return self;
}
@end
