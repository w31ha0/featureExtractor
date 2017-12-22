.class public Lcom/netflix/mediaclient/event/nrdp/player/UpdatePts;
.super Lcom/netflix/mediaclient/event/nrdp/player/PlayerEvent;
.source "UpdatePts.java"


# static fields
.field private static final ATTR_PTS:Ljava/lang/String; = "pts"

.field public static final TYPE:Ljava/lang/String;


# instance fields
.field private pts:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->player_updatePts:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/event/nrdp/player/UpdatePts;->TYPE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/netflix/mediaclient/event/nrdp/player/UpdatePts;->TYPE:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/event/nrdp/player/PlayerEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 27
    return-void
.end method


# virtual methods
.method public getPts()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/netflix/mediaclient/event/nrdp/player/UpdatePts;->pts:I

    return v0
.end method

.method protected populate(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 31
    const-string/jumbo v0, "pts"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/event/nrdp/player/UpdatePts;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/event/nrdp/player/UpdatePts;->pts:I

    .line 32
    return-void
.end method
