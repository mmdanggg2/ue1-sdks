/*=============================================================================
	UnNetDrv.h: Unreal network driver base class.
	Copyright 1997-1999 Epic Games, Inc. All Rights Reserved.

	Revision history:
		* Created by Tim Sweeney
=============================================================================*/

#ifndef _UNNETDRV_H_
#define _UNNETDRV_H_

#if ((_MSC_VER) || (HAVE_PRAGMA_PACK))
#pragma pack(push,OBJECT_ALIGNMENT)
#endif

/*-----------------------------------------------------------------------------
	UPackageMapLevel.
-----------------------------------------------------------------------------*/

class ENGINE_API UPackageMapLevel : public UPackageMap
{
	DECLARE_CLASS(UPackageMapLevel,UPackageMap,CLASS_Transient,Engine);
	UNetConnection* Connection;
	INT EngineGen;

	UBOOL CanSerializeObject( UObject* Obj );
	UBOOL SerializeObject( FArchive& Ar, UClass* Class, UObject*& Obj );
	INT NetVersion();
	INT EngineGeneration();
	UBOOL DowngradePackages();

	UPackageMapLevel()
	{}

	UPackageMapLevel( UNetConnection* InConnection )
	: Connection( InConnection )
	{}
};

/*-----------------------------------------------------------------------------
	UNetDriver.
-----------------------------------------------------------------------------*/

//
// Base class of a network driver attached to an active or pending level.
//
class ENGINE_API UNetDriver : public USubsystem
{
	DECLARE_ABSTRACT_CLASS(UNetDriver,USubsystem,CLASS_Transient|CLASS_Config,Engine)

	// Variables.
	TArray<UNetConnection*>		ClientConnections;
	UNetConnection*				ServerConnection;
	FNetworkNotify*				Notify;
	UPackageMap*				MasterMap;
	FTime 						Time;
	FLOAT						ConnectionTimeout;
	FLOAT						InitialConnectTimeout;
	FLOAT						KeepAliveTime;
	FLOAT						RelevantTimeout;
	FLOAT						SpawnPrioritySeconds;
	FLOAT						ServerTravelPause;
	INT							MaxClientRate;
	INT							NetServerMaxTickRate;
	INT							LanServerMaxTickRate;
	union
	{
		UBOOL					NetDriverConfigBools;
		struct
		{
			BITFIELD			AllowDownloads:1;
			BITFIELD			FullActorChannelCleanup:1;
		};
	};
	INT							MaxFileDownloadRate;
	UProperty*					RoleProperty;
	UProperty*					RemoteRoleProperty;
	INT							SendCycles, RecvCycles;
	INT							MaxDownloadSize;	
	TArray<FString>				DownloadManagers;

	// Globals.
	static UBOOL                DevNetTrafficLogs;

	// Constructors.
	UNetDriver();
	void StaticConstructor();

	// UObject interface.
	void Destroy();
	void Serialize( FArchive& Ar );

	// UNetDriver interface.
	virtual void LowLevelDestroy()=0;
	virtual FString LowLevelGetNetworkNumber()=0;
	virtual void AssertValid();
	virtual UBOOL InitConnect( FNetworkNotify* InNotify, FURL& ConnectURL, FString& Error );
	virtual UBOOL InitListen( FNetworkNotify* InNotify, FURL& ListenURL, FString& Error );
	virtual void TickFlush();
	virtual void TickDispatch( FLOAT DeltaTime );
	virtual UBOOL Exec( const TCHAR* Cmd, FOutputDevice& Ar=*GLog );
	virtual void NotifyActorDestroyed( AActor* Actor );

	FLOAT GetServerMaxTickRate( UBOOL bLanPlay);
};

#if ((_MSC_VER) || (HAVE_PRAGMA_PACK))
#pragma pack (pop)
#endif

#endif
/*-----------------------------------------------------------------------------
	The End.
-----------------------------------------------------------------------------*/
