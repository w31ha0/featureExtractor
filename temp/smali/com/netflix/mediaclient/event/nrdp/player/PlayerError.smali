.class public Lcom/netflix/mediaclient/event/nrdp/player/PlayerError;
.super Lcom/netflix/mediaclient/event/nrdp/player/PlayerEvent;
.source "PlayerError.java"


# static fields
.field private static final ATTR_ERROR:Ljava/lang/String; = "error"

.field private static final ATTR_STACK:Ljava/lang/String; = "stack"

.field public static final TYPE:Ljava/lang/String;


# instance fields
.field private error:I

.field private mArray:Lorg/json/JSONArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->player_error:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/event/nrdp/player/PlayerError;->TYPE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/netflix/mediaclient/event/nrdp/player/PlayerError;->TYPE:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/event/nrdp/player/PlayerEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 26
    return-void
.end method


# virtual methods
.method public getError()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/netflix/mediaclient/event/nrdp/player/PlayerError;->error:I

    return v0
.end method

.method protected populate(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 32
    const-string/jumbo v0, "error"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/event/nrdp/player/PlayerError;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/event/nrdp/player/PlayerError;->error:I

    .line 33
    const-string/jumbo v0, "stack"

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/event/nrdp/player/PlayerError;->getJsonArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/player/PlayerError;->mArray:Lorg/json/JSONArray;

    .line 34
    return-void
.end method
