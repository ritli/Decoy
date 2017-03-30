// Fill out your copyright notice in the Description page of Project Settings.

#include "Decoy.h"
#include "Move.h"


// Sets default values
AMove::AMove()
{
 	// Set this actor to call Tick() every frame.  You can turn this off to improve performance if you don't need it.
	PrimaryActorTick.bCanEverTick = true;

}

// Called when the game starts or when spawned
void AMove::BeginPlay()
{
	Super::BeginPlay();
	
}

// Called every frame
void AMove::Tick( float DeltaTime )
{
	Super::Tick( DeltaTime );
	
	SetActorLocation(GetActorLocation() + FVector(0, 0, 10));
}

