.class public Lcom/netflix/model/branches/FalkorVideo;
.super Lcom/netflix/model/BaseFalkorObject;
.source "FalkorVideo.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/interface_/ArtworkUrlProvider;
.implements Lcom/netflix/mediaclient/servicemgr/interface_/BasicVideo;
.implements Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;
.implements Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;
.implements Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;
.implements Lcom/netflix/mediaclient/servicemgr/interface_/Playable;
.implements Lcom/netflix/mediaclient/servicemgr/interface_/RatingInfo;
.implements Lcom/netflix/mediaclient/servicemgr/interface_/Video;
.implements Lcom/netflix/mediaclient/servicemgr/interface_/details/InteractiveMoments;
.implements Lcom/netflix/mediaclient/servicemgr/interface_/details/KubrickShowDetails;
.implements Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;
.implements Lcom/netflix/mediaclient/servicemgr/interface_/details/PostPlayVideo;
.implements Lcom/netflix/mediaclient/servicemgr/interface_/details/PostPlayVideosProvider;
.implements Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;
.implements Lcom/netflix/mediaclient/servicemgr/interface_/search/SearchVideo;
.implements Lcom/netflix/model/branches/FalkorObject;


# static fields
.field private static final EPISODE_NODE_REFRESH_AGE:J

.field private static final TAG:Ljava/lang/String; = "FalkorVideo"

.field private static final VOLATILE_NODE_REFRESH_AGE:J


# instance fields
.field private advisories:Lcom/netflix/model/leafs/Video$Advisories;

.field private baseBigUrl:Lcom/netflix/model/leafs/Video$TrickPlayBaseBigUrl;

.field private baseUrl:Lcom/netflix/model/leafs/Video$TrickPlayBaseUrl;

.field private billboardSummary:Lcom/netflix/model/leafs/originals/BillboardSummary;

.field protected bookmark:Lcom/netflix/model/leafs/Video$Bookmark;

.field private cleanBoxshot:Lcom/netflix/model/leafs/Video$CwCleanBoxart;

.field private detail:Lcom/netflix/model/leafs/Video$Detail;

.field private episodes:Lcom/netflix/falkor/BranchMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/falkor/BranchMap",
            "<",
            "Lcom/netflix/falkor/Ref;",
            ">;"
        }
    .end annotation
.end field

.field private hasWatched:Lcom/netflix/model/leafs/Video$HasWatched;

.field private heroImages:Lcom/netflix/model/leafs/Video$HeroImages;

.field private horizontalDisplayArtUrl:Lcom/netflix/model/leafs/Video$HorizontalDisplayArt;

.field private horizontalDisplaySmallArtUrl:Lcom/netflix/model/leafs/Video$HorizontalDisplaySmallArt;

.field private inQueue:Lcom/netflix/model/leafs/Video$InQueue;

.field private interactiveInfo:Lcom/netflix/model/branches/InteractiveInfo;

.field private interactivePlaybackMoments:Lcom/netflix/model/leafs/InteractivePlaybackMoments;

.field private interestingMomentsUrl:Lcom/netflix/model/leafs/Video$InterestingMomentsUrl;

.field private kubrick:Lcom/netflix/model/leafs/Video$KubrickSummary;

.field protected offlineAvailable:Lcom/netflix/model/leafs/Video$OfflineAvailable;

.field private performerStills:Lcom/netflix/falkor/BranchMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/falkor/BranchMap",
            "<",
            "Lcom/netflix/falkor/Ref;",
            ">;"
        }
    .end annotation
.end field

.field private performers:Lcom/netflix/falkor/BranchMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/falkor/BranchMap",
            "<",
            "Lcom/netflix/falkor/Ref;",
            ">;"
        }
    .end annotation
.end field

.field private postPlayExperience:Lcom/netflix/falkor/Ref;

.field private postPlayImpression:Lcom/netflix/model/leafs/PostPlayImpression;

.field private rating:Lcom/netflix/model/leafs/Video$RatingInfo;

.field private scenes:Lcom/netflix/falkor/BranchMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/falkor/BranchMap",
            "<",
            "Lcom/netflix/model/branches/FalkorScene;",
            ">;"
        }
    .end annotation
.end field

.field private searchTitle:Lcom/netflix/model/leafs/Video$SearchTitle;

.field private seasons:Lcom/netflix/model/branches/SummarizedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/model/branches/SummarizedList",
            "<",
            "Lcom/netflix/falkor/Ref;",
            "Lcom/netflix/model/leafs/TrackableListSummary;",
            ">;"
        }
    .end annotation
.end field

.field private sims:Lcom/netflix/model/branches/SummarizedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/model/branches/SummarizedList",
            "<",
            "Lcom/netflix/falkor/Ref;",
            "Lcom/netflix/model/leafs/TrackableListSummary;",
            ">;"
        }
    .end annotation
.end field

.field private storyImgDisplayArtUrl:Lcom/netflix/model/leafs/Video$StoryImgDisplayArt;

.field private summary:Lcom/netflix/model/leafs/Video$Summary;

.field private supplementalVideos:Lcom/netflix/model/leafs/Video$SupplementalVideos;

.field private trailers:Lcom/netflix/model/branches/SummarizedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/model/branches/SummarizedList",
            "<",
            "Lcom/netflix/falkor/Ref;",
            "Lcom/netflix/model/leafs/TrackableListSummary;",
            ">;"
        }
    .end annotation
.end field

.field private tvCardArtUrl:Lcom/netflix/model/leafs/Video$TvCardArt;

.field private vertStoryArtUrl:Lcom/netflix/model/leafs/Video$VerticalStoryArt;

.field private videoEvidence:Lcom/netflix/model/leafs/Video$Evidence;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 81
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3c

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/netflix/model/branches/FalkorVideo;->VOLATILE_NODE_REFRESH_AGE:J

    .line 82
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x6

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/netflix/model/branches/FalkorVideo;->EPISODE_NODE_REFRESH_AGE:J

    return-void
.end method

