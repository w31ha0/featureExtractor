.class public Lcom/netflix/mediaclient/event/nrdp/player/StateChanged;
.super Lcom/netflix/mediaclient/event/nrdp/player/PlayerEvent;
.source "StateChanged.java"


# static fields
.field private static final ATTR_STATE:Ljava/lang/String; = "state"

.field public static final TYPE:Ljava/lang/String;


# instance fields
.field private state:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->player_stateChanged:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/event/nrdp/player/StateChanged;->TYPE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/netflix/mediaclient/event/nrdp/player/StateChanged;->TYPE:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/event/nrdp/player/PlayerEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 21
    return-void
.end method


# virtual methods
.method public getState()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/netflix/mediaclient/event/nrdp/player/StateChanged;->state:I

    return v0
.end method

.method protected populate(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 28
    const-string/jumbo v0, "state"

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/event/nrdp/player/StateChanged;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/event/nrdp/player/StateChanged;->state:I

    .line 29
    return-void
.end method
