.class public Lcom/netflix/falkor/task/FetchInteractiveVideoMomentsTask;
.super Lcom/netflix/falkor/task/CmpTask;
.source "FetchInteractiveVideoMomentsTask.java"


# static fields
.field private static final URL_PARAM_INTERACTIVE_ORIGINALS_AUDIO_LOCALE:Ljava/lang/String; = "ioal"

.field private static final URL_PARAM_INTERACTIVE_ORIGINALS_DEVICE_DPI_CATEGORY:Ljava/lang/String; = "iodpi"

.field private static final URL_PARAM_INTERACTIVE_ORIGINALS_DEVICE_YEAR_CLASS:Ljava/lang/String; = "ioyc"


# instance fields
.field private final audioLanguage:Ljava/lang/String;

.field private final deviceDpiCategory:I

.field private final deviceYearClass:I

.field private final momentsDataPQL:Lcom/netflix/falkor/PQL;

.field private final type:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

.field private final videoId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;IILcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 3

    .prologue
    .line 37
    invoke-direct {p0, p1, p7}, Lcom/netflix/falkor/task/CmpTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 38
    iput-object p2, p0, Lcom/netflix/falkor/task/FetchInteractiveVideoMomentsTask;->type:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 39
    iput-object p3, p0, Lcom/netflix/falkor/task/FetchInteractiveVideoMomentsTask;->videoId:Ljava/lang/String;

    .line 40
    iput-object p4, p0, Lcom/netflix/falkor/task/FetchInteractiveVideoMomentsTask;->audioLanguage:Ljava/lang/String;

    .line 41
    iput p5, p0, Lcom/netflix/falkor/task/FetchInteractiveVideoMomentsTask;->deviceYearClass:I

    .line 42
    iput p6, p0, Lcom/netflix/falkor/task/FetchInteractiveVideoMomentsTask;->deviceDpiCategory:I

    .line 44
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->getValue()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "interactiveMoments"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/falkor/task/FetchInteractiveVideoMomentsTask;->momentsDataPQL:Lcom/netflix/falkor/PQL;

    .line 46
    iget-object v0, p0, Lcom/netflix/falkor/task/FetchInteractiveVideoMomentsTask;->modelProxy:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0, v1}, Lcom/netflix/falkor/CachedModelProxy;->getValue(Lcom/netflix/falkor/PQL;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/details/InteractiveMoments;

    .line 47
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/InteractiveMoments;->getInteractiveMoments()Lcom/netflix/model/leafs/InteractivePlaybackMoments;

    move-result-object v0

    .line 49
    :goto_0
    if-eqz v0, :cond_1

    .line 50
    invoke-virtual {v0}, Lcom/netflix/model/leafs/InteractivePlaybackMoments;->getData()Lcom/netflix/mediaclient/ui/iko/model/InteractiveMomentsModel;

    move-result-object v0

    .line 52
    if-eqz p4, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/model/InteractiveMomentsModel;->getAudioLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/netflix/falkor/task/FetchInteractiveVideoMomentsTask;->modelProxy:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0, v1}, Lcom/netflix/falkor/CachedModelProxy;->invalidate(Lcom/netflix/falkor/PQL;)V

    .line 64
    :cond_1
    return-void

    .line 47
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected buildPqlList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/falkor/PQL;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/netflix/falkor/task/FetchInteractiveVideoMomentsTask;->momentsDataPQL:Lcom/netflix/falkor/PQL;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    return-void
.end method

.method protected callbackForFailure(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onInteractiveMomentsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/InteractiveMoments;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 94
    return-void
.end method

.method public bridge synthetic executeRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)V
    .locals 0

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/netflix/falkor/task/CmpTask;->executeRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)V

    return-void
.end method

.method protected fetchResultsAndCallbackForSuccess(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/falkor/CachedModelProxy$GetResult;)V
    .locals 4

    .prologue
    .line 87
    iget-object v0, p0, Lcom/netflix/falkor/task/FetchInteractiveVideoMomentsTask;->modelProxy:Lcom/netflix/falkor/CachedModelProxy;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/netflix/falkor/task/FetchInteractiveVideoMomentsTask;->type:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->getValue()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/netflix/falkor/task/FetchInteractiveVideoMomentsTask;->videoId:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/falkor/CachedModelProxy;->getValue(Lcom/netflix/falkor/PQL;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/details/InteractiveMoments;

    .line 88
    sget-object v1, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {p1, v0, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onInteractiveMomentsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/InteractiveMoments;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 89
    return-void
.end method

.method protected getOptionalRequestParams()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/util/DataUtil$StringPair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 75
    new-instance v1, Lcom/netflix/mediaclient/util/DataUtil$StringPair;

    const-string/jumbo v2, "iodpi"

    iget v3, p0, Lcom/netflix/falkor/task/FetchInteractiveVideoMomentsTask;->deviceDpiCategory:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/netflix/mediaclient/util/DataUtil$StringPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance v1, Lcom/netflix/mediaclient/util/DataUtil$StringPair;

    const-string/jumbo v2, "ioyc"

    iget v3, p0, Lcom/netflix/falkor/task/FetchInteractiveVideoMomentsTask;->deviceYearClass:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/netflix/mediaclient/util/DataUtil$StringPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v1, p0, Lcom/netflix/falkor/task/FetchInteractiveVideoMomentsTask;->audioLanguage:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 79
    new-instance v1, Lcom/netflix/mediaclient/util/DataUtil$StringPair;

    const-string/jumbo v2, "ioal"

    iget-object v3, p0, Lcom/netflix/falkor/task/FetchInteractiveVideoMomentsTask;->audioLanguage:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/netflix/mediaclient/util/DataUtil$StringPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    :cond_0
    return-object v0
.end method
