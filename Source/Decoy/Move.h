// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "GameFramework/Actor.h"
#include "Move.generated.h"

UCLASS()
class DECOY_API AMove : public AActor
{
	GENERATED_BODY()
	
public:	
	// Sets default values for this actor's properties
	AMove();

	// Called when the game starts or when spawned
	virtual void BeginPlay() override;
	
	// Called every frame
	virtual void Tick( float DeltaSeconds ) override;

	
	
};
