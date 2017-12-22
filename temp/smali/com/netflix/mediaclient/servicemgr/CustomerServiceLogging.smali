.class public interface abstract Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging;
.super Ljava/lang/Object;
.source "CustomerServiceLogging.java"


# static fields
.field public static final ACTIONS:[Ljava/lang/String;

.field public static final CALL_CONNECTED:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_CS_CALL_CONNECTED"

.field public static final CALL_SESSION_ENDED:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_CS_CALL_SESSION_ENDED"

.field public static final CALL_SESSION_QUALITY_CHANGED:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_CS_CALL_SESSION_QUALITY_CHANGED"

.field public static final CALL_SESSION_START:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_CS_CALL_SESSION_START"

.field public static final CALL_UI_BACK_TO:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_CS_CALL_UI_BACK_TO"

.field public static final CALL_UI_EXIT:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_CS_CALL_UI_EXIT"

.field public static final EXTRA_ACTION:Ljava/lang/String; = "action"

.field public static final EXTRA_CALL_QUALITY:Ljava/lang/String; = "call_quality"

.field public static final EXTRA_DIALOG_TYPE:Ljava/lang/String; = "dialog_type"

.field public static final EXTRA_DISPLAYED:Ljava/lang/String; = "displayed"

.field public static final EXTRA_ENTRY:Ljava/lang/String; = "entry"

.field public static final EXTRA_ERROR:Ljava/lang/String; = "error"

.field public static final EXTRA_ORIENTATION:Ljava/lang/String; = "orientation"

.field public static final EXTRA_REASON:Ljava/lang/String; = "reason"

.field public static final EXTRA_SDK:Ljava/lang/String; = "sdk"

.field public static final EXTRA_SOURCE:Ljava/lang/String; = "source"

.field public static final EXTRA_TERMINATION_REASON:Ljava/lang/String; = "terminationReason"

.field public static final EXTRA_URL:Ljava/lang/String; = "url"

.field public static final EXTRA_USING:Ljava/lang/String; = "using"

.field public static final HELP_SESSION_ENDED:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_CS_HELP_SESSION_ENDED"

.field public static final HELP_SESSION_START:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_CS_HELP_SESSION_START"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_CS_HELP_SESSION_START"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_CS_HELP_SESSION_ENDED"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_CS_CALL_SESSION_START"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_CS_CALL_SESSION_ENDED"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_CS_CALL_SESSION_QUALITY_CHANGED"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_CS_CALL_CONNECTED"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_CS_CALL_UI_EXIT"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_CS_CALL_UI_BACK_TO"

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging;->ACTIONS:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract callConnected(Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$CallQuality;)V
.end method

.method public abstract callQualityChanged(Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$CallQuality;)V
.end method

.method public abstract createBackToDialScreenEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$ReturnToDialScreenFrom;)V
.end method

.method public abstract createDialScreenDismissedEvent(Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;)V
.end method

.method public abstract endAllActiveSessions()V
.end method

.method public abstract endCustomerSupportCallSession(Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V
.end method

.method public abstract endHelpRequestSession(Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V
.end method

.method public abstract startCustomerSupportCallSession(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Sdk;Z)V
.end method

.method public abstract startHelpRequestSession(Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;)V
.end method
