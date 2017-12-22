.class public Lcom/netflix/mediaclient/event/nrdp/player/PlaybackReporterEvent;
.super Lcom/netflix/mediaclient/event/nrdp/player/PlayerEvent;
.source "PlaybackReporterEvent.java"


# static fields
.field private static final ATTR_ARGS:Ljava/lang/String; = "args"

.field private static final ATTR_FUNCNAME:Ljava/lang/String; = "funcname"

.field private static final ATTR_TIME:Ljava/lang/String; = "time"

.field public static final TYPE:Ljava/lang/String;


# instance fields
.field private args:Ljava/lang/String;

.field private eventTime:J

.field private funcname:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->player_playbackReporter:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/event/nrdp/player/PlaybackReporterEvent;->TYPE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/netflix/mediaclient/event/nrdp/player/PlaybackReporterEvent;->TYPE:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/event/nrdp/player/PlayerEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 29
    return-void
.end method


# virtual methods
.method public getArgs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/player/PlaybackReporterEvent;->args:Ljava/lang/String;

    return-object v0
.end method

.method public getEventTime()J
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/netflix/mediaclient/event/nrdp/player/PlaybackReporterEvent;->eventTime:J

    return-wide v0
.end method

.method public getFuncname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/player/PlaybackReporterEvent;->funcname:Ljava/lang/String;

    return-object v0
.end method

.method protected populate(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 33
    const-string/jumbo v0, "funcname"

    const-string/jumbo v1, ""

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/event/nrdp/player/PlaybackReporterEvent;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/player/PlaybackReporterEvent;->funcname:Ljava/lang/String;

    .line 34
    const-string/jumbo v0, "args"

    const-string/jumbo v1, ""

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/event/nrdp/player/PlaybackReporterEvent;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/player/PlaybackReporterEvent;->args:Ljava/lang/String;

    .line 35
    const-string/jumbo v0, "time"

    invoke-static {}, Lcom/netflix/mediaclient/util/Time;->now()J

    move-result-wide v2

    invoke-static {p1, v0, v2, v3}, Lcom/netflix/mediaclient/event/nrdp/player/PlaybackReporterEvent;->getLong(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/event/nrdp/player/PlaybackReporterEvent;->eventTime:J

    .line 36
    return-void
.end method
