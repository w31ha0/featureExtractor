.class public Lcom/netflix/mediaclient/event/nrdp/player/ManifestSelected;
.super Lcom/netflix/mediaclient/event/nrdp/player/PlayerEvent;
.source "ManifestSelected.java"


# static fields
.field private static final ATTR_MANIFESTINDEX:Ljava/lang/String; = "manifestIndex"

.field private static final ATTR_SESSIONID:Ljava/lang/String; = "sessionid"

.field public static final TYPE:Ljava/lang/String;

.field private static mManifestIndex:I

.field private static mSessionId:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 10
    sget-object v0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->player_manifestSelected:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/event/nrdp/player/ManifestSelected;->TYPE:Ljava/lang/String;

    .line 15
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/netflix/mediaclient/event/nrdp/player/ManifestSelected;->mSessionId:J

    .line 16
    const/4 v0, -0x1

    sput v0, Lcom/netflix/mediaclient/event/nrdp/player/ManifestSelected;->mManifestIndex:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/event/nrdp/player/PlayerEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 20
    return-void
.end method


# virtual methods
.method public getSessionId()J
    .locals 2

    .prologue
    .line 28
    sget-wide v0, Lcom/netflix/mediaclient/event/nrdp/player/ManifestSelected;->mSessionId:J

    return-wide v0
.end method

.method public getmManifestIndex()I
    .locals 1

    .prologue
    .line 31
    sget v0, Lcom/netflix/mediaclient/event/nrdp/player/ManifestSelected;->mManifestIndex:I

    return v0
.end method

.method protected populate(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 24
    const-string/jumbo v0, "sessionid"

    const-wide/16 v2, -0x1

    invoke-static {p1, v0, v2, v3}, Lcom/netflix/mediaclient/event/nrdp/player/ManifestSelected;->getLong(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/netflix/mediaclient/event/nrdp/player/ManifestSelected;->mSessionId:J

    .line 25
    const-string/jumbo v0, "manifestIndex"

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/event/nrdp/player/ManifestSelected;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/netflix/mediaclient/event/nrdp/player/ManifestSelected;->mManifestIndex:I

    .line 26
    return-void
.end method
