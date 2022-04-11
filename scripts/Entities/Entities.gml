/// Script for managing Entities
function EntityHitDestroy()
{
	instance_destroy();
}


function EntityHitSolid()
{
	flash = 0.5;	
}

// handle lifting for entities
function ActivateLiftable(_id)
{
	if (global.iLifted == noone)
	{
		PlayerActOutAnimation(sPlayerLift);
		
		spriteIdle = sPlayerCarrying
		spriteRun = sPlayerRunCarrying	
		
		global.iLifted = argument0;
		with (global.iLifted)
		{
			lifted = true;
			persistent = true;	
		}
	}
	
	
}


