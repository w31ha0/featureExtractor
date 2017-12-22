.class public Lcom/netflix/mediaclient/event/nrdp/player/Buffering;
.super Lcom/netflix/mediaclient/event/nrdp/player/PlayerEvent;
.source "Buffering.java"


# static fields
.field private static final ATTR_PERCENTAGE:Ljava/lang/String; = "percentage"

.field public static final TYPE:Ljava/lang/String;


# instance fields
.field private percentage:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->player_buffering:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/event/nrdp/player/Buffering;->TYPE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/netflix/mediaclient/event/nrdp/player/Buffering;->TYPE:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/event/nrdp/player/PlayerEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 31
    return-void
.end method


# virtual methods
.method public getPercentage()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/netflix/mediaclient/event/nrdp/player/Buffering;->percentage:I

    return v0
.end method

.method protected populate(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 38
    const-string/jumbo v0, "percentage"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/event/nrdp/player/Buffering;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/event/nrdp/player/Buffering;->percentage:I

    .line 39
    return-void
.end method
