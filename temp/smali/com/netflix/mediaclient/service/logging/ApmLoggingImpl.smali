.class Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;
.super Ljava/lang/Object;
.source "ApmLoggingImpl.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_log_apm"


# instance fields
.field private mApplicationSession:Lcom/netflix/mediaclient/service/logging/apm/ApplicationSession;

.field private final mAssetRequests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/service/logging/apm/UIAssetRequestSession;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentUiView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

.field private mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

.field private final mDataRequests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/service/logging/apm/UIDataRequestSession;",
            ">;"
        }
    .end annotation
.end field

.field private final mDialogSessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/service/logging/apm/UIModelessViewSession;",
            ">;"
        }
    .end annotation
.end field

.field private final mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

.field private mLogoutInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mNetworkConnectionSessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/service/logging/apm/NetworkConnectionSession;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetworkStatusMonitor:Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl$NetworkStatusMonitor;

.field private mNrdpLogSessionId:Ljava/lang/String;

.field private mSharedContextSession:Lcom/netflix/mediaclient/service/logging/apm/SharedContextSession;

.field private mUIBrowseStartupSession:Lcom/netflix/mediaclient/service/logging/apm/UIBrowseStartupSession;

.field private mUIStartupSession:Lcom/netflix/mediaclient/service/logging/apm/UIStartupSession;

.field private mUserSession:Lcom/netflix/mediaclient/service/logging/apm/UserSession;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/logging/EventHandler;)V
    .locals 2

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mDataRequests:Ljava/util/Map;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mAssetRequests:Ljava/util/Map;

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mDialogSessions:Ljava/util/Map;

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mNetworkConnectionSessions:Ljava/util/Map;

    .line 95
    new-instance v0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl$NetworkStatusMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl$NetworkStatusMonitor;-><init>(Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl$1;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mNetworkStatusMonitor:Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl$NetworkStatusMonitor;

    .line 102
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mLogoutInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 110
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    .line 111
    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;ZLjava/lang/String;J)V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->doStartApplicationSession(ZLjava/lang/String;J)V

    return-void
.end method

