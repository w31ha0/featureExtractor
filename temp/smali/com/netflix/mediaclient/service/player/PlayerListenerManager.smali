.class public Lcom/netflix/mediaclient/service/player/PlayerListenerManager;
.super Ljava/lang/Object;
.source "PlayerListenerManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mPlayerListenerOnCompletionHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnCompletionHandler;

.field private mPlayerListenerOnPlaybackErrorHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnPlaybackErrorHandler;

.field private mPlayerListenerOnStalledHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnStalledHandler;

.field private mPlayerListenerOnStartedHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnStartedHandler;

.field private mPlayerListenerOnSubtitleChangeHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnSubtitleChangeHandler;

.field private mPlayerListenerOnSubtitleFailedHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnSubtitleFailedHandler;

.field private mPlayerListenerOnUpdatePtsHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnUpdatePtsHandler;

.field private mPlayerListenerPrepareHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerPrepareHandler;

.field private final mPlayerListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->mPlayerListeners:Ljava/util/List;

    .line 45
    new-instance v0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerPrepareHandler;

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerPrepareHandler;-><init>(Lcom/netflix/mediaclient/service/player/PlayerListenerManager;Lcom/netflix/mediaclient/service/player/PlayerListenerManager$1;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->mPlayerListenerPrepareHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerPrepareHandler;

    .line 46
    new-instance v0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnUpdatePtsHandler;

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnUpdatePtsHandler;-><init>(Lcom/netflix/mediaclient/service/player/PlayerListenerManager;Lcom/netflix/mediaclient/service/player/PlayerListenerManager$1;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->mPlayerListenerOnUpdatePtsHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnUpdatePtsHandler;

    .line 47
    new-instance v0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnCompletionHandler;

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnCompletionHandler;-><init>(Lcom/netflix/mediaclient/service/player/PlayerListenerManager;Lcom/netflix/mediaclient/service/player/PlayerListenerManager$1;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->mPlayerListenerOnCompletionHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnCompletionHandler;

    .line 48
    new-instance v0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnStalledHandler;

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnStalledHandler;-><init>(Lcom/netflix/mediaclient/service/player/PlayerListenerManager;Lcom/netflix/mediaclient/service/player/PlayerListenerManager$1;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->mPlayerListenerOnStalledHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnStalledHandler;

    .line 49
    new-instance v0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnStartedHandler;

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnStartedHandler;-><init>(Lcom/netflix/mediaclient/service/player/PlayerListenerManager;Lcom/netflix/mediaclient/service/player/PlayerListenerManager$1;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->mPlayerListenerOnStartedHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnStartedHandler;

    .line 50
    new-instance v0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnSubtitleChangeHandler;

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnSubtitleChangeHandler;-><init>(Lcom/netflix/mediaclient/service/player/PlayerListenerManager;Lcom/netflix/mediaclient/service/player/PlayerListenerManager$1;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->mPlayerListenerOnSubtitleChangeHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnSubtitleChangeHandler;

    .line 51
    new-instance v0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnSubtitleFailedHandler;

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnSubtitleFailedHandler;-><init>(Lcom/netflix/mediaclient/service/player/PlayerListenerManager;Lcom/netflix/mediaclient/service/player/PlayerListenerManager$1;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->mPlayerListenerOnSubtitleFailedHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnSubtitleFailedHandler;

    .line 52
    new-instance v0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnPlaybackErrorHandler;

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnPlaybackErrorHandler;-><init>(Lcom/netflix/mediaclient/service/player/PlayerListenerManager;Lcom/netflix/mediaclient/service/player/PlayerListenerManager$1;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->mPlayerListenerOnPlaybackErrorHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnPlaybackErrorHandler;

    return-void
.end method


# virtual methods
.method public declared-synchronized addPlayerListener(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerListener;)V
    .locals 1

    .prologue
    .line 61
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->mPlayerListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->mPlayerListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    :cond_0
    monitor-exit p0

    return-void

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->mPlayerListeners:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPlayerListenerOnCompletionHandler()Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnCompletionHandler;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->mPlayerListenerOnCompletionHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnCompletionHandler;

    return-object v0
.end method

.method public getPlayerListenerOnPlaybackErrorHandler()Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnPlaybackErrorHandler;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->mPlayerListenerOnPlaybackErrorHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnPlaybackErrorHandler;

    return-object v0
.end method

.method public getPlayerListenerOnStalledHandler()Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnStalledHandler;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->mPlayerListenerOnStalledHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnStalledHandler;

    return-object v0
.end method

.method public getPlayerListenerOnStartedHandler()Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnStartedHandler;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->mPlayerListenerOnStartedHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnStartedHandler;

    return-object v0
.end method

.method public getPlayerListenerOnSubtitleChangeHandler()Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnSubtitleChangeHandler;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->mPlayerListenerOnSubtitleChangeHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnSubtitleChangeHandler;

    return-object v0
.end method

.method public getPlayerListenerOnSubtitleFailedHandler()Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnSubtitleFailedHandler;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->mPlayerListenerOnSubtitleFailedHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnSubtitleFailedHandler;

    return-object v0
.end method

.method public getPlayerListenerOnUpdatePtsHandler()Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnUpdatePtsHandler;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->mPlayerListenerOnUpdatePtsHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnUpdatePtsHandler;

    return-object v0
.end method

.method public getPlayerListenerPrepareHandler()Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerPrepareHandler;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->mPlayerListenerPrepareHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerPrepareHandler;

    return-object v0
.end method

.method public declared-synchronized removePlayerListener(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerListener;)V
    .locals 1

    .prologue
    .line 76
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->mPlayerListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    monitor-exit p0

    return-void

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setPlayerListenerOnCompletionHandler(Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnCompletionHandler;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->mPlayerListenerOnCompletionHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnCompletionHandler;

    .line 248
    return-void
.end method

.method setPlayerListenerOnStalledHandler(Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnStalledHandler;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->mPlayerListenerOnStalledHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnStalledHandler;

    .line 267
    return-void
.end method

.method setPlayerListenerOnStartedHandler(Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnStartedHandler;)V
    .locals 0

    .prologue
    .line 285
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->mPlayerListenerOnStartedHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnStartedHandler;

    .line 286
    return-void
.end method

.method setPlayerListenerOnSubtitleChangeHandler(Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnSubtitleChangeHandler;)V
    .locals 0

    .prologue
    .line 304
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->mPlayerListenerOnSubtitleChangeHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnSubtitleChangeHandler;

    .line 305
    return-void
.end method

.method setPlayerListenerOnSubtitleFailedHandler(Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnSubtitleFailedHandler;)V
    .locals 0

    .prologue
    .line 323
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->mPlayerListenerOnSubtitleFailedHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnSubtitleFailedHandler;

    .line 324
    return-void
.end method

.method setPlayerListenerOnUpdatePtsHandler(Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnUpdatePtsHandler;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->mPlayerListenerOnUpdatePtsHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnUpdatePtsHandler;

    .line 229
    return-void
.end method

.method setPlayerListenerPrepareHandler(Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerPrepareHandler;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->mPlayerListenerPrepareHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerPrepareHandler;

    .line 210
    return-void
.end method
