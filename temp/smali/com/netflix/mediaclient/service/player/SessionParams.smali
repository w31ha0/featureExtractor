.class public final Lcom/netflix/mediaclient/service/player/SessionParams;
.super Ljava/lang/Object;
.source "SessionParams.java"


# static fields
.field private static final PARAM_IS_BROWSE_PLAY:Ljava/lang/String; = "isBrowsePlay"

.field public static final PARAM_PLAY_CONTEXT:Ljava/lang/String; = "uiplaycontext"

.field private static final PARAM_PLAY_CONTEXT_LIST_POS:Ljava/lang/String; = "row"

.field private static final PARAM_PLAY_CONTEXT_REQ_ID:Ljava/lang/String; = "request_id"

.field private static final PARAM_PLAY_CONTEXT_VIDEO_POS:Ljava/lang/String; = "rank"

.field protected static final TAG:Ljava/lang/String; = "nf_invoke"


# instance fields
.field private mNetType:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

.field private mPlayContext:Lcom/netflix/mediaclient/ui/common/PlayContext;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/common/PlayContext;Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;)V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    if-nez p1, :cond_0

    .line 38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Play context can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/SessionParams;->mPlayContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    .line 42
    iput-object p2, p0, Lcom/netflix/mediaclient/service/player/SessionParams;->mNetType:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    .line 43
    return-void
.end method


# virtual methods
.method public getParams()Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 47
    const/4 v1, 0x0

    .line 51
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :try_start_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/SessionParams;->mNetType:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->fillNetworkType(Lorg/json/JSONObject;Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;)Lorg/json/JSONObject;

    .line 58
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/SessionParams;->mPlayContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    if-eqz v1, :cond_0

    .line 59
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 60
    const-string/jumbo v2, "request_id"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/SessionParams;->mPlayContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    invoke-interface {v3}, Lcom/netflix/mediaclient/ui/common/PlayContext;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    const-string/jumbo v2, "row"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/SessionParams;->mPlayContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    invoke-interface {v3}, Lcom/netflix/mediaclient/ui/common/PlayContext;->getListPos()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 62
    const-string/jumbo v2, "rank"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/SessionParams;->mPlayContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    invoke-interface {v3}, Lcom/netflix/mediaclient/ui/common/PlayContext;->getVideoPos()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 63
    const-string/jumbo v2, "uiplaycontext"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    const-string/jumbo v1, "isBrowsePlay"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/SessionParams;->mPlayContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    invoke-interface {v2}, Lcom/netflix/mediaclient/ui/common/PlayContext;->getBrowsePlay()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 80
    :cond_0
    :goto_0
    return-object v0

    .line 76
    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    .line 77
    :goto_1
    const-string/jumbo v2, "nf_invoke"

    const-string/jumbo v3, "Failed to create JSON object"

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 76
    :catch_1
    move-exception v1

    goto :goto_1
.end method
