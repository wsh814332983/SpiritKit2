//
//  method.m
//  SpiritKit2
//
//  Created by tianxiang zhang on 2/22/14.
//  Copyright (c) 2014 tianxiang zhang. All rights reserved.
//

#import "method.h"

@implementation method
-(void) Joint:(SKSpriteNode*)mysquare1 with:(SKSpriteNode*)mysquare2 using:(SKPhysicsJointLimit*) joint{
    
    joint=[SKPhysicsJointLimit jointWithBodyA:mysquare1.physicsBody bodyB:mysquare2.physicsBody anchorA:mysquare1.position anchorB:mysquare2.position];
    [self.physicsWorld addJoint:joint];
}
-(void) Jointspring:(SKSpriteNode*)mysquare1 with:(SKSpriteNode*)mysquare2 using:(SKPhysicsJointSpring*) joint{
    
    joint=[SKPhysicsJointSpring jointWithBodyA:mysquare1.physicsBody bodyB:mysquare2.physicsBody anchorA:mysquare1.position anchorB:mysquare2.position];
    [self.physicsWorld addJoint:joint];
}
-(void) Jointpin:(SKSpriteNode*)mysquare1 with:(SKSpriteNode*)mysquare2 using:(SKPhysicsJointPin*) joint{
    
    joint=[SKPhysicsJointPin jointWithBodyA:mysquare1.physicsBody bodyB:mysquare2.physicsBody anchor:CGPointMake(mysquare1.position.x, mysquare1.position.y)];
    [self.physicsWorld addJoint:joint];
}
-(void) Jointslide:(SKSpriteNode*)mysquare1 with:(SKSpriteNode*)mysquare3 using:(SKPhysicsJointSliding*)joint
{
    joint=[SKPhysicsJointSliding jointWithBodyA:mysquare1.physicsBody bodyB:mysquare3.physicsBody anchor:mysquare1.position axis:CGVectorMake(700,700)];
}
-(void) JointFix:(SKSpriteNode*)mysquare1 with:(SKSpriteNode*)mysquare2 using:(SKPhysicsJointFixed*)joint{
    joint=[SKPhysicsJointFixed jointWithBodyA:mysquare1.physicsBody bodyB:mysquare2.physicsBody anchor:mysquare1.position];
}

@end
