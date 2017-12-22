.class public Lcom/netflix/mediaclient/event/nrdp/player/PlaybackStat;
.super Lcom/netflix/mediaclient/event/nrdp/player/PlayerEvent;
.source "PlaybackStat.java"


# static fields
.field public static final TYPE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->player_playbackStat:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/event/nrdp/player/PlaybackStat;->TYPE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/netflix/mediaclient/event/nrdp/player/PlaybackStat;->TYPE:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/event/nrdp/player/PlayerEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 27
    return-void
.end method


# virtual methods
.method protected populate(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 32
    return-void
.end method
