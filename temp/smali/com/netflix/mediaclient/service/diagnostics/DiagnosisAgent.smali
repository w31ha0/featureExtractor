.class public Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;
.super Lcom/netflix/mediaclient/service/ServiceAgent;
.source "DiagnosisAgent.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/IDiagnosis;


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_service_diagnosisagent"

.field private static final name:Ljava/lang/String; = "name"

.field private static final ntwkDiagnostics:Ljava/lang/String; = "NetworkDiagnostics"

.field private static final resultArrayString:Ljava/lang/String; = "resultArray"

.field private static final source:Ljava/lang/String; = "source"


# instance fields
.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIsDiagnosisOngoing:Z

.field private mListener:Lcom/netflix/mediaclient/servicemgr/IDiagnosis$DiagnosisListener;

.field private mRequestFactory:Lcom/netflix/mediaclient/service/user/volley/UserDataRequestFactory;

.field private final mUrlNetworkStates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/ServiceAgent;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->mIsDiagnosisOngoing:Z

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->mUrlNetworkStates:Ljava/util/ArrayList;

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->mListener:Lcom/netflix/mediaclient/servicemgr/IDiagnosis$DiagnosisListener;

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->notifyDiagnosisComplete()V

    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->mUrlNetworkStates:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->runNetworkConnectivityTest(Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;)V

    return-void
.end method

