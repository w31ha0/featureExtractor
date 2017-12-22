.class public Lcom/netflix/mediaclient/media/PlayerManifestData;
.super Ljava/lang/Object;
.source "PlayerManifestData.java"


# instance fields
.field private availableBitrates:[Ljava/lang/String;

.field private duration:J

.field private maxGopSize:I

.field private playbackDisplaySpec:Lcom/netflix/mediaclient/media/PlayerManifestData$PlaybackDisplaySpec;


# direct methods
.method public constructor <init>(J[Ljava/lang/String;Lcom/netflix/mediaclient/media/PlayerManifestData$PlaybackDisplaySpec;I)V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-wide p1, p0, Lcom/netflix/mediaclient/media/PlayerManifestData;->duration:J

    .line 66
    iput-object p3, p0, Lcom/netflix/mediaclient/media/PlayerManifestData;->availableBitrates:[Ljava/lang/String;

    .line 67
    iput-object p4, p0, Lcom/netflix/mediaclient/media/PlayerManifestData;->playbackDisplaySpec:Lcom/netflix/mediaclient/media/PlayerManifestData$PlaybackDisplaySpec;

    .line 68
    iput p5, p0, Lcom/netflix/mediaclient/media/PlayerManifestData;->maxGopSize:I

    .line 69
    return-void
.end method


# virtual methods
.method public getAvailableBitrates()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/netflix/mediaclient/media/PlayerManifestData;->availableBitrates:[Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/netflix/mediaclient/media/PlayerManifestData;->duration:J

    return-wide v0
.end method

.method public getGopMaxSizeInMs()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/netflix/mediaclient/media/PlayerManifestData;->maxGopSize:I

    return v0
.end method

.method public getPlaybackDisplaySpec()Lcom/netflix/mediaclient/media/PlayerManifestData$PlaybackDisplaySpec;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/netflix/mediaclient/media/PlayerManifestData;->playbackDisplaySpec:Lcom/netflix/mediaclient/media/PlayerManifestData$PlaybackDisplaySpec;

    return-object v0
.end method
