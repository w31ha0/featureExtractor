.class public interface abstract Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;
.super Ljava/lang/Object;
.source "ApplicationPerformanceMetricsLogging.java"


# static fields
.field public static final AB_CONFIG_DATA_LOADED_EVENT:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_APM_AB_CONFIG_DATA_LOADED_EVENT"

.field public static final AB_CONFIG_DATA_RECEIVED_EVENT:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_APM_AB_CONFIG_DATA_RECEIVED_EVENT"

.field public static final AB_TEST_LOADED_EVENT:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_APM_AB_TEST_LOADED_EVENT"

.field public static final AB_TEST_RECEIVED_EVENT:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_APM_AB_TEST_RECEIVED_EVENT"

.field public static final ACTIONS:[Ljava/lang/String;

.field public static final ASSET_REQUEST_ENDED:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_APM_ASSET_REQUEST_ENDED"

.field public static final ASSET_REQUEST_STARTED:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_APM_ASSET_REQUEST_STARTED"

.field public static final DATA_REQUEST_ENDED:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_APM_DATA_REQUEST_ENDED"

.field public static final DATA_REQUEST_STARTED:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_APM_DATA_REQUEST_STARTED"

.field public static final DIALOG_DISPLAYED:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_APM_DIALOG_DISPLAYED"

.field public static final DIALOG_REMOVED:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_APM_DIALOG_REMOVED"

.field public static final EXTRA_AB_TEST_CELL_ID_KEY:Ljava/lang/String; = "ABTestCellID"

.field public static final EXTRA_AB_TEST_ID_KEY:Ljava/lang/String; = "ABTestID"

.field public static final EXTRA_ASSET_TYPE:Ljava/lang/String; = "asset_type"

.field public static final EXTRA_DIALOG_ID:Ljava/lang/String; = "dialog_id"

.field public static final EXTRA_DIALOG_TYPE:Ljava/lang/String; = "dialog_type"

.field public static final EXTRA_ERROR:Ljava/lang/String; = "error"

.field public static final EXTRA_FALKOR_PATH_RESULTS:Ljava/lang/String; = "falkorPathResults"

.field public static final EXTRA_HTTP_RESPONSE:Ljava/lang/String; = "http_response"

.field public static final EXTRA_LOCAL_SETTING_DATA:Ljava/lang/String; = "localSettingData"

.field public static final EXTRA_REASON:Ljava/lang/String; = "reason"

.field public static final EXTRA_REQUEST_ID:Ljava/lang/String; = "request_id"

.field public static final EXTRA_REQUEST_URL:Ljava/lang/String; = "url"

.field public static final EXTRA_UUID:Ljava/lang/String; = "uuid"

.field public static final EXTRA_VIEW:Ljava/lang/String; = "view"

.field public static final LOCAL_SETTINGS_CHANGE_BANDWIDTH:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_APM_LOCAL_SETTINGS_BW"

.field public static final PREAPP_ADD_WIDGET:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_APM_PREAPP_ADD_WIDGET"

.field public static final PREAPP_DELETE_WIDGET:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_APM_PREAPP_DELETE_WIDGET"

.field public static final SHARED_CONTEXT_SESSION_ENDED:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_APM_DATA_SHARED_CONTEXT_SESSION_ENDED"

.field public static final SHARED_CONTEXT_SESSION_STARTED:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_APM_DATA_SHARED_CONTEXT_SESSION_STARTED"

.field public static final UI_MODAL_VIEW_CHANGED:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_APM_UI_MODAL_VIEW_CHANGED"

.field public static final UI_MODAL_VIEW_IMPRESSION_EVENT:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_APM_UI_MODAL_VIEW_IMPRESSION"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 118
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_APM_DIALOG_DISPLAYED"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_APM_DIALOG_REMOVED"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_APM_DATA_REQUEST_STARTED"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_APM_DATA_REQUEST_ENDED"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_APM_ASSET_REQUEST_STARTED"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_APM_ASSET_REQUEST_ENDED"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_APM_UI_MODAL_VIEW_CHANGED"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_APM_UI_MODAL_VIEW_IMPRESSION"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_APM_PREAPP_ADD_WIDGET"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_APM_PREAPP_DELETE_WIDGET"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_APM_DATA_SHARED_CONTEXT_SESSION_STARTED"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_APM_DATA_SHARED_CONTEXT_SESSION_ENDED"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_APM_LOCAL_SETTINGS_BW"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_APM_AB_TEST_LOADED_EVENT"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_APM_AB_TEST_RECEIVED_EVENT"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_APM_AB_CONFIG_DATA_RECEIVED_EVENT"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_APM_AB_CONFIG_DATA_LOADED_EVENT"

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;->ACTIONS:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract endAllActiveSessions()V
.end method

.method public abstract endApplicationSession()V
.end method

.method public abstract endAssetRequestSession(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V
.end method

.method public abstract endDataRequestSession(Ljava/lang/String;Ljava/util/List;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V
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
.end method

.method public abstract endPerformanceSession(Lcom/netflix/mediaclient/service/logging/perf/PerfSession;)V
.end method

.method public abstract endSharedContextSession()V
.end method

.method public abstract endUiBrowseStartupSession(JZLcom/netflix/mediaclient/service/logging/client/model/UIError;)V
.end method

.method public abstract endUiModelessViewSession(Ljava/lang/String;)V
.end method

.method public abstract endUiStartupSession(ZLcom/netflix/mediaclient/service/logging/client/model/UIError;)V
.end method

.method public abstract endUserSession(Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$EndReason;J)V
.end method

.method public abstract handleConnectivityChange(Landroid/content/Context;)V
.end method

.method public abstract handleIntent(Landroid/content/Intent;Z)Z
.end method

.method public abstract isUserSessionExist()Z
.end method

.method public abstract localSettingsChange(Ljava/lang/String;)V
.end method

.method public abstract preappAddWidget(Ljava/lang/String;J)V
.end method

.method public abstract preappDeleteWidget(Ljava/lang/String;J)V
.end method

.method public abstract reportABConfigDataLoadedEvent()V
.end method

.method public abstract reportABConfigDataReceivedEvent()V
.end method

.method public abstract reportABTestLoadedEvent(Ljava/lang/String;I)V
.end method

.method public abstract reportABTestReceivedEvent(Ljava/lang/String;I)V
.end method

.method public abstract reportPerformanceEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V
.end method

.method public abstract setDataContext(Lcom/netflix/mediaclient/service/logging/client/model/DataContext;)V
.end method

.method public abstract startApplicationSession(Z)V
.end method

.method public abstract startAssetRequestSession(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;)Ljava/lang/String;
.end method

.method public abstract startDataRequestSession(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract startPerformanceSession(Lcom/netflix/mediaclient/service/logging/perf/PerfSession;)V
.end method

.method public abstract startSharedContextSession(Ljava/lang/String;)V
.end method

.method public abstract startUiBrowseStartupSession(J)V
.end method

.method public abstract startUiModelessViewSession(ZLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Ljava/lang/String;)V
.end method

.method public abstract startUiStartupSession(Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;ILjava/lang/String;Ljava/util/Map;Ljava/lang/Long;Lcom/netflix/mediaclient/service/logging/apm/model/Display;Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionCustomData;)V
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
.end method

.method public abstract startUiStartupSession(Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Ljava/lang/Long;Lcom/netflix/mediaclient/service/logging/apm/model/Display;Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionCustomData;)V
.end method

.method public abstract startUserSession(Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;)V
.end method

.method public abstract startUserSession(Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;J)V
.end method

.method public abstract uiViewChanged(ZLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
.end method

.method public abstract uiViewChanged(ZLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;J)V
.end method

.method public abstract uiViewImpressionEvent(ZLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
.end method
