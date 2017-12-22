.class public Lcom/netflix/mediaclient/event/nrdp/player/BufferRange;
.super Lcom/netflix/mediaclient/event/nrdp/player/PlayerEvent;
.source "BufferRange.java"


# static fields
.field private static final ATTR_CURRENT_PTS:Ljava/lang/String; = "currentPts"

.field private static final ATTR_END_PTS:Ljava/lang/String; = "endPts"

.field private static final ATTR_START_PTS:Ljava/lang/String; = "startPts"

.field private static final ATTR_bandwidth:Ljava/lang/String; = "bandwidth"

.field private static final ATTR_rebuffer:Ljava/lang/String; = "rebuffer"

.field public static final TYPE:Ljava/lang/String;


# instance fields
.field private bandwidth:I

.field private currentPts:I

.field private endPts:I

.field private rebuffer:I

.field private startPts:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->player_bufferRange:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/event/nrdp/player/BufferRange;->TYPE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/netflix/mediaclient/event/nrdp/player/BufferRange;->TYPE:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/event/nrdp/player/PlayerEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 39
    return-void
.end method


# virtual methods
.method public getBandwidth()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/netflix/mediaclient/event/nrdp/player/BufferRange;->bandwidth:I

    return v0
.end method

.method public getCurrentPts()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/netflix/mediaclient/event/nrdp/player/BufferRange;->currentPts:I

    return v0
.end method

.method public getEndPts()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/netflix/mediaclient/event/nrdp/player/BufferRange;->endPts:I

    return v0
.end method

.method public getRebuffer()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/netflix/mediaclient/event/nrdp/player/BufferRange;->rebuffer:I

    return v0
.end method

.method public getStartPts()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/netflix/mediaclient/event/nrdp/player/BufferRange;->startPts:I

    return v0
.end method

.method protected populate(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    const-string/jumbo v0, "startPts"

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/event/nrdp/player/BufferRange;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/event/nrdp/player/BufferRange;->startPts:I

    .line 47
    const-string/jumbo v0, "endPts"

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/event/nrdp/player/BufferRange;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/event/nrdp/player/BufferRange;->endPts:I

    .line 48
    const-string/jumbo v0, "currentPts"

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/event/nrdp/player/BufferRange;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/event/nrdp/player/BufferRange;->currentPts:I

    .line 49
    const-string/jumbo v0, "bandwidth"

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/event/nrdp/player/BufferRange;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/event/nrdp/player/BufferRange;->bandwidth:I

    .line 50
    const-string/jumbo v0, "rebuffer"

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/event/nrdp/player/BufferRange;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/event/nrdp/player/BufferRange;->rebuffer:I

    .line 51
    return-void
.end method
