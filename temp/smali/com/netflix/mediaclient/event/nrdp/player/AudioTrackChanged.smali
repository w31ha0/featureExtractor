.class public Lcom/netflix/mediaclient/event/nrdp/player/AudioTrackChanged;
.super Lcom/netflix/mediaclient/event/nrdp/player/PlayerEvent;
.source "AudioTrackChanged.java"


# static fields
.field private static final ATTR_TRACK_ID:Ljava/lang/String; = "trackId"

.field private static final ATTR_TRACK_INDEX:Ljava/lang/String; = "trackIndex"

.field public static final TYPE:Ljava/lang/String;


# instance fields
.field private trackId:Ljava/lang/String;

.field private trackIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->player_audioTrackChanged:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/event/nrdp/player/AudioTrackChanged;->TYPE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/netflix/mediaclient/event/nrdp/player/AudioTrackChanged;->TYPE:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/event/nrdp/player/PlayerEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 33
    return-void
.end method


# virtual methods
.method public getTrackId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/player/AudioTrackChanged;->trackId:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackIndex()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/netflix/mediaclient/event/nrdp/player/AudioTrackChanged;->trackIndex:I

    return v0
.end method

.method protected populate(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 40
    const-string/jumbo v0, "trackIndex"

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/event/nrdp/player/AudioTrackChanged;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/event/nrdp/player/AudioTrackChanged;->trackIndex:I

    .line 41
    const-string/jumbo v0, "trackId"

    const-string/jumbo v1, ""

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/event/nrdp/player/AudioTrackChanged;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/player/AudioTrackChanged;->trackId:Ljava/lang/String;

    .line 42
    return-void
.end method
