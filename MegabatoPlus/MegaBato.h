//
//  MegaBato.h
//  MegabatoPlus
//
//  Created by Luis Venegas on 10/10/12.
//  Copyright (c) 2012 Luis Venegas. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"
#import "CCPhysicsSprite.h"


@interface MegaBato : CCPhysicsSprite
{
    CCAnimate *playerShootingAnimated;
}
@property (nonatomic,retain) CCAnimate *playerShootingAnimated;

@end
