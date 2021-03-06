//
//  TR3Level.m
//  TR Poser
//
//  Created by Torsten Kammer on 20.08.12.
//  Copyright (c) 2012 Torsten Kammer. All rights reserved.
//

#import "TR3Level.h"

@implementation TR3Level

+ (NSString *)structureDescriptionSource
{
	return @"const bitu32=4278714424,4279763000;\
	*Palette8 palette8;\
	*Palette16 palette16;\
	*TexturePage8 textureTiles8[bitu32];\
	*TexturePage16 textureTiles16[textureTiles8.@count];\
	bitu32 unused1;\
	*Room rooms[bitu16];\
	*FloorDataList floorData;\
	substream meshData[bitu32*2];\
	*MeshPointer meshPointers[bitu32];\
	*Animation animations[bitu32];\
	*StateChange stateChanges[bitu32];\
	*AnimationDispatch animationDispatches[bitu32];\
	*AnimationCommandList animationCommands;\
	*MeshTree meshTrees[bitu32/4];\
	*FrameData frames;\
	*Moveable moveables[bitu32];\
	*StaticMesh staticMeshes[bitu32];\
	*SpriteTexture spriteTextures[bitu32];\
	*SpriteSequence spriteSequences[bitu32];\
	*Camera cameras[bitu32];\
	*SoundSource soundSources[bitu32];\
	*Box boxes[bitu32];\
	bitu16 overlaps[bitu32];\
	*Zone zones[boxes.@count];\
	bitu16 animatedTextures[bitu32];\
	*Texture objectTextures[bitu32];\
	*Item items[bitu32];\
	*Lightmap lightmap;\
	*CinematicFrame cinematicFrames[bitu16];\
	bitu8 demoData[bitu16];\
	*SoundMap soundMap;\
	*SoundDetail soundDetails[bitu32];\
	bitu32 sampleIndices[bitu32];";
}

- (NSUInteger)gameVersion;
{
	return 3;
}

- (double)normalizeLightValue:(NSUInteger)value;
{
	// This came from vt, but all links there seem to have died.
	return value / 32767.0;
}
- (NSUInteger)lightValueFromBrightness:(double)brightness
{
	return (NSUInteger) (brightness * 32767.0);
}

@end
