//
//  method.h
//  SpiritKit2
//
//  Created by tianxiang zhang on 2/22/14.
//  Copyright (c) 2014 tianxiang zhang. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

@interface method : SKScene
-(void) Joint:(SKSpriteNode*)mysquare1 with:(SKSpriteNode*)mysquare2 using:(SKPhysicsJoint*) joint;
-(void) Jointspring:(SKSpriteNode*)mysquare1 with:(SKSpriteNode*)mysquare2 using:(SKPhysicsJoint*) joint;
-(void) Jointpin:(SKSpriteNode*)mysquare1 with:(SKSpriteNode*)mysquare2 using:(SKPhysicsJoint*) joint;
-(void) Jointslide:(SKSpriteNode*)mysquare1 with:(SKSpriteNode*)mysquare3 using:(SKPhysicsJointSliding*)joint;
-(void) JointFix:(SKSpriteNode*)mysquare1 with:(SKSpriteNode*)mysquare2 using:(SKPhysicsJointFixed*)joint;
@end
