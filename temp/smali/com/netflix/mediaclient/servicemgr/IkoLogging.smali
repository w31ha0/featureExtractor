.class public interface abstract Lcom/netflix/mediaclient/servicemgr/IkoLogging;
.super Ljava/lang/Object;
.source "IkoLogging.java"


# static fields
.field public static final ACTIONS:[Ljava/lang/String;

.field public static final EXTRA_CMD:Ljava/lang/String; = "cmd"

.field public static final EXTRA_ERROR:Ljava/lang/String; = "error"

.field public static final EXTRA_ERROR_CODE:Ljava/lang/String; = "errorCode"

.field public static final EXTRA_ERROR_SUB_CODE:Ljava/lang/String; = "errorSubCode"

.field public static final EXTRA_REASON:Ljava/lang/String; = "reason"

.field public static final EXTRA_URL:Ljava/lang/String; = "url"

.field public static final EXTRA_VIEW:Ljava/lang/String; = "view"

.field public static final INTENT_ACTION_IKO_MODE_ENDED:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_IKO_MODE_ENDED"

.field public static final INTENT_ACTION_IKO_MODE_START:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_IKO_MODE_START"

.field public static final INTENT_ACTION_IKO_MOMENT_ENDED:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_IKO_MOMENT_ENDED"

.field public static final INTENT_ACTION_IKO_MOMENT_START:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_IKO_MOMENT_START"

.field public static final INTENT_ACTION_VIDEO_LOAD_END:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_IKO_VIDEO_LOAD_END"

.field public static final INTENT_ACTION_VIDEO_LOAD_START:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_IKO_VIDEO_LOAD_START"

.field public static final INTENT_ACTION_VIDEO_PLAYBACK_END:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_IKO_VIDEO_PLAYBACK_END"

.field public static final INTENT_ACTION_VIDEO_PLAYBACK_START:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_IKO_VIDEO_PLAYBACK_START"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 24
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_IKO_MODE_START"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_IKO_MODE_ENDED"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_IKO_MOMENT_START"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_IKO_MOMENT_ENDED"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_IKO_VIDEO_LOAD_START"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_IKO_VIDEO_LOAD_END"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_IKO_VIDEO_PLAYBACK_START"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_IKO_VIDEO_PLAYBACK_END"

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/IkoLogging;->ACTIONS:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract endAllActiveSessions()V
.end method

.method public abstract endIkoModeSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V
.end method

.method public abstract endIkoMomentSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract endIkoVideoLoadSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V
.end method

.method public abstract endIkoVideoPlaybackSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;II)V
.end method

.method public abstract setDataContext(Lcom/netflix/mediaclient/service/logging/client/model/DataContext;)V
.end method

.method public abstract startIkoModeSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
.end method

.method public abstract startIkoMomentSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
.end method

.method public abstract startIkoVideoLoadSession(Ljava/lang/String;)V
.end method

.method public abstract startIkoVideoPlaybackSession(Ljava/lang/String;)V
.end method
