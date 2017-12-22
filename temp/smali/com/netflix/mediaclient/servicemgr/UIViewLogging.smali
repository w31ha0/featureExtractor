.class public interface abstract Lcom/netflix/mediaclient/servicemgr/UIViewLogging;
.super Ljava/lang/Object;
.source "UIViewLogging.java"


# static fields
.field public static final ACTIONS:[Ljava/lang/String;

.field public static final COMMAND_ENDED:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_UIVIEW_CMD_ENDED"

.field public static final COMMAND_START:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_UIVIEW_CMD_START"

.field public static final EXTRA_CMD:Ljava/lang/String; = "cmd"

.field public static final EXTRA_DATA:Ljava/lang/String; = "data"

.field public static final EXTRA_DATA_CONTEXT:Ljava/lang/String; = "dataContext"

.field public static final EXTRA_ERROR:Ljava/lang/String; = "error"

.field public static final EXTRA_GUID:Ljava/lang/String; = "guid"

.field public static final EXTRA_INPUT_METHOD:Ljava/lang/String; = "inputMethod"

.field public static final EXTRA_INPUT_VALUE:Ljava/lang/String; = "inputValue"

.field public static final EXTRA_IS_MODAL:Ljava/lang/String; = "isModalView"

.field public static final EXTRA_MODEL:Ljava/lang/String; = "model"

.field public static final EXTRA_SUCCESS:Ljava/lang/String; = "success"

.field public static final EXTRA_TRACKING_INFO:Ljava/lang/String; = "trackingInfo"

.field public static final EXTRA_TRACK_ID:Ljava/lang/String; = "trackId"

.field public static final EXTRA_URL:Ljava/lang/String; = "url"

.field public static final EXTRA_VIEW:Ljava/lang/String; = "view"

.field public static final IKO_NOTIFICATION_IMPRESSION_ENDED:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_IKO_NOTIFICATION_IMPRESSION_ENDED"

.field public static final IKO_NOTIFICATION_IMPRESSION_START:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_IKO_NOTIFICATION_IMPRESSION_START"

.field public static final IMPRESSION:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_UIVIEW_IMPRESSION"

.field public static final IMPRESSION_SESSION_ENDED:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_UIVIEW_IMPRESSION_SESSION_ENDED"

.field public static final IMPRESSION_SESSION_STARTED:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_UIVIEW_IMPRESSION_SESSION_STARTED"

.field public static final LEFT_PANEL_VIEW_COMMAND_ENDED:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_LEFT_PANEL_VIEW_CMD_ENDED"

.field public static final LEFT_PANEL_VIEW_COMMAND_START:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_LEFT_PANEL_VIEW_CMD_START"

.field public static final LEFT_PANEL_VIEW_IMPRESSION_ENDED:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_LEFT_PANEL_VIEW_IMPRESSION_ENDED"

.field public static final LEFT_PANEL_VIEW_IMPRESSION_START:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_LEFT_PANEL_VIEW_IMPRESSION_START"

.field public static final MODAL_VIEW_ENDED:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_UIVIEW_MDL_VW_ENDED"

.field public static final MODAL_VIEW_START:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_UIVIEW_MDL_VW_START"

.field public static final NOTIFICATION_IMPRESSION_ENDED:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_NOTIFICATION_IMPRESSION_ENDED"

.field public static final NOTIFICATION_IMPRESSION_START:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_NOTIFICATION_IMPRESSION_START"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 69
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIVIEW_CMD_START"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIVIEW_CMD_ENDED"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_LEFT_PANEL_VIEW_CMD_START"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_LEFT_PANEL_VIEW_CMD_ENDED"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIVIEW_IMPRESSION"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIVIEW_IMPRESSION_SESSION_STARTED"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIVIEW_IMPRESSION_SESSION_ENDED"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_LEFT_PANEL_VIEW_IMPRESSION_START"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_LEFT_PANEL_VIEW_IMPRESSION_ENDED"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_NOTIFICATION_IMPRESSION_START"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_NOTIFICATION_IMPRESSION_ENDED"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_IKO_NOTIFICATION_IMPRESSION_START"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_IKO_NOTIFICATION_IMPRESSION_ENDED"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIVIEW_MDL_VW_START"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIVIEW_MDL_VW_ENDED"

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging;->ACTIONS:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract createImpressionEvent(Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;I)V
.end method

.method public abstract endAllActiveSessions()V
.end method

.method public abstract endCommandSession()V
.end method

.method public abstract endImpressionSession(ZLcom/netflix/mediaclient/service/logging/client/model/Error;)V
.end method

.method public abstract endModalViewSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Ljava/lang/String;Z)V
.end method

.method public abstract startCommandSession(Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
.end method

.method public abstract startImpressionSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Ljava/lang/String;)V
.end method

.method public abstract startModalViewSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Ljava/lang/String;)V
.end method
