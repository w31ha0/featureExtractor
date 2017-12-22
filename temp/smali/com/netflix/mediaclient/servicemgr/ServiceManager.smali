.class public final Lcom/netflix/mediaclient/servicemgr/ServiceManager;
.super Ljava/lang/Object;
.source "ServiceManager.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;


# static fields
.field public static final BROWSE_AGENT_CW_REFRESH:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.BA_CW_REFRESH"

.field public static final BROWSE_AGENT_EPISODE_REFRESH:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.BA_EPISODE_REFRESH"

.field public static final BROWSE_AGENT_IQ_REFRESH:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.BA_IQ_REFRESH"

.field public static final BROWSE_AGENT_POPULAR_TITLES_REFRESH:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.BA_POPULAR_TITLES_REFRESH"

.field public static final BROWSE_PARAM_CUR_EPISODE_NUMBER:Ljava/lang/String; = "curEpisodeNumber"

.field public static final BROWSE_PARAM_CUR_SEASON_NUMBER:Ljava/lang/String; = "curSeasonNumber"

.field public static final DETAIL_PAGE_RELOAD:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.DETAIL_PAGE_REFRESH"

.field public static final DISCOVERY_LIST_UPDATED:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.DISCOVERY_LIST_UPDATED"

.field public static final HOME_TTR_DONE:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.HOME_TTR_DONE"

.field public static final IRIS_NOTIFICATIONS_LIST_UPDATED:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.BA_IRIS_NOTIFICATION_LIST_UPDATED"

.field public static final LOCAL_PLAYER_PLAY_START:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOCAL_PLAYER_PLAY_START"

.field public static final LOCAL_PLAYER_PLAY_STOP:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOCAL_PLAYER_PLAY_STOP"

.field public static final NOTIFICATIONS_LIST_STATUS:Ljava/lang/String; = "notifications_list_status"

.field public static final PLAYER_EXTRA_PLAYBACK_TYPE:Ljava/lang/String; = "playbackType"

.field private static final TAG:Ljava/lang/String; = "ServiceManager"


# instance fields
.field private addToMyListWrapper:Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;

.field private final mBrowseManager:Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

.field private mCallback:Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;

.field private final mCallbackMuxer:Lcom/netflix/mediaclient/servicemgr/ServiceManager$CallbackMuxer;

.field private mClientId:I

.field private final mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private mLocalService:Lcom/netflix/mediaclient/service/NetflixService;

.field private mReady:Z

.field private mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

