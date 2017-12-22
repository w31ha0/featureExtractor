.class public Lcom/netflix/mediaclient/servicemgr/interface_/PlaybackBookmark;
.super Ljava/lang/Object;
.source "PlaybackBookmark.java"


# instance fields
.field public final mBookmarkInSecond:I

.field public final mBookmarkUpdateTimeInUTCMs:J

.field public final mVideoId:Ljava/lang/String;


# direct methods
.method public constructor <init>(IJLjava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/PlaybackBookmark;->mBookmarkInSecond:I

    .line 21
    iput-wide p2, p0, Lcom/netflix/mediaclient/servicemgr/interface_/PlaybackBookmark;->mBookmarkUpdateTimeInUTCMs:J

    .line 22
    iput-object p4, p0, Lcom/netflix/mediaclient/servicemgr/interface_/PlaybackBookmark;->mVideoId:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public static fromAsset(Lcom/netflix/mediaclient/servicemgr/Asset;)Lcom/netflix/mediaclient/servicemgr/interface_/PlaybackBookmark;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 33
    if-nez p0, :cond_1

    .line 40
    :cond_0
    :goto_0
    return-object v0

    .line 36
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/Asset;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    .line 37
    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 40
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/PlaybackBookmark;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/Asset;->getPlaybackBookmark()I

    move-result v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v0, v2, v4, v5, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/PlaybackBookmark;-><init>(IJLjava/lang/String;)V

    goto :goto_0
.end method
