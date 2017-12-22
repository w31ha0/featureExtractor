.class public Lcom/netflix/mediaclient/event/nrdp/player/UpdateVideoBitrate;
.super Lcom/netflix/mediaclient/event/nrdp/player/PlayerEvent;
.source "UpdateVideoBitrate.java"


# static fields
.field private static final ATTR_BPS:Ljava/lang/String; = "bitsPerSecond"

.field public static final TYPE:Ljava/lang/String;


# instance fields
.field private bitsPerSecond:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->player_updateVideoBitrate:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/event/nrdp/player/UpdateVideoBitrate;->TYPE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/netflix/mediaclient/event/nrdp/player/UpdateVideoBitrate;->TYPE:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/event/nrdp/player/PlayerEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 27
    return-void
.end method


# virtual methods
.method public getBitsPerSecond()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/netflix/mediaclient/event/nrdp/player/UpdateVideoBitrate;->bitsPerSecond:I

    return v0
.end method

.method protected populate(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 34
    const-string/jumbo v0, "bitsPerSecond"

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/event/nrdp/player/UpdateVideoBitrate;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/event/nrdp/player/UpdateVideoBitrate;->bitsPerSecond:I

    .line 35
    return-void
.end method
