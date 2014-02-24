//
//  MyScene.m
//  SpiritKit2
//
//  Created by tianxiang zhang on 2/18/14.
//  Copyright (c) 2014 tianxiang zhang. All rights reserved.
//

#import "MyScene.h"
@interface MyScene()
@property SKSpriteNode *mySquare1;
@property SKSpriteNode *mySquare2;
@property SKSpriteNode *mySquare3;
@property SKSpriteNode *mySquare4,*mySquare5,*mySquare6,*mySquare7,*mySquare8,*mySquare9,*mySquare10,*mySquare11,*mySquare12,*mySquare13,*mySquare14,*mySquare15,*mySquare16;
@property SKPhysicsJointLimit *joint1;
@property SKPhysicsJointSpring *joint2;
@property SKPhysicsJointPin *joint3;
@property SKPhysicsJointSliding *joint4;
@property SKPhysicsJointFixed *joint5;
@property SKSpriteNode *node1;
@property UIDynamicAnimator *animator;
@end
@implementation MyScene
-(void) spawnBackgroundSetting{
    self.scaleMode=SKSceneScaleModeAspectFit;
    self.physicsBody=[SKPhysicsBody bodyWithEdgeLoopFromRect:self.frame];
    [self.physicsBody setRestitution:1];
    
}
-(id)initWithSize:(CGSize)size {
    if (self = [super initWithSize:size]) {
        [self spawnBackgroundSetting];
//adding node
        _mySquare1=[self Node:_mySquare1 with:[SKColor blueColor] andsize:20 and:20 position:250 and:250];
        _mySquare2=[self Node:_mySquare2 with:[SKColor greenColor]andsize:20 and:20 position:250 and:230];
        //left hand
        _mySquare3=[self Node:_mySquare3 with:[SKColor redColor]andsize:20 and:20 position:230 and:230];
        _mySquare4=[self Node:_mySquare4 with:[SKColor redColor] andsize:20 and:20 position:210 and:210];
        //body
        _mySquare5=[self Node:_mySquare5 with:[SKColor grayColor] andsize:20 and:20 position:250 and:210];
        _mySquare6=[self Node:_mySquare6 with:[SKColor orangeColor] andsize:20 and:20 position:250 and:190];
        //right hand
        _mySquare7=[self Node:_mySquare7 with:[SKColor redColor] andsize:20 and:20 position:270 and:230];
        _mySquare8=[self Node:_mySquare8 with:[SKColor redColor] andsize:20 and:20 position:290 and:210];
        //body
        _mySquare9=[self Node:_mySquare9 with:[SKColor brownColor] andsize:20 and:20 position:250 and:170];
        _mySquare10=[self Node:_mySquare10 with:[SKColor whiteColor] andsize:20 and:20 position:250 and:150];
       //leg
        _mySquare11=[self Node:_mySquare11 with:[SKColor yellowColor] andsize:20 and:20 position:230 and:150];
        _mySquare12=[self Node:_mySquare12 with:[SKColor yellowColor] andsize:20 and:20 position:230 and:120];
        _mySquare15=[self Node:_mySquare15 with:[SKColor yellowColor] andsize:20 and:20 position:230 and:100];
        //leg
        _mySquare13=[self Node:_mySquare13 with:[SKColor yellowColor] andsize:20 and:20 position:270 and:150];
        _mySquare14=[self Node:_mySquare14 with:[SKColor yellowColor] andsize:20 and:20 position:270 and:120];
        _mySquare16=[self Node:_mySquare16 with:[SKColor yellowColor] andsize:20 and:20 position:270 and:100];
        
        arrayNode=@[_mySquare1,_mySquare2,_mySquare3,_mySquare4,_mySquare5,_mySquare6,_mySquare7,_mySquare8,_mySquare9,_mySquare10,_mySquare11,_mySquare12,_mySquare13,_mySquare14,_mySquare15,_mySquare16];

        for(SKSpriteNode* arr in arrayNode)
        [self addChild:arr];
  //making joint
        
        [self Joint:_mySquare1 with:_mySquare2 using:_joint1];
        [self Jointspring:_mySquare2 with:_mySquare3 using:_joint2];
        [self Jointpin:_mySquare3 with:_mySquare4 using:_joint3];
        [self Jointpin:_mySquare2 with:_mySquare5 using:_joint3];
        [self Jointspring:_mySquare5 with:_mySquare6 using:_joint2];
        [self Joint:_mySquare2 with:_mySquare7 using:_joint1];
        [self Joint:_mySquare7 with:_mySquare8 using:_joint1];
        [self Joint:_mySquare6 with:_mySquare9 using:_joint1];
        [self Joint:_mySquare9 with:_mySquare10 using:_joint1];
        [self Joint:_mySquare10 with:_mySquare11 using:_joint1];
         [self Joint:_mySquare10 with:_mySquare13 using:_joint1];
         [self Joint:_mySquare11 with:_mySquare12 using:_joint1];
          [self Joint:_mySquare13 with:_mySquare14 using:_joint1];
        [self Joint:_mySquare12 with:_mySquare15 using:_joint1];
        [self Joint:_mySquare14 with:_mySquare16 using:_joint1];

        [self Jointspring:_mySquare3 with:_mySquare7 using:_joint2];
        [self Jointspring:_mySquare11 with:_mySquare13 using:_joint2];
      
//        _node1=[SKSpriteNode spriteNodeWithColor:[SKColor redColor] size:CGSizeMake(100, 50)];
//        [_node1 setPosition:CGPointMake(150, 250)];
//        _node1.physicsBody=[SKPhysicsBody bodyWithRectangleOfSize:_node1.size ];
//        [_node1.physicsBody setDynamic:NO];
//        _node1.physicsBody.friction=100;
//        [_node1.physicsBody setRestitution:10];
//        [_node1.physicsBody setAngularVelocity:10];
//        [_node1.physicsBody setUsesPreciseCollisionDetection:YES];
//        [_node1.physicsBody setAffectedByGravity:NO];
//       
//        
//        [self addChild:_node1];
        
        
//        _animator=[[UIDynamicAnimator alloc]initWithReferenceView:self.view];
//        UICollisionBehavior* collision=[[UICollisionBehavior alloc] initWithItems:@[_node1,arrayNode]];
//        [collision setCollisionMode:UICollisionBehaviorModeBoundaries];
//        collision.translatesReferenceBoundsIntoBoundary=YES;
//        [_animator addBehavior:collision];
//        
    }
    return self;
}
-(SKSpriteNode *) Node:(SKSpriteNode *)node with:(UIColor*)color andsize: (float)a and:(float)b position:(float)c and:(float)d
 {
     node=[SKSpriteNode spriteNodeWithColor:color size:CGSizeMake(a, b)];
     [node setPosition:CGPointMake(c,d)];
     node.physicsBody=[SKPhysicsBody bodyWithRectangleOfSize:node.size];
     node.physicsBody.friction=100;
     [node.physicsBody setDensity:10];
     [node.physicsBody setRestitution:1];
     [node.physicsBody setDynamic:YES];
     
    return node;
}



-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    /* Called when a touch begins */
    
    for (UITouch *touch in touches) {
        CGPoint location = [touch locationInNode:self];
        [_mySquare1 setPosition:location];
        [_mySquare1.physicsBody setDynamic:NO];
        
    }
}
-(void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
    for (UITouch *touch in touches) {
        CGPoint location = [touch locationInNode:self];
        [_mySquare1 setPosition:location];
        [_mySquare1.physicsBody setDynamic:YES];}
        

}
-(void) touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{
    for (UITouch *touch in touches) {
        CGPoint location = [touch locationInNode:self];
        [_mySquare1 setPosition:location];}
    [_mySquare1.physicsBody setDynamic:NO];
}
-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
}

@end
