.class public final Lcom/netflix/mediaclient/servicemgr/BrowseManager;
.super Ljava/lang/Object;
.source "BrowseManager.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/IBrowseManager;


# static fields
.field private static final ERROR_PARAM_WITH_NULL:Ljava/lang/String; = "Parameter cannot be null"

.field private static final TAG:Ljava/lang/String; = "ServiceManagerBrowse"


# instance fields
.field private final mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    .line 34
    return-void
.end method


# virtual methods
.method public addToQueue(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;ILjava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 7

    .prologue
    .line 827
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 828
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Parameter cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 830
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 831
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0, p5, p1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getWrappedRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;Ljava/lang/String;)I

    move-result v6

    .line 835
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getBrowseInterface()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getClientId()I

    move-result v5

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v6}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->addToQueue(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;ILjava/lang/String;II)V

    .line 836
    const/4 v0, 0x1

    .line 839
    :goto_0
    return v0

    .line 838
    :cond_1
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "addToQueue:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dumpCacheToDisk(Ljava/io/File;)V
    .locals 2

    .prologue
    .line 898
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 899
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getBrowseInterface()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->dumpCacheToDisk(Ljava/io/File;)V

    .line 903
    :goto_0
    return-void

    .line 901
    :cond_0
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "dumpCacheToDisk:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public dumpHomeLoLoMosAndVideos(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 888
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 889
    new-instance v0, Lcom/netflix/mediaclient/service/browse/DataDumper;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/browse/DataDumper;-><init>(Lcom/netflix/mediaclient/servicemgr/IBrowseManager;)V

    .line 890
    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/service/browse/DataDumper;->dumpHomeLoLoMosAndVideosToHtml(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    :goto_0
    return-void

    .line 892
    :cond_0
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "dumpHomeLoLoMosAndVideos:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public fetchAdvisories(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)V
    .locals 3

    .prologue
    .line 543
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 544
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0, p2}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v0

    .line 548
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getBrowseInterface()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getClientId()I

    move-result v2

    invoke-interface {v1, p1, v2, v0}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->fetchAdvisories(Ljava/lang/String;II)V

    .line 552
    :goto_0
    return-void

    .line 550
    :cond_0
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "fetchAdvisories:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public declared-synchronized fetchCWVideos(IILcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 3

    .prologue
    .line 299
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0, p3}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v0

    .line 304
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getBrowseInterface()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getClientId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2, v0}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->fetchCWVideos(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    const/4 v0, 0x1

    .line 308
    :goto_0
    monitor-exit p0

    return v0

    .line 307
    :cond_0
    :try_start_1
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "fetchCWVideos:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 308
    const/4 v0, 0x0

    goto :goto_0

    .line 299
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized fetchEpisodeDetails(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 3

    .prologue
    .line 567
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 568
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Parameter cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 567
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 570
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 571
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0, p3}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v0

    .line 575
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getBrowseInterface()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getClientId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2, v0}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->fetchEpisodeDetails(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 576
    const/4 v0, 0x1

    .line 579
    :goto_0
    monitor-exit p0

    return v0

    .line 578
    :cond_1
    :try_start_2
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "fetchEpisodeDetails:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 579
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized fetchEpisodes(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;IILcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 7

    .prologue
    .line 241
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Parameter cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 244
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0, p5}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v6

    .line 249
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getBrowseInterface()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getClientId()I

    move-result v5

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v6}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->fetchEpisodes(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;IIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 250
    const/4 v0, 0x1

    .line 253
    :goto_0
    monitor-exit p0

    return v0

    .line 252
    :cond_1
    :try_start_2
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "fetchEpisodes:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 253
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public fetchFalkorVideo(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 3

    .prologue
    .line 428
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Parameter cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 432
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0, p2}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v0

    .line 436
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getBrowseInterface()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getClientId()I

    move-result v2

    invoke-interface {v1, p1, v2, v0}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->fetchFalkorVideo(Ljava/lang/String;II)V

    .line 437
    const/4 v0, 0x1

    .line 440
    :goto_0
    return v0

    .line 439
    :cond_1
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "fetchFalkorVideo:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized fetchGenreLists(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 3

    .prologue
    .line 700
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 701
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v0

    .line 705
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getBrowseInterface()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getClientId()I

    move-result v2

    invoke-interface {v1, v2, v0}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->fetchGenreLists(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 706
    const/4 v0, 0x1

    .line 709
    :goto_0
    monitor-exit p0

    return v0

    .line 708
    :cond_0
    :try_start_1
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "fetchGenreLists:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 709
    const/4 v0, 0x0

    goto :goto_0

    .line 700
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized fetchGenreVideos(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;IIZLcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 7

    .prologue
    .line 210
    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Parameter cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 213
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0, p5}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v6

    .line 218
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getBrowseInterface()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getClientId()I

    move-result v5

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v6}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->fetchGenreVideos(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;IIZII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 219
    const/4 v0, 0x1

    .line 222
    :goto_0
    monitor-exit p0

    return v0

    .line 221
    :cond_1
    :try_start_2
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "fetchGenreVideos:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 222
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized fetchGenres(Ljava/lang/String;IILcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 724
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->isReady()Z

    move-result v1

    if-nez v1, :cond_1

    .line 725
    const-string/jumbo v1, "ServiceManagerBrowse"

    const-string/jumbo v2, "fetchGenres:: service is not available"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 743
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 729
    :cond_1
    :try_start_1
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 737
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0, p4}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v5

    .line 742
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getBrowseInterface()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getClientId()I

    move-result v4

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->fetchGenres(Ljava/lang/String;IIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 743
    const/4 v0, 0x1

    goto :goto_0

    .line 724
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized fetchIQVideos(IIZLcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 6

    .prologue
    .line 356
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0, p4}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v5

    .line 361
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getBrowseInterface()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getClientId()I

    move-result v4

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->fetchIQVideos(IIZII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    const/4 v0, 0x1

    .line 365
    :goto_0
    monitor-exit p0

    return v0

    .line 364
    :cond_0
    :try_start_1
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "fetchIQVideos:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 365
    const/4 v0, 0x0

    goto :goto_0

    .line 356
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized fetchInteractiveVideoMoments(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;IILcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 8

    .prologue
    .line 1023
    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1024
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Parameter cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1023
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1026
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1027
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0, p6}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v7

    .line 1031
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getBrowseInterface()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getClientId()I

    move-result v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v7}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->fetchInteractiveVideoMoments(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;IIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1032
    const/4 v0, 0x1

    .line 1035
    :goto_0
    monitor-exit p0

    return v0

    .line 1034
    :cond_1
    :try_start_2
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "fetchInteractiveVideoMoments:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1035
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized fetchKidsCharacterDetails(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 3

    .prologue
    .line 491
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 492
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Parameter cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 491
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 494
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 495
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0, p2}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v0

    .line 499
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getBrowseInterface()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getClientId()I

    move-result v2

    invoke-interface {v1, p1, v2, v0}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->fetchKidsCharacterDetails(Ljava/lang/String;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 500
    const/4 v0, 0x1

    .line 503
    :goto_0
    monitor-exit p0

    return v0

    .line 502
    :cond_1
    :try_start_2
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "fetchKidsCharacterDetails:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 503
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized fetchLoLoMoSummary(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 3

    .prologue
    .line 382
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Parameter cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 382
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 385
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 386
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0, p2}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v0

    .line 390
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getBrowseInterface()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getClientId()I

    move-result v2

    invoke-interface {v1, p1, v2, v0}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->fetchLoLoMoSummary(Ljava/lang/String;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 391
    const/4 v0, 0x1

    .line 394
    :goto_0
    monitor-exit p0

    return v0

    .line 393
    :cond_1
    :try_start_2
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "fetchLoLoMoSummary:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 394
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized fetchLoMos(IILcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 3

    .prologue
    .line 146
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0, p3}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v0

    .line 151
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getBrowseInterface()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getClientId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2, v0}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->fetchLoMos(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    const/4 v0, 0x1

    .line 155
    :goto_0
    monitor-exit p0

    return v0

    .line 154
    :cond_0
    :try_start_1
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "fetchLoMos:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    const/4 v0, 0x0

    goto :goto_0

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized fetchMovieDetails(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 3

    .prologue
    .line 457
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 458
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Parameter cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 457
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 460
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 461
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0, p3, p1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getWrappedRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;Ljava/lang/String;)I

    move-result v0

    .line 465
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getBrowseInterface()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getClientId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2, v0}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->fetchMovieDetails(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 466
    const/4 v0, 0x1

    .line 469
    :goto_0
    monitor-exit p0

    return v0

    .line 468
    :cond_1
    :try_start_2
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "fetchMovieDetails:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 469
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public fetchNotificationsList(IILcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 3

    .prologue
    .line 917
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 918
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0, p3}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v0

    .line 922
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getBrowseInterface()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getClientId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2, v0}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->fetchNotifications(IIII)V

    .line 923
    const/4 v0, 0x1

    .line 926
    :goto_0
    return v0

    .line 925
    :cond_0
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "fetchNotificationsList:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized fetchPersonDetail(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 662
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 663
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0, p2}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v0

    .line 667
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getBrowseInterface()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getClientId()I

    move-result v2

    invoke-interface {v1, p1, v2, v0, p3}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->fetchPersonDetail(Ljava/lang/String;IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 668
    const/4 v0, 0x1

    .line 671
    :goto_0
    monitor-exit p0

    return v0

    .line 670
    :cond_0
    :try_start_1
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "fetchPersonDetail:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 671
    const/4 v0, 0x0

    goto :goto_0

    .line 662
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized fetchPersonRelated(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 3

    .prologue
    .line 677
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 678
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0, p2}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v0

    .line 682
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getBrowseInterface()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getClientId()I

    move-result v2

    invoke-interface {v1, p1, v2, v0}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->fetchPersonRelated(Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 683
    const/4 v0, 0x1

    .line 686
    :goto_0
    monitor-exit p0

    return v0

    .line 685
    :cond_0
    :try_start_1
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "fetchPersonRelated:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 686
    const/4 v0, 0x0

    goto :goto_0

    .line 677
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized fetchPostPlayVideos(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 6

    .prologue
    .line 314
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0, p4}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v5

    .line 319
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getBrowseInterface()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getClientId()I

    move-result v4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->fetchPostPlayVideos(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    const/4 v0, 0x1

    .line 323
    :goto_0
    monitor-exit p0

    return v0

    .line 322
    :cond_0
    :try_start_1
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "fetchPostPlayVideos:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 323
    const/4 v0, 0x0

    goto :goto_0

    .line 314
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized fetchScenePosition(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 6

    .prologue
    .line 510
    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 511
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Parameter cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 510
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 513
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->isReady()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 514
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0, p4}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v5

    .line 518
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getBrowseInterface()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getClientId()I

    move-result v4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->fetchScenePosition(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 519
    const/4 v0, 0x1

    .line 522
    :goto_0
    monitor-exit p0

    return v0

    .line 521
    :cond_2
    :try_start_2
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "fetchScenePosition:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 522
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized fetchSeasonDetails(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 3

    .prologue
    .line 594
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 595
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Parameter cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 594
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 597
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 598
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0, p2}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v0

    .line 602
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getBrowseInterface()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getClientId()I

    move-result v2

    invoke-interface {v1, p1, v2, v0}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->fetchSeasonDetails(Ljava/lang/String;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 603
    const/4 v0, 0x1

    .line 606
    :goto_0
    monitor-exit p0

    return v0

    .line 605
    :cond_1
    :try_start_2
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "fetchSeasonDetails:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 606
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized fetchSeasons(Ljava/lang/String;Lcom/netflix/falkor/task/CmpTaskMode;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 3

    .prologue
    .line 270
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Parameter cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 273
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 274
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0, p3}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v0

    .line 278
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getBrowseInterface()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getClientId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2, v0}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->fetchSeasons(Ljava/lang/String;Lcom/netflix/falkor/task/CmpTaskMode;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 279
    const/4 v0, 0x1

    .line 282
    :goto_0
    monitor-exit p0

    return v0

    .line 281
    :cond_1
    :try_start_2
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "fetchSeasons:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 282
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized fetchShowDetails(Ljava/lang/String;Ljava/lang/String;ZLcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 6

    .prologue
    .line 625
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 626
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Parameter cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 625
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 628
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 629
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0, p4, p1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getWrappedRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;Ljava/lang/String;)I

    move-result v5

    .line 633
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getBrowseInterface()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getClientId()I

    move-result v4

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->fetchShowDetails(Ljava/lang/String;Ljava/lang/String;ZII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 634
    const/4 v0, 0x1

    .line 637
    :goto_0
    monitor-exit p0

    return v0

    .line 636
    :cond_1
    :try_start_2
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "fetchShowDetails:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 637
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized fetchShowDetailsAndSeasons(Ljava/lang/String;Ljava/lang/String;ZZLcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 7

    .prologue
    .line 644
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 645
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Parameter cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 644
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 647
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 648
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0, p5, p1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getWrappedRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;Ljava/lang/String;)I

    move-result v6

    .line 652
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getBrowseInterface()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getClientId()I

    move-result v5

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v6}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->fetchShowDetailsAndSeasons(Ljava/lang/String;Ljava/lang/String;ZZII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 653
    const/4 v0, 0x1

    .line 656
    :goto_0
    monitor-exit p0

    return v0

    .line 655
    :cond_1
    :try_start_2
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "fetchShowDetailsAndSeasons:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 656
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized fetchSimilarVideosForPerson(Ljava/lang/String;ILcom/netflix/mediaclient/servicemgr/ManagerCallback;Ljava/lang/String;)Z
    .locals 6

    .prologue
    .line 770
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 771
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0, p3}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v4

    .line 772
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getBrowseInterface()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getClientId()I

    move-result v3

    move-object v1, p1

    move v2, p2

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->fetchSimilarVideosForPerson(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 773
    const/4 v0, 0x1

    .line 776
    :goto_0
    monitor-exit p0

    return v0

    .line 775
    :cond_0
    :try_start_1
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "searchNetflix:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 776
    const/4 v0, 0x0

    goto :goto_0

    .line 770
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized fetchSimilarVideosForQuerySuggestion(Ljava/lang/String;ILcom/netflix/mediaclient/servicemgr/ManagerCallback;Ljava/lang/String;)Z
    .locals 6

    .prologue
    .line 782
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 783
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0, p3}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v4

    .line 784
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getBrowseInterface()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getClientId()I

    move-result v3

    move-object v1, p1

    move v2, p2

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->fetchSimilarVideosForQuerySuggestion(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 785
    const/4 v0, 0x1

    .line 788
    :goto_0
    monitor-exit p0

    return v0

    .line 787
    :cond_0
    :try_start_1
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "searchNetflix:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 788
    const/4 v0, 0x0

    goto :goto_0

    .line 782
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public fetchTask(Lcom/netflix/falkor/task/CmpTaskDetails;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)V
    .locals 3

    .prologue
    .line 41
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0, p2}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v0

    .line 43
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getBrowseInterface()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getClientId()I

    move-result v2

    invoke-interface {v1, p1, v2, v0}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->fetchTask(Lcom/netflix/falkor/task/CmpTaskDetails;II)V

    .line 47
    :goto_0
    return-void

    .line 45
    :cond_0
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "fetchTask:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public fetchVideoSummary(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 3

    .prologue
    .line 410
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Parameter cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 414
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0, p2}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v0

    .line 418
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getBrowseInterface()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getClientId()I

    move-result v2

    invoke-interface {v1, p1, v2, v0}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->fetchVideoSummary(Ljava/lang/String;II)V

    .line 419
    const/4 v0, 0x1

    .line 422
    :goto_0
    return v0

    .line 421
    :cond_1
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "fetchVideoSummary:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized fetchVideos(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;IIZZZLcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 10

    .prologue
    .line 172
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 173
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "SPY-10830 LoLoMo refresh crash"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 174
    if-nez p1, :cond_1

    .line 175
    const-string/jumbo v2, ", lomo == null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/LogUtils;->reportErrorSafely(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    const/4 v1, 0x0

    .line 191
    :goto_1
    monitor-exit p0

    return v1

    .line 177
    :cond_1
    :try_start_1
    const-string/jumbo v2, ", lomo.id == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", lomo.title = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", lomo.class = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 172
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 182
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->isReady()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 183
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    move-object/from16 v0, p7

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v9

    .line 187
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getBrowseInterface()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getClientId()I

    move-result v8

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    invoke-interface/range {v1 .. v9}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->fetchVideos(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;IIZZZII)V

    .line 188
    const/4 v1, 0x1

    goto :goto_1

    .line 190
    :cond_3
    const-string/jumbo v1, "ServiceManagerBrowse"

    const-string/jumbo v2, "fetchVideos:: service is not available"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 191
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public flushCaches()Z
    .locals 2

    .prologue
    .line 877
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 878
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getBrowseInterface()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->flushCaches()V

    .line 879
    const/4 v0, 0x1

    .line 882
    :goto_0
    return v0

    .line 881
    :cond_0
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "flushCaches:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLolomoId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1013
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getBrowseInterface()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->getLolomoId()Ljava/lang/String;

    move-result-object v0

    .line 1017
    :goto_0
    return-object v0

    .line 1015
    :cond_0
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "getLolomoId:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getModelProxy()Lcom/netflix/falkor/ModelProxy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/netflix/falkor/ModelProxy",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1042
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getBrowseInterface()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->getModelProxy()Lcom/netflix/falkor/ModelProxy;

    move-result-object v0

    .line 1045
    :goto_0
    return-object v0

    .line 1044
    :cond_0
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "getModelProxy:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized invalidateCachedEpisodes(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V
    .locals 2

    .prologue
    .line 967
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 968
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Parameter cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 967
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 974
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 975
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getBrowseInterface()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->invalidateCachedEpisodes(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 979
    :goto_0
    monitor-exit p0

    return-void

    .line 977
    :cond_1
    :try_start_2
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "purgeCachedEpisodes:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public logBillboardActivity(Lcom/netflix/mediaclient/servicemgr/interface_/Video;Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
            "Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 907
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 908
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getBrowseInterface()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->logBillboardActivity(Lcom/netflix/mediaclient/servicemgr/interface_/Video;Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;Ljava/util/Map;)V

    .line 912
    :goto_0
    return-void

    .line 910
    :cond_0
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "logBillboardActivity:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public declared-synchronized logPostPlayImpression(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 6

    .prologue
    .line 330
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0, p4}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v5

    .line 335
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getBrowseInterface()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getClientId()I

    move-result v4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->logPostPlayImpression(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    const/4 v0, 0x1

    .line 339
    :goto_0
    monitor-exit p0

    return v0

    .line 338
    :cond_0
    :try_start_1
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "logPostPlayImpression:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 339
    const/4 v0, 0x0

    goto :goto_0

    .line 330
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public markNotificationAsRead(Lcom/netflix/model/leafs/social/IrisNotificationSummary;)V
    .locals 2

    .prologue
    .line 941
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 942
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getBrowseInterface()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->markNotificationAsRead(Lcom/netflix/model/leafs/social/IrisNotificationSummary;)V

    .line 946
    :goto_0
    return-void

    .line 944
    :cond_0
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "markNotificationAsRead:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public markNotificationsAsRead(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/model/leafs/social/IrisNotificationSummary;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 950
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 951
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getBrowseInterface()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->markNotificationsAsRead(Ljava/util/List;)V

    .line 955
    :goto_0
    return-void

    .line 953
    :cond_0
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "markNotificationsAsRead:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public declared-synchronized prefetchGenreLoLoMo(Ljava/lang/String;IIIIZZLcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 11

    .prologue
    .line 109
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    move-object/from16 v0, p8

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v10

    .line 122
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getBrowseInterface()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    .line 124
    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getClientId()I

    move-result v9

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    .line 122
    invoke-interface/range {v1 .. v10}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->prefetchGenreLoLoMo(Ljava/lang/String;IIIIZZII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    const/4 v1, 0x1

    .line 128
    :goto_0
    monitor-exit p0

    return v1

    .line 127
    :cond_0
    :try_start_1
    const-string/jumbo v1, "ServiceManagerBrowse"

    const-string/jumbo v2, "prefetchGenreLoLoMo:: service is not available"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    const/4 v1, 0x0

    goto :goto_0

    .line 109
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public prefetchLoLoMo(IIIIIIZZZLcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 13

    .prologue
    .line 68
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    move-object/from16 v0, p10

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v12

    .line 83
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getBrowseInterface()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getClientId()I

    move-result v11

    move v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-interface/range {v1 .. v12}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->prefetchLoLoMo(IIIIIIZZZII)V

    .line 84
    const/4 v1, 0x1

    .line 87
    :goto_0
    return v1

    .line 86
    :cond_0
    const-string/jumbo v1, "ServiceManagerBrowse"

    const-string/jumbo v2, "prefetchLoLoMo:: service is not available"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public prefetchVideoListDetails(Ljava/util/List;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
            ">;",
            "Lcom/netflix/mediaclient/servicemgr/ManagerCallback;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 475
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0, p2}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v0

    .line 480
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getBrowseInterface()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getClientId()I

    move-result v2

    invoke-interface {v1, p1, v2, v0}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->prefetchVideoListDetails(Ljava/util/List;II)V

    .line 481
    const/4 v0, 0x1

    .line 484
    :goto_0
    return v0

    .line 483
    :cond_0
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "prefetchDPForLomoRow:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public refreshCw(Z)V
    .locals 2

    .prologue
    .line 984
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 985
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getBrowseInterface()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->refreshCw(Z)V

    .line 986
    const-string/jumbo v0, "browse.cw.refresh"

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->leaveBreadcrumb(Ljava/lang/String;)V

    .line 990
    :goto_0
    return-void

    .line 988
    :cond_0
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "refreshCw:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public refreshIq()V
    .locals 2

    .prologue
    .line 994
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 995
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getBrowseInterface()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->refreshIq()V

    .line 999
    :goto_0
    return-void

    .line 997
    :cond_0
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "refreshIq:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public refreshIrisNotifications(Z)V
    .locals 3

    .prologue
    .line 932
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 933
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getBrowseInterface()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->refreshIrisNotifications(ZZLcom/netflix/mediaclient/service/pushnotification/MessageData;)V

    .line 937
    :goto_0
    return-void

    .line 935
    :cond_0
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "refreshIrisNotifications:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public refreshLolomo()V
    .locals 2

    .prologue
    .line 1003
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1004
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getBrowseInterface()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->refreshLolomo()V

    .line 1008
    :goto_0
    return-void

    .line 1006
    :cond_0
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "refreshLolomo:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removeFromQueue(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 6

    .prologue
    .line 848
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 849
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Parameter cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 851
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 852
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0, p4, p1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getWrappedRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;Ljava/lang/String;)I

    move-result v5

    .line 856
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getBrowseInterface()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getClientId()I

    move-result v4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->removeFromQueue(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;II)V

    .line 857
    const/4 v0, 0x1

    .line 860
    :goto_0
    return v0

    .line 859
    :cond_1
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "removeFromQueue:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public runPrefetchLolomoJob(Z)Z
    .locals 2

    .prologue
    .line 866
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 867
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getBrowseInterface()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->runPrefetchLolomoJob(Z)V

    .line 868
    const/4 v0, 0x1

    .line 871
    :goto_0
    return v0

    .line 870
    :cond_0
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "flushCaches:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized searchNetflix(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 3

    .prologue
    .line 755
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 756
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0, p2}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v0

    .line 760
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getBrowseInterface()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getClientId()I

    move-result v2

    invoke-interface {v1, p1, v2, v0}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->searchNetflix(Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 761
    const/4 v0, 0x1

    .line 764
    :goto_0
    monitor-exit p0

    return v0

    .line 763
    :cond_0
    :try_start_1
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "searchNetflix:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 764
    const/4 v0, 0x0

    goto :goto_0

    .line 755
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setVideoThumbRating(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;IILcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 7

    .prologue
    .line 805
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 806
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Parameter cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 805
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 808
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 809
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0, p5}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v6

    .line 813
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getBrowseInterface()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getClientId()I

    move-result v5

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v6}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->setVideoThumbRating(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;IIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 814
    const/4 v0, 0x1

    .line 817
    :goto_0
    monitor-exit p0

    return v0

    .line 816
    :cond_1
    :try_start_2
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "setVideoThumbRating:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 817
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateExpiredContentAdvisoryStatus(Ljava/lang/String;Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory$ContentAction;)V
    .locals 2

    .prologue
    .line 531
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getBrowseInterface()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->updateExpiredContentAdvisoryStatus(Ljava/lang/String;Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory$ContentAction;)V

    .line 536
    :goto_0
    return-void

    .line 534
    :cond_0
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "updateExpiredContentAdvisoryStatus:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