.method static synthetic access$1000(Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->endWifiNetworkConnectivitySession()V

    return-void
.end method

.method static synthetic access$1100(Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->endMobileNetworkConnectivitySession()V

    return-void
.end method

.method static synthetic access$1200(Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->startWifiNetworkConnectivitySession()V

    return-void
.end method

.method static synthetic access$1300(Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->startMobileNetworkConnectivitySession()V

    return-void
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;)Lcom/netflix/mediaclient/service/logging/EventHandler;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;)Lcom/netflix/mediaclient/service/logging/apm/UserSession;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mUserSession:Lcom/netflix/mediaclient/service/logging/apm/UserSession;

    return-object v0
.end method

.method static synthetic access$302(Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;Lcom/netflix/mediaclient/service/logging/apm/UserSession;)Lcom/netflix/mediaclient/service/logging/apm/UserSession;
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mUserSession:Lcom/netflix/mediaclient/service/logging/apm/UserSession;

    return-object p1
.end method

.method static synthetic access$402(Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mNrdpLogSessionId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;)Lcom/netflix/mediaclient/service/logging/client/model/DataContext;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    return-object v0
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mCurrentUiView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;Lcom/netflix/mediaclient/service/logging/apm/model/UserSessionStartedEvent;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->sendUserSessionEvent(Lcom/netflix/mediaclient/service/logging/apm/model/UserSessionStartedEvent;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    return-void
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->startWiredNetworkConnectivitySession()V

    return-void
.end method

.method static synthetic access$900(Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->endWiredNetworkConnectivitySession()V

    return-void
.end method

.method private doStartApplicationSession(ZLjava/lang/String;J)V
    .locals 3

    .prologue
    .line 149
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 150
    new-instance v2, Lcom/netflix/mediaclient/service/logging/apm/ApplicationSession;

    invoke-direct {v2}, Lcom/netflix/mediaclient/service/logging/apm/ApplicationSession;-><init>()V

    iput-object v2, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mApplicationSession:Lcom/netflix/mediaclient/service/logging/apm/ApplicationSession;

    .line 151
    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mApplicationSession:Lcom/netflix/mediaclient/service/logging/apm/ApplicationSession;

    invoke-virtual {v2, v0, v1}, Lcom/netflix/mediaclient/service/logging/apm/ApplicationSession;->setId(J)V

    .line 152
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mApplicationSession:Lcom/netflix/mediaclient/service/logging/apm/ApplicationSession;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 153
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "Application session start event posting..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mApplicationSession:Lcom/netflix/mediaclient/service/logging/apm/ApplicationSession;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/logging/apm/ApplicationSession;->createStartEvent(Z)Lcom/netflix/mediaclient/service/logging/apm/model/AppSessionStartedEvent;

    move-result-object v0

    .line 155
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mCurrentUiView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 156
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 157
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "Application session start event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    return-void
.end method

.method private endMobileNetworkConnectivitySession()V
    .locals 3

    .prologue
    .line 1009
    const-string/jumbo v0, "mobileNetworkConnection"

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mCurrentUiView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->handleEndedNetworkConnectionSession(Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 1010
    return-void
.end method

.method private endWifiNetworkConnectivitySession()V
    .locals 3

    .prologue
    .line 1001
    const-string/jumbo v0, "wifiNetworkConnection"

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mCurrentUiView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->handleEndedNetworkConnectionSession(Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 1002
    return-void
.end method

.method private endWiredNetworkConnectivitySession()V
    .locals 3

    .prologue
    .line 993
    const-string/jumbo v0, "wiredNetworkConnection"

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mCurrentUiView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->handleEndedNetworkConnectionSession(Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 994
    return-void
.end method

.method private handleABConfigDataLoadedEvent(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 935
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "AB_CONFIG_DATA_LOADED_EVENT"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->reportABConfigDataLoadedEvent()V

    .line 937
    return-void
.end method

.method private handleABConfigDataReceivedEvent(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 930
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "AB_CONFIG_DATA_RECEIVED_EVENT"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->reportABConfigDataReceivedEvent()V

    .line 932
    return-void
.end method

.method private handleABTestLoadedEvent(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 914
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "AB_TEST_LOADED_EVENT"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    const-string/jumbo v0, "ABTestID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 917
    const-string/jumbo v1, "ABTestCellID"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 918
    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->reportABTestLoadedEvent(Ljava/lang/String;I)V

    .line 919
    return-void
.end method

.method private handleABTestReceivedEvent(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 922
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "AB_TEST_RECEIVED_EVENT"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    const-string/jumbo v0, "ABTestID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 925
    const-string/jumbo v1, "ABTestCellID"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 926
    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->reportABTestReceivedEvent(Ljava/lang/String;I)V

    .line 927
    return-void
.end method

.method private handleAssetRequestEnded(Landroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 831
    const-string/jumbo v1, "nf_log_apm"

    const-string/jumbo v2, "Handle asset request ended intent. Running it on main thread."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    const-string/jumbo v1, "url"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 834
    const-string/jumbo v1, "reason"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    move-result-object v4

    .line 839
    :try_start_0
    const-string/jumbo v1, "error"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/service/logging/client/model/Error;->createInstance(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 840
    :try_start_1
    const-string/jumbo v2, "http_response"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->createInstance(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 844
    :goto_0
    invoke-virtual {p0, v3, v4, v0, v1}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->endAssetRequestSession(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    .line 845
    return-void

    .line 841
    :catch_0
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    .line 842
    :goto_1
    const-string/jumbo v5, "nf_log_apm"

    const-string/jumbo v6, "Failed to parse properties"

    invoke-static {v5, v6, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 841
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method private handleAssetRequestStarted(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 822
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "Handle asset request started intent. Running it on main thread."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    const-string/jumbo v0, "url"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 825
    const-string/jumbo v1, "asset_type"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    move-result-object v1

    .line 826
    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->startAssetRequestSession(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;)Ljava/lang/String;

    .line 827
    return-void
.end method

.method private handleDataRequestEnded(Landroid/content/Intent;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 858
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "Handle data request ended intent. Running it on main thread."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    const-string/jumbo v0, "request_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 861
    const-string/jumbo v0, "reason"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    move-result-object v3

    .line 867
    :try_start_0
    const-string/jumbo v0, "error"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/client/model/Error;->createInstance(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 868
    :try_start_1
    const-string/jumbo v0, "http_response"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->createInstance(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 869
    :try_start_2
    const-string/jumbo v0, "falkorPathResults"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/client/model/FalkorPathResult;->createList(Ljava/lang/String;)Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v2

    :goto_0
    move-object v0, p0

    .line 873
    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->endDataRequestSession(Ljava/lang/String;Ljava/util/List;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    .line 874
    return-void

    .line 870
    :catch_0
    move-exception v0

    move-object v4, v2

    move-object v5, v2

    .line 871
    :goto_1
    const-string/jumbo v6, "nf_log_apm"

    const-string/jumbo v7, "Failed to parse properties"

    invoke-static {v6, v7, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 870
    :catch_1
    move-exception v0

    move-object v4, v2

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method private handleDataRequestStarted(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 849
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "Handle data request started intent. Running it on main thread."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    const-string/jumbo v0, "url"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 852
    const-string/jumbo v1, "request_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 853
    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->startDataRequestSession(Ljava/lang/String;Ljava/lang/String;)Z

    .line 854
    return-void
.end method

.method private handleDialogDisplayed(Landroid/content/Intent;Z)V
    .locals 2

    .prologue
    .line 807
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "DIALOG_DISPLAYED"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    const-string/jumbo v0, "dialog_type"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v0

    .line 809
    const-string/jumbo v1, "dialog_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 810
    invoke-virtual {p0, p2, v0, v1}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->startUiModelessViewSession(ZLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Ljava/lang/String;)V

    .line 811
    return-void
.end method

.method private handleDialogRemoved(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 815
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "DIALOG_REMOVED"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    const-string/jumbo v0, "dialog_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 817
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->endUiModelessViewSession(Ljava/lang/String;)V

    .line 818
    return-void
.end method

.method private handleEndedNetworkConnectionSession(Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 2

    .prologue
    .line 975
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mNetworkConnectionSessions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/logging/apm/NetworkConnectionSession;

    .line 976
    if-eqz v0, :cond_0

    .line 980
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 990
    :cond_0
    return-void
.end method

.method private handleLocalSettingsChange(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 907
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "LOCAL_SETTINGS_CHANGE_BANDWIDTH"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    const-string/jumbo v0, "localSettingData"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 910
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->localSettingsChange(Ljava/lang/String;)V

    .line 911
    return-void
.end method

.method private handlePreappAddWidget(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 890
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "PREAPP_ADD_WIDGET"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    const-string/jumbo v0, "widgetData"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 893
    const-string/jumbo v1, "eventTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 894
    invoke-virtual {p0, v0, v2, v3}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->preappAddWidget(Ljava/lang/String;J)V

    .line 895
    return-void
.end method

.method private handlePreappDeleteWidget(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 898
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "PREAPP_DELETE_WIDGET"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    const-string/jumbo v0, "widgetData"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 901
    const-string/jumbo v1, "eventTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 902
    invoke-virtual {p0, v0, v2, v3}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->preappDeleteWidget(Ljava/lang/String;J)V

    .line 903
    return-void
.end method

.method private handleSharedContextEnded(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 801
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "SHARED_CONTEXT_SESSION_ENDED"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->endSharedContextSession()V

    .line 803
    return-void
.end method

.method private handleSharedContextStarted(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 794
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "SHARED_CONTEXT_SESSION_STARTED"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    const-string/jumbo v0, "uuid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 796
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->startSharedContextSession(Ljava/lang/String;)V

    .line 797
    return-void
.end method

.method private handleStartNetworkConnectionSession(Lcom/netflix/mediaclient/service/logging/apm/NetworkConnectionSession;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 2

    .prologue
    .line 954
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mNetworkConnectionSessions:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/logging/apm/NetworkConnectionSession;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/logging/apm/NetworkConnectionSession;

    .line 955
    if-eqz v0, :cond_0

    .line 956
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 963
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mNetworkConnectionSessions:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/logging/apm/NetworkConnectionSession;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 964
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 965
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/logging/apm/NetworkConnectionSession;->createStartEvent()Lcom/netflix/mediaclient/service/logging/client/model/Event;

    move-result-object v0

    .line 966
    invoke-direct {p0, v0, p2, p3}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 967
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 971
    return-void
.end method

.method private handleViewChanged(Landroid/content/Intent;Z)V
    .locals 2

    .prologue
    .line 878
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "UI_MODAL_VIEW_CHANGED"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    const-string/jumbo v0, "view"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v0

    .line 880
    invoke-virtual {p0, p2, v0}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->uiViewChanged(ZLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 881
    return-void
.end method

.method private handleViewImpressionEvent(Landroid/content/Intent;Z)V
    .locals 2

    .prologue
    .line 884
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "UI_MODAL_VIEW_IMPRESSION_EVENT"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    const-string/jumbo v0, "view"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v0

    .line 886
    invoke-virtual {p0, p2, v0}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->uiViewImpressionEvent(ZLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 887
    return-void
.end method

.method private populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 0

    .prologue
    .line 698
    if-nez p1, :cond_0

    .line 704
    :goto_0
    return-void

    .line 702
    :cond_0
    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/service/logging/client/model/Event;->setDataContext(Lcom/netflix/mediaclient/service/logging/client/model/DataContext;)V

    .line 703
    invoke-virtual {p1, p3}, Lcom/netflix/mediaclient/service/logging/client/model/Event;->setModalView(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    goto :goto_0
.end method

.method private sendUserSessionEvent(Lcom/netflix/mediaclient/service/logging/apm/model/UserSessionStartedEvent;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 2

    .prologue
    .line 287
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 288
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 289
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "User session start event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    return-void
.end method

.method private startMobileNetworkConnectivitySession()V
    .locals 3

    .prologue
    .line 1005
    new-instance v0, Lcom/netflix/mediaclient/service/logging/apm/MobileNetworkConnectionSession;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/logging/apm/MobileNetworkConnectionSession;-><init>()V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mCurrentUiView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->handleStartNetworkConnectionSession(Lcom/netflix/mediaclient/service/logging/apm/NetworkConnectionSession;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 1006
    return-void
.end method

.method private startWifiNetworkConnectivitySession()V
    .locals 3

    .prologue
    .line 997
    new-instance v0, Lcom/netflix/mediaclient/service/logging/apm/WifiNetworkConnectionSession;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/logging/apm/WifiNetworkConnectionSession;-><init>()V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mCurrentUiView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->handleStartNetworkConnectionSession(Lcom/netflix/mediaclient/service/logging/apm/NetworkConnectionSession;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 998
    return-void
.end method

.method private startWiredNetworkConnectivitySession()V
    .locals 3

    .prologue
    .line 949
    new-instance v0, Lcom/netflix/mediaclient/service/logging/apm/WiredNetworkConnectionSession;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/logging/apm/WiredNetworkConnectionSession;-><init>()V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mCurrentUiView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->handleStartNetworkConnectionSession(Lcom/netflix/mediaclient/service/logging/apm/NetworkConnectionSession;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 950
    return-void
.end method


# virtual methods
.method public declared-synchronized endAllActiveSessions()V
    .locals 7

    .prologue
    .line 1200
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mLogoutInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1202
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->endMobileNetworkConnectivitySession()V

    .line 1203
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->endWifiNetworkConnectivitySession()V

    .line 1204
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->endWiredNetworkConnectivitySession()V

    .line 1205
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->endSharedContextSession()V

    .line 1206
    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->endUiBrowseStartupSession(JZLcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 1207
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->endUiStartupSession(ZLcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 1209
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mDataRequests:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 1210
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mDataRequests:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1211
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1212
    const/4 v2, 0x0

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->endDataRequestSession(Ljava/lang/String;Ljava/util/List;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1200
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1215
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mAssetRequests:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 1216
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mAssetRequests:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1217
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1218
    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->endAssetRequestSession(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    goto :goto_1

    .line 1221
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mDialogSessions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 1222
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mDialogSessions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1223
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1224
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->endUiModelessViewSession(Ljava/lang/String;)V

    goto :goto_2

    .line 1227
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mDataRequests:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1228
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mAssetRequests:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1229
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mNetworkConnectionSessions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1230
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mDialogSessions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1232
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$EndReason;->logout:Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$EndReason;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->endUserSession(Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$EndReason;J)V

    .line 1233
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->endApplicationSession()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1234
    monitor-exit p0

    return-void
.end method

.method public endApplicationSession()V
    .locals 3

    .prologue
    .line 163
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "Application session ended"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mApplicationSession:Lcom/netflix/mediaclient/service/logging/apm/ApplicationSession;

    if-nez v0, :cond_0

    .line 165
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "Application session does NOT exist!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :goto_0
    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mApplicationSession:Lcom/netflix/mediaclient/service/logging/apm/ApplicationSession;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 169
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "Application session end event posting..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mApplicationSession:Lcom/netflix/mediaclient/service/logging/apm/ApplicationSession;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/apm/ApplicationSession;->createEndedEvent()Lcom/netflix/mediaclient/service/logging/apm/model/AppSessionEndedEvent;

    move-result-object v0

    .line 171
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mCurrentUiView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 172
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mApplicationSession:Lcom/netflix/mediaclient/service/logging/apm/ApplicationSession;

    .line 174
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "Application session end event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public endAssetRequestSession(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V
    .locals 3

    .prologue
    .line 592
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mAssetRequests:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/logging/apm/UIAssetRequestSession;

    .line 593
    if-nez v0, :cond_0

    .line 604
    :goto_0
    return-void

    .line 597
    :cond_0
    const-string/jumbo v1, "nf_log_apm"

    const-string/jumbo v2, "Asset request session ended"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 599
    const-string/jumbo v1, "nf_log_apm"

    const-string/jumbo v2, "Asset request session end event posting..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    invoke-virtual {v0, p2, p3, p4}, Lcom/netflix/mediaclient/service/logging/apm/UIAssetRequestSession;->createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;Lcom/netflix/mediaclient/service/logging/client/model/Error;)Lcom/netflix/mediaclient/service/logging/apm/model/UIAssetRequestSessionEndedEvent;

    move-result-object v0

    .line 601
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mCurrentUiView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 602
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 603
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "Asset request session end event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public endDataRequestSession(Ljava/lang/String;Ljava/util/List;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/logging/client/model/FalkorPathResult;",
            ">;",
            "Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;",
            "Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;",
            "Lcom/netflix/mediaclient/service/logging/client/model/Error;",
            ")V"
        }
    .end annotation

    .prologue
    .line 549
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mDataRequests:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/logging/apm/UIDataRequestSession;

    .line 550
    if-nez v0, :cond_0

    .line 561
    :goto_0
    return-void

    .line 554
    :cond_0
    const-string/jumbo v1, "nf_log_apm"

    const-string/jumbo v2, "Data request session ended"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 556
    const-string/jumbo v1, "nf_log_apm"

    const-string/jumbo v2, "Data request session end event posting..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    invoke-virtual {v0, p3, p4, p5}, Lcom/netflix/mediaclient/service/logging/apm/UIDataRequestSession;->createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;Lcom/netflix/mediaclient/service/logging/client/model/Error;)Lcom/netflix/mediaclient/service/logging/apm/model/UIDataRequestSessionEndedEvent;

    move-result-object v0

    .line 558
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mCurrentUiView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 559
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 560
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "Data request session end event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public endPerformanceSession(Lcom/netflix/mediaclient/service/logging/perf/PerfSession;)V
    .locals 3

    .prologue
    .line 634
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/logging/perf/PerfSession;->getEndEvent()Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;

    move-result-object v0

    .line 635
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mCurrentUiView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 636
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, p1}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 637
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 641
    return-void
.end method

.method public endSharedContextSession()V
    .locals 3

    .prologue
    .line 1179
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mSharedContextSession:Lcom/netflix/mediaclient/service/logging/apm/SharedContextSession;

    if-nez v0, :cond_0

    .line 1191
    :goto_0
    return-void

    .line 1183
    :cond_0
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "Shared context session ended"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mSharedContextSession:Lcom/netflix/mediaclient/service/logging/apm/SharedContextSession;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/apm/SharedContextSession;->createEndedEvent()Lcom/netflix/mediaclient/service/logging/apm/model/SharedContextSessionEndedEvent;

    move-result-object v0

    .line 1185
    const-string/jumbo v1, "nf_log_apm"

    const-string/jumbo v2, "Shared context session end event posting..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 1187
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mSharedContextSession:Lcom/netflix/mediaclient/service/logging/apm/SharedContextSession;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 1188
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mSharedContextSession:Lcom/netflix/mediaclient/service/logging/apm/SharedContextSession;

    .line 1190
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "Shared context session end done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public endUiBrowseStartupSession(JZLcom/netflix/mediaclient/service/logging/client/model/UIError;)V
    .locals 3

    .prologue
    .line 386
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mUIBrowseStartupSession:Lcom/netflix/mediaclient/service/logging/apm/UIBrowseStartupSession;

    if-nez v0, :cond_0

    .line 387
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "UI browse startup session is null - bailing early"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :goto_0
    return-void

    .line 391
    :cond_0
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "UI browse startup session ended"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mUIBrowseStartupSession:Lcom/netflix/mediaclient/service/logging/apm/UIBrowseStartupSession;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 393
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "UI browse startup session end event posting..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mUIBrowseStartupSession:Lcom/netflix/mediaclient/service/logging/apm/UIBrowseStartupSession;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/service/logging/apm/UIBrowseStartupSession;->createEndedEvent(JZLcom/netflix/mediaclient/service/logging/client/model/UIError;)Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionEndedEvent;

    move-result-object v0

    .line 396
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mCurrentUiView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 397
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 399
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mUIBrowseStartupSession:Lcom/netflix/mediaclient/service/logging/apm/UIBrowseStartupSession;

    .line 400
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "UI browse startup session end event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public endUiModelessViewSession(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 424
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mDialogSessions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/logging/apm/UIModelessViewSession;

    .line 425
    if-nez v0, :cond_0

    .line 439
    :goto_0
    return-void

    .line 432
    :cond_0
    const-string/jumbo v1, "nf_log_apm"

    const-string/jumbo v2, "UI modeless session ended"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 434
    const-string/jumbo v1, "nf_log_apm"

    const-string/jumbo v2, "UI modeless session end event posting..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/apm/UIModelessViewSession;->createEndedEvent()Lcom/netflix/mediaclient/service/logging/apm/model/UIModelessViewSessionEndedEvent;

    move-result-object v0

    .line 436
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mCurrentUiView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 437
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 438
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "UI modeless session end event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public endUiStartupSession(ZLcom/netflix/mediaclient/service/logging/client/model/UIError;)V
    .locals 3

    .prologue
    .line 357
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mUIStartupSession:Lcom/netflix/mediaclient/service/logging/apm/UIStartupSession;

    if-nez v0, :cond_0

    .line 369
    :goto_0
    return-void

    .line 360
    :cond_0
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "UI startup session ended"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mUIStartupSession:Lcom/netflix/mediaclient/service/logging/apm/UIStartupSession;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 362
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "UI startup session end event posting..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mUIStartupSession:Lcom/netflix/mediaclient/service/logging/apm/UIStartupSession;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/apm/UIStartupSession;->createEndedEvent(ZLcom/netflix/mediaclient/service/logging/client/model/UIError;)Lcom/netflix/mediaclient/service/logging/apm/model/UIStartupSessionEndedEvent;

    move-result-object v0

    .line 364
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mCurrentUiView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 365
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 367
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mUIStartupSession:Lcom/netflix/mediaclient/service/logging/apm/UIStartupSession;

    .line 368
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "UI startup session end event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public endUserSession(Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$EndReason;J)V
    .locals 6

    .prologue
    .line 295
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "User session ended"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mUserSession:Lcom/netflix/mediaclient/service/logging/apm/UserSession;

    if-nez v0, :cond_0

    .line 297
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "User session does NOT exist!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :goto_0
    return-void

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mUserSession:Lcom/netflix/mediaclient/service/logging/apm/UserSession;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v5, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mCurrentUiView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/service/logging/apm/UserSession;->createEndedEvent(Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$EndReason;JLcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)Lcom/netflix/mediaclient/service/logging/apm/model/UserSessionEndedEvent;

    move-result-object v0

    .line 302
    if-nez v0, :cond_1

    .line 303
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "User session still waits on session id, do not post at this time."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 307
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mUserSession:Lcom/netflix/mediaclient/service/logging/apm/UserSession;

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 308
    const-string/jumbo v1, "nf_log_apm"

    const-string/jumbo v2, "User session end event posting..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 310
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mUserSession:Lcom/netflix/mediaclient/service/logging/apm/UserSession;

    .line 311
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "User session end event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method getCurrentUiView()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;
    .locals 1

    .prologue
    .line 945
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mCurrentUiView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    return-object v0
.end method

.method public handleConnectivityChange(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 1019
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mNetworkStatusMonitor:Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl$NetworkStatusMonitor;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl$NetworkStatusMonitor;->handleConnectivityChange(Landroid/content/Context;)V

    .line 1020
    return-void
.end method

.method public handleIntent(Landroid/content/Intent;Z)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 709
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 712
    const/4 v2, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 789
    :goto_1
    return v0

    .line 712
    :sswitch_0
    const-string/jumbo v4, "com.netflix.mediaclient.intent.action.LOG_APM_ASSET_REQUEST_STARTED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v1

    goto :goto_0

    :sswitch_1
    const-string/jumbo v4, "com.netflix.mediaclient.intent.action.LOG_APM_ASSET_REQUEST_ENDED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v0

    goto :goto_0

    :sswitch_2
    const-string/jumbo v4, "com.netflix.mediaclient.intent.action.LOG_APM_DATA_REQUEST_STARTED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v4, "com.netflix.mediaclient.intent.action.LOG_APM_DATA_REQUEST_ENDED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v4, "com.netflix.mediaclient.intent.action.LOG_APM_DIALOG_DISPLAYED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :sswitch_5
    const-string/jumbo v4, "com.netflix.mediaclient.intent.action.LOG_APM_DIALOG_REMOVED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x5

    goto :goto_0

    :sswitch_6
    const-string/jumbo v4, "com.netflix.mediaclient.intent.action.LOG_APM_UI_MODAL_VIEW_CHANGED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x6

    goto :goto_0

    :sswitch_7
    const-string/jumbo v4, "com.netflix.mediaclient.intent.action.LOG_APM_UI_MODAL_VIEW_IMPRESSION"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x7

    goto :goto_0

    :sswitch_8
    const-string/jumbo v4, "com.netflix.mediaclient.intent.action.LOG_APM_PREAPP_ADD_WIDGET"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0x8

    goto :goto_0

    :sswitch_9
    const-string/jumbo v4, "com.netflix.mediaclient.intent.action.LOG_APM_PREAPP_DELETE_WIDGET"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0x9

    goto :goto_0

    :sswitch_a
    const-string/jumbo v4, "com.netflix.mediaclient.intent.action.LOG_APM_DATA_SHARED_CONTEXT_SESSION_STARTED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0xa

    goto :goto_0

    :sswitch_b
    const-string/jumbo v4, "com.netflix.mediaclient.intent.action.LOG_APM_DATA_SHARED_CONTEXT_SESSION_ENDED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0xb

    goto/16 :goto_0

    :sswitch_c
    const-string/jumbo v4, "com.netflix.mediaclient.intent.action.LOG_APM_LOCAL_SETTINGS_BW"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0xc

    goto/16 :goto_0

    :sswitch_d
    const-string/jumbo v4, "com.netflix.mediaclient.intent.action.LOG_APM_AB_TEST_LOADED_EVENT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0xd

    goto/16 :goto_0

    :sswitch_e
    const-string/jumbo v4, "com.netflix.mediaclient.intent.action.LOG_APM_AB_TEST_RECEIVED_EVENT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0xe

    goto/16 :goto_0

    :sswitch_f
    const-string/jumbo v4, "com.netflix.mediaclient.intent.action.LOG_APM_AB_CONFIG_DATA_LOADED_EVENT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0xf

    goto/16 :goto_0

    :sswitch_10
    const-string/jumbo v4, "com.netflix.mediaclient.intent.action.LOG_APM_AB_CONFIG_DATA_RECEIVED_EVENT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0x10

    goto/16 :goto_0

    .line 714
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->handleAssetRequestStarted(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 718
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->handleAssetRequestEnded(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 722
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->handleDataRequestStarted(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 726
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->handleDataRequestEnded(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 730
    :pswitch_4
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->handleDialogDisplayed(Landroid/content/Intent;Z)V

    goto/16 :goto_1

    .line 734
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->handleDialogRemoved(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 738
    :pswitch_6
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->handleViewChanged(Landroid/content/Intent;Z)V

    goto/16 :goto_1

    .line 742
    :pswitch_7
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->handleViewImpressionEvent(Landroid/content/Intent;Z)V

    goto/16 :goto_1

    .line 746
    :pswitch_8
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->handlePreappAddWidget(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 750
    :pswitch_9
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->handlePreappDeleteWidget(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 754
    :pswitch_a
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->handleSharedContextStarted(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 758
    :pswitch_b
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->handleSharedContextEnded(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 762
    :pswitch_c
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->handleLocalSettingsChange(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 766
    :pswitch_d
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->handleABTestLoadedEvent(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 770
    :pswitch_e
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->handleABTestReceivedEvent(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 774
    :pswitch_f
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->handleABConfigDataLoadedEvent(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 778
    :pswitch_10
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->handleABConfigDataReceivedEvent(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 712
    :sswitch_data_0
    .sparse-switch
        -0x4b72bf07 -> :sswitch_d
        -0x1ce3b4ef -> :sswitch_1
        -0x102e62ba -> :sswitch_2
        -0xfd2c86b -> :sswitch_e
        0x65f86c1 -> :sswitch_9
        0xddc70f9 -> :sswitch_8
        0x1e25fe4c -> :sswitch_f
        0x1e499513 -> :sswitch_5
        0x29b289f3 -> :sswitch_c
        0x43b8dfb9 -> :sswitch_a
        0x48b12710 -> :sswitch_7
        0x568bec28 -> :sswitch_10
        0x67e498bf -> :sswitch_3
        0x70353aed -> :sswitch_6
        0x748b14d4 -> :sswitch_4
        0x798fdbf2 -> :sswitch_b
        0x7be60318 -> :sswitch_0
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
    .end packed-switch
.end method

.method public isLogoutInProgress()Z
    .locals 1

    .prologue
    .line 1237
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mLogoutInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isUserSessionExist()Z
    .locals 1

    .prologue
    .line 608
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mUserSession:Lcom/netflix/mediaclient/service/logging/apm/UserSession;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public localSettingsChange(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 472
    new-instance v0, Lcom/netflix/mediaclient/service/logging/android/settings/model/LocalSettingsChangeEvent;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/service/logging/android/settings/model/LocalSettingsChangeEvent;-><init>(Ljava/lang/String;)V

    .line 473
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 474
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "local setting event done"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    return-void
.end method

.method public logoutCompleted()V
    .locals 2

    .prologue
    .line 1241
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mLogoutInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1242
    return-void
.end method

.method public preappAddWidget(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 448
    new-instance v0, Lcom/netflix/mediaclient/service/logging/android/preapp/model/PreAppWidgetInstallEvent;

    sget-object v1, Lcom/netflix/mediaclient/service/logging/android/preapp/model/PreAppWidgetInstallEvent$WidgetInstallAction;->ADD:Lcom/netflix/mediaclient/service/logging/android/preapp/model/PreAppWidgetInstallEvent$WidgetInstallAction;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/netflix/mediaclient/service/logging/android/preapp/model/PreAppWidgetInstallEvent;-><init>(Lcom/netflix/mediaclient/service/logging/android/preapp/model/PreAppWidgetInstallEvent$WidgetInstallAction;Ljava/lang/String;J)V

    .line 449
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 450
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "preapp add widget done"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    return-void
.end method

.method public preappDeleteWidget(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 460
    new-instance v0, Lcom/netflix/mediaclient/service/logging/android/preapp/model/PreAppWidgetInstallEvent;

    sget-object v1, Lcom/netflix/mediaclient/service/logging/android/preapp/model/PreAppWidgetInstallEvent$WidgetInstallAction;->DELETE:Lcom/netflix/mediaclient/service/logging/android/preapp/model/PreAppWidgetInstallEvent$WidgetInstallAction;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/netflix/mediaclient/service/logging/android/preapp/model/PreAppWidgetInstallEvent;-><init>(Lcom/netflix/mediaclient/service/logging/android/preapp/model/PreAppWidgetInstallEvent$WidgetInstallAction;Ljava/lang/String;J)V

    .line 461
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 462
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "preapp delete widget done"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    return-void
.end method

.method public reportABConfigDataLoadedEvent()V
    .locals 2

    .prologue
    .line 674
    new-instance v0, Lcom/netflix/mediaclient/service/logging/abconfig/ABConfigDataLoadedEvent;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/logging/abconfig/ABConfigDataLoadedEvent;-><init>()V

    .line 675
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 676
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "All AB config data loaded event done"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    return-void
.end method

.method public reportABConfigDataReceivedEvent()V
    .locals 2

    .prologue
    .line 686
    new-instance v0, Lcom/netflix/mediaclient/service/logging/abconfig/ABConfigDataReceivedEvent;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/logging/abconfig/ABConfigDataReceivedEvent;-><init>()V

    .line 687
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 688
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "All AB config data received event done"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    return-void
.end method

.method public reportABTestLoadedEvent(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 650
    new-instance v0, Lcom/netflix/mediaclient/service/logging/abconfig/ABTestLoadedEvent;

    invoke-direct {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/abconfig/ABTestLoadedEvent;-><init>(Ljava/lang/String;I)V

    .line 651
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 652
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "AB test loaded event done"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    return-void
.end method

.method public reportABTestReceivedEvent(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 662
    new-instance v0, Lcom/netflix/mediaclient/service/logging/abconfig/ABTestReceivedEvent;

    invoke-direct {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/abconfig/ABTestReceivedEvent;-><init>(Ljava/lang/String;I)V

    .line 663
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 664
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "AB test received event done"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    return-void
.end method

.method public reportPerformanceEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V
    .locals 2

    .prologue
    .line 613
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mCurrentUiView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-direct {p0, p1, v0, v1}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 614
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 618
    return-void
.end method

.method public setDataContext(Lcom/netflix/mediaclient/service/logging/client/model/DataContext;)V
    .locals 0

    .prologue
    .line 693
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    .line 694
    return-void
.end method

.method public startApplicationSession(Z)V
    .locals 5

    .prologue
    .line 116
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "Application session created"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 124
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    const-string/jumbo v1, "nf_log_apm"

    const-string/jumbo v4, "Application ID is ready, start application session..."

    invoke-static {v1, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-direct {p0, p1, v0, v2, v3}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->doStartApplicationSession(ZLjava/lang/String;J)V

    .line 146
    :goto_0
    return-void

    .line 128
    :cond_0
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "Application ID is not received from NRDLIb yet, postpone application session start..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    new-instance v1, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl$1;

    invoke-direct {v1, p0, p1, v2, v3}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl$1;-><init>(Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;ZJ)V

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/logging/EventHandler;->setAppIdSetListener(Lcom/netflix/mediaclient/javabridge/ui/Log$AppIdSetListener;)V

    goto :goto_0
.end method

.method public startAssetRequestSession(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 567
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mAssetRequests:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/logging/apm/UIAssetRequestSession;

    .line 568
    if-eqz v0, :cond_0

    move-object p1, v1

    .line 586
    :goto_0
    return-object p1

    .line 575
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    const-string/jumbo v2, "uiQOE"

    const-string/jumbo v3, "uiAssetRequest"

    invoke-interface {v0, v2, v3}, Lcom/netflix/mediaclient/service/logging/EventHandler;->canSendEvent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 576
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v2, "Asset request started. Asset request tracking is not enabled. Done."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, v1

    .line 577
    goto :goto_0

    .line 580
    :cond_1
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "Asset request session created"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    new-instance v0, Lcom/netflix/mediaclient/service/logging/apm/UIAssetRequestSession;

    invoke-direct {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/apm/UIAssetRequestSession;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;)V

    .line 583
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 584
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mAssetRequests:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "Asset session start done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startDataRequestSession(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 518
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 519
    const-string/jumbo v1, "nf_log_apm"

    const-string/jumbo v2, "Data request session: url is empty, can not create session!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    :goto_0
    return v0

    .line 523
    :cond_0
    invoke-static {p2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 524
    const-string/jumbo v1, "nf_log_apm"

    const-string/jumbo v2, "Data request session: requestId is empty, can not create session!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 528
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    const-string/jumbo v2, "uiQOE"

    const-string/jumbo v3, "uiDataRequest"

    invoke-interface {v1, v2, v3}, Lcom/netflix/mediaclient/service/logging/EventHandler;->canSendEvent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 529
    const-string/jumbo v1, "nf_log_apm"

    const-string/jumbo v2, "Data request started. Data request tracking is not enabled. Done."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 534
    :cond_2
    new-instance v0, Lcom/netflix/mediaclient/service/logging/apm/UIDataRequestSession;

    invoke-direct {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/apm/UIDataRequestSession;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 536
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mDataRequests:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "Data session start done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public startPerformanceSession(Lcom/netflix/mediaclient/service/logging/perf/PerfSession;)V
    .locals 3

    .prologue
    .line 622
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/logging/perf/PerfSession;->getStartEvent()Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;

    move-result-object v0

    .line 623
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/logging/perf/PerfSession;->getId()Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mNrdpLogSessionId:Ljava/lang/String;

    .line 624
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, p1}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 625
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mCurrentUiView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 626
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 630
    return-void
.end method

.method public startSharedContextSession(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1157
    if-nez p1, :cond_0

    .line 1158
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "UUID can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1160
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mSharedContextSession:Lcom/netflix/mediaclient/service/logging/apm/SharedContextSession;

    if-eqz v0, :cond_1

    .line 1161
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "Shared context session already exist, we do not recreate it!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    :goto_0
    return-void

    .line 1164
    :cond_1
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "Shared context session created"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    new-instance v0, Lcom/netflix/mediaclient/service/logging/apm/SharedContextSession;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/service/logging/apm/SharedContextSession;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mSharedContextSession:Lcom/netflix/mediaclient/service/logging/apm/SharedContextSession;

    .line 1166
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mSharedContextSession:Lcom/netflix/mediaclient/service/logging/apm/SharedContextSession;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 1167
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mSharedContextSession:Lcom/netflix/mediaclient/service/logging/apm/SharedContextSession;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/apm/SharedContextSession;->createStartEvent()Lcom/netflix/mediaclient/service/logging/apm/model/SharedContextSessionStartedEvent;

    move-result-object v0

    .line 1168
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 1170
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "Shared context start done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startUiBrowseStartupSession(J)V
    .locals 3

    .prologue
    .line 374
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "UI browse startup session started."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    new-instance v0, Lcom/netflix/mediaclient/service/logging/apm/UIBrowseStartupSession;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/logging/apm/UIBrowseStartupSession;-><init>()V

    .line 376
    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/apm/UIBrowseStartupSession;->setStarted(J)V

    .line 379
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mUIBrowseStartupSession:Lcom/netflix/mediaclient/service/logging/apm/UIBrowseStartupSession;

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 380
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 381
    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mUIBrowseStartupSession:Lcom/netflix/mediaclient/service/logging/apm/UIBrowseStartupSession;

    .line 382
    return-void
.end method

.method public startUiModelessViewSession(ZLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 409
    new-instance v0, Lcom/netflix/mediaclient/service/logging/apm/UIModelessViewSession;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/logging/apm/UIModelessViewSession;-><init>()V

    .line 410
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mDialogSessions:Ljava/util/Map;

    invoke-interface {v1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 412
    const-string/jumbo v1, "nf_log_apm"

    const-string/jumbo v2, "UI modeless session start event posting..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/apm/UIModelessViewSession;->createStartEvent(ZLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)Lcom/netflix/mediaclient/service/logging/apm/model/UIModelessViewSessionStartedEvent;

    move-result-object v0

    .line 415
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mCurrentUiView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 416
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 418
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "UI modeless session start event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    return-void
.end method

.method public startUiStartupSession(Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;ILjava/lang/String;Ljava/util/Map;Ljava/lang/Long;Lcom/netflix/mediaclient/service/logging/apm/model/Display;Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionCustomData;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;",
            "Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Long;",
            "Lcom/netflix/mediaclient/service/logging/apm/model/Display;",
            "Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;",
            "Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionCustomData;",
            ")V"
        }
    .end annotation

    .prologue
    .line 340
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "UI startup session created"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    new-instance v0, Lcom/netflix/mediaclient/service/logging/apm/UIStartupSession;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lcom/netflix/mediaclient/service/logging/apm/UIStartupSession;-><init>(Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;ILjava/lang/String;Ljava/util/Map;Lcom/netflix/mediaclient/service/logging/apm/model/Display;Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionCustomData;)V

    .line 343
    if-eqz p6, :cond_0

    .line 344
    invoke-virtual {p6}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/netflix/mediaclient/service/logging/apm/UIStartupSession;->setStarted(J)V

    .line 349
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mUIStartupSession:Lcom/netflix/mediaclient/service/logging/apm/UIStartupSession;

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 350
    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mUIStartupSession:Lcom/netflix/mediaclient/service/logging/apm/UIStartupSession;

    .line 351
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 352
    return-void
.end method

.method public startUiStartupSession(Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Ljava/lang/Long;Lcom/netflix/mediaclient/service/logging/apm/model/Display;Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionCustomData;)V
    .locals 6

    .prologue
    .line 318
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mUIStartupSession:Lcom/netflix/mediaclient/service/logging/apm/UIStartupSession;

    if-eqz v0, :cond_0

    .line 319
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "UI startup session already exist, we do not recreate it!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :goto_0
    return-void

    .line 323
    :cond_0
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "UI startup session created"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    new-instance v0, Lcom/netflix/mediaclient/service/logging/apm/UIStartupSession;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/service/logging/apm/UIStartupSession;-><init>(Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/apm/model/Display;Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionCustomData;)V

    .line 326
    if-eqz p3, :cond_1

    .line 327
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/netflix/mediaclient/service/logging/apm/UIStartupSession;->setStarted(J)V

    .line 331
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mUIStartupSession:Lcom/netflix/mediaclient/service/logging/apm/UIStartupSession;

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 332
    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mUIStartupSession:Lcom/netflix/mediaclient/service/logging/apm/UIStartupSession;

    .line 333
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    goto :goto_0
.end method

.method public startUserSession()V
    .locals 6

    .prologue
    .line 263
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mUserSession:Lcom/netflix/mediaclient/service/logging/apm/UserSession;

    if-eqz v0, :cond_0

    .line 264
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "User session already exist"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :goto_0
    return-void

    .line 267
    :cond_0
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "User session started"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->getUserSessionId()Ljava/lang/String;

    move-result-object v0

    .line 275
    new-instance v1, Lcom/netflix/mediaclient/service/logging/apm/UserSession;

    invoke-direct {v1}, Lcom/netflix/mediaclient/service/logging/apm/UserSession;-><init>()V

    .line 276
    iput-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mUserSession:Lcom/netflix/mediaclient/service/logging/apm/UserSession;

    .line 277
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/netflix/mediaclient/service/logging/apm/UserSession;->setId(J)V

    .line 278
    const-string/jumbo v2, "nf_log_apm"

    const-string/jumbo v3, "User session start event posting..."

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    sget-object v2, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;->logout:Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Lcom/netflix/mediaclient/service/logging/apm/UserSession;->createStartEvent(Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;J)Lcom/netflix/mediaclient/service/logging/apm/model/UserSessionStartedEvent;

    move-result-object v1

    .line 280
    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mNrdpLogSessionId:Ljava/lang/String;

    .line 281
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mUserSession:Lcom/netflix/mediaclient/service/logging/apm/UserSession;

    invoke-interface {v0, v2}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 282
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mCurrentUiView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-direct {p0, v1, v0, v2}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->sendUserSessionEvent(Lcom/netflix/mediaclient/service/logging/apm/model/UserSessionStartedEvent;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    goto :goto_0
.end method

.method public startUserSession(Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;)V
    .locals 2

    .prologue
    .line 179
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->startUserSession(Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;J)V

    .line 180
    return-void
.end method

.method public startUserSession(Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;J)V
    .locals 6

    .prologue
    .line 185
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mUserSession:Lcom/netflix/mediaclient/service/logging/apm/UserSession;

    if-eqz v0, :cond_0

    .line 186
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "User session already exist"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :goto_0
    return-void

    .line 189
    :cond_0
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "User session started"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    new-instance v0, Lcom/netflix/mediaclient/service/logging/apm/UserSession;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/logging/apm/UserSession;-><init>()V

    .line 193
    const-string/jumbo v1, "nf_log_apm"

    const-string/jumbo v2, "User session start event posting..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-virtual {v0, p1, p2, p3}, Lcom/netflix/mediaclient/service/logging/apm/UserSession;->createStartEvent(Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;J)Lcom/netflix/mediaclient/service/logging/apm/model/UserSessionStartedEvent;

    move-result-object v1

    .line 196
    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v2}, Lcom/netflix/mediaclient/service/logging/EventHandler;->getUserSessionId()Ljava/lang/String;

    move-result-object v2

    .line 202
    new-instance v3, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl$2;

    invoke-direct {v3, p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl$2;-><init>(Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;Lcom/netflix/mediaclient/service/logging/apm/UserSession;Lcom/netflix/mediaclient/service/logging/apm/model/UserSessionStartedEvent;)V

    .line 234
    iget-object v4, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mNrdpLogSessionId:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 235
    const-string/jumbo v4, "nf_log_apm"

    const-string/jumbo v5, "We never used nrdp.log.sessionid, use it now if user session exist in nrdp"

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 237
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "User session is not yet created. This should NOT happen!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v0, v3}, Lcom/netflix/mediaclient/service/logging/EventHandler;->createUserSession(Lcom/netflix/mediaclient/javabridge/ui/Log$ResetSessionIdCallback;)V

    goto :goto_0

    .line 241
    :cond_1
    const-string/jumbo v3, "nf_log_apm"

    const-string/jumbo v4, "User session is created. Set it to event and post event"

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mUserSession:Lcom/netflix/mediaclient/service/logging/apm/UserSession;

    invoke-interface {v3, v4}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 243
    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mUserSession:Lcom/netflix/mediaclient/service/logging/apm/UserSession;

    .line 244
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mUserSession:Lcom/netflix/mediaclient/service/logging/apm/UserSession;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/netflix/mediaclient/service/logging/apm/UserSession;->setId(J)V

    .line 245
    iput-object v2, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mNrdpLogSessionId:Ljava/lang/String;

    .line 246
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mUserSession:Lcom/netflix/mediaclient/service/logging/apm/UserSession;

    invoke-interface {v0, v2}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 247
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mUserSession:Lcom/netflix/mediaclient/service/logging/apm/UserSession;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/apm/UserSession;->getId()Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/logging/apm/model/UserSessionStartedEvent;->setSessionId(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;)V

    .line 248
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mCurrentUiView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-direct {p0, v1, v0, v2}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->sendUserSessionEvent(Lcom/netflix/mediaclient/service/logging/apm/model/UserSessionStartedEvent;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    goto/16 :goto_0

    .line 253
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v0, v3}, Lcom/netflix/mediaclient/service/logging/EventHandler;->createUserSession(Lcom/netflix/mediaclient/javabridge/ui/Log$ResetSessionIdCallback;)V

    goto/16 :goto_0
.end method

.method public uiViewChanged(ZLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 3

    .prologue
    .line 496
    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mCurrentUiView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    .line 497
    new-instance v0, Lcom/netflix/mediaclient/service/logging/apm/model/UIModalViewChangedEvent;

    invoke-direct {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/apm/model/UIModalViewChangedEvent;-><init>(ZLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 498
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mCurrentUiView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 499
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 500
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "UI view changed event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    return-void
.end method

.method public uiViewChanged(ZLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;J)V
    .locals 3

    .prologue
    .line 507
    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mCurrentUiView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    .line 508
    new-instance v0, Lcom/netflix/mediaclient/service/logging/apm/model/UIModalViewChangedEvent;

    invoke-direct {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/apm/model/UIModalViewChangedEvent;-><init>(ZLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 509
    invoke-virtual {v0, p3, p4}, Lcom/netflix/mediaclient/service/logging/client/model/Event;->setTime(J)V

    .line 510
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mCurrentUiView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 511
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 512
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "UI view changed event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    return-void
.end method

.method public uiViewImpressionEvent(ZLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 3

    .prologue
    .line 483
    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mCurrentUiView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    .line 484
    new-instance v0, Lcom/netflix/mediaclient/service/logging/apm/model/UIModalViewImpressionEvent;

    invoke-direct {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/apm/model/UIModalViewImpressionEvent;-><init>(ZLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 485
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mCurrentUiView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 486
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 487
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "UI impression event event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    return-void
.end method
