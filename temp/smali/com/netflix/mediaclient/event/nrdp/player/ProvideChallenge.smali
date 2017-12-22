.class public Lcom/netflix/mediaclient/event/nrdp/player/ProvideChallenge;
.super Lcom/netflix/mediaclient/event/nrdp/player/PlayerEvent;
.source "ProvideChallenge.java"


# static fields
.field private static final ATTR_CHALLENGE:Ljava/lang/String; = "challenge"

.field private static final ATTR_DRM_HEADER:Ljava/lang/String; = "drmHeader"

.field private static final ATTR_DRM_TYPE:Ljava/lang/String; = "drmType"

.field private static final ATTR_STREAM_ID:Ljava/lang/String; = "streamID"

.field public static final TYPE:Ljava/lang/String;


# instance fields
.field private mChallenge:Ljava/lang/String;

.field private mDrmHeader:Ljava/lang/String;

.field private mDrmType:Ljava/lang/String;

.field private mStreamId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->player_provideChallenge:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/event/nrdp/player/ProvideChallenge;->TYPE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/netflix/mediaclient/event/nrdp/player/ProvideChallenge;->TYPE:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/event/nrdp/player/PlayerEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 21
    return-void
.end method


# virtual methods
.method public getChallenge()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/player/ProvideChallenge;->mChallenge:Ljava/lang/String;

    return-object v0
.end method

.method public getDrmHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/player/ProvideChallenge;->mDrmHeader:Ljava/lang/String;

    return-object v0
.end method

.method public getDrmType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/player/ProvideChallenge;->mDrmType:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/player/ProvideChallenge;->mStreamId:Ljava/lang/String;

    return-object v0
.end method

.method protected populate(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 25
    const-string/jumbo v0, "drmType"

    const-string/jumbo v1, ""

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/event/nrdp/player/ProvideChallenge;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/player/ProvideChallenge;->mDrmType:Ljava/lang/String;

    .line 26
    const-string/jumbo v0, "streamID"

    const-string/jumbo v1, ""

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/event/nrdp/player/ProvideChallenge;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/player/ProvideChallenge;->mStreamId:Ljava/lang/String;

    .line 27
    const-string/jumbo v0, "challenge"

    const-string/jumbo v1, ""

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/event/nrdp/player/ProvideChallenge;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/player/ProvideChallenge;->mChallenge:Ljava/lang/String;

    .line 28
    const-string/jumbo v0, "drmHeader"

    const-string/jumbo v1, ""

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/event/nrdp/player/ProvideChallenge;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/player/ProvideChallenge;->mDrmHeader:Ljava/lang/String;

    .line 29
    return-void
.end method
