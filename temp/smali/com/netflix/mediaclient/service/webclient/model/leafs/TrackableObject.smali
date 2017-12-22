.class public Lcom/netflix/mediaclient/service/webclient/model/leafs/TrackableObject;
.super Ljava/lang/Object;
.source "TrackableObject.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;


# instance fields
.field private final listPos:I

.field private final reqId:Ljava/lang/String;

.field private final trackId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/TrackableObject;->reqId:Ljava/lang/String;

    .line 14
    iput p2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/TrackableObject;->trackId:I

    .line 15
    iput p3, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/TrackableObject;->listPos:I

    .line 16
    return-void
.end method


# virtual methods
.method public getHeroTrackId()I
    .locals 2

    .prologue
    .line 35
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Should not be needed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getImpressionToken()Ljava/lang/String;
    .locals 2

    .prologue
    .line 40
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Should not be needed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getListPos()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/TrackableObject;->listPos:I

    return v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/TrackableObject;->reqId:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackId()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/TrackableObject;->trackId:I

    return v0
.end method

.method public isHero()Z
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method