.method public constructor <init>(Lcom/netflix/falkor/ModelProxy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/falkor/ModelProxy",
            "<+",
            "Lcom/netflix/falkor/BranchNode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/netflix/model/BaseFalkorObject;-><init>(Lcom/netflix/falkor/ModelProxy;)V

    .line 135
    return-void
.end method

.method private getBookmarkLastUpdateTime()J
    .locals 4

    .prologue
    .line 573
    const-wide/16 v0, -0x1

    .line 575
    iget-object v2, p0, Lcom/netflix/model/branches/FalkorVideo;->bookmark:Lcom/netflix/model/leafs/Video$Bookmark;

    if-eqz v2, :cond_1

    .line 576
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->bookmark:Lcom/netflix/model/leafs/Video$Bookmark;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/Video$Bookmark;->getLastModified()J

    move-result-wide v0

    move-wide v2, v0

    .line 578
    :goto_0
    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorVideo;->getCurrentEpisodeDetail()Lcom/netflix/model/leafs/Episode$Detail;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 579
    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorVideo;->getCurrentEpisode()Lcom/netflix/model/branches/FalkorEpisode;

    move-result-object v0

    const-string/jumbo v1, "bookmark"

    invoke-virtual {v0, v1}, Lcom/netflix/model/branches/FalkorEpisode;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/Video$Bookmark;

    check-cast v0, Lcom/netflix/model/leafs/Video$Bookmark;

    .line 580
    if-eqz v0, :cond_0

    .line 581
    invoke-virtual {v0}, Lcom/netflix/model/leafs/Video$Bookmark;->getLastModified()J

    move-result-wide v2

    .line 584
    :cond_0
    return-wide v2

    :cond_1
    move-wide v2, v0

    goto :goto_0
.end method

.method private getBookmarkPosition()I
    .locals 3

    .prologue
    .line 598
    const/4 v0, -0x1

    .line 600
    iget-object v1, p0, Lcom/netflix/model/branches/FalkorVideo;->bookmark:Lcom/netflix/model/leafs/Video$Bookmark;

    if-eqz v1, :cond_1

    .line 601
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->bookmark:Lcom/netflix/model/leafs/Video$Bookmark;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/Video$Bookmark;->getBookmarkPosition()I

    move-result v0

    move v1, v0

    .line 603
    :goto_0
    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorVideo;->getCurrentEpisodeDetail()Lcom/netflix/model/leafs/Episode$Detail;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 604
    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorVideo;->getCurrentEpisode()Lcom/netflix/model/branches/FalkorEpisode;

    move-result-object v0

    const-string/jumbo v2, "bookmark"

    invoke-virtual {v0, v2}, Lcom/netflix/model/branches/FalkorEpisode;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/Video$Bookmark;

    check-cast v0, Lcom/netflix/model/leafs/Video$Bookmark;

    .line 605
    if-eqz v0, :cond_0

    .line 606
    invoke-virtual {v0}, Lcom/netflix/model/leafs/Video$Bookmark;->getBookmarkPosition()I

    move-result v1

    .line 609
    :cond_0
    return v1

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method private getCurrentEpisode()Lcom/netflix/model/branches/FalkorEpisode;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 740
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->episodes:Lcom/netflix/falkor/BranchMap;

    if-nez v0, :cond_0

    move-object v0, v1

    .line 748
    :goto_0
    return-object v0

    .line 743
    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->episodes:Lcom/netflix/falkor/BranchMap;

    const-string/jumbo v2, "current"

    invoke-virtual {v0, v2}, Lcom/netflix/falkor/BranchMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 744
    if-eqz v0, :cond_1

    instance-of v2, v0, Lcom/netflix/falkor/Sentinel;

    if-eqz v2, :cond_2

    :cond_1
    move-object v0, v1

    .line 745
    goto :goto_0

    .line 747
    :cond_2
    check-cast v0, Lcom/netflix/falkor/Ref;

    .line 748
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getModelProxy()Lcom/netflix/falkor/ModelProxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/falkor/Ref;->getValue(Lcom/netflix/falkor/ModelProxy;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/branches/FalkorEpisode;

    goto :goto_0
.end method

.method private getCurrentEpisodeDetail()Lcom/netflix/model/leafs/Episode$Detail;
    .locals 2

    .prologue
    .line 732
    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorVideo;->getCurrentEpisode()Lcom/netflix/model/branches/FalkorEpisode;

    move-result-object v0

    .line 733
    if-nez v0, :cond_0

    .line 734
    const/4 v0, 0x0

    .line 736
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v1, "detail"

    invoke-virtual {v0, v1}, Lcom/netflix/model/branches/FalkorEpisode;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/Episode$Detail;

    check-cast v0, Lcom/netflix/model/leafs/Episode$Detail;

    goto :goto_0
.end method

.method private getSimilarsSummary()Lcom/netflix/model/leafs/TrackableListSummary;
    .locals 2

    .prologue
    .line 1038
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->sims:Lcom/netflix/model/branches/SummarizedList;

    if-nez v0, :cond_0

    .line 1039
    const/4 v0, 0x0

    .line 1041
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->sims:Lcom/netflix/model/branches/SummarizedList;

    const-string/jumbo v1, "summary"

    invoke-virtual {v0, v1}, Lcom/netflix/model/branches/SummarizedList;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/TrackableListSummary;

    goto :goto_0
.end method

.method private getTrailersSummary()Lcom/netflix/model/leafs/TrackableListSummary;
    .locals 2

    .prologue
    .line 1045
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->trailers:Lcom/netflix/model/branches/SummarizedList;

    if-nez v0, :cond_0

    .line 1046
    const/4 v0, 0x0

    .line 1048
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->trailers:Lcom/netflix/model/branches/SummarizedList;

    const-string/jumbo v1, "summary"

    invoke-virtual {v0, v1}, Lcom/netflix/model/branches/SummarizedList;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/TrackableListSummary;

    goto :goto_0
.end method

.method private isPostPlayInvalid(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1233
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1234
    const-string/jumbo v1, "video ID"

    invoke-direct {p0, p1, v1}, Lcom/netflix/model/branches/FalkorVideo;->logInvalidPostPlayMethod(Ljava/lang/String;Ljava/lang/String;)V

    .line 1242
    :goto_0
    return v0

    .line 1237
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1238
    const-string/jumbo v1, "video type"

    invoke-direct {p0, p1, v1}, Lcom/netflix/model/branches/FalkorVideo;->logInvalidPostPlayMethod(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1242
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private logInvalidPostPlayMethod(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1247
    const-string/jumbo v1, "SPY-7478 - Can\'t get post play "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " because "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is null - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "getType="

    .line 1248
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",getId="

    .line 1249
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",getCurrentEpisodeId="

    .line 1250
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getCurrentEpisodeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1251
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1252
    const-string/jumbo v1, "FalkorVideo"

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    iget-object v1, p0, Lcom/netflix/model/branches/FalkorVideo;->proxy:Lcom/netflix/falkor/ModelProxy;

    invoke-interface {v1}, Lcom/netflix/falkor/ModelProxy;->getServiceProvider()Lcom/netflix/falkor/ServiceProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/falkor/ServiceProvider;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/NetflixService;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getErrorLogging()Lcom/netflix/mediaclient/servicemgr/ErrorLogging;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/servicemgr/ErrorLogging;->logHandledException(Ljava/lang/String;)V

    .line 1254
    return-void
.end method


# virtual methods
.method public createModifiedBigStillUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 527
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/UriUtil;->buildStillUrlFromPos(Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public createModifiedSmallStillUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 523
    invoke-static {p0}, Lcom/netflix/mediaclient/util/UriUtil;->buildSmallStillUrlFromPos(Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public createModifiedStillUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 519
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/UriUtil;->buildStillUrlFromPos(Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 147
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 186
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 147
    :sswitch_0
    const-string/jumbo v1, "cleanBoxart"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v1, "advisories"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v1, "summary"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v1, "legacySummary"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v1, "kubrick"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string/jumbo v1, "detail"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_6
    const-string/jumbo v1, "rating"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_7
    const-string/jumbo v1, "hasWatched"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_8
    const-string/jumbo v1, "inQueue"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :sswitch_9
    const-string/jumbo v1, "bookmark"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x9

    goto :goto_0

    :sswitch_a
    const-string/jumbo v1, "offlineAvailable"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :sswitch_b
    const-string/jumbo v1, "searchTitle"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_0

    :sswitch_c
    const-string/jumbo v1, "evidence"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_0

    :sswitch_d
    const-string/jumbo v1, "heroImgs"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_0

    :sswitch_e
    const-string/jumbo v1, "defaultTrailer"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_0

    :sswitch_f
    const-string/jumbo v1, "vertStoryArt"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xf

    goto/16 :goto_0

    :sswitch_10
    const-string/jumbo v1, "horzDispArt"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x10

    goto/16 :goto_0

    :sswitch_11
    const-string/jumbo v1, "horzDispSmallArt"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x11

    goto/16 :goto_0

    :sswitch_12
    const-string/jumbo v1, "storyImgDispArt"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x12

    goto/16 :goto_0

    :sswitch_13
    const-string/jumbo v1, "tvCardArt"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x13

    goto/16 :goto_0

    :sswitch_14
    const-string/jumbo v1, "interactiveMoments"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x14

    goto/16 :goto_0

    :sswitch_15
    const-string/jumbo v1, "postPlayImpression"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x15

    goto/16 :goto_0

    :sswitch_16
    const-string/jumbo v1, "trickplayBaseUrl"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x16

    goto/16 :goto_0

    :sswitch_17
    const-string/jumbo v1, "intrUrl"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x17

    goto/16 :goto_0

    :sswitch_18
    const-string/jumbo v1, "similars"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x18

    goto/16 :goto_0

    :sswitch_19
    const-string/jumbo v1, "trailers"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x19

    goto/16 :goto_0

    :sswitch_1a
    const-string/jumbo v1, "episodes"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x1a

    goto/16 :goto_0

    :sswitch_1b
    const-string/jumbo v1, "seasons"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x1b

    goto/16 :goto_0

    :sswitch_1c
    const-string/jumbo v1, "scenes"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x1c

    goto/16 :goto_0

    :sswitch_1d
    const-string/jumbo v1, "postPlayExperience"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x1d

    goto/16 :goto_0

    :sswitch_1e
    const-string/jumbo v1, "cast"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x1e

    goto/16 :goto_0

    :sswitch_1f
    const-string/jumbo v1, "castStills"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x1f

    goto/16 :goto_0

    :sswitch_20
    const-string/jumbo v1, "interactive"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x20

    goto/16 :goto_0

    .line 148
    :pswitch_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->cleanBoxshot:Lcom/netflix/model/leafs/Video$CwCleanBoxart;

    goto/16 :goto_1

    .line 149
    :pswitch_1
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->advisories:Lcom/netflix/model/leafs/Video$Advisories;

    goto/16 :goto_1

    .line 150
    :pswitch_2
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->summary:Lcom/netflix/model/leafs/Video$Summary;

    goto/16 :goto_1

    .line 151
    :pswitch_3
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->summary:Lcom/netflix/model/leafs/Video$Summary;

    goto/16 :goto_1

    .line 152
    :pswitch_4
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->kubrick:Lcom/netflix/model/leafs/Video$KubrickSummary;

    goto/16 :goto_1

    .line 153
    :pswitch_5
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getDetail()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    goto/16 :goto_1

    .line 154
    :pswitch_6
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->rating:Lcom/netflix/model/leafs/Video$RatingInfo;

    goto/16 :goto_1

    .line 155
    :pswitch_7
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->hasWatched:Lcom/netflix/model/leafs/Video$HasWatched;

    goto/16 :goto_1

    .line 156
    :pswitch_8
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->inQueue:Lcom/netflix/model/leafs/Video$InQueue;

    goto/16 :goto_1

    .line 157
    :pswitch_9
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->bookmark:Lcom/netflix/model/leafs/Video$Bookmark;

    goto/16 :goto_1

    .line 158
    :pswitch_a
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->offlineAvailable:Lcom/netflix/model/leafs/Video$OfflineAvailable;

    goto/16 :goto_1

    .line 159
    :pswitch_b
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->searchTitle:Lcom/netflix/model/leafs/Video$SearchTitle;

    goto/16 :goto_1

    .line 160
    :pswitch_c
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->videoEvidence:Lcom/netflix/model/leafs/Video$Evidence;

    goto/16 :goto_1

    .line 161
    :pswitch_d
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->heroImages:Lcom/netflix/model/leafs/Video$HeroImages;

    goto/16 :goto_1

    .line 162
    :pswitch_e
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->supplementalVideos:Lcom/netflix/model/leafs/Video$SupplementalVideos;

    goto/16 :goto_1

    .line 163
    :pswitch_f
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->vertStoryArtUrl:Lcom/netflix/model/leafs/Video$VerticalStoryArt;

    goto/16 :goto_1

    .line 164
    :pswitch_10
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->horizontalDisplayArtUrl:Lcom/netflix/model/leafs/Video$HorizontalDisplayArt;

    goto/16 :goto_1

    .line 165
    :pswitch_11
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->horizontalDisplaySmallArtUrl:Lcom/netflix/model/leafs/Video$HorizontalDisplaySmallArt;

    goto/16 :goto_1

    .line 166
    :pswitch_12
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->storyImgDisplayArtUrl:Lcom/netflix/model/leafs/Video$StoryImgDisplayArt;

    goto/16 :goto_1

    .line 167
    :pswitch_13
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->tvCardArtUrl:Lcom/netflix/model/leafs/Video$TvCardArt;

    goto/16 :goto_1

    .line 168
    :pswitch_14
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->interactivePlaybackMoments:Lcom/netflix/model/leafs/InteractivePlaybackMoments;

    goto/16 :goto_1

    .line 169
    :pswitch_15
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->postPlayImpression:Lcom/netflix/model/leafs/PostPlayImpression;

    goto/16 :goto_1

    .line 170
    :pswitch_16
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->baseUrl:Lcom/netflix/model/leafs/Video$TrickPlayBaseUrl;

    goto/16 :goto_1

    .line 171
    :pswitch_17
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->interestingMomentsUrl:Lcom/netflix/model/leafs/Video$InterestingMomentsUrl;

    goto/16 :goto_1

    .line 172
    :pswitch_18
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->sims:Lcom/netflix/model/branches/SummarizedList;

    goto/16 :goto_1

    .line 173
    :pswitch_19
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->trailers:Lcom/netflix/model/branches/SummarizedList;

    goto/16 :goto_1

    .line 174
    :pswitch_1a
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->episodes:Lcom/netflix/falkor/BranchMap;

    goto/16 :goto_1

    .line 175
    :pswitch_1b
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->seasons:Lcom/netflix/model/branches/SummarizedList;

    goto/16 :goto_1

    .line 176
    :pswitch_1c
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->scenes:Lcom/netflix/falkor/BranchMap;

    goto/16 :goto_1

    .line 177
    :pswitch_1d
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->postPlayExperience:Lcom/netflix/falkor/Ref;

    goto/16 :goto_1

    .line 178
    :pswitch_1e
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->performers:Lcom/netflix/falkor/BranchMap;

    goto/16 :goto_1

    .line 179
    :pswitch_1f
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->performerStills:Lcom/netflix/falkor/BranchMap;

    goto/16 :goto_1

    .line 180
    :pswitch_20
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->interactiveInfo:Lcom/netflix/model/branches/InteractiveInfo;

    goto/16 :goto_1

    .line 147
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7b66d863 -> :sswitch_3
        -0x756b9acf -> :sswitch_14
        -0x6eb9585a -> :sswitch_2
        -0x6af67faf -> :sswitch_13
        -0x53efc681 -> :sswitch_f
        -0x4f95e7af -> :sswitch_5
        -0x4f5fd39f -> :sswitch_0
        -0x4899732e -> :sswitch_10
        -0x43bf624c -> :sswitch_7
        -0x37ea4e63 -> :sswitch_6
        -0x36200699 -> :sswitch_1c
        -0x26a8e0e9 -> :sswitch_1
        -0x25b9fe28 -> :sswitch_1a
        -0x24e8e7d6 -> :sswitch_d
        -0x22faf016 -> :sswitch_1f
        -0x20c3ea70 -> :sswitch_b
        -0x1683d2e9 -> :sswitch_4
        -0x9dce382 -> :sswitch_1d
        0x2e7b3f -> :sswitch_1e
        0x26d551d -> :sswitch_15
        0x81f8c26 -> :sswitch_a
        0x16d39e57 -> :sswitch_c
        0x1b7c81d7 -> :sswitch_16
        0x1c8fe7e8 -> :sswitch_18
        0x37d7fbb2 -> :sswitch_e
        0x4a9eaef3 -> :sswitch_12
        0x4c0f11a0 -> :sswitch_19
        0x6deacee2 -> :sswitch_20
        0x703896cd -> :sswitch_11
        0x72cf8aec -> :sswitch_8
        0x74bb280c -> :sswitch_17
        0x7552f1f0 -> :sswitch_1b
        0x7787a536 -> :sswitch_9
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
    .end packed-switch
.end method

.method public getActors()Ljava/lang/String;
    .locals 1

    .prologue
    .line 880
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->detail:Lcom/netflix/model/leafs/Video$Detail;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->detail:Lcom/netflix/model/leafs/Video$Detail;

    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->actors:Ljava/lang/String;

    goto :goto_0
.end method

.method public getAdvisories()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/model/leafs/advisory/Advisory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 803
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->advisories:Lcom/netflix/model/leafs/Video$Advisories;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->advisories:Lcom/netflix/model/leafs/Video$Advisories;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/Video$Advisories;->getAdvisoryList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getAutoPlayMaxCount()I
    .locals 1

    .prologue
    .line 688
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getDetail()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    .line 689
    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, v0, Lcom/netflix/model/leafs/Video$Detail;->autoPlayMaxCount:I

    goto :goto_0
.end method

.method public getBifUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 942
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getDetail()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    .line 943
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->bifUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public getBillboardSummary()Lcom/netflix/model/leafs/originals/BillboardSummary;
    .locals 1

    .prologue
    .line 1270
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->billboardSummary:Lcom/netflix/model/leafs/originals/BillboardSummary;

    return-object v0
.end method

.method public getBookmark()Lcom/netflix/model/leafs/Video$Bookmark;
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->bookmark:Lcom/netflix/model/leafs/Video$Bookmark;

    return-object v0
.end method

.method public getBoxartId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->summary:Lcom/netflix/model/leafs/Video$Summary;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->summary:Lcom/netflix/model/leafs/Video$Summary;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/Video$Summary;->getBoxartId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getBoxshotUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->summary:Lcom/netflix/model/leafs/Video$Summary;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->summary:Lcom/netflix/model/leafs/Video$Summary;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/Video$Summary;->getBoxshotUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCatalogIdUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 948
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getDetail()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    .line 949
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->restUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCertification()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 778
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getDetail()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    .line 779
    if-nez v0, :cond_1

    move-object v0, v1

    .line 780
    :goto_0
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 781
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->searchTitle:Lcom/netflix/model/leafs/Video$SearchTitle;

    if-nez v0, :cond_2

    move-object v0, v1

    .line 783
    :cond_0
    :goto_1
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 784
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->kubrick:Lcom/netflix/model/leafs/Video$KubrickSummary;

    if-nez v0, :cond_3

    .line 786
    :goto_2
    return-object v1

    .line 779
    :cond_1
    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->certification:Ljava/lang/String;

    goto :goto_0

    .line 781
    :cond_2
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->searchTitle:Lcom/netflix/model/leafs/Video$SearchTitle;

    iget-object v0, v0, Lcom/netflix/model/leafs/Video$SearchTitle;->certification:Ljava/lang/String;

    goto :goto_1

    .line 784
    :cond_3
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->kubrick:Lcom/netflix/model/leafs/Video$KubrickSummary;

    iget-object v1, v0, Lcom/netflix/model/leafs/Video$KubrickSummary;->certification:Ljava/lang/String;

    goto :goto_2

    :cond_4
    move-object v1, v0

    goto :goto_2
.end method

.method public getCharacterRoles()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 884
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->detail:Lcom/netflix/model/leafs/Video$Detail;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->detail:Lcom/netflix/model/leafs/Video$Detail;

    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->characterRoles:Ljava/util/Set;

    goto :goto_0
.end method

.method public getCleanBoxshotUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->cleanBoxshot:Lcom/netflix/model/leafs/Video$CwCleanBoxart;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->cleanBoxshot:Lcom/netflix/model/leafs/Video$CwCleanBoxart;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/Video$CwCleanBoxart;->getCleanBoxshotUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCopyright()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1264
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getDetail()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    .line 1265
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->copyright:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCreators()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1074
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getDetail()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    .line 1075
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->directors:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCreditMarks()Lcom/netflix/model/leafs/blades/CreditMarks;
    .locals 1

    .prologue
    .line 1292
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getDetail()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    .line 1293
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->creditMarks:Lcom/netflix/model/leafs/blades/CreditMarks;

    goto :goto_0
.end method

.method public getCurrentEpisodeBadges()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1128
    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorVideo;->getCurrentEpisodeDetail()Lcom/netflix/model/leafs/Episode$Detail;

    move-result-object v0

    .line 1129
    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/netflix/model/leafs/Episode$Detail;->getEpisodeBadges()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getCurrentEpisodeHorzDispUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1116
    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorVideo;->getCurrentEpisodeDetail()Lcom/netflix/model/leafs/Episode$Detail;

    move-result-object v0

    .line 1117
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/netflix/model/leafs/Episode$Detail;->getHorzDispUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCurrentEpisodeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1097
    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorVideo;->getCurrentEpisodeDetail()Lcom/netflix/model/leafs/Episode$Detail;

    move-result-object v0

    .line 1098
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/netflix/model/leafs/Episode$Detail;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCurrentEpisodeNumber()I
    .locals 1

    .prologue
    .line 1091
    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorVideo;->getCurrentEpisodeDetail()Lcom/netflix/model/leafs/Episode$Detail;

    move-result-object v0

    .line 1092
    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/netflix/model/leafs/Episode$Detail;->getEpisodeNumber()I

    move-result v0

    goto :goto_0
.end method

.method public getCurrentEpisodeStoryImgUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1109
    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorVideo;->getCurrentEpisodeDetail()Lcom/netflix/model/leafs/Episode$Detail;

    move-result-object v0

    .line 1110
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/netflix/model/leafs/Episode$Detail;->getSoryImgUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCurrentEpisodeSynopsis()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1122
    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorVideo;->getCurrentEpisodeDetail()Lcom/netflix/model/leafs/Episode$Detail;

    move-result-object v0

    .line 1123
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/netflix/model/leafs/Episode$Detail;->getSynopsis()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCurrentEpisodeTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1103
    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorVideo;->getCurrentEpisodeDetail()Lcom/netflix/model/leafs/Episode$Detail;

    move-result-object v0

    .line 1104
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/netflix/model/leafs/Episode$Detail;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCurrentSeasonNumber()I
    .locals 1

    .prologue
    .line 1134
    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorVideo;->getCurrentEpisodeDetail()Lcom/netflix/model/leafs/Episode$Detail;

    move-result-object v0

    .line 1135
    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/netflix/model/leafs/Episode$Detail;->getSeasonNumber()I

    move-result v0

    goto :goto_0
.end method

.method public getDefaultTrailer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->supplementalVideos:Lcom/netflix/model/leafs/Video$SupplementalVideos;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->supplementalVideos:Lcom/netflix/model/leafs/Video$SupplementalVideos;

    iget-object v0, v0, Lcom/netflix/model/leafs/Video$SupplementalVideos;->defaultTrailer:Ljava/lang/String;

    goto :goto_0
.end method

.method protected getDetail()Lcom/netflix/model/leafs/Video$Detail;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->detail:Lcom/netflix/model/leafs/Video$Detail;

    return-object v0
.end method

.method public getDirectors()Ljava/lang/String;
    .locals 1

    .prologue
    .line 992
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getDetail()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    .line 993
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->directors:Ljava/lang/String;

    goto :goto_0
.end method

.method public getEndtime()I
    .locals 1

    .prologue
    .line 642
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getDetail()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    .line 643
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, v0, Lcom/netflix/model/leafs/Video$Detail;->endtime:I

    goto :goto_0
.end method

.method public getEpisodeBadges()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 844
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getDetail()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    .line 845
    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->episodeBadges:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0
.end method

.method public getEpisodeNumber()I
    .locals 1

    .prologue
    .line 654
    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorVideo;->getCurrentEpisodeDetail()Lcom/netflix/model/leafs/Episode$Detail;

    move-result-object v0

    .line 655
    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/netflix/model/leafs/Episode$Detail;->getEpisodeNumber()I

    move-result v0

    goto :goto_0
.end method

.method public getErrorType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->summary:Lcom/netflix/model/leafs/Video$Summary;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->summary:Lcom/netflix/model/leafs/Video$Summary;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/Video$Summary;->getErrorType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    goto :goto_0
.end method

.method public getEvidenceGlyph()Lcom/netflix/mediaclient/servicemgr/interface_/IconFontGlyph;
    .locals 1

    .prologue
    .line 1145
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->videoEvidence:Lcom/netflix/model/leafs/Video$Evidence;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->videoEvidence:Lcom/netflix/model/leafs/Video$Evidence;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/Video$Evidence;->getIconFontGlyph()Lcom/netflix/mediaclient/servicemgr/interface_/IconFontGlyph;

    move-result-object v0

    goto :goto_0
.end method

.method public getEvidenceText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1140
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->videoEvidence:Lcom/netflix/model/leafs/Video$Evidence;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->videoEvidence:Lcom/netflix/model/leafs/Video$Evidence;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/Video$Evidence;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getExpirationTime()J
    .locals 2

    .prologue
    .line 797
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getDetail()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    .line 798
    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, v0, Lcom/netflix/model/leafs/Video$Detail;->expirationTime:J

    goto :goto_0
.end method

.method public getGenres()Ljava/lang/String;
    .locals 1

    .prologue
    .line 889
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->detail:Lcom/netflix/model/leafs/Video$Detail;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->detail:Lcom/netflix/model/leafs/Video$Detail;

    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->genres:Ljava/lang/String;

    goto :goto_0
.end method

.method public getHeroImages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1178
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->heroImages:Lcom/netflix/model/leafs/Video$HeroImages;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->heroImages:Lcom/netflix/model/leafs/Video$HeroImages;

    iget-object v0, v0, Lcom/netflix/model/leafs/Video$HeroImages;->heroImgs:Ljava/util/List;

    goto :goto_0
.end method

.method public getHighResolutionLandscapeBoxArtUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 927
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getDetail()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    .line 928
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->hiResHorzUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public getHighResolutionPortraitBoxArtUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 921
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getDetail()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    .line 922
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->mdxVertUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public getHorzDispSmallUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->horizontalDisplaySmallArtUrl:Lcom/netflix/model/leafs/Video$HorizontalDisplaySmallArt;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->horizontalDisplaySmallArtUrl:Lcom/netflix/model/leafs/Video$HorizontalDisplaySmallArt;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/Video$HorizontalDisplaySmallArt;->getUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getHorzDispUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->horizontalDisplayArtUrl:Lcom/netflix/model/leafs/Video$HorizontalDisplayArt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->horizontalDisplayArtUrl:Lcom/netflix/model/leafs/Video$HorizontalDisplayArt;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/Video$HorizontalDisplayArt;->getUrl()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->searchTitle:Lcom/netflix/model/leafs/Video$SearchTitle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->searchTitle:Lcom/netflix/model/leafs/Video$SearchTitle;

    iget-object v0, v0, Lcom/netflix/model/leafs/Video$SearchTitle;->horzDispUrl:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->detail:Lcom/netflix/model/leafs/Video$Detail;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->detail:Lcom/netflix/model/leafs/Video$Detail;

    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->horzDispUrl:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->summary:Lcom/netflix/model/leafs/Video$Summary;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->summary:Lcom/netflix/model/leafs/Video$Summary;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/Video$Summary;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getInteractiveMoments()Lcom/netflix/model/leafs/InteractivePlaybackMoments;
    .locals 1

    .prologue
    .line 1287
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->interactivePlaybackMoments:Lcom/netflix/model/leafs/InteractivePlaybackMoments;

    return-object v0
.end method

.method public getInteractivePostplay()Lcom/netflix/model/leafs/InteractivePostplay;
    .locals 1

    .prologue
    .line 1226
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->interactiveInfo:Lcom/netflix/model/branches/InteractiveInfo;

    if-nez v0, :cond_0

    .line 1227
    const/4 v0, 0x0

    .line 1229
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->interactiveInfo:Lcom/netflix/model/branches/InteractiveInfo;

    iget-object v0, v0, Lcom/netflix/model/branches/InteractiveInfo;->postplay:Lcom/netflix/model/leafs/InteractivePostplay;

    goto :goto_0
.end method

.method public getInterestingSmallUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 510
    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorVideo;->getCurrentEpisodeDetail()Lcom/netflix/model/leafs/Episode$Detail;

    move-result-object v0

    .line 511
    if-eqz v0, :cond_0

    .line 512
    invoke-virtual {v0}, Lcom/netflix/model/leafs/Episode$Detail;->getInterestingSmallUrl()Ljava/lang/String;

    move-result-object v0

    .line 514
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInterestingUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->interestingMomentsUrl:Lcom/netflix/model/leafs/Video$InterestingMomentsUrl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->interestingMomentsUrl:Lcom/netflix/model/leafs/Video$InterestingMomentsUrl;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/Video$InterestingMomentsUrl;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->interestingMomentsUrl:Lcom/netflix/model/leafs/Video$InterestingMomentsUrl;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/Video$InterestingMomentsUrl;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 505
    :goto_0
    return-object v0

    .line 501
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getDetail()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    .line 502
    if-eqz v0, :cond_1

    .line 503
    invoke-virtual {v0}, Lcom/netflix/model/leafs/Video$Detail;->getInterestingUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 505
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getKeys()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 250
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 251
    iget-object v1, p0, Lcom/netflix/model/branches/FalkorVideo;->cleanBoxshot:Lcom/netflix/model/leafs/Video$CwCleanBoxart;

    if-eqz v1, :cond_0

    .line 252
    const-string/jumbo v1, "cleanBoxart"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 254
    :cond_0
    iget-object v1, p0, Lcom/netflix/model/branches/FalkorVideo;->advisories:Lcom/netflix/model/leafs/Video$Advisories;

    if-eqz v1, :cond_1

    .line 255
    const-string/jumbo v1, "advisories"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 257
    :cond_1
    iget-object v1, p0, Lcom/netflix/model/branches/FalkorVideo;->summary:Lcom/netflix/model/leafs/Video$Summary;

    if-eqz v1, :cond_2

    .line 258
    const-string/jumbo v1, "summary"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 260
    :cond_2
    iget-object v1, p0, Lcom/netflix/model/branches/FalkorVideo;->summary:Lcom/netflix/model/leafs/Video$Summary;

    if-eqz v1, :cond_3

    .line 261
    const-string/jumbo v1, "legacySummary"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 263
    :cond_3
    iget-object v1, p0, Lcom/netflix/model/branches/FalkorVideo;->kubrick:Lcom/netflix/model/leafs/Video$KubrickSummary;

    if-eqz v1, :cond_4

    .line 264
    const-string/jumbo v1, "kubrick"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 266
    :cond_4
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getDetail()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 267
    const-string/jumbo v1, "detail"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 269
    :cond_5
    iget-object v1, p0, Lcom/netflix/model/branches/FalkorVideo;->rating:Lcom/netflix/model/leafs/Video$RatingInfo;

    if-eqz v1, :cond_6

    .line 270
    const-string/jumbo v1, "rating"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 272
    :cond_6
    iget-object v1, p0, Lcom/netflix/model/branches/FalkorVideo;->inQueue:Lcom/netflix/model/leafs/Video$InQueue;

    if-eqz v1, :cond_7

    .line 273
    const-string/jumbo v1, "inQueue"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 275
    :cond_7
    iget-object v1, p0, Lcom/netflix/model/branches/FalkorVideo;->hasWatched:Lcom/netflix/model/leafs/Video$HasWatched;

    if-eqz v1, :cond_8

    .line 276
    const-string/jumbo v1, "hasWatched"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 278
    :cond_8
    iget-object v1, p0, Lcom/netflix/model/branches/FalkorVideo;->bookmark:Lcom/netflix/model/leafs/Video$Bookmark;

    if-eqz v1, :cond_9

    .line 279
    const-string/jumbo v1, "bookmark"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 281
    :cond_9
    iget-object v1, p0, Lcom/netflix/model/branches/FalkorVideo;->offlineAvailable:Lcom/netflix/model/leafs/Video$OfflineAvailable;

    if-eqz v1, :cond_a

    .line 282
    const-string/jumbo v1, "offlineAvailable"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 284
    :cond_a
    iget-object v1, p0, Lcom/netflix/model/branches/FalkorVideo;->searchTitle:Lcom/netflix/model/leafs/Video$SearchTitle;

    if-eqz v1, :cond_b

    .line 285
    const-string/jumbo v1, "searchTitle"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 287
    :cond_b
    iget-object v1, p0, Lcom/netflix/model/branches/FalkorVideo;->videoEvidence:Lcom/netflix/model/leafs/Video$Evidence;

    if-eqz v1, :cond_c

    .line 288
    const-string/jumbo v1, "evidence"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 290
    :cond_c
    iget-object v1, p0, Lcom/netflix/model/branches/FalkorVideo;->heroImages:Lcom/netflix/model/leafs/Video$HeroImages;

    if-eqz v1, :cond_d

    .line 291
    const-string/jumbo v1, "heroImgs"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 293
    :cond_d
    iget-object v1, p0, Lcom/netflix/model/branches/FalkorVideo;->supplementalVideos:Lcom/netflix/model/leafs/Video$SupplementalVideos;

    if-eqz v1, :cond_e

    .line 294
    const-string/jumbo v1, "defaultTrailer"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 296
    :cond_e
    iget-object v1, p0, Lcom/netflix/model/branches/FalkorVideo;->vertStoryArtUrl:Lcom/netflix/model/leafs/Video$VerticalStoryArt;

    if-eqz v1, :cond_f

    .line 297
    const-string/jumbo v1, "vertStoryArt"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 299
    :cond_f
    iget-object v1, p0, Lcom/netflix/model/branches/FalkorVideo;->horizontalDisplayArtUrl:Lcom/netflix/model/leafs/Video$HorizontalDisplayArt;

    if-eqz v1, :cond_10

    .line 300
    const-string/jumbo v1, "horzDispArt"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 302
    :cond_10
    iget-object v1, p0, Lcom/netflix/model/branches/FalkorVideo;->horizontalDisplaySmallArtUrl:Lcom/netflix/model/leafs/Video$HorizontalDisplaySmallArt;

    if-eqz v1, :cond_11

    .line 303
    const-string/jumbo v1, "horzDispSmallArt"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 305
    :cond_11
    iget-object v1, p0, Lcom/netflix/model/branches/FalkorVideo;->storyImgDisplayArtUrl:Lcom/netflix/model/leafs/Video$StoryImgDisplayArt;

    if-eqz v1, :cond_12

    .line 306
    const-string/jumbo v1, "storyImgDispArt"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 308
    :cond_12
    iget-object v1, p0, Lcom/netflix/model/branches/FalkorVideo;->tvCardArtUrl:Lcom/netflix/model/leafs/Video$TvCardArt;

    if-eqz v1, :cond_13

    .line 309
    const-string/jumbo v1, "tvCardArt"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 311
    :cond_13
    iget-object v1, p0, Lcom/netflix/model/branches/FalkorVideo;->interactivePlaybackMoments:Lcom/netflix/model/leafs/InteractivePlaybackMoments;

    if-eqz v1, :cond_14

    .line 312
    const-string/jumbo v1, "interactiveMoments"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 314
    :cond_14
    iget-object v1, p0, Lcom/netflix/model/branches/FalkorVideo;->postPlayImpression:Lcom/netflix/model/leafs/PostPlayImpression;

    if-eqz v1, :cond_15

    .line 315
    const-string/jumbo v1, "postPlayImpression"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 317
    :cond_15
    iget-object v1, p0, Lcom/netflix/model/branches/FalkorVideo;->sims:Lcom/netflix/model/branches/SummarizedList;

    if-eqz v1, :cond_16

    .line 318
    const-string/jumbo v1, "similars"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 320
    :cond_16
    iget-object v1, p0, Lcom/netflix/model/branches/FalkorVideo;->episodes:Lcom/netflix/falkor/BranchMap;

    if-eqz v1, :cond_17

    .line 321
    const-string/jumbo v1, "episodes"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 323
    :cond_17
    iget-object v1, p0, Lcom/netflix/model/branches/FalkorVideo;->postPlayExperience:Lcom/netflix/falkor/Ref;

    if-eqz v1, :cond_18

    .line 324
    const-string/jumbo v1, "postPlayExperience"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 326
    :cond_18
    iget-object v1, p0, Lcom/netflix/model/branches/FalkorVideo;->performers:Lcom/netflix/falkor/BranchMap;

    if-eqz v1, :cond_19

    .line 327
    const-string/jumbo v1, "cast"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 329
    :cond_19
    iget-object v1, p0, Lcom/netflix/model/branches/FalkorVideo;->performerStills:Lcom/netflix/falkor/BranchMap;

    if-eqz v1, :cond_1a

    .line 330
    const-string/jumbo v1, "castStills"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 332
    :cond_1a
    iget-object v1, p0, Lcom/netflix/model/branches/FalkorVideo;->seasons:Lcom/netflix/model/branches/SummarizedList;

    if-eqz v1, :cond_1b

    .line 333
    const-string/jumbo v1, "seasons"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 335
    :cond_1b
    iget-object v1, p0, Lcom/netflix/model/branches/FalkorVideo;->scenes:Lcom/netflix/falkor/BranchMap;

    if-eqz v1, :cond_1c

    .line 336
    const-string/jumbo v1, "scenes"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 338
    :cond_1c
    iget-object v1, p0, Lcom/netflix/model/branches/FalkorVideo;->interactiveInfo:Lcom/netflix/model/branches/InteractiveInfo;

    if-eqz v1, :cond_1d

    .line 339
    const-string/jumbo v1, "interactive"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 341
    :cond_1d
    iget-object v1, p0, Lcom/netflix/model/branches/FalkorVideo;->baseUrl:Lcom/netflix/model/leafs/Video$TrickPlayBaseUrl;

    if-eqz v1, :cond_1e

    .line 342
    const-string/jumbo v1, "trickplayBaseUrl"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 344
    :cond_1e
    iget-object v1, p0, Lcom/netflix/model/branches/FalkorVideo;->baseBigUrl:Lcom/netflix/model/leafs/Video$TrickPlayBaseBigUrl;

    if-eqz v1, :cond_1f

    .line 345
    const-string/jumbo v1, "trickplayBaseBigUrl"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 347
    :cond_1f
    iget-object v1, p0, Lcom/netflix/model/branches/FalkorVideo;->interestingMomentsUrl:Lcom/netflix/model/leafs/Video$InterestingMomentsUrl;

    if-eqz v1, :cond_20

    .line 348
    const-string/jumbo v1, "intrUrl"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 351
    :cond_20
    return-object v0
.end method

.method public getKubrickStoryImgUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1173
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->kubrick:Lcom/netflix/model/leafs/Video$KubrickSummary;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->kubrick:Lcom/netflix/model/leafs/Video$KubrickSummary;

    iget-object v0, v0, Lcom/netflix/model/leafs/Video$KubrickSummary;->storyImgUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public getLogicalStart()I
    .locals 1

    .prologue
    .line 648
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getDetail()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    .line 649
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, v0, Lcom/netflix/model/leafs/Video$Detail;->logicalStart:I

    goto :goto_0
.end method

.method public getMatchPercentage()I
    .locals 1

    .prologue
    .line 904
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->rating:Lcom/netflix/model/leafs/Video$RatingInfo;

    .line 905
    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, v0, Lcom/netflix/model/leafs/Video$RatingInfo;->matchPercentage:I

    goto :goto_0
.end method

.method public getMaturityLevel()I
    .locals 1

    .prologue
    .line 791
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getDetail()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    .line 792
    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, v0, Lcom/netflix/model/leafs/Video$Detail;->maturityLevel:I

    goto :goto_0
.end method

.method public getNarrative()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1150
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getDetail()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    .line 1151
    if-eqz v0, :cond_0

    .line 1152
    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->synopsisNarrative:Ljava/lang/String;

    .line 1154
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->kubrick:Lcom/netflix/model/leafs/Video$KubrickSummary;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->kubrick:Lcom/netflix/model/leafs/Video$KubrickSummary;

    iget-object v0, v0, Lcom/netflix/model/leafs/Video$KubrickSummary;->narrative:Ljava/lang/String;

    goto :goto_0
.end method

.method public getNumCreators()I
    .locals 1

    .prologue
    .line 1080
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getCreators()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->getCsvCount(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getNumDirectors()I
    .locals 1

    .prologue
    .line 998
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getDirectors()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->getCsvCount(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getNumOfEpisodes()I
    .locals 1

    .prologue
    .line 1085
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getDetail()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    .line 1086
    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, v0, Lcom/netflix/model/leafs/Video$Detail;->episodeCount:I

    goto :goto_0
.end method

.method public getNumSeasonsLabel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1065
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getDetail()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    .line 1066
    if-eqz v0, :cond_1

    .line 1067
    iget-object v1, v0, Lcom/netflix/model/leafs/Video$Detail;->seasonNumLabel:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string/jumbo v0, ""

    .line 1069
    :goto_0
    return-object v0

    .line 1067
    :cond_0
    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->seasonNumLabel:Ljava/lang/String;

    goto :goto_0

    .line 1069
    :cond_1
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->kubrick:Lcom/netflix/model/leafs/Video$KubrickSummary;

    if-nez v0, :cond_2

    const-string/jumbo v0, ""

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->kubrick:Lcom/netflix/model/leafs/Video$KubrickSummary;

    iget-object v0, v0, Lcom/netflix/model/leafs/Video$KubrickSummary;->seasonNumLabel:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string/jumbo v0, ""

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->kubrick:Lcom/netflix/model/leafs/Video$KubrickSummary;

    iget-object v0, v0, Lcom/netflix/model/leafs/Video$KubrickSummary;->seasonNumLabel:Ljava/lang/String;

    goto :goto_0
.end method

.method public getOrCreate(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 192
    invoke-virtual {p0, p1}, Lcom/netflix/model/branches/FalkorVideo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 193
    if-eqz v0, :cond_0

    .line 244
    :goto_0
    return-object v0

    .line 201
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 244
    const/4 v0, 0x0

    goto :goto_0

    .line 201
    :sswitch_0
    const-string/jumbo v1, "cleanBoxart"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v1, "advisories"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v1, "summary"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v1, "legacySummary"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_4
    const-string/jumbo v1, "kubrick"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_5
    const-string/jumbo v1, "detail"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_6
    const-string/jumbo v1, "rating"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_7
    const-string/jumbo v1, "hasWatched"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_8
    const-string/jumbo v1, "inQueue"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_9
    const-string/jumbo v1, "bookmark"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_a
    const-string/jumbo v1, "offlineAvailable"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0xa

    goto :goto_1

    :sswitch_b
    const-string/jumbo v1, "searchTitle"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_c
    const-string/jumbo v1, "evidence"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_d
    const-string/jumbo v1, "heroImgs"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_e
    const-string/jumbo v1, "defaultTrailer"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_f
    const-string/jumbo v1, "vertStoryArt"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0xf

    goto/16 :goto_1

    :sswitch_10
    const-string/jumbo v1, "horzDispArt"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x10

    goto/16 :goto_1

    :sswitch_11
    const-string/jumbo v1, "horzDispSmallArt"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x11

    goto/16 :goto_1

    :sswitch_12
    const-string/jumbo v1, "storyImgDispArt"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x12

    goto/16 :goto_1

    :sswitch_13
    const-string/jumbo v1, "tvCardArt"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x13

    goto/16 :goto_1

    :sswitch_14
    const-string/jumbo v1, "interactiveMoments"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x14

    goto/16 :goto_1

    :sswitch_15
    const-string/jumbo v1, "postPlayImpression"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x15

    goto/16 :goto_1

    :sswitch_16
    const-string/jumbo v1, "similars"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x16

    goto/16 :goto_1

    :sswitch_17
    const-string/jumbo v1, "trailers"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x17

    goto/16 :goto_1

    :sswitch_18
    const-string/jumbo v1, "episodes"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x18

    goto/16 :goto_1

    :sswitch_19
    const-string/jumbo v1, "postPlayExperience"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x19

    goto/16 :goto_1

    :sswitch_1a
    const-string/jumbo v1, "cast"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x1a

    goto/16 :goto_1

    :sswitch_1b
    const-string/jumbo v1, "castStills"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x1b

    goto/16 :goto_1

    :sswitch_1c
    const-string/jumbo v1, "seasons"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x1c

    goto/16 :goto_1

    :sswitch_1d
    const-string/jumbo v1, "scenes"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x1d

    goto/16 :goto_1

    :sswitch_1e
    const-string/jumbo v1, "interactive"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x1e

    goto/16 :goto_1

    :sswitch_1f
    const-string/jumbo v1, "trickplayBaseUrl"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x1f

    goto/16 :goto_1

    :sswitch_20
    const-string/jumbo v1, "trickplayBaseBigUrl"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x20

    goto/16 :goto_1

    :sswitch_21
    const-string/jumbo v1, "intrUrl"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x21

    goto/16 :goto_1

    .line 202
    :pswitch_0
    new-instance v0, Lcom/netflix/model/leafs/Video$CwCleanBoxart;

    invoke-direct {v0}, Lcom/netflix/model/leafs/Video$CwCleanBoxart;-><init>()V

    iput-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->cleanBoxshot:Lcom/netflix/model/leafs/Video$CwCleanBoxart;

    goto/16 :goto_0

    .line 203
    :pswitch_1
    new-instance v0, Lcom/netflix/model/leafs/Video$Advisories;

    invoke-direct {v0}, Lcom/netflix/model/leafs/Video$Advisories;-><init>()V

    iput-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->advisories:Lcom/netflix/model/leafs/Video$Advisories;

    goto/16 :goto_0

    .line 204
    :pswitch_2
    new-instance v0, Lcom/netflix/model/leafs/Video$Summary;

    invoke-direct {v0}, Lcom/netflix/model/leafs/Video$Summary;-><init>()V

    iput-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->summary:Lcom/netflix/model/leafs/Video$Summary;

    goto/16 :goto_0

    .line 205
    :pswitch_3
    new-instance v0, Lcom/netflix/model/leafs/Video$Summary;

    invoke-direct {v0}, Lcom/netflix/model/leafs/Video$Summary;-><init>()V

    iput-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->summary:Lcom/netflix/model/leafs/Video$Summary;

    goto/16 :goto_0

    .line 206
    :pswitch_4
    new-instance v0, Lcom/netflix/model/leafs/Video$KubrickSummary;

    invoke-direct {v0}, Lcom/netflix/model/leafs/Video$KubrickSummary;-><init>()V

    iput-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->kubrick:Lcom/netflix/model/leafs/Video$KubrickSummary;

    goto/16 :goto_0

    .line 207
    :pswitch_5
    new-instance v0, Lcom/netflix/model/leafs/Video$Detail;

    invoke-direct {v0}, Lcom/netflix/model/leafs/Video$Detail;-><init>()V

    iput-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->detail:Lcom/netflix/model/leafs/Video$Detail;

    goto/16 :goto_0

    .line 208
    :pswitch_6
    new-instance v0, Lcom/netflix/model/leafs/Video$RatingInfo;

    invoke-direct {v0}, Lcom/netflix/model/leafs/Video$RatingInfo;-><init>()V

    iput-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->rating:Lcom/netflix/model/leafs/Video$RatingInfo;

    goto/16 :goto_0

    .line 209
    :pswitch_7
    new-instance v0, Lcom/netflix/model/leafs/Video$HasWatched;

    invoke-direct {v0}, Lcom/netflix/model/leafs/Video$HasWatched;-><init>()V

    iput-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->hasWatched:Lcom/netflix/model/leafs/Video$HasWatched;

    goto/16 :goto_0

    .line 210
    :pswitch_8
    new-instance v0, Lcom/netflix/model/leafs/Video$InQueue;

    invoke-direct {v0}, Lcom/netflix/model/leafs/Video$InQueue;-><init>()V

    iput-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->inQueue:Lcom/netflix/model/leafs/Video$InQueue;

    goto/16 :goto_0

    .line 211
    :pswitch_9
    new-instance v0, Lcom/netflix/model/leafs/Video$Bookmark;

    invoke-direct {v0}, Lcom/netflix/model/leafs/Video$Bookmark;-><init>()V

    iput-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->bookmark:Lcom/netflix/model/leafs/Video$Bookmark;

    goto/16 :goto_0

    .line 212
    :pswitch_a
    new-instance v0, Lcom/netflix/model/leafs/Video$OfflineAvailable;

    invoke-direct {v0}, Lcom/netflix/model/leafs/Video$OfflineAvailable;-><init>()V

    iput-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->offlineAvailable:Lcom/netflix/model/leafs/Video$OfflineAvailable;

    goto/16 :goto_0

    .line 213
    :pswitch_b
    new-instance v0, Lcom/netflix/model/leafs/Video$SearchTitle;

    invoke-direct {v0}, Lcom/netflix/model/leafs/Video$SearchTitle;-><init>()V

    iput-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->searchTitle:Lcom/netflix/model/leafs/Video$SearchTitle;

    goto/16 :goto_0

    .line 214
    :pswitch_c
    new-instance v0, Lcom/netflix/model/leafs/Video$Evidence;

    invoke-direct {v0}, Lcom/netflix/model/leafs/Video$Evidence;-><init>()V

    iput-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->videoEvidence:Lcom/netflix/model/leafs/Video$Evidence;

    goto/16 :goto_0

    .line 215
    :pswitch_d
    new-instance v0, Lcom/netflix/model/leafs/Video$HeroImages;

    invoke-direct {v0}, Lcom/netflix/model/leafs/Video$HeroImages;-><init>()V

    iput-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->heroImages:Lcom/netflix/model/leafs/Video$HeroImages;

    goto/16 :goto_0

    .line 216
    :pswitch_e
    new-instance v0, Lcom/netflix/model/leafs/Video$SupplementalVideos;

    invoke-direct {v0}, Lcom/netflix/model/leafs/Video$SupplementalVideos;-><init>()V

    iput-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->supplementalVideos:Lcom/netflix/model/leafs/Video$SupplementalVideos;

    goto/16 :goto_0

    .line 217
    :pswitch_f
    new-instance v0, Lcom/netflix/model/leafs/Video$VerticalStoryArt;

    invoke-direct {v0}, Lcom/netflix/model/leafs/Video$VerticalStoryArt;-><init>()V

    iput-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->vertStoryArtUrl:Lcom/netflix/model/leafs/Video$VerticalStoryArt;

    goto/16 :goto_0

    .line 218
    :pswitch_10
    new-instance v0, Lcom/netflix/model/leafs/Video$HorizontalDisplayArt;

    invoke-direct {v0}, Lcom/netflix/model/leafs/Video$HorizontalDisplayArt;-><init>()V

    iput-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->horizontalDisplayArtUrl:Lcom/netflix/model/leafs/Video$HorizontalDisplayArt;

    goto/16 :goto_0

    .line 219
    :pswitch_11
    new-instance v0, Lcom/netflix/model/leafs/Video$HorizontalDisplaySmallArt;

    invoke-direct {v0}, Lcom/netflix/model/leafs/Video$HorizontalDisplaySmallArt;-><init>()V

    iput-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->horizontalDisplaySmallArtUrl:Lcom/netflix/model/leafs/Video$HorizontalDisplaySmallArt;

    goto/16 :goto_0

    .line 220
    :pswitch_12
    new-instance v0, Lcom/netflix/model/leafs/Video$StoryImgDisplayArt;

    invoke-direct {v0}, Lcom/netflix/model/leafs/Video$StoryImgDisplayArt;-><init>()V

    iput-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->storyImgDisplayArtUrl:Lcom/netflix/model/leafs/Video$StoryImgDisplayArt;

    goto/16 :goto_0

    .line 221
    :pswitch_13
    new-instance v0, Lcom/netflix/model/leafs/Video$TvCardArt;

    invoke-direct {v0}, Lcom/netflix/model/leafs/Video$TvCardArt;-><init>()V

    iput-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->tvCardArtUrl:Lcom/netflix/model/leafs/Video$TvCardArt;

    goto/16 :goto_0

    .line 222
    :pswitch_14
    new-instance v0, Lcom/netflix/model/leafs/InteractivePlaybackMoments;

    invoke-direct {v0}, Lcom/netflix/model/leafs/InteractivePlaybackMoments;-><init>()V

    iput-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->interactivePlaybackMoments:Lcom/netflix/model/leafs/InteractivePlaybackMoments;

    goto/16 :goto_0

    .line 223
    :pswitch_15
    new-instance v0, Lcom/netflix/model/leafs/PostPlayImpression;

    invoke-direct {v0}, Lcom/netflix/model/leafs/PostPlayImpression;-><init>()V

    iput-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->postPlayImpression:Lcom/netflix/model/leafs/PostPlayImpression;

    goto/16 :goto_0

    .line 224
    :pswitch_16
    new-instance v0, Lcom/netflix/model/branches/SummarizedList;

    sget-object v1, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator;->Ref:Lcom/netflix/falkor/Func;

    sget-object v2, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator;->TrackableListSummary:Lcom/netflix/falkor/Func;

    invoke-direct {v0, v1, v2}, Lcom/netflix/model/branches/SummarizedList;-><init>(Lcom/netflix/falkor/Func;Lcom/netflix/falkor/Func;)V

    iput-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->sims:Lcom/netflix/model/branches/SummarizedList;

    goto/16 :goto_0

    .line 226
    :pswitch_17
    new-instance v0, Lcom/netflix/model/branches/SummarizedList;

    sget-object v1, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator;->Ref:Lcom/netflix/falkor/Func;

    sget-object v2, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator;->TrackableListSummary:Lcom/netflix/falkor/Func;

    invoke-direct {v0, v1, v2}, Lcom/netflix/model/branches/SummarizedList;-><init>(Lcom/netflix/falkor/Func;Lcom/netflix/falkor/Func;)V

    iput-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->trailers:Lcom/netflix/model/branches/SummarizedList;

    goto/16 :goto_0

    .line 228
    :pswitch_18
    new-instance v0, Lcom/netflix/falkor/BranchMap;

    sget-object v1, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator;->Ref:Lcom/netflix/falkor/Func;

    invoke-direct {v0, v1}, Lcom/netflix/falkor/BranchMap;-><init>(Lcom/netflix/falkor/Func;)V

    iput-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->episodes:Lcom/netflix/falkor/BranchMap;

    goto/16 :goto_0

    .line 229
    :pswitch_19
    new-instance v0, Lcom/netflix/falkor/Ref;

    invoke-direct {v0}, Lcom/netflix/falkor/Ref;-><init>()V

    iput-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->postPlayExperience:Lcom/netflix/falkor/Ref;

    goto/16 :goto_0

    .line 230
    :pswitch_1a
    new-instance v0, Lcom/netflix/falkor/BranchMap;

    sget-object v1, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator;->Ref:Lcom/netflix/falkor/Func;

    invoke-direct {v0, v1}, Lcom/netflix/falkor/BranchMap;-><init>(Lcom/netflix/falkor/Func;)V

    iput-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->performers:Lcom/netflix/falkor/BranchMap;

    goto/16 :goto_0

    .line 231
    :pswitch_1b
    new-instance v0, Lcom/netflix/falkor/BranchMap;

    sget-object v1, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator;->Ref:Lcom/netflix/falkor/Func;

    invoke-direct {v0, v1}, Lcom/netflix/falkor/BranchMap;-><init>(Lcom/netflix/falkor/Func;)V

    iput-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->performerStills:Lcom/netflix/falkor/BranchMap;

    goto/16 :goto_0

    .line 232
    :pswitch_1c
    new-instance v0, Lcom/netflix/model/branches/SummarizedList;

    sget-object v1, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator;->Ref:Lcom/netflix/falkor/Func;

    sget-object v2, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator;->TrackableListSummary:Lcom/netflix/falkor/Func;

    invoke-direct {v0, v1, v2}, Lcom/netflix/model/branches/SummarizedList;-><init>(Lcom/netflix/falkor/Func;Lcom/netflix/falkor/Func;)V

    iput-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->seasons:Lcom/netflix/model/branches/SummarizedList;

    goto/16 :goto_0

    .line 233
    :pswitch_1d
    new-instance v0, Lcom/netflix/falkor/BranchMap;

    iget-object v1, p0, Lcom/netflix/model/branches/FalkorVideo;->proxy:Lcom/netflix/falkor/ModelProxy;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator;->FalkorScene(Lcom/netflix/falkor/ModelProxy;)Lcom/netflix/falkor/Func;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/falkor/BranchMap;-><init>(Lcom/netflix/falkor/Func;)V

    iput-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->scenes:Lcom/netflix/falkor/BranchMap;

    goto/16 :goto_0

    .line 234
    :pswitch_1e
    new-instance v0, Lcom/netflix/model/branches/InteractiveInfo;

    invoke-direct {v0}, Lcom/netflix/model/branches/InteractiveInfo;-><init>()V

    iput-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->interactiveInfo:Lcom/netflix/model/branches/InteractiveInfo;

    goto/16 :goto_0

    .line 236
    :pswitch_1f
    new-instance v0, Lcom/netflix/model/leafs/Video$TrickPlayBaseUrl;

    invoke-direct {v0}, Lcom/netflix/model/leafs/Video$TrickPlayBaseUrl;-><init>()V

    iput-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->baseUrl:Lcom/netflix/model/leafs/Video$TrickPlayBaseUrl;

    goto/16 :goto_0

    .line 237
    :pswitch_20
    new-instance v0, Lcom/netflix/model/leafs/Video$TrickPlayBaseBigUrl;

    invoke-direct {v0}, Lcom/netflix/model/leafs/Video$TrickPlayBaseBigUrl;-><init>()V

    iput-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->baseBigUrl:Lcom/netflix/model/leafs/Video$TrickPlayBaseBigUrl;

    goto/16 :goto_0

    .line 238
    :pswitch_21
    new-instance v0, Lcom/netflix/model/leafs/Video$InterestingMomentsUrl;

    invoke-direct {v0}, Lcom/netflix/model/leafs/Video$InterestingMomentsUrl;-><init>()V

    iput-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->interestingMomentsUrl:Lcom/netflix/model/leafs/Video$InterestingMomentsUrl;

    goto/16 :goto_0

    .line 201
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7b66d863 -> :sswitch_3
        -0x756b9acf -> :sswitch_14
        -0x6eb9585a -> :sswitch_2
        -0x6af67faf -> :sswitch_13
        -0x53efc681 -> :sswitch_f
        -0x4f95e7af -> :sswitch_5
        -0x4f5fd39f -> :sswitch_0
        -0x4899732e -> :sswitch_10
        -0x43bf624c -> :sswitch_7
        -0x37ea4e63 -> :sswitch_6
        -0x36200699 -> :sswitch_1d
        -0x26a8e0e9 -> :sswitch_1
        -0x25b9fe28 -> :sswitch_18
        -0x24e8e7d6 -> :sswitch_d
        -0x22faf016 -> :sswitch_1b
        -0x20c3ea70 -> :sswitch_b
        -0x1683d2e9 -> :sswitch_4
        -0x9dce382 -> :sswitch_19
        0x2e7b3f -> :sswitch_1a
        0x26d551d -> :sswitch_15
        0x81f8c26 -> :sswitch_a
        0x16d39e57 -> :sswitch_c
        0x1b7c81d7 -> :sswitch_1f
        0x1c8fe7e8 -> :sswitch_16
        0x37d7fbb2 -> :sswitch_e
        0x4a9eaef3 -> :sswitch_12
        0x4c0f11a0 -> :sswitch_17
        0x6deacee2 -> :sswitch_1e
        0x703896cd -> :sswitch_11
        0x72cf8aec -> :sswitch_8
        0x74bb280c -> :sswitch_21
        0x7552f1f0 -> :sswitch_1c
        0x7787a536 -> :sswitch_9
        0x7d1dbae7 -> :sswitch_20
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
    .end packed-switch
.end method

.method public getParentTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 622
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;
    .locals 0

    .prologue
    .line 987
    return-object p0
.end method

.method public getPlayableBookmarkPosition()I
    .locals 3

    .prologue
    .line 589
    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorVideo;->getBookmarkPosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getEndtime()I

    move-result v1

    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getRuntime()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/TimeUtils;->computePlayPos(III)I

    move-result v0

    .line 594
    return v0
.end method

.method public getPlayableBookmarkUpdateTime()J
    .locals 2

    .prologue
    .line 569
    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorVideo;->getBookmarkLastUpdateTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPlayableId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 552
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 553
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 552
    :goto_0
    return-object v0

    .line 553
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getCurrentEpisodeId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPlayableTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 558
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 559
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 558
    :goto_0
    return-object v0

    .line 559
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getCurrentEpisodeTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPostPlayContexts()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/details/PostPlayContext;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    .line 1217
    const-string/jumbo v0, "contexts"

    invoke-direct {p0, v0}, Lcom/netflix/model/branches/FalkorVideo;->isPostPlayInvalid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1218
    const/4 v0, 0x0

    .line 1220
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->proxy:Lcom/netflix/falkor/ModelProxy;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 1221
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->getValue()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string/jumbo v2, "postPlayExperience"

    aput-object v2, v1, v4

    const/4 v2, 0x3

    invoke-static {v4}, Lcom/netflix/falkor/PQL;->range(I)Ljava/util/Map;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "postplayContext"

    aput-object v3, v1, v2

    .line 1220
    invoke-static {v1}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/falkor/ModelProxy;->getItemsAsList(Lcom/netflix/falkor/PQL;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getPostPlayExperienceData()Lcom/netflix/model/leafs/PostPlayExperience;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1206
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->postPlayExperience:Lcom/netflix/falkor/Ref;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1207
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->proxy:Lcom/netflix/falkor/ModelProxy;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "postPlayExperiences"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "experienceData"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/falkor/ModelProxy;->getItemsAsList(Lcom/netflix/falkor/PQL;)Ljava/util/List;

    move-result-object v0

    .line 1208
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1209
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/PostPlayExperience;

    .line 1212
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPostPlayVideos()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/details/PostPlayVideo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    .line 1197
    const-string/jumbo v0, "videos"

    invoke-direct {p0, v0}, Lcom/netflix/model/branches/FalkorVideo;->isPostPlayInvalid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1198
    const/4 v0, 0x0

    .line 1201
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->proxy:Lcom/netflix/falkor/ModelProxy;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 1202
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->getValue()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string/jumbo v2, "postPlayExperience"

    aput-object v2, v1, v4

    const/4 v2, 0x3

    invoke-static {v4}, Lcom/netflix/falkor/PQL;->range(I)Ljava/util/Map;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "videoRef"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string/jumbo v3, "summary"

    aput-object v3, v1, v2

    .line 1201
    invoke-static {v1}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/falkor/ModelProxy;->getItemsAsList(Lcom/netflix/falkor/PQL;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getQuality()Ljava/lang/String;
    .locals 1

    .prologue
    .line 876
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->detail:Lcom/netflix/model/leafs/Video$Detail;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->detail:Lcom/netflix/model/leafs/Video$Detail;

    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->quality:Ljava/lang/String;

    goto :goto_0
.end method

.method public getRuntime()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 632
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getDetail()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v1

    .line 633
    if-nez v1, :cond_0

    move v1, v0

    .line 634
    :goto_0
    if-gtz v1, :cond_2

    .line 635
    iget-object v1, p0, Lcom/netflix/model/branches/FalkorVideo;->kubrick:Lcom/netflix/model/leafs/Video$KubrickSummary;

    if-nez v1, :cond_1

    .line 637
    :goto_1
    return v0

    .line 633
    :cond_0
    iget v1, v1, Lcom/netflix/model/leafs/Video$Detail;->runtime:I

    goto :goto_0

    .line 635
    :cond_1
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->kubrick:Lcom/netflix/model/leafs/Video$KubrickSummary;

    iget v0, v0, Lcom/netflix/model/leafs/Video$KubrickSummary;->runtime:I

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public getSeasonAbbrSeqLabel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1281
    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorVideo;->getCurrentEpisodeDetail()Lcom/netflix/model/leafs/Episode$Detail;

    move-result-object v0

    .line 1282
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/netflix/model/leafs/Episode$Detail;->abbrSeqLabel:Ljava/lang/String;

    if-nez v1, :cond_1

    :cond_0
    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, v0, Lcom/netflix/model/leafs/Episode$Detail;->abbrSeqLabel:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSeasonCount()I
    .locals 3

    .prologue
    .line 1159
    const/4 v1, 0x0

    .line 1160
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->kubrick:Lcom/netflix/model/leafs/Video$KubrickSummary;

    if-eqz v0, :cond_0

    .line 1161
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->kubrick:Lcom/netflix/model/leafs/Video$KubrickSummary;

    iget v0, v0, Lcom/netflix/model/leafs/Video$KubrickSummary;->seasonCount:I

    .line 1168
    :goto_0
    return v0

    .line 1162
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->seasons:Lcom/netflix/model/branches/SummarizedList;

    if-eqz v0, :cond_1

    .line 1163
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->seasons:Lcom/netflix/model/branches/SummarizedList;

    invoke-virtual {v0}, Lcom/netflix/model/branches/SummarizedList;->getSummary()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/TrackableListSummary;

    .line 1164
    if-eqz v0, :cond_1

    .line 1165
    invoke-virtual {v0}, Lcom/netflix/model/leafs/TrackableListSummary;->getLength()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public getSeasonNumber()I
    .locals 1

    .prologue
    .line 660
    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorVideo;->getCurrentEpisodeDetail()Lcom/netflix/model/leafs/Episode$Detail;

    move-result-object v0

    .line 661
    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/netflix/model/leafs/Episode$Detail;->getSeasonNumber()I

    move-result v0

    goto :goto_0
.end method

.method public getSimilars()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1003
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getModelProxy()Lcom/netflix/falkor/ModelProxy;

    move-result-object v1

    .line 1004
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/falkor/task/CmpUtils;->buildVideoSimsPql(ZLjava/lang/String;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    .line 1003
    invoke-interface {v1, v0}, Lcom/netflix/falkor/ModelProxy;->getItemsAsList(Lcom/netflix/falkor/PQL;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1004
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSimilarsListPos()I
    .locals 1

    .prologue
    .line 1054
    const/4 v0, 0x0

    return v0
.end method

.method public getSimilarsRequestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1027
    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorVideo;->getSimilarsSummary()Lcom/netflix/model/leafs/TrackableListSummary;

    move-result-object v0

    .line 1028
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/netflix/model/leafs/TrackableListSummary;->getRequestId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSimilarsTrackId()I
    .locals 1

    .prologue
    .line 1015
    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorVideo;->getSimilarsSummary()Lcom/netflix/model/leafs/TrackableListSummary;

    move-result-object v0

    .line 1016
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/netflix/model/leafs/TrackableListSummary;->getTrackId()I

    move-result v0

    goto :goto_0
.end method

.method public getStoryDispUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 933
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->storyImgDisplayArtUrl:Lcom/netflix/model/leafs/Video$StoryImgDisplayArt;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->storyImgDisplayArtUrl:Lcom/netflix/model/leafs/Video$StoryImgDisplayArt;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/Video$StoryImgDisplayArt;->getUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getStoryUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 766
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getDetail()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    .line 767
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->storyImgUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSummary()Lcom/netflix/model/leafs/Video$Summary;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->summary:Lcom/netflix/model/leafs/Video$Summary;

    return-object v0
.end method

.method public getSupplementalMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 808
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getDetail()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    .line 809
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->supplementalMessage:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSynopsis()Ljava/lang/String;
    .locals 1

    .prologue
    .line 772
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getDetail()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    .line 773
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->synopsis:Ljava/lang/String;

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->summary:Lcom/netflix/model/leafs/Video$Summary;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->summary:Lcom/netflix/model/leafs/Video$Summary;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/Video$Summary;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTitleCroppedImgUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1191
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->detail:Lcom/netflix/model/leafs/Video$Detail;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->detail:Lcom/netflix/model/leafs/Video$Detail;

    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->titleCroppedUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public getTitleImgUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1183
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->detail:Lcom/netflix/model/leafs/Video$Detail;

    if-eqz v0, :cond_0

    .line 1184
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->detail:Lcom/netflix/model/leafs/Video$Detail;

    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->titleUrl:Ljava/lang/String;

    .line 1186
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->kubrick:Lcom/netflix/model/leafs/Video$KubrickSummary;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->kubrick:Lcom/netflix/model/leafs/Video$KubrickSummary;

    iget-object v0, v0, Lcom/netflix/model/leafs/Video$KubrickSummary;->titleUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public getTopLevelId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 627
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTrailers()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1009
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getModelProxy()Lcom/netflix/falkor/ModelProxy;

    move-result-object v1

    .line 1010
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/falkor/task/CmpUtils;->buildVideoTrailersPql(ZLjava/lang/String;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    .line 1009
    invoke-interface {v1, v0}, Lcom/netflix/falkor/ModelProxy;->getItemsAsList(Lcom/netflix/falkor/PQL;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1010
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTrailersListPos()I
    .locals 1

    .prologue
    .line 1060
    const/4 v0, 0x0

    return v0
.end method

.method public getTrailersRequestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1033
    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorVideo;->getTrailersSummary()Lcom/netflix/model/leafs/TrackableListSummary;

    move-result-object v0

    .line 1034
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/netflix/model/leafs/TrackableListSummary;->getRequestId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTrailersTrackId()I
    .locals 1

    .prologue
    .line 1021
    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorVideo;->getTrailersSummary()Lcom/netflix/model/leafs/TrackableListSummary;

    move-result-object v0

    .line 1022
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/netflix/model/leafs/TrackableListSummary;->getTrackId()I

    move-result v0

    goto :goto_0
.end method

.method public getTrickplayBigImgBaseUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->baseBigUrl:Lcom/netflix/model/leafs/Video$TrickPlayBaseBigUrl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->baseBigUrl:Lcom/netflix/model/leafs/Video$TrickPlayBaseBigUrl;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/Video$TrickPlayBaseBigUrl;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->baseBigUrl:Lcom/netflix/model/leafs/Video$TrickPlayBaseBigUrl;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/Video$TrickPlayBaseBigUrl;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 547
    :goto_0
    return-object v0

    .line 546
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getDetail()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    .line 547
    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->baseUrlBig:Ljava/lang/String;

    goto :goto_0
.end method

.method public getTrickplayImgBaseUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->baseUrl:Lcom/netflix/model/leafs/Video$TrickPlayBaseUrl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->baseUrl:Lcom/netflix/model/leafs/Video$TrickPlayBaseUrl;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/Video$TrickPlayBaseUrl;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->baseUrl:Lcom/netflix/model/leafs/Video$TrickPlayBaseUrl;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/Video$TrickPlayBaseUrl;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 537
    :goto_0
    return-object v0

    .line 536
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getDetail()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    .line 537
    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->baseUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public getTvCardUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 478
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getDetail()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    .line 479
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/netflix/model/leafs/Video$Detail;->tvCardUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->tvCardUrl:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->tvCardArtUrl:Lcom/netflix/model/leafs/Video$TvCardArt;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->tvCardArtUrl:Lcom/netflix/model/leafs/Video$TvCardArt;

    .line 480
    invoke-virtual {v0}, Lcom/netflix/model/leafs/Video$TvCardArt;->getUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->summary:Lcom/netflix/model/leafs/Video$Summary;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->summary:Lcom/netflix/model/leafs/Video$Summary;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/Video$Summary;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    goto :goto_0
.end method

.method public getUserThumbRating()I
    .locals 1

    .prologue
    .line 899
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->rating:Lcom/netflix/model/leafs/Video$RatingInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->rating:Lcom/netflix/model/leafs/Video$RatingInfo;

    iget v0, v0, Lcom/netflix/model/leafs/Video$RatingInfo;->userThumbRating:I

    goto :goto_0
.end method

.method public getVerticalStoryArtUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 937
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->vertStoryArtUrl:Lcom/netflix/model/leafs/Video$VerticalStoryArt;

    iget-object v0, v0, Lcom/netflix/model/leafs/Video$VerticalStoryArt;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getYear()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 753
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getDetail()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    .line 754
    if-nez v0, :cond_1

    move v0, v1

    .line 755
    :goto_0
    if-gtz v0, :cond_0

    .line 756
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->searchTitle:Lcom/netflix/model/leafs/Video$SearchTitle;

    if-nez v0, :cond_2

    move v0, v1

    .line 758
    :cond_0
    :goto_1
    if-gtz v0, :cond_4

    .line 759
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->kubrick:Lcom/netflix/model/leafs/Video$KubrickSummary;

    if-nez v0, :cond_3

    .line 761
    :goto_2
    return v1

    .line 754
    :cond_1
    iget v0, v0, Lcom/netflix/model/leafs/Video$Detail;->year:I

    goto :goto_0

    .line 756
    :cond_2
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->searchTitle:Lcom/netflix/model/leafs/Video$SearchTitle;

    iget v0, v0, Lcom/netflix/model/leafs/Video$SearchTitle;->releaseYear:I

    goto :goto_1

    .line 759
    :cond_3
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->kubrick:Lcom/netflix/model/leafs/Video$KubrickSummary;

    iget v1, v0, Lcom/netflix/model/leafs/Video$KubrickSummary;->year:I

    goto :goto_2

    :cond_4
    move v1, v0

    goto :goto_2
.end method

.method public hasTrailers()Z
    .locals 1

    .prologue
    .line 864
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getDetail()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    .line 865
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, v0, Lcom/netflix/model/leafs/Video$Detail;->hasTrailers:Z

    goto :goto_0
.end method

.method public hasWatched()Z
    .locals 1

    .prologue
    .line 839
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->hasWatched:Lcom/netflix/model/leafs/Video$HasWatched;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->hasWatched:Lcom/netflix/model/leafs/Video$HasWatched;

    iget-boolean v0, v0, Lcom/netflix/model/leafs/Video$HasWatched;->hasWatched:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAdvisoryDisabled()Z
    .locals 1

    .prologue
    .line 1276
    const/4 v0, 0x0

    return v0
.end method

.method public isAgeProtected()Z
    .locals 1

    .prologue
    .line 726
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getDetail()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    .line 727
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, v0, Lcom/netflix/model/leafs/Video$Detail;->isAgeProtected:Z

    goto :goto_0
.end method

.method public isAutoPlayEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 666
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 667
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getDetail()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v1

    .line 668
    if-nez v1, :cond_1

    .line 671
    :cond_0
    :goto_0
    return v0

    .line 668
    :cond_1
    iget-boolean v0, v1, Lcom/netflix/model/leafs/Video$Detail;->isAutoPlayEnabled:Z

    goto :goto_0

    .line 670
    :cond_2
    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorVideo;->getCurrentEpisodeDetail()Lcom/netflix/model/leafs/Episode$Detail;

    move-result-object v1

    .line 671
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/netflix/model/leafs/Episode$Detail;->isAutoPlayEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method public isAvailableOffline()Z
    .locals 1

    .prologue
    .line 834
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->offlineAvailable:Lcom/netflix/model/leafs/Video$OfflineAvailable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->offlineAvailable:Lcom/netflix/model/leafs/Video$OfflineAvailable;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/Video$OfflineAvailable;->isAvailableOffline()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAvailableToStream()Z
    .locals 1

    .prologue
    .line 1258
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getDetail()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    .line 1259
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, v0, Lcom/netflix/model/leafs/Video$Detail;->isAvailableToStream:Z

    goto :goto_0
.end method

.method protected isEpisode()Z
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->detail:Lcom/netflix/model/leafs/Video$Detail;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->detail:Lcom/netflix/model/leafs/Video$Detail;

    iget-boolean v0, v0, Lcom/netflix/model/leafs/Video$Detail;->isEpisode:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public isExemptFromInterrupterLimit()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 677
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 678
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getDetail()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v1

    .line 679
    if-nez v1, :cond_1

    .line 682
    :cond_0
    :goto_0
    return v0

    .line 679
    :cond_1
    iget-boolean v0, v1, Lcom/netflix/model/leafs/Video$Detail;->isExemptFromInterrupterLimit:Z

    goto :goto_0

    .line 681
    :cond_2
    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorVideo;->getCurrentEpisodeDetail()Lcom/netflix/model/leafs/Episode$Detail;

    move-result-object v1

    .line 682
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/netflix/model/leafs/Episode$Detail;->isExemptFromInterrupterLimit()Z

    move-result v0

    goto :goto_0
.end method

.method public isInQueue()Z
    .locals 1

    .prologue
    .line 916
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->inQueue:Lcom/netflix/model/leafs/Video$InQueue;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->inQueue:Lcom/netflix/model/leafs/Video$InQueue;

    iget-boolean v0, v0, Lcom/netflix/model/leafs/Video$InQueue;->inQueue:Z

    goto :goto_0
.end method

.method public isNSRE()Z
    .locals 1

    .prologue
    .line 828
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getDetail()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    .line 829
    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/netflix/model/leafs/Video$Detail;->isNSRE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNewForPvr()Z
    .locals 1

    .prologue
    .line 910
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->rating:Lcom/netflix/model/leafs/Video$RatingInfo;

    .line 911
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, v0, Lcom/netflix/model/leafs/Video$RatingInfo;->isNewForPvr:Z

    goto :goto_0
.end method

.method public isNextPlayableEpisode()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 694
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 695
    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorVideo;->getCurrentEpisodeDetail()Lcom/netflix/model/leafs/Episode$Detail;

    move-result-object v1

    .line 696
    if-nez v1, :cond_1

    .line 698
    :cond_0
    :goto_0
    return v0

    .line 696
    :cond_1
    invoke-virtual {v1}, Lcom/netflix/model/leafs/Episode$Detail;->isNextPlayableEpisode()Z

    move-result v0

    goto :goto_0
.end method

.method public isOriginal()Z
    .locals 1

    .prologue
    .line 814
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getDetail()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    .line 815
    if-eqz v0, :cond_0

    .line 816
    iget-boolean v0, v0, Lcom/netflix/model/leafs/Video$Detail;->isOriginal:Z

    .line 823
    :goto_0
    return v0

    .line 819
    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->searchTitle:Lcom/netflix/model/leafs/Video$SearchTitle;

    if-eqz v0, :cond_1

    .line 820
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->searchTitle:Lcom/netflix/model/leafs/Video$SearchTitle;

    iget-boolean v0, v0, Lcom/netflix/model/leafs/Video$SearchTitle;->isOriginal:Z

    goto :goto_0

    .line 823
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPinProtected()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 703
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 704
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getDetail()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v1

    .line 705
    if-nez v1, :cond_1

    .line 708
    :cond_0
    :goto_0
    return v0

    .line 705
    :cond_1
    iget-boolean v0, v1, Lcom/netflix/model/leafs/Video$Detail;->isPinProtected:Z

    goto :goto_0

    .line 707
    :cond_2
    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorVideo;->getCurrentEpisodeDetail()Lcom/netflix/model/leafs/Episode$Detail;

    move-result-object v1

    .line 708
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/netflix/model/leafs/Episode$Detail;->isPinProtected()Z

    move-result v0

    goto :goto_0
.end method

.method public isPlayableEpisode()Z
    .locals 1

    .prologue
    .line 564
    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorVideo;->getCurrentEpisodeDetail()Lcom/netflix/model/leafs/Episode$Detail;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPreRelease()Z
    .locals 1

    .prologue
    .line 850
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getDetail()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    .line 851
    if-eqz v0, :cond_0

    .line 852
    iget-boolean v0, v0, Lcom/netflix/model/leafs/Video$Detail;->isPreRelease:Z

    .line 859
    :goto_0
    return v0

    .line 855
    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->searchTitle:Lcom/netflix/model/leafs/Video$SearchTitle;

    if-eqz v0, :cond_1

    .line 856
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->searchTitle:Lcom/netflix/model/leafs/Video$SearchTitle;

    iget-boolean v0, v0, Lcom/netflix/model/leafs/Video$SearchTitle;->isPreRelease:Z

    goto :goto_0

    .line 859
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPreviewProtected()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 714
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 715
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getDetail()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v1

    .line 716
    if-nez v1, :cond_1

    .line 719
    :cond_0
    :goto_0
    return v0

    .line 716
    :cond_1
    iget-boolean v0, v1, Lcom/netflix/model/leafs/Video$Detail;->isPreviewProtected:Z

    goto :goto_0

    .line 718
    :cond_2
    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorVideo;->getCurrentEpisodeDetail()Lcom/netflix/model/leafs/Episode$Detail;

    move-result-object v1

    .line 719
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/netflix/model/leafs/Episode$Detail;->isPreviewProtected()Z

    move-result v0

    goto :goto_0
.end method

.method public isSupplementalVideo()Z
    .locals 1

    .prologue
    .line 870
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getDetail()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    .line 871
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, v0, Lcom/netflix/model/leafs/Video$Detail;->isSupplementalVideo:Z

    goto :goto_0
.end method

.method public isVideo5dot1()Z
    .locals 1

    .prologue
    .line 969
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getDetail()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    .line 970
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, v0, Lcom/netflix/model/leafs/Video$Detail;->is5dot1Available:Z

    goto :goto_0
.end method

.method public isVideoDolbyVision()Z
    .locals 1

    .prologue
    .line 981
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getDetail()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    .line 982
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, v0, Lcom/netflix/model/leafs/Video$Detail;->isDolbyVisionAvailable:Z

    goto :goto_0
.end method

.method public isVideoHd()Z
    .locals 1

    .prologue
    .line 954
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->kubrick:Lcom/netflix/model/leafs/Video$KubrickSummary;

    if-eqz v0, :cond_0

    .line 955
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->kubrick:Lcom/netflix/model/leafs/Video$KubrickSummary;

    iget-boolean v0, v0, Lcom/netflix/model/leafs/Video$KubrickSummary;->isHd:Z

    .line 958
    :goto_0
    return v0

    .line 957
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getDetail()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    .line 958
    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-boolean v0, v0, Lcom/netflix/model/leafs/Video$Detail;->isHdAvailable:Z

    goto :goto_0
.end method

.method public isVideoHdr10()Z
    .locals 1

    .prologue
    .line 975
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getDetail()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    .line 976
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, v0, Lcom/netflix/model/leafs/Video$Detail;->isHdr10Avaiable:Z

    goto :goto_0
.end method

.method public isVideoUhd()Z
    .locals 1

    .prologue
    .line 963
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getDetail()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    .line 964
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, v0, Lcom/netflix/model/leafs/Video$Detail;->isUhdAvailable:Z

    goto :goto_0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 400
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/netflix/model/branches/FalkorVideo;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 401
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 356
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 396
    :goto_1
    return-void

    .line 356
    :sswitch_0
    const-string/jumbo v1, "cleanBoxart"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v1, "advisories"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v1, "summary"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v1, "legacySummary"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v1, "kubrick"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string/jumbo v1, "detail"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_6
    const-string/jumbo v1, "rating"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_7
    const-string/jumbo v1, "hasWatched"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_8
    const-string/jumbo v1, "inQueue"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :sswitch_9
    const-string/jumbo v1, "bookmark"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x9

    goto :goto_0

    :sswitch_a
    const-string/jumbo v1, "offlineAvailable"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :sswitch_b
    const-string/jumbo v1, "searchTitle"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_0

    :sswitch_c
    const-string/jumbo v1, "evidence"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_0

    :sswitch_d
    const-string/jumbo v1, "heroImgs"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_0

    :sswitch_e
    const-string/jumbo v1, "defaultTrailer"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_0

    :sswitch_f
    const-string/jumbo v1, "billboardSummary"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xf

    goto/16 :goto_0

    :sswitch_10
    const-string/jumbo v1, "vertStoryArt"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x10

    goto/16 :goto_0

    :sswitch_11
    const-string/jumbo v1, "horzDispArt"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x11

    goto/16 :goto_0

    :sswitch_12
    const-string/jumbo v1, "horzDispSmallArt"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x12

    goto/16 :goto_0

    :sswitch_13
    const-string/jumbo v1, "storyImgDispArt"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x13

    goto/16 :goto_0

    :sswitch_14
    const-string/jumbo v1, "tvCardArt"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x14

    goto/16 :goto_0

    :sswitch_15
    const-string/jumbo v1, "interactiveMoments"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x15

    goto/16 :goto_0

    :sswitch_16
    const-string/jumbo v1, "similars"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x16

    goto/16 :goto_0

    :sswitch_17
    const-string/jumbo v1, "episodes"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x17

    goto/16 :goto_0

    :sswitch_18
    const-string/jumbo v1, "seasons"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x18

    goto/16 :goto_0

    :sswitch_19
    const-string/jumbo v1, "scenes"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x19

    goto/16 :goto_0

    :sswitch_1a
    const-string/jumbo v1, "postPlayExperience"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x1a

    goto/16 :goto_0

    :sswitch_1b
    const-string/jumbo v1, "cast"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x1b

    goto/16 :goto_0

    :sswitch_1c
    const-string/jumbo v1, "castStills"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x1c

    goto/16 :goto_0

    :sswitch_1d
    const-string/jumbo v1, "interactive"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x1d

    goto/16 :goto_0

    :sswitch_1e
    const-string/jumbo v1, "trickplayBaseUrl"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x1e

    goto/16 :goto_0

    :sswitch_1f
    const-string/jumbo v1, "trickplayBaseBigUrl"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x1f

    goto/16 :goto_0

    :sswitch_20
    const-string/jumbo v1, "intrUrl"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x20

    goto/16 :goto_0

    .line 357
    :pswitch_0
    check-cast p2, Lcom/netflix/model/leafs/Video$CwCleanBoxart;

    iput-object p2, p0, Lcom/netflix/model/branches/FalkorVideo;->cleanBoxshot:Lcom/netflix/model/leafs/Video$CwCleanBoxart;

    goto/16 :goto_1

    .line 358
    :pswitch_1
    check-cast p2, Lcom/netflix/model/leafs/Video$Advisories;

    iput-object p2, p0, Lcom/netflix/model/branches/FalkorVideo;->advisories:Lcom/netflix/model/leafs/Video$Advisories;

    goto/16 :goto_1

    .line 359
    :pswitch_2
    check-cast p2, Lcom/netflix/model/leafs/Video$Summary;

    iput-object p2, p0, Lcom/netflix/model/branches/FalkorVideo;->summary:Lcom/netflix/model/leafs/Video$Summary;

    goto/16 :goto_1

    .line 360
    :pswitch_3
    check-cast p2, Lcom/netflix/model/leafs/Video$Summary;

    iput-object p2, p0, Lcom/netflix/model/branches/FalkorVideo;->summary:Lcom/netflix/model/leafs/Video$Summary;

    goto/16 :goto_1

    .line 361
    :pswitch_4
    check-cast p2, Lcom/netflix/model/leafs/Video$KubrickSummary;

    iput-object p2, p0, Lcom/netflix/model/branches/FalkorVideo;->kubrick:Lcom/netflix/model/leafs/Video$KubrickSummary;

    goto/16 :goto_1

    .line 362
    :pswitch_5
    check-cast p2, Lcom/netflix/model/leafs/Video$Detail;

    iput-object p2, p0, Lcom/netflix/model/branches/FalkorVideo;->detail:Lcom/netflix/model/leafs/Video$Detail;

    goto/16 :goto_1

    .line 363
    :pswitch_6
    check-cast p2, Lcom/netflix/model/leafs/Video$RatingInfo;

    iput-object p2, p0, Lcom/netflix/model/branches/FalkorVideo;->rating:Lcom/netflix/model/leafs/Video$RatingInfo;

    goto/16 :goto_1

    .line 364
    :pswitch_7
    check-cast p2, Lcom/netflix/model/leafs/Video$HasWatched;

    iput-object p2, p0, Lcom/netflix/model/branches/FalkorVideo;->hasWatched:Lcom/netflix/model/leafs/Video$HasWatched;

    goto/16 :goto_1

    .line 365
    :pswitch_8
    check-cast p2, Lcom/netflix/model/leafs/Video$InQueue;

    iput-object p2, p0, Lcom/netflix/model/branches/FalkorVideo;->inQueue:Lcom/netflix/model/leafs/Video$InQueue;

    goto/16 :goto_1

    .line 366
    :pswitch_9
    check-cast p2, Lcom/netflix/model/leafs/Video$Bookmark;

    iput-object p2, p0, Lcom/netflix/model/branches/FalkorVideo;->bookmark:Lcom/netflix/model/leafs/Video$Bookmark;

    goto/16 :goto_1

    .line 367
    :pswitch_a
    check-cast p2, Lcom/netflix/model/leafs/Video$OfflineAvailable;

    iput-object p2, p0, Lcom/netflix/model/branches/FalkorVideo;->offlineAvailable:Lcom/netflix/model/leafs/Video$OfflineAvailable;

    goto/16 :goto_1

    .line 368
    :pswitch_b
    check-cast p2, Lcom/netflix/model/leafs/Video$SearchTitle;

    iput-object p2, p0, Lcom/netflix/model/branches/FalkorVideo;->searchTitle:Lcom/netflix/model/leafs/Video$SearchTitle;

    goto/16 :goto_1

    .line 369
    :pswitch_c
    check-cast p2, Lcom/netflix/model/leafs/Video$Evidence;

    iput-object p2, p0, Lcom/netflix/model/branches/FalkorVideo;->videoEvidence:Lcom/netflix/model/leafs/Video$Evidence;

    goto/16 :goto_1

    .line 370
    :pswitch_d
    check-cast p2, Lcom/netflix/model/leafs/Video$HeroImages;

    iput-object p2, p0, Lcom/netflix/model/branches/FalkorVideo;->heroImages:Lcom/netflix/model/leafs/Video$HeroImages;

    goto/16 :goto_1

    .line 371
    :pswitch_e
    check-cast p2, Lcom/netflix/model/leafs/Video$SupplementalVideos;

    iput-object p2, p0, Lcom/netflix/model/branches/FalkorVideo;->supplementalVideos:Lcom/netflix/model/leafs/Video$SupplementalVideos;

    goto/16 :goto_1

    .line 372
    :pswitch_f
    check-cast p2, Lcom/netflix/model/leafs/originals/BillboardSummary;

    iput-object p2, p0, Lcom/netflix/model/branches/FalkorVideo;->billboardSummary:Lcom/netflix/model/leafs/originals/BillboardSummary;

    goto/16 :goto_1

    .line 373
    :pswitch_10
    check-cast p2, Lcom/netflix/model/leafs/Video$VerticalStoryArt;

    iput-object p2, p0, Lcom/netflix/model/branches/FalkorVideo;->vertStoryArtUrl:Lcom/netflix/model/leafs/Video$VerticalStoryArt;

    goto/16 :goto_1

    .line 374
    :pswitch_11
    check-cast p2, Lcom/netflix/model/leafs/Video$HorizontalDisplayArt;

    iput-object p2, p0, Lcom/netflix/model/branches/FalkorVideo;->horizontalDisplayArtUrl:Lcom/netflix/model/leafs/Video$HorizontalDisplayArt;

    goto/16 :goto_1

    .line 375
    :pswitch_12
    check-cast p2, Lcom/netflix/model/leafs/Video$HorizontalDisplaySmallArt;

    iput-object p2, p0, Lcom/netflix/model/branches/FalkorVideo;->horizontalDisplaySmallArtUrl:Lcom/netflix/model/leafs/Video$HorizontalDisplaySmallArt;

    goto/16 :goto_1

    .line 376
    :pswitch_13
    check-cast p2, Lcom/netflix/model/leafs/Video$StoryImgDisplayArt;

    iput-object p2, p0, Lcom/netflix/model/branches/FalkorVideo;->storyImgDisplayArtUrl:Lcom/netflix/model/leafs/Video$StoryImgDisplayArt;

    goto/16 :goto_1

    .line 377
    :pswitch_14
    check-cast p2, Lcom/netflix/model/leafs/Video$TvCardArt;

    iput-object p2, p0, Lcom/netflix/model/branches/FalkorVideo;->tvCardArtUrl:Lcom/netflix/model/leafs/Video$TvCardArt;

    goto/16 :goto_1

    .line 378
    :pswitch_15
    check-cast p2, Lcom/netflix/model/leafs/InteractivePlaybackMoments;

    iput-object p2, p0, Lcom/netflix/model/branches/FalkorVideo;->interactivePlaybackMoments:Lcom/netflix/model/leafs/InteractivePlaybackMoments;

    goto/16 :goto_1

    .line 379
    :pswitch_16
    check-cast p2, Lcom/netflix/model/branches/SummarizedList;

    iput-object p2, p0, Lcom/netflix/model/branches/FalkorVideo;->sims:Lcom/netflix/model/branches/SummarizedList;

    goto/16 :goto_1

    .line 380
    :pswitch_17
    check-cast p2, Lcom/netflix/falkor/BranchMap;

    iput-object p2, p0, Lcom/netflix/model/branches/FalkorVideo;->episodes:Lcom/netflix/falkor/BranchMap;

    goto/16 :goto_1

    .line 381
    :pswitch_18
    check-cast p2, Lcom/netflix/model/branches/SummarizedList;

    iput-object p2, p0, Lcom/netflix/model/branches/FalkorVideo;->seasons:Lcom/netflix/model/branches/SummarizedList;

    goto/16 :goto_1

    .line 382
    :pswitch_19
    check-cast p2, Lcom/netflix/falkor/BranchMap;

    iput-object p2, p0, Lcom/netflix/model/branches/FalkorVideo;->scenes:Lcom/netflix/falkor/BranchMap;

    goto/16 :goto_1

    .line 383
    :pswitch_1a
    check-cast p2, Lcom/netflix/falkor/Ref;

    iput-object p2, p0, Lcom/netflix/model/branches/FalkorVideo;->postPlayExperience:Lcom/netflix/falkor/Ref;

    goto/16 :goto_1

    .line 384
    :pswitch_1b
    new-instance v0, Lcom/netflix/falkor/BranchMap;

    sget-object v1, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator;->Ref:Lcom/netflix/falkor/Func;

    invoke-direct {v0, v1}, Lcom/netflix/falkor/BranchMap;-><init>(Lcom/netflix/falkor/Func;)V

    iput-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->performers:Lcom/netflix/falkor/BranchMap;

    .line 385
    :pswitch_1c
    new-instance v0, Lcom/netflix/falkor/BranchMap;

    sget-object v1, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator;->Ref:Lcom/netflix/falkor/Func;

    invoke-direct {v0, v1}, Lcom/netflix/falkor/BranchMap;-><init>(Lcom/netflix/falkor/Func;)V

    iput-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->performerStills:Lcom/netflix/falkor/BranchMap;

    .line 386
    :pswitch_1d
    check-cast p2, Lcom/netflix/model/branches/InteractiveInfo;

    iput-object p2, p0, Lcom/netflix/model/branches/FalkorVideo;->interactiveInfo:Lcom/netflix/model/branches/InteractiveInfo;

    goto/16 :goto_1

    .line 388
    :pswitch_1e
    check-cast p2, Lcom/netflix/model/leafs/Video$TrickPlayBaseUrl;

    iput-object p2, p0, Lcom/netflix/model/branches/FalkorVideo;->baseUrl:Lcom/netflix/model/leafs/Video$TrickPlayBaseUrl;

    goto/16 :goto_1

    .line 389
    :pswitch_1f
    check-cast p2, Lcom/netflix/model/leafs/Video$TrickPlayBaseBigUrl;

    iput-object p2, p0, Lcom/netflix/model/branches/FalkorVideo;->baseBigUrl:Lcom/netflix/model/leafs/Video$TrickPlayBaseBigUrl;

    goto/16 :goto_1

    .line 390
    :pswitch_20
    check-cast p2, Lcom/netflix/model/leafs/Video$InterestingMomentsUrl;

    iput-object p2, p0, Lcom/netflix/model/branches/FalkorVideo;->interestingMomentsUrl:Lcom/netflix/model/leafs/Video$InterestingMomentsUrl;

    goto/16 :goto_1

    .line 356
    :sswitch_data_0
    .sparse-switch
        -0x7b66d863 -> :sswitch_3
        -0x756b9acf -> :sswitch_15
        -0x6eb9585a -> :sswitch_2
        -0x6af67faf -> :sswitch_14
        -0x53efc681 -> :sswitch_10
        -0x4f95e7af -> :sswitch_5
        -0x4f5fd39f -> :sswitch_0
        -0x4899732e -> :sswitch_11
        -0x43bf624c -> :sswitch_7
        -0x4265cc99 -> :sswitch_f
        -0x37ea4e63 -> :sswitch_6
        -0x36200699 -> :sswitch_19
        -0x26a8e0e9 -> :sswitch_1
        -0x25b9fe28 -> :sswitch_17
        -0x24e8e7d6 -> :sswitch_d
        -0x22faf016 -> :sswitch_1c
        -0x20c3ea70 -> :sswitch_b
        -0x1683d2e9 -> :sswitch_4
        -0x9dce382 -> :sswitch_1a
        0x2e7b3f -> :sswitch_1b
        0x81f8c26 -> :sswitch_a
        0x16d39e57 -> :sswitch_c
        0x1b7c81d7 -> :sswitch_1e
        0x1c8fe7e8 -> :sswitch_16
        0x37d7fbb2 -> :sswitch_e
        0x4a9eaef3 -> :sswitch_13
        0x6deacee2 -> :sswitch_1d
        0x703896cd -> :sswitch_12
        0x72cf8aec -> :sswitch_8
        0x74bb280c -> :sswitch_20
        0x7552f1f0 -> :sswitch_18
        0x7787a536 -> :sswitch_9
        0x7d1dbae7 -> :sswitch_1f
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
    .end packed-switch
.end method

.method public setUserThumbRating(I)V
    .locals 1

    .prologue
    .line 894
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->rating:Lcom/netflix/model/leafs/Video$RatingInfo;

    iput p1, v0, Lcom/netflix/model/leafs/Video$RatingInfo;->userThumbRating:I

    .line 895
    return-void
.end method

.method public shouldRefreshVolatileData()Z
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 408
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Lcom/netflix/model/branches/FalkorVideo;->VOLATILE_NODE_REFRESH_AGE:J

    sub-long/2addr v4, v6

    .line 410
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->bookmark:Lcom/netflix/model/leafs/Video$Bookmark;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->bookmark:Lcom/netflix/model/leafs/Video$Bookmark;

    invoke-virtual {v0, v4, v5}, Lcom/netflix/model/leafs/Video$Bookmark;->needsRefresh(J)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 411
    :goto_0
    iget-object v3, p0, Lcom/netflix/model/branches/FalkorVideo;->inQueue:Lcom/netflix/model/leafs/Video$InQueue;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/netflix/model/branches/FalkorVideo;->inQueue:Lcom/netflix/model/leafs/Video$InQueue;

    invoke-virtual {v3, v4, v5}, Lcom/netflix/model/leafs/Video$InQueue;->needsRefresh(J)Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v1

    .line 412
    :goto_1
    iget-object v6, p0, Lcom/netflix/model/branches/FalkorVideo;->rating:Lcom/netflix/model/leafs/Video$RatingInfo;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/netflix/model/branches/FalkorVideo;->rating:Lcom/netflix/model/leafs/Video$RatingInfo;

    invoke-virtual {v6, v4, v5}, Lcom/netflix/model/leafs/Video$RatingInfo;->needsRefresh(J)Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v1

    .line 414
    :goto_2
    const-string/jumbo v5, "FalkorVideo"

    const-string/jumbo v6, "shouldRefreshVolatileData bookmark=%b, queue=%b, rating=%b"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v5, v6, v7}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 416
    if-nez v0, :cond_0

    if-nez v3, :cond_0

    if-eqz v4, :cond_6

    :cond_0
    move v3, v1

    .line 417
    :goto_3
    if-nez v3, :cond_8

    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->episodes:Lcom/netflix/falkor/BranchMap;

    if-eqz v0, :cond_8

    .line 418
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->episodes:Lcom/netflix/falkor/BranchMap;

    const-string/jumbo v4, "current"

    invoke-virtual {v0, v4}, Lcom/netflix/falkor/BranchMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 419
    if-eqz v0, :cond_8

    iget-object v4, p0, Lcom/netflix/model/branches/FalkorVideo;->seasons:Lcom/netflix/model/branches/SummarizedList;

    if-eqz v4, :cond_8

    instance-of v4, v0, Lcom/netflix/falkor/Ref;

    if-eqz v4, :cond_8

    .line 420
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Lcom/netflix/model/branches/FalkorVideo;->EPISODE_NODE_REFRESH_AGE:J

    sub-long/2addr v4, v6

    .line 421
    check-cast v0, Lcom/netflix/falkor/Ref;

    invoke-virtual {v0, v4, v5}, Lcom/netflix/falkor/Ref;->needsRefresh(J)Z

    move-result v3

    .line 422
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->seasons:Lcom/netflix/model/branches/SummarizedList;

    invoke-virtual {v0}, Lcom/netflix/model/branches/SummarizedList;->getSummary()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->seasons:Lcom/netflix/model/branches/SummarizedList;

    invoke-virtual {v0}, Lcom/netflix/model/branches/SummarizedList;->getSummary()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/TrackableListSummary;

    invoke-virtual {v0, v4, v5}, Lcom/netflix/model/leafs/TrackableListSummary;->needsRefresh(J)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    .line 424
    :goto_4
    const-string/jumbo v4, "FalkorVideo"

    const-string/jumbo v5, "shouldRefreshVolatileData currentEpisode=%b, seasonCount=%b"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v4, v5, v6}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 426
    if-nez v3, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    move v2, v1

    .line 430
    :cond_2
    :goto_5
    return v2

    :cond_3
    move v0, v2

    .line 410
    goto/16 :goto_0

    :cond_4
    move v3, v2

    .line 411
    goto/16 :goto_1

    :cond_5
    move v4, v2

    .line 412
    goto/16 :goto_2

    :cond_6
    move v3, v2

    .line 416
    goto :goto_3

    :cond_7
    move v0, v2

    .line 422
    goto :goto_4

    :cond_8
    move v2, v3

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "FalkorVideo [getId()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", getTitle()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", getType()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
