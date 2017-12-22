.class public Lcom/netflix/mediaclient/event/nrdp/player/HevcInfo;
.super Lcom/netflix/mediaclient/event/nrdp/player/PlayerEvent;
.source "HevcInfo.java"


# static fields
.field private static final ATTR_INFO:Ljava/lang/String; = "info"

.field private static final ATTR_SESSIONID:Ljava/lang/String; = "sessionId"

.field public static final TYPE:Ljava/lang/String;


# instance fields
.field private mInfo:Ljava/lang/String;

.field private mSessionId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->player_hevcInfo:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/event/nrdp/player/HevcInfo;->TYPE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 17
    sget-object v0, Lcom/netflix/mediaclient/event/nrdp/player/HevcInfo;->TYPE:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/event/nrdp/player/PlayerEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 14
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/netflix/mediaclient/event/nrdp/player/HevcInfo;->mSessionId:J

    .line 18
    return-void
.end method


# virtual methods
.method protected populate(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 22
    const-string/jumbo v0, "sessionId"

    const-wide/16 v2, -0x1

    invoke-static {p1, v0, v2, v3}, Lcom/netflix/mediaclient/event/nrdp/player/HevcInfo;->getLong(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/event/nrdp/player/HevcInfo;->mSessionId:J

    .line 23
    const-string/jumbo v0, "info"

    const-string/jumbo v1, ""

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/event/nrdp/player/HevcInfo;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/player/HevcInfo;->mInfo:Ljava/lang/String;

    .line 24
    return-void
.end method