.method private isTestSuccess()Z
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->mUrlNetworkStates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;

    .line 142
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    const/4 v0, 0x0

    .line 146
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private notifyDiagnosisComplete()V
    .locals 3

    .prologue
    .line 150
    const-string/jumbo v0, "nf_service_diagnosisagent"

    const-string/jumbo v1, "notifyDiagnosisComplete"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->stopHandlerThread()V

    .line 152
    iget-object v0, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->mListener:Lcom/netflix/mediaclient/servicemgr/IDiagnosis$DiagnosisListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->mIsDiagnosisOngoing:Z

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->mListener:Lcom/netflix/mediaclient/servicemgr/IDiagnosis$DiagnosisListener;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IDiagnosis$DiagnosisListener;->onDiagnosisComplete()V

    .line 154
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->isTestSuccess()Z

    move-result v0

    .line 156
    :try_start_0
    new-instance v1, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$DiagnosisLogblob;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->mUrlNetworkStates:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;->info:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    :goto_0
    invoke-direct {v1, p0, v2, v0}, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$DiagnosisLogblob;-><init>(Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;Ljava/util/List;Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;)V

    .line 158
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->getLoggingAgent()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getLogblobLogging()Lcom/netflix/mediaclient/servicemgr/LogblobLogging;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/LogblobLogging;->sendLogblob(Lcom/netflix/mediaclient/servicemgr/Logblob;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :cond_0
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->mIsDiagnosisOngoing:Z

    .line 164
    return-void

    .line 156
    :cond_1
    :try_start_1
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;->error:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 159
    :catch_0
    move-exception v0

    .line 160
    const-string/jumbo v0, "nf_service_diagnosisagent"

    const-string/jumbo v1, "JSONException:"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private runNetworkConnectivityTest(Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;)V
    .locals 2

    .prologue
    .line 86
    const-string/jumbo v0, "nf_service_diagnosisagent"

    const-string/jumbo v1, "runNetworkConnectivityTest"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v0, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->mWorkHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 138
    :goto_0
    return-void

    .line 90
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$UrlStatus;->TEST_ONGOING:Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$UrlStatus;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;->setStatus(Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$UrlStatus;)V

    .line 91
    iget-object v0, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->mListener:Lcom/netflix/mediaclient/servicemgr/IDiagnosis$DiagnosisListener;

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->mListener:Lcom/netflix/mediaclient/servicemgr/IDiagnosis$DiagnosisListener;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IDiagnosis$DiagnosisListener;->onDiagnosisListUpdated()V

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$1;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$1;-><init>(Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private startHandlerThread()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "nf_nw_diag"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->mHandlerThread:Landroid/os/HandlerThread;

    .line 61
    iget-object v0, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->mWorkHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 64
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->mWorkHandler:Landroid/os/Handler;

    .line 66
    :cond_1
    return-void
.end method

.method private stopHandlerThread()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 69
    iget-object v0, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 71
    iput-object v1, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->mHandlerThread:Landroid/os/HandlerThread;

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->mWorkHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 75
    iput-object v1, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->mWorkHandler:Landroid/os/Handler;

    .line 77
    :cond_1
    return-void
.end method


# virtual methods
.method public abortDiagnosis()V
    .locals 2

    .prologue
    .line 214
    const-string/jumbo v0, "nf_service_diagnosisagent"

    const-string/jumbo v1, "abortDiagnosis"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->mIsDiagnosisOngoing:Z

    .line 216
    iget-object v0, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->mUrlNetworkStates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 217
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->stopHandlerThread()V

    .line 218
    return-void
.end method

.method public addListener(Lcom/netflix/mediaclient/servicemgr/IDiagnosis$DiagnosisListener;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->mListener:Lcom/netflix/mediaclient/servicemgr/IDiagnosis$DiagnosisListener;

    .line 169
    return-void
.end method

.method protected doInit()V
    .locals 3

    .prologue
    .line 81
    new-instance v0, Lcom/netflix/mediaclient/service/user/volley/UserDataRequestFactory;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/user/volley/UserDataRequestFactory;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->mRequestFactory:Lcom/netflix/mediaclient/service/user/volley/UserDataRequestFactory;

    .line 82
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 83
    return-void
.end method

.method public getNetworkStateList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 222
    iget-object v0, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->mUrlNetworkStates:Ljava/util/ArrayList;

    return-object v0
.end method

.method public removeListener()V
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->mListener:Lcom/netflix/mediaclient/servicemgr/IDiagnosis$DiagnosisListener;

    .line 174
    return-void
.end method

.method public startNetworkDiagnosis()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 178
    const-string/jumbo v0, "nf_service_diagnosisagent"

    const-string/jumbo v1, "startNetworkDiagnosis"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->abortDiagnosis()V

    .line 180
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->startHandlerThread()V

    .line 181
    iput-boolean v3, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->mIsDiagnosisOngoing:Z

    .line 183
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getApiEndpointRegistry()Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;->getApiUri(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    .line 184
    const-string/jumbo v1, "nf_service_diagnosisagent"

    const-string/jumbo v2, "apiUrl=%s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 185
    iget-object v1, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->mUrlNetworkStates:Ljava/util/ArrayList;

    new-instance v2, Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;

    sget-object v3, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$UrlStatus;->NOT_TESTED:Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$UrlStatus;

    invoke-direct {v2, v0, v3}, Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$UrlStatus;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    iget-object v0, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->mUrlNetworkStates:Ljava/util/ArrayList;

    new-instance v1, Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;

    const-string/jumbo v2, "http://www.google.com"

    sget-object v3, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$UrlStatus;->NOT_TESTED:Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$UrlStatus;

    invoke-direct {v1, v2, v3}, Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$UrlStatus;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    iget-object v0, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->mUrlNetworkStates:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;

    .line 190
    sget-object v1, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$UrlStatus;->TEST_ONGOING:Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$UrlStatus;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;->setStatus(Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$UrlStatus;)V

    .line 191
    iget-object v1, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->mListener:Lcom/netflix/mediaclient/servicemgr/IDiagnosis$DiagnosisListener;

    if-eqz v1, :cond_0

    .line 192
    iget-object v1, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->mListener:Lcom/netflix/mediaclient/servicemgr/IDiagnosis$DiagnosisListener;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IDiagnosis$DiagnosisListener;->onDiagnosisListUpdated()V

    .line 195
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->useMslForDataRequests()Z

    move-result v2

    new-instance v3, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$2;

    invoke-direct {v3, p0, v0}, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$2;-><init>(Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;)V

    invoke-interface {v1, v2, v3}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->doDummyNetworkRequest(ZLcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;)V

    .line 210
    return-void
.end method
