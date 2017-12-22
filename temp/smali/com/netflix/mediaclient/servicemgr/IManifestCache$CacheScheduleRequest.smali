.class public Lcom/netflix/mediaclient/servicemgr/IManifestCache$CacheScheduleRequest;
.super Ljava/lang/Object;
.source "IManifestCache.java"


# instance fields
.field private mMovieId:J

.field private mPriority:J

.field private mTrackId:J


# direct methods
.method public constructor <init>(JJJ)V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-wide p1, p0, Lcom/netflix/mediaclient/servicemgr/IManifestCache$CacheScheduleRequest;->mMovieId:J

    .line 12
    iput-wide p3, p0, Lcom/netflix/mediaclient/servicemgr/IManifestCache$CacheScheduleRequest;->mTrackId:J

    .line 13
    iput-wide p5, p0, Lcom/netflix/mediaclient/servicemgr/IManifestCache$CacheScheduleRequest;->mPriority:J

    .line 14
    return-void
.end method


# virtual methods
.method public getMovieId()J
    .locals 2

    .prologue
    .line 17
    iget-wide v0, p0, Lcom/netflix/mediaclient/servicemgr/IManifestCache$CacheScheduleRequest;->mMovieId:J

    return-wide v0
.end method

.method public getPriority()J
    .locals 2

    .prologue
    .line 25
    iget-wide v0, p0, Lcom/netflix/mediaclient/servicemgr/IManifestCache$CacheScheduleRequest;->mPriority:J

    return-wide v0
.end method

.method public getTrackId()J
    .locals 2

    .prologue
    .line 21
    iget-wide v0, p0, Lcom/netflix/mediaclient/servicemgr/IManifestCache$CacheScheduleRequest;->mTrackId:J

    return-wide v0
.end method
