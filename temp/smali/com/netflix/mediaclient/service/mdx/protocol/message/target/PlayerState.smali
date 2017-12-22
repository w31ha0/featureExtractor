.class public Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PlayerState;
.super Ljava/lang/Object;
.source "PlayerState.java"


# static fields
.field public static final PLAYER_STATE_AUTO_ADVANCE:Ljava/lang/String; = "AUTO_ADVANCE"

.field public static final PLAYER_STATE_END_PLAYBACK:Ljava/lang/String; = "END_PLAYBACK"

.field public static final PLAYER_STATE_FATAL_ERROR:Ljava/lang/String; = "FATAL_ERROR"

.field public static final PLAYER_STATE_PAUSE:Ljava/lang/String; = "PAUSE"

.field public static final PLAYER_STATE_PLAY:Ljava/lang/String; = "PLAY"

.field public static final PLAYER_STATE_PLAYING:Ljava/lang/String; = "PLAYING"

.field public static final PLAYER_STATE_PROGRESS:Ljava/lang/String; = "PROGRESS"

.field public static final PLAYER_STATE_STALLED:Ljava/lang/String; = "STALLED"

.field public static final PLAYER_STATE_STOP:Ljava/lang/String; = "STOP"

.field private static final PROPERTY_autoAdvanceIncrement:Ljava/lang/String; = "autoAdvanceIncrement"

.field private static final PROPERTY_catalogId:Ljava/lang/String; = "catalogId"

.field private static final PROPERTY_currentState:Ljava/lang/String; = "currentState"

.field private static final PROPERTY_duration:Ljava/lang/String; = "duration"

.field private static final PROPERTY_episodeId:Ljava/lang/String; = "episodeId"

.field private static final PROPERTY_postplay:Ljava/lang/String; = "postplayState"

.field private static final PROPERTY_time:Ljava/lang/String; = "time"

.field private static final PROPERTY_volume:Ljava/lang/String; = "volume"

.field private static final PROPERTY_xid:Ljava/lang/String; = "xid"


# instance fields
.field private mAutoAdvanceIncrement:Ljava/lang/String;

.field private mCatalogId:Ljava/lang/String;

.field private mCurrentState:Ljava/lang/String;

.field private mDuration:I

.field private mEpisodeId:Ljava/lang/String;

.field private mPostplayStateBlob:Ljava/lang/String;

.field private mTime:I

.field private mVolume:I

.field private mXid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PlayerState;->mTime:I

    .line 54
    iput v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PlayerState;->mVolume:I

    .line 55
    iput v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PlayerState;->mDuration:I

    .line 74
    const-string/jumbo v0, "xid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PlayerState;->mXid:Ljava/lang/String;

    .line 75
    const-string/jumbo v0, "catalogId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PlayerState;->mCatalogId:Ljava/lang/String;

    .line 77
    const-string/jumbo v0, "duration"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PlayerState;->mDuration:I

    .line 78
    const-string/jumbo v0, "time"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PlayerState;->mTime:I

    .line 79
    const-string/jumbo v0, "volume"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PlayerState;->mVolume:I

    .line 81
    const-string/jumbo v0, "currentState"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PlayerState;->mCurrentState:Ljava/lang/String;

    .line 82
    const-string/jumbo v0, "episodeId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PlayerState;->mEpisodeId:Ljava/lang/String;

    .line 84
    const-string/jumbo v0, "autoAdvanceIncrement"

    const-string/jumbo v1, "0"

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PlayerState;->mAutoAdvanceIncrement:Ljava/lang/String;

    .line 86
    const-string/jumbo v0, "postplayState"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PlayerState;->mPostplayStateBlob:Ljava/lang/String;

    .line 87
    return-void
.end method


# virtual methods
.method public getAutoAdvanceIncrement()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PlayerState;->mAutoAdvanceIncrement:Ljava/lang/String;

    return-object v0
.end method

.method public getCatalogId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PlayerState;->mCatalogId:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PlayerState;->mCurrentState:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PlayerState;->mDuration:I

    return v0
.end method

.method public getEpisodeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PlayerState;->mEpisodeId:Ljava/lang/String;

    return-object v0
.end method

.method public getPostplayState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PlayerState;->mPostplayStateBlob:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PlayerState;->mTime:I

    return v0
.end method

.method public getVolume()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PlayerState;->mVolume:I

    return v0
.end method

.method public getXid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PlayerState;->mXid:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PlayerCurrentState [currentState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PlayerState;->mCurrentState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", xid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PlayerState;->mXid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", catalogId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PlayerState;->mCatalogId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", episodeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PlayerState;->mEpisodeId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