.field private mServiceListener:Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;)V
    .locals 4

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    const/4 v0, -0x1

    iput v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mClientId:I

    .line 140
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$CallbackMuxer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager$CallbackMuxer;-><init>(Lcom/netflix/mediaclient/servicemgr/ServiceManager$1;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mCallbackMuxer:Lcom/netflix/mediaclient/servicemgr/ServiceManager$CallbackMuxer;

    .line 1981
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager$1;-><init>(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mConnection:Landroid/content/ServiceConnection;

    .line 172
    if-nez p2, :cond_0

    .line 173
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "ServiceManager created"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iput-object p2, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mCallback:Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;

    .line 178
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/servicemgr/BrowseManager;-><init>(Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mBrowseManager:Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    .line 180
    iput-object p1, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mContext:Landroid/content/Context;

    .line 181
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mContext:Landroid/content/Context;

    const-class v3, Lcom/netflix/mediaclient/service/NetflixService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 182
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getServiceIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 183
    if-nez v0, :cond_1

    .line 184
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "ServiceManager could not bind to NetflixService!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_1
    return-void
.end method

.method static synthetic access$102(Lcom/netflix/mediaclient/servicemgr/ServiceManager;I)I
    .locals 0

    .prologue
    .line 97
    iput p1, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mClientId:I

    return p1
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mCallback:Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;

    return-object v0
.end method

.method static synthetic access$202(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;)Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mCallback:Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;

    return-object p1
.end method

.method static synthetic access$302(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Z)Z
    .locals 0

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mReady:Z

    return p1
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/servicemgr/ServiceManager;I)Lcom/netflix/mediaclient/servicemgr/ManagerCallback;
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getManagerCallback(I)Lcom/netflix/mediaclient/servicemgr/ManagerCallback;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Lcom/netflix/mediaclient/servicemgr/ServiceManager$CallbackMuxer;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mCallbackMuxer:Lcom/netflix/mediaclient/servicemgr/ServiceManager$CallbackMuxer;

    return-object v0
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Lcom/netflix/mediaclient/servicemgr/INetflixService;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    return-object v0
.end method

.method static synthetic access$602(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/servicemgr/INetflixService;)Lcom/netflix/mediaclient/servicemgr/INetflixService;
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    return-object p1
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->addToMyListWrapper:Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;

    return-object v0
.end method

.method static synthetic access$702(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;)Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->addToMyListWrapper:Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;

    return-object p1
.end method

.method static synthetic access$802(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/NetflixService;
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mLocalService:Lcom/netflix/mediaclient/service/NetflixService;

    return-object p1
.end method

.method static synthetic access$900(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mServiceListener:Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;

    return-object v0
.end method

.method static synthetic access$902(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;)Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mServiceListener:Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;

    return-object p1
.end method

.method private addCallback(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I
    .locals 3

    .prologue
    .line 2212
    const/4 v0, 0x0

    .line 2213
    if-eqz p1, :cond_0

    .line 2214
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mCallbackMuxer:Lcom/netflix/mediaclient/servicemgr/ServiceManager$CallbackMuxer;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager$CallbackMuxer;->muxCallback(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v0

    .line 2219
    :goto_0
    return v0

    .line 2216
    :cond_0
    const-string/jumbo v1, "ServiceManager"

    const-string/jumbo v2, "Callback that is added is null!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getManagerCallback(I)Lcom/netflix/mediaclient/servicemgr/ManagerCallback;
    .locals 1

    .prologue
    .line 2251
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mCallbackMuxer:Lcom/netflix/mediaclient/servicemgr/ServiceManager$CallbackMuxer;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager$CallbackMuxer;->demuxCallback(I)Lcom/netflix/mediaclient/servicemgr/ManagerCallback;

    move-result-object v0

    return-object v0
.end method

.method private getServiceIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 2011
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/netflix/mediaclient/service/NetflixService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static getServiceManager(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/servicemgr/ServiceManager;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2086
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2087
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 2088
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2091
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    .line 2088
    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 2091
    goto :goto_0
.end method

.method public static sendCwRefreshBrodcast(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 2309
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.BA_CW_REFRESH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2310
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2311
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "Intent CW_REFRESH sent"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2312
    return-void
.end method

.method public static sendHomeRefreshBrodcast(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 2297
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.REFRESH_HOME_LOLOMO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2298
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2299
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "Intent REFRESH_HOME sent"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2300
    return-void
.end method

.method public static sendIqRefreshBrodcast(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 2303
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.BA_IQ_REFRESH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2304
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2305
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "Intent IQ_REFRESH sent"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2306
    return-void
.end method

.method public static sendPopularTitlesRefreshBrodcast(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 2315
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.BA_POPULAR_TITLES_REFRESH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2316
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2317
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "Intent BROWSE_AGENT_POPULAR_TITLES_REFRESH sent"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2318
    return-void
.end method

.method private validateService()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2230
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mClientId:I

    if-gez v1, :cond_1

    .line 2233
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SPY-8020 - ServiceMgr called before NetflixService is ready "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2237
    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2240
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private wrapForAddToList(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/ManagerCallback;
    .locals 1

    .prologue
    .line 2121
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$AddToListCallbackWrapper;

    invoke-direct {v0, p0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager$AddToListCallbackWrapper;-><init>(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public addNetworkRequestInspector(Lcom/netflix/mediaclient/servicemgr/IMSLClient$NetworkRequestInspector;[Ljava/lang/Class;)V
    .locals 2

    .prologue
    .line 2321
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    if-nez v0, :cond_0

    .line 2322
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "Netflix service is not available. Unable to add a network request inspector"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2326
    :goto_0
    return-void

    .line 2325
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->addNetworkRequestInspector(Lcom/netflix/mediaclient/servicemgr/IMSLClient$NetworkRequestInspector;[Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public addProfile(Ljava/lang/String;ZLjava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)V
    .locals 6

    .prologue
    .line 897
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 898
    invoke-direct {p0, p4}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->addCallback(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v5

    .line 899
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    iget v4, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mClientId:I

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->addProfile(Ljava/lang/String;ZLjava/lang/String;II)V

    .line 903
    :goto_0
    return-void

    .line 901
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "addProfile:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public allocateABTest(IILcom/netflix/mediaclient/servicemgr/ManagerCallback;)V
    .locals 2

    .prologue
    .line 1052
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1056
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "allocateABTest:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    return-void
.end method

.method public cancelAllImageLoaderRequests()Z
    .locals 3

    .prologue
    .line 246
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    .line 248
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getImageLoader()Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    .line 249
    if-eqz v0, :cond_0

    .line 250
    const-string/jumbo v1, "ServiceManager"

    const-string/jumbo v2, "Cancelling all pending image requests"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-interface {v0}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->cancelAllRequests()V

    .line 252
    const/4 v0, 0x1

    .line 255
    :goto_0
    return v0

    .line 254
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "Failed to cancell all pending image requests. Image loader not available!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cancelRequests(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getResourceFetcher()Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getResourceFetcher()Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->cancelRequests(Ljava/lang/Object;)V

    .line 267
    :cond_0
    return-void
.end method

.method public consumeUmaAlert()V
    .locals 2

    .prologue
    .line 825
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 826
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->consumeUmaAlert()V

    .line 830
    :goto_0
    return-void

    .line 828
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "recordUserMessageImpression:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public createAddToMyListWrapper(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/widget/TextView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;I)Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;
    .locals 6

    .prologue
    .line 2055
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->addToMyListWrapper:Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;->createAddToMyListWrapper(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/widget/TextView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;I)Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;

    move-result-object v0

    return-object v0
.end method

.method public createAddToMyListWrapper(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/widget/TextView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;IZ)Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;
    .locals 7

    .prologue
    .line 2077
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->addToMyListWrapper:Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;->createAddToMyListWrapper(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/widget/TextView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;IZ)Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;

    move-result-object v0

    return-object v0
.end method

.method public createAddToMyListWrapper(Lcom/netflix/mediaclient/ui/details/DetailsActivity;Landroid/widget/TextView;Landroid/widget/TextView;Z)Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;
    .locals 8

    .prologue
    .line 2048
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getVideoId()Ljava/lang/String;

    move-result-object v4

    .line 2049
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getVideoType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v5

    .line 2050
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getTrackId()I

    move-result v6

    .line 2051
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->addToMyListWrapper:Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;->createAddToMyListWrapper(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;IZ)Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;

    move-result-object v0

    return-object v0
.end method

.method public createAddToMyListWrapper(Lcom/netflix/mediaclient/ui/details/DetailsActivity;Landroid/widget/TextView;Z)Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;
    .locals 7

    .prologue
    .line 2030
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getVideoId()Ljava/lang/String;

    move-result-object v3

    .line 2031
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getVideoType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v4

    .line 2032
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getTrackId()I

    move-result v5

    .line 2033
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->addToMyListWrapper:Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;

    move-object v1, p1

    move-object v2, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;->createAddToMyListWrapper(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/widget/TextView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;IZ)Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;

    move-result-object v0

    return-object v0
.end method

.method public createAutoLoginToken(JLcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 3

    .prologue
    .line 1030
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1031
    invoke-direct {p0, p3}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->addCallback(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v0

    .line 1032
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    iget v2, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mClientId:I

    invoke-interface {v1, p1, p2, v2, v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->createAutoLoginToken(JII)V

    .line 1033
    const/4 v0, 0x1

    .line 1036
    :goto_0
    return v0

    .line 1035
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "createAutoLoginToken:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public createMementoAddToMyListWrapper(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/widget/TextView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;I)Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;
    .locals 6

    .prologue
    .line 2059
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->addToMyListWrapper:Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;->createMementoAddToMyListWrapper(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/widget/TextView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;I)Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;

    move-result-object v0

    return-object v0
.end method

.method public deallocateABTest(ILcom/netflix/mediaclient/servicemgr/ManagerCallback;)V
    .locals 2

    .prologue
    .line 1064
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1068
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "deallocateABTest:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    return-void
.end method

.method public doOnRampEligibilityAction(Lcom/netflix/model/leafs/OnRampEligibility$Action;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)V
    .locals 3

    .prologue
    .line 583
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 584
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->addCallback(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v0

    .line 585
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    iget v2, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mClientId:I

    invoke-interface {v1, p1, v2, v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->doOnRampEligibilityAction(Lcom/netflix/model/leafs/OnRampEligibility$Action;II)V

    .line 589
    :goto_0
    return-void

    .line 587
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "doOnRampEligibilityAction:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public editProfile(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)V
    .locals 7

    .prologue
    .line 916
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 917
    invoke-direct {p0, p5}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->addCallback(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v6

    .line 918
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    iget v5, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mClientId:I

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v6}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->editProfile(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;II)V

    .line 922
    :goto_0
    return-void

    .line 920
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "editProfile:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public declared-synchronized fetchAndCacheResource(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 544
    monitor-enter p0

    if-nez p1, :cond_0

    .line 545
    :try_start_0
    const-string/jumbo v1, "ServiceManager"

    const-string/jumbo v2, "fetchAndCacheResource:: resourceUrl is null"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 557
    :goto_0
    monitor-exit p0

    return v0

    .line 548
    :cond_0
    :try_start_1
    invoke-direct {p0, p3}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->addCallback(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v1

    .line 552
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 553
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    iget v2, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mClientId:I

    invoke-interface {v0, p1, p2, v2, v1}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->fetchAndCacheResource(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;II)V

    .line 554
    const/4 v0, 0x1

    goto :goto_0

    .line 556
    :cond_1
    const-string/jumbo v1, "ServiceManager"

    const-string/jumbo v2, "fetchAndCacheResource:: service is not available"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 544
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public fetchAvailableAvatarsList(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 3

    .prologue
    .line 943
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 944
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->addCallback(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v0

    .line 945
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    iget v2, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mClientId:I

    invoke-interface {v1, v2, v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getAvailableAvatarsList(II)V

    .line 946
    const/4 v0, 0x1

    .line 949
    :goto_0
    return v0

    .line 948
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "fetchAvailableAvatarsList:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized fetchResource(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 517
    monitor-enter p0

    if-nez p1, :cond_0

    .line 529
    :goto_0
    monitor-exit p0

    return v0

    .line 520
    :cond_0
    :try_start_0
    invoke-direct {p0, p3}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->addCallback(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v1

    .line 524
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 525
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    iget v2, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mClientId:I

    invoke-interface {v0, p1, p2, v2, v1}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->fetchResource(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;II)V

    .line 526
    const/4 v0, 0x1

    goto :goto_0

    .line 528
    :cond_1
    const-string/jumbo v1, "ServiceManager"

    const-string/jumbo v2, "fetchResource:: service is not available"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 517
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public fetchSurvey(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)V
    .locals 3

    .prologue
    .line 566
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 567
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->addCallback(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v0

    .line 568
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    iget v2, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mClientId:I

    invoke-interface {v1, v2, v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->fetchSurvey(II)V

    .line 572
    :goto_0
    return-void

    .line 570
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "fetchSurvey:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getAllProfiles()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 872
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 873
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getAllProfiles()Ljava/util/List;

    move-result-object v0

    .line 876
    :goto_0
    return-object v0

    .line 875
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "getAllProfiles:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBookmarkStore()Lcom/netflix/mediaclient/media/BookmarkStore;
    .locals 1

    .prologue
    .line 1041
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1042
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getBookmarkStore()Lcom/netflix/mediaclient/media/BookmarkStore;

    move-result-object v0

    .line 1044
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mBrowseManager:Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    return-object v0
.end method

.method public getBrowseInterface()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;
    .locals 1

    .prologue
    .line 2269
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    .line 2270
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v0

    return-object v0
.end method

.method public getClientId()I
    .locals 1

    .prologue
    .line 2275
    iget v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mClientId:I

    return v0
.end method

.method public getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;
    .locals 2

    .prologue
    .line 410
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    .line 411
    if-eqz v0, :cond_0

    .line 412
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    .line 415
    :goto_0
    return-object v0

    .line 414
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "getClientLogging:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    .line 303
    if-eqz v0, :cond_0

    .line 304
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    .line 307
    :goto_0
    return-object v0

    .line 306
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "getConfiguration: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentAppLocale()Ljava/lang/String;
    .locals 2

    .prologue
    .line 593
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 594
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getCurrentAppLocale()Ljava/lang/String;

    move-result-object v0

    .line 597
    :goto_0
    return-object v0

    .line 596
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "getCurrentAppLocale:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;
    .locals 2

    .prologue
    .line 858
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 859
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v0

    .line 862
    :goto_0
    return-object v0

    .line 861
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "getCurrentProfile:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentProfileGuidOrNull()Ljava/lang/String;
    .locals 1

    .prologue
    .line 867
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v0

    .line 868
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;->getProfileGuid()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDeviceCategory()Lcom/netflix/mediaclient/util/DeviceCategory;
    .locals 2

    .prologue
    .line 653
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 654
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getDeviceCategory()Lcom/netflix/mediaclient/util/DeviceCategory;

    move-result-object v0

    .line 657
    :goto_0
    return-object v0

    .line 656
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "getDeviceCategory:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDiagnosis()Lcom/netflix/mediaclient/servicemgr/IDiagnosis;
    .locals 1

    .prologue
    .line 976
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 977
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getDiagnosis()Lcom/netflix/mediaclient/servicemgr/IDiagnosis;

    move-result-object v0

    .line 979
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getESNProvider()Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;
    .locals 2

    .prologue
    .line 382
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    .line 383
    if-eqz v0, :cond_0

    .line 384
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getESN()Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;

    move-result-object v0

    .line 387
    :goto_0
    return-object v0

    .line 386
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "getESNProvider:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEndOfGrandfatheringAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;
    .locals 2

    .prologue
    .line 792
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 793
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getEndOfGrandfatheringAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    move-result-object v0

    .line 796
    :goto_0
    return-object v0

    .line 795
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "getEndOfGrandfatheringAlert:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getErrorHandler()Lcom/netflix/mediaclient/servicemgr/IErrorHandler;
    .locals 2

    .prologue
    .line 423
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    .line 424
    if-eqz v0, :cond_0

    .line 425
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getErrorHandler()Lcom/netflix/mediaclient/servicemgr/IErrorHandler;

    move-result-object v0

    .line 428
    :goto_0
    return-object v0

    .line 427
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "getErrorHandler:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImageLoader()Lcom/netflix/mediaclient/util/gfx/ImageLoader;
    .locals 2

    .prologue
    .line 228
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mLocalService:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getImageLoader()Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    .line 233
    :goto_0
    return-object v0

    .line 232
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "getImageLoader:: Netflix service is not available or not ready, return null."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    .line 324
    if-eqz v0, :cond_0

    .line 325
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v0

    .line 328
    :goto_0
    return-object v0

    .line 327
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "getMdx:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNrdDeviceModel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 661
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 662
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getNrdDeviceModel()Ljava/lang/String;

    move-result-object v0

    .line 665
    :goto_0
    return-object v0

    .line 664
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "getNrdDeviceModel:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNrdpComponentVersion(Lcom/netflix/mediaclient/servicemgr/NrdpComponent;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 678
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 679
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getNrdpComponentVersion(Lcom/netflix/mediaclient/servicemgr/NrdpComponent;)Ljava/lang/String;

    move-result-object v0

    .line 682
    :goto_0
    return-object v0

    .line 681
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "getNrdpComponentVersion:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOfflineAgent()Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 447
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    .line 448
    if-nez v1, :cond_0

    .line 449
    const-string/jumbo v1, "ServiceManager"

    const-string/jumbo v2, "getOfflineAgent:: service is not available"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :goto_0
    return-object v0

    .line 453
    :cond_0
    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getOfflineAgent()Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v1

    .line 454
    if-nez v1, :cond_1

    .line 455
    const-string/jumbo v1, "ServiceManager"

    const-string/jumbo v2, "getOfflineAgent:: is null"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 459
    :cond_1
    invoke-interface {v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->isOfflineFeatureEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 460
    const-string/jumbo v1, "ServiceManager"

    const-string/jumbo v2, "getOfflineAgent:: not available "

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 463
    goto :goto_0
.end method

.method public getOfflinePlayableData(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;
    .locals 1

    .prologue
    .line 2336
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2337
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getOfflineAgent()Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v0

    .line 2339
    if-eqz v0, :cond_0

    .line 2340
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->getLatestOfflinePlayableList()Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;->getOfflinePlayableViewData(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;

    move-result-object v0

    .line 2343
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPlayer(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;)Lcom/netflix/mediaclient/servicemgr/IPlayer;
    .locals 3

    .prologue
    .line 282
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    .line 283
    if-eqz v0, :cond_1

    .line 284
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;->OfflinePlayback:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    if-ne p1, v1, :cond_0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getOfflinePlayer()Lcom/netflix/mediaclient/servicemgr/IPlayer;

    move-result-object v0

    .line 288
    :goto_0
    return-object v0

    .line 285
    :cond_0
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getNflxPlayer()Lcom/netflix/mediaclient/servicemgr/IPlayer;

    move-result-object v0

    goto :goto_0

    .line 287
    :cond_1
    const-string/jumbo v0, "ServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getPlayer:: returning null playbackType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPrepareHelper()Lcom/netflix/mediaclient/servicemgr/interface_/PrepareHelper;
    .locals 2

    .prologue
    .line 1073
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1074
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getPrepareHelper()Lcom/netflix/mediaclient/servicemgr/interface_/PrepareHelper;

    move-result-object v0

    .line 1077
    :goto_0
    return-object v0

    .line 1076
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "getPrepareHelper:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPushNotification()Lcom/netflix/mediaclient/servicemgr/IPushNotification;
    .locals 2

    .prologue
    .line 396
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    .line 397
    if-eqz v0, :cond_0

    .line 398
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getPushNotification()Lcom/netflix/mediaclient/servicemgr/IPushNotification;

    move-result-object v0

    .line 401
    :goto_0
    return-object v0

    .line 400
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "getPushNotification:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I
    .locals 1

    .prologue
    .line 2259
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->addCallback(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v0

    return v0
.end method

.method public getSignUpParams()Lcom/netflix/mediaclient/servicemgr/SignUpParams;
    .locals 2

    .prologue
    .line 744
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 745
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getSignUpParams()Lcom/netflix/mediaclient/servicemgr/SignUpParams;

    move-result-object v0

    .line 748
    :goto_0
    return-object v0

    .line 747
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "getSignUpParams:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSoftwareVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 669
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 670
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v0

    .line 673
    :goto_0
    return-object v0

    .line 672
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "getSoftwareVersion:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUserEmail()Ljava/lang/String;
    .locals 2

    .prologue
    .line 783
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 784
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getUserEmail()Ljava/lang/String;

    move-result-object v0

    .line 787
    :goto_0
    return-object v0

    .line 786
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "getUserEmail:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUserMessageAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;
    .locals 2

    .prologue
    .line 813
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 814
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getUserMessageAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    move-result-object v0

    .line 817
    :goto_0
    return-object v0

    .line 816
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "getUserMessageAlert:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVoip()Lcom/netflix/mediaclient/servicemgr/IVoip;
    .locals 2

    .prologue
    .line 343
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    .line 344
    if-eqz v0, :cond_0

    .line 345
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getVoip()Lcom/netflix/mediaclient/servicemgr/IVoip;

    move-result-object v0

    .line 348
    :goto_0
    return-object v0

    .line 347
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "getVoip:: voip engine is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVoipAgent()Lcom/netflix/mediaclient/service/ServiceAgent$VoipAgentInterface;
    .locals 2

    .prologue
    .line 362
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    .line 363
    if-eqz v0, :cond_0

    .line 364
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getVoipAgent()Lcom/netflix/mediaclient/service/ServiceAgent$VoipAgentInterface;

    move-result-object v0

    .line 367
    :goto_0
    return-object v0

    .line 366
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "getVoipAgent: voip agent is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWrappedRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 2264
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->wrapForAddToList(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/ManagerCallback;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->addCallback(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v0

    return v0
.end method

.method public isCurrentProfileInstantQueueEnabled()Z
    .locals 2

    .prologue
    .line 849
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 850
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->isCurrentProfileInstantQueueEnabled()Z

    move-result v0

    .line 853
    :goto_0
    return v0

    .line 852
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "isCurrentProfileInstantQueueEnabled:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDeviceHd()Z
    .locals 2

    .prologue
    .line 704
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 705
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->isDeviceHd()Z

    move-result v0

    .line 708
    :goto_0
    return v0

    .line 707
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "isDeviceHd:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDolbyDigitalPlus51Supported()Z
    .locals 1

    .prologue
    .line 713
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 714
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->isDolbyDigitalPlus51Supported()Z

    move-result v0

    .line 716
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDolbyVisionSupported()Z
    .locals 2

    .prologue
    .line 736
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 737
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->isDolbyVisionSupported()Z

    move-result v0

    .line 740
    :goto_0
    return v0

    .line 739
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "isDolbyVisionSupported: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHdr10Supported()Z
    .locals 2

    .prologue
    .line 724
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 725
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->isHdr10Supported()Z

    move-result v0

    .line 728
    :goto_0
    return v0

    .line 727
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "isHdr10Supported:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNonMemberPlayback()Z
    .locals 2

    .prologue
    .line 622
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->isNonMemberPlayback()Z

    move-result v0

    .line 626
    :goto_0
    return v0

    .line 625
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "isNonMemberPlayback:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOfflineFeatureAvailable()Z
    .locals 1

    .prologue
    .line 437
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getOfflineAgent()Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isProfileSwitchingDisabled()Z
    .locals 2

    .prologue
    .line 631
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 632
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->isProfileSwitchingDisabled()Z

    move-result v0

    .line 635
    :goto_0
    return v0

    .line 634
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "isProfileSwitchingDisabled:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 2201
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mReady:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTablet()Z
    .locals 2

    .prologue
    .line 692
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 693
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->isTablet()Z

    move-result v0

    .line 696
    :goto_0
    return v0

    .line 695
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "isTablet:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUserAgeVerified()Z
    .locals 2

    .prologue
    .line 774
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 775
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->isUserAgeVerified()Z

    move-result v0

    .line 778
    :goto_0
    return v0

    .line 777
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "isUserAgeVerified:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUserLoggedIn()Z
    .locals 2

    .prologue
    .line 765
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 766
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->isUserLoggedIn()Z

    move-result v0

    .line 769
    :goto_0
    return v0

    .line 768
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "isUserLoggedIn:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loginUser(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 3

    .prologue
    .line 991
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 992
    invoke-direct {p0, p3}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->addCallback(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v0

    .line 993
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    iget v2, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mClientId:I

    invoke-interface {v1, p1, p2, v2, v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->loginUser(Ljava/lang/String;Ljava/lang/String;II)V

    .line 994
    const/4 v0, 0x1

    .line 997
    :goto_0
    return v0

    .line 996
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "loginUser:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loginUserByTokens(Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 3

    .prologue
    .line 1019
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1020
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->addCallback(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v0

    .line 1021
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    iget v2, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mClientId:I

    invoke-interface {v1, p1, v2, v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->loginUserByTokens(Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;II)V

    .line 1022
    const/4 v0, 0x1

    .line 1025
    :goto_0
    return v0

    .line 1024
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "loginUserByTokens:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public logoutUser(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 3

    .prologue
    .line 1007
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1008
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->addCallback(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v0

    .line 1009
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    iget v2, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mClientId:I

    invoke-interface {v1, v2, v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->logoutUser(II)V

    .line 1010
    const/4 v0, 0x1

    .line 1013
    :goto_0
    return v0

    .line 1012
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "logoutUser:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public markSurveysAsRead()V
    .locals 2

    .prologue
    .line 575
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->markSurveysAsRead()V

    .line 580
    :goto_0
    return-void

    .line 578
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "markSurveysAsRead:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public recordPlanSelection(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 841
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 842
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->recordPlanSelection(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    :goto_0
    return-void

    .line 844
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "recordPlanSelection:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public recordUserMessageImpression(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 833
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 834
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->recordUserMessageImpression(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    :goto_0
    return-void

    .line 836
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "recordUserMessageImpression:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public refreshCurrentUserMessageArea()V
    .locals 2

    .prologue
    .line 801
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 802
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->refreshCurrentUserMessageArea()V

    .line 806
    :goto_0
    return-void

    .line 804
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "refreshUserMessage:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public refreshProfileSwitchingStatus()V
    .locals 2

    .prologue
    .line 640
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 641
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->refreshProfileSwitchingStatus()V

    .line 645
    :goto_0
    return-void

    .line 643
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "refreshProfileSwitchingStatus:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerAddToMyListListener(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;)V
    .locals 1

    .prologue
    .line 2095
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->addToMyListWrapper:Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;

    .line 2096
    if-eqz v0, :cond_0

    .line 2097
    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;->register(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;)V

    .line 2099
    :cond_0
    return-void
.end method

.method public declared-synchronized release()V
    .locals 2

    .prologue
    .line 194
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    if-eqz v0, :cond_2

    .line 195
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mServiceListener:Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;

    if-eqz v0, :cond_0

    .line 196
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "ServiceManager unregisterCallback"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mServiceListener:Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->unregisterCallback(Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;)V

    .line 199
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "ServiceManager unbindService"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 202
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mCallbackMuxer:Lcom/netflix/mediaclient/servicemgr/ServiceManager$CallbackMuxer;

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mCallbackMuxer:Lcom/netflix/mediaclient/servicemgr/ServiceManager$CallbackMuxer;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager$CallbackMuxer;->reset()V

    .line 206
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mClientId:I

    .line 207
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    :cond_2
    monitor-exit p0

    return-void

    .line 194
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeProfile(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)V
    .locals 3

    .prologue
    .line 933
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 934
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->addCallback(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v0

    .line 935
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    iget v2, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mClientId:I

    invoke-interface {v1, p1, v2, v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->removeProfile(Ljava/lang/String;II)V

    .line 939
    :goto_0
    return-void

    .line 937
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "removeProfile:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public selectProfile(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 880
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 881
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->selectProfile(Ljava/lang/String;)V

    .line 885
    :goto_0
    return-void

    .line 883
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "selectProfile:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setCurrentAppLocale(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 602
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->setCurrentAppLocale(Ljava/lang/String;)V

    .line 604
    const/4 v0, 0x1

    .line 607
    :goto_0
    return v0

    .line 606
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "setCurrentAppLocale:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNonMemberPlayback(Z)Z
    .locals 2

    .prologue
    .line 612
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 613
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->setNonMemberPlayback(Z)V

    .line 614
    const/4 v0, 0x1

    .line 617
    :goto_0
    return v0

    .line 616
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "setNonMemberPlayback:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldAlertForMissingLocale()Z
    .locals 2

    .prologue
    .line 753
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 754
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->shouldAlertForMissingLocale()Z

    move-result v0

    .line 757
    :goto_0
    return v0

    .line 756
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "shouldAlertForMissingLocale:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startJob(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V
    .locals 1

    .prologue
    .line 2285
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2286
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->startJob(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V

    .line 2288
    :cond_0
    return-void
.end method

.method public stopJob(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V
    .locals 1

    .prologue
    .line 2291
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2292
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->stopJob(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V

    .line 2294
    :cond_0
    return-void
.end method

.method public uiComingFromBackground()V
    .locals 1

    .prologue
    .line 2279
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    if-eqz v0, :cond_0

    .line 2280
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->uiComingFromBackground()V

    .line 2282
    :cond_0
    return-void
.end method

.method public unregisterAddToMyListListener(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;)V
    .locals 1

    .prologue
    .line 2102
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->addToMyListWrapper:Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;

    .line 2103
    if-eqz v0, :cond_0

    .line 2104
    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;->unregister(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;)V

    .line 2106
    :cond_0
    return-void
.end method

.method public updateMyListState(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 2115
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->addToMyListWrapper:Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;

    if-eqz v0, :cond_0

    .line 2116
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->addToMyListWrapper:Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;->updateState(Ljava/lang/String;Z)V

    .line 2118
    :cond_0
    return-void
.end method

.method public verifyAge(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 3

    .prologue
    .line 965
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 966
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->addCallback(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v0

    .line 967
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    iget v2, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mClientId:I

    invoke-interface {v1, v2, v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->verifyAge(II)V

    .line 968
    const/4 v0, 0x1

    .line 971
    :goto_0
    return v0

    .line 970
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "verifyAge:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public verifyPin(Ljava/lang/String;Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier$PinType;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 6

    .prologue
    .line 954
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 955
    invoke-direct {p0, p4}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->addCallback(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v5

    .line 956
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    iget v4, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mClientId:I

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->verifyPin(Ljava/lang/String;Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier$PinType;Ljava/lang/String;II)V

    .line 957
    const/4 v0, 0x1

    .line 960
    :goto_0
    return v0

    .line 959
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "verifyPin:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public willPlayOffline(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)Z
    .locals 2

    .prologue
    .line 2354
    if-eqz p1, :cond_0

    .line 2355
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getDownloadState()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->Complete:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 2354
    :goto_0
    return v0

    .line 2355
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
