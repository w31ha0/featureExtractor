.class public Lcom/netflix/model/branches/SearchVideoListWrapper;
.super Ljava/lang/Object;
.source "SearchVideoListWrapper.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/interface_/search/SearchVideoListProvider;


# instance fields
.field private final videoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/search/SearchVideo;",
            ">;"
        }
    .end annotation
.end field

.field private final videoListSummary:Lcom/netflix/mediaclient/servicemgr/interface_/trackable/SearchTrackable;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/netflix/mediaclient/servicemgr/interface_/trackable/SearchTrackable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/search/SearchVideo;",
            ">;",
            "Lcom/netflix/mediaclient/servicemgr/interface_/trackable/SearchTrackable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/netflix/model/branches/SearchVideoListWrapper;->videoList:Ljava/util/List;

    .line 15
    iput-object p2, p0, Lcom/netflix/model/branches/SearchVideoListWrapper;->videoListSummary:Lcom/netflix/mediaclient/servicemgr/interface_/trackable/SearchTrackable;

    .line 16
    return-void
.end method


# virtual methods
.method public getVideosList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/search/SearchVideo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    iget-object v0, p0, Lcom/netflix/model/branches/SearchVideoListWrapper;->videoList:Ljava/util/List;

    return-object v0
.end method

.method public getVideosListTrackable()Lcom/netflix/mediaclient/servicemgr/interface_/trackable/SearchTrackable;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/netflix/model/branches/SearchVideoListWrapper;->videoListSummary:Lcom/netflix/mediaclient/servicemgr/interface_/trackable/SearchTrackable;

    return-object v0
.end method
