.class public interface abstract Lcom/netflix/mediaclient/servicemgr/OfflineLogging;
.super Ljava/lang/Object;
.source "OfflineLogging.java"


# static fields
.field public static final ACTIONS:[Ljava/lang/String;

.field public static final ADD_CACHED_VIDEO_SESSION_ENDED:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_OFFLINE_ADD_CACHED_VIDEO_SESSION_ENDED"

.field public static final ADD_CACHED_VIDEO_SESSION_START:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_OFFLINE_ADD_CACHED_VIDEO_SESSION_STARTED"

.field public static final CACHED_PLAY_SESSION_ENDED:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_OFFLINE_CACHED_PLAY_SESSION_ENDED"

.field public static final CACHED_PLAY_SESSION_START:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_OFFLINE_CACHED_PLAY_SESSION_STARTED"

.field public static final DOWNLOAD_SESSION_ENDED:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_OFFLINE_DOWNLOAD_SESSION_ENDED"

.field public static final DOWNLOAD_SESSION_START:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_OFFLINE_DOWNLOAD_SESSION_STARTED"

.field public static final EXTRA_CMD:Ljava/lang/String; = "cmd"

.field public static final EXTRA_DXID:Ljava/lang/String; = "dxid"

.field public static final EXTRA_ERROR:Ljava/lang/String; = "error"

.field public static final EXTRA_LOGICAL_END:Ljava/lang/String; = "logicalEnd"

.field public static final EXTRA_LOGICAL_START:Ljava/lang/String; = "logicalStart"

.field public static final EXTRA_OXID:Ljava/lang/String; = "oxid"

.field public static final EXTRA_REASON:Ljava/lang/String; = "reason"

.field public static final EXTRA_RUNTIME:Ljava/lang/String; = "runtime"

.field public static final EXTRA_URL:Ljava/lang/String; = "url"

.field public static final EXTRA_VIDEOID:Ljava/lang/String; = "videoid"

.field public static final EXTRA_VIEW:Ljava/lang/String; = "view"

.field public static final REMOVE_CACHED_VIDEO_SESSION_ENDED:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_OFFLINE_REMOVE_CACHED_VIDEO_SESSION_ENDED"

.field public static final REMOVE_CACHED_VIDEO_SESSION_START:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_OFFLINE_REMOVE_CACHED_VIDEO_SESSION_STARTED"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 43
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_OFFLINE_ADD_CACHED_VIDEO_SESSION_STARTED"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_OFFLINE_ADD_CACHED_VIDEO_SESSION_ENDED"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_OFFLINE_REMOVE_CACHED_VIDEO_SESSION_STARTED"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_OFFLINE_REMOVE_CACHED_VIDEO_SESSION_ENDED"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_OFFLINE_DOWNLOAD_SESSION_STARTED"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_OFFLINE_DOWNLOAD_SESSION_ENDED"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_OFFLINE_CACHED_PLAY_SESSION_STARTED"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_OFFLINE_CACHED_PLAY_SESSION_ENDED"

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/OfflineLogging;->ACTIONS:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract endAddCachedVideoSession(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V
.end method

.method public abstract endAllActiveSessions()V
.end method

.method public abstract endCachedPlaySession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V
.end method

.method public abstract endDownloadSession(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V
.end method

.method public abstract endRemoveCachedVideoSession(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V
.end method

.method public abstract setDataContext(Lcom/netflix/mediaclient/service/logging/client/model/DataContext;)V
.end method

.method public abstract startAddCachedVideoSession(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;)V
.end method

.method public abstract startCachedPlaySession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Ljava/lang/String;Ljava/lang/String;III)V
.end method

.method public abstract startDownloadSession(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;)V
.end method

.method public abstract startRemoveCachedVideoSession(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;)V
.end method
