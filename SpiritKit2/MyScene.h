//
//  MyScene.h
//  SpiritKit2
//

//  Copyright (c) 2014 tianxiang zhang. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

#import "method.h"
@interface MyScene : method
{
    SKSpriteNode * arrayNode;
}

@property SKSpriteNode *mySquare1;
@property SKSpriteNode *mySquare2;
@property SKSpriteNode *mySquare3;
@property SKSpriteNode *mySquare4,*mySquare5,*mySquare6,*mySquare7,*mySquare8,*mySquare9,*mySquare10;
@property SKPhysicsJointLimit *joint1;
@property SKPhysicsJointSpring *joint2;
@property SKPhysicsJointPin *joint3;
@property SKPhysicsJointSliding *joint4;
@property SKPhysicsJointFixed *joint5;
@property SKSpriteNode *node1;
@property UIDynamicAnimator *animator;

@end
