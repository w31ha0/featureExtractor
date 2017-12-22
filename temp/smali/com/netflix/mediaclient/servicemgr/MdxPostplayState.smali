.class public Lcom/netflix/mediaclient/servicemgr/MdxPostplayState;
.super Ljava/lang/Object;
.source "MdxPostplayState.java"


# static fields
.field private static final KEY_POSTPLATSTATE_STATE:Ljava/lang/String; = "state"

.field private static final KEY_POSTPLATSTATE_TITLE:Ljava/lang/String; = "title"

.field private static final KEY_POSTPLATSTATE_TITLE_ID:Ljava/lang/String; = "id"

.field private static final KEY_POSTPLATSTATE_TITLE_TYPE:Ljava/lang/String; = "type"

.field private static final POSTPLAYSTATE_COUNTDOWN:Ljava/lang/String; = "POST_PLAY_COUNTDOWN"

.field private static final POSTPLAYSTATE_PROMPT:Ljava/lang/String; = "POST_PLAY_PROMPT"

.field private static final TITLE_TYPE_EPISODE:Ljava/lang/String; = "episode"


# instance fields
.field private mPostplatTitleArray:[Lcom/netflix/mediaclient/servicemgr/MdxPostplayState$PostplayTitle;

.field private mState:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-class v0, Lcom/netflix/mediaclient/servicemgr/MdxPostplayState;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 46
    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/servicemgr/MdxPostplayState;->mState:Ljava/lang/String;

    .line 49
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 50
    const-string/jumbo v1, "id"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 51
    const-string/jumbo v2, "type"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/netflix/mediaclient/servicemgr/MdxPostplayState$PostplayTitle;

    iput-object v2, p0, Lcom/netflix/mediaclient/servicemgr/MdxPostplayState;->mPostplatTitleArray:[Lcom/netflix/mediaclient/servicemgr/MdxPostplayState$PostplayTitle;

    .line 53
    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/MdxPostplayState;->mPostplatTitleArray:[Lcom/netflix/mediaclient/servicemgr/MdxPostplayState$PostplayTitle;

    const/4 v3, 0x0

    new-instance v4, Lcom/netflix/mediaclient/servicemgr/MdxPostplayState$PostplayTitle;

    invoke-direct {v4, p0, v1, v0}, Lcom/netflix/mediaclient/servicemgr/MdxPostplayState$PostplayTitle;-><init>(Lcom/netflix/mediaclient/servicemgr/MdxPostplayState;ILjava/lang/String;)V

    aput-object v4, v2, v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 55
    const-class v0, Lcom/netflix/mediaclient/servicemgr/MdxPostplayState;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "JSON error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getPostplayTitle()[Lcom/netflix/mediaclient/servicemgr/MdxPostplayState$PostplayTitle;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/MdxPostplayState;->mPostplatTitleArray:[Lcom/netflix/mediaclient/servicemgr/MdxPostplayState$PostplayTitle;

    return-object v0
.end method

.method public isInCountdown()Z
    .locals 2

    .prologue
    .line 63
    const-string/jumbo v0, "POST_PLAY_COUNTDOWN"

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/MdxPostplayState;->mState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isInPrompt()Z
    .locals 2

    .prologue
    .line 66
    const-string/jumbo v0, "POST_PLAY_PROMPT"

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/MdxPostplayState;->mState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
