.class public Lcom/netflix/mediaclient/event/nrdp/player/StreamPresenting;
.super Lcom/netflix/mediaclient/event/nrdp/player/PlayerEvent;
.source "StreamPresenting.java"


# static fields
.field private static final ATTR_MANIFEST_INDEX:Ljava/lang/String; = "manifestIndex"

.field private static final ATTR_START_PTS:Ljava/lang/String; = "startPts"

.field private static final ATTR_STREAM_INDEX:Ljava/lang/String; = "streamIndex"

.field private static final ATTR_TRACK_INDEX:Ljava/lang/String; = "trackIndex"

.field public static final TYPE:Ljava/lang/String;


# instance fields
.field private mManifestIndex:I

.field private mStartPts:I

.field private mStreamIndex:I

.field private mTrackIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->player_streamPresenting:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/event/nrdp/player/StreamPresenting;->TYPE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/netflix/mediaclient/event/nrdp/player/StreamPresenting;->TYPE:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/event/nrdp/player/PlayerEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 33
    return-void
.end method


# virtual methods
.method public getManifestIndex()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/netflix/mediaclient/event/nrdp/player/StreamPresenting;->mManifestIndex:I

    return v0
.end method

.method public getStartPts()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/netflix/mediaclient/event/nrdp/player/StreamPresenting;->mStartPts:I

    return v0
.end method

.method public getStreamIndex()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/netflix/mediaclient/event/nrdp/player/StreamPresenting;->mStreamIndex:I

    return v0
.end method

.method public getTrackIndex()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/netflix/mediaclient/event/nrdp/player/StreamPresenting;->mTrackIndex:I

    return v0
.end method

.method protected populate(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 37
    const-string/jumbo v0, "manifestIndex"

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/event/nrdp/player/StreamPresenting;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/event/nrdp/player/StreamPresenting;->mManifestIndex:I

    .line 38
    const-string/jumbo v0, "trackIndex"

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/event/nrdp/player/StreamPresenting;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/event/nrdp/player/StreamPresenting;->mTrackIndex:I

    .line 39
    const-string/jumbo v0, "streamIndex"

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/event/nrdp/player/StreamPresenting;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/event/nrdp/player/StreamPresenting;->mStreamIndex:I

    .line 40
    const-string/jumbo v0, "startPts"

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/event/nrdp/player/StreamPresenting;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/event/nrdp/player/StreamPresenting;->mStartPts:I

    .line 41
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "StreamPresenting{mManifestIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/event/nrdp/player/StreamPresenting;->mManifestIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mTrackIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/event/nrdp/player/StreamPresenting;->mTrackIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mStreamIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/event/nrdp/player/StreamPresenting;->mStreamIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mStartPts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/event/nrdp/player/StreamPresenting;->mStartPts:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
