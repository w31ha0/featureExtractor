.class public Lcom/netflix/mediaclient/event/nrdp/player/Restart;
.super Lcom/netflix/mediaclient/event/nrdp/player/PlayerEvent;
.source "Restart.java"


# static fields
.field private static final ATTR_ERROR:Ljava/lang/String; = "error"

.field private static final ATTR_PTS:Ljava/lang/String; = "pts"

.field private static final ATTR_SESSION_ID:Ljava/lang/String; = "sessionId"

.field private static final ATTR_STACK:Ljava/lang/String; = "stack"

.field public static final TYPE:Ljava/lang/String;


# instance fields
.field private mError:I

.field private mPts:I

.field private mSessioId:J

.field private mStack:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->player_restart:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/event/nrdp/player/Restart;->TYPE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 21
    sget-object v0, Lcom/netflix/mediaclient/event/nrdp/player/Restart;->TYPE:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/event/nrdp/player/PlayerEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 15
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/netflix/mediaclient/event/nrdp/player/Restart;->mSessioId:J

    .line 16
    const/4 v0, -0x1

    iput v0, p0, Lcom/netflix/mediaclient/event/nrdp/player/Restart;->mError:I

    .line 22
    return-void
.end method


# virtual methods
.method public getError()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/netflix/mediaclient/event/nrdp/player/Restart;->mError:I

    return v0
.end method

.method public getPts()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/netflix/mediaclient/event/nrdp/player/Restart;->mPts:I

    return v0
.end method

.method public getSessioId()J
    .locals 2

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/netflix/mediaclient/event/nrdp/player/Restart;->mSessioId:J

    return-wide v0
.end method

.method public getStack()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/player/Restart;->mStack:Ljava/lang/String;

    return-object v0
.end method

.method protected populate(Lorg/json/JSONObject;)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 26
    const-string/jumbo v0, "sessionId"

    const-wide/16 v2, -0x1

    invoke-static {p1, v0, v2, v3}, Lcom/netflix/mediaclient/event/nrdp/player/Restart;->getLong(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/event/nrdp/player/Restart;->mSessioId:J

    .line 27
    const-string/jumbo v0, "error"

    invoke-static {p1, v0, v4}, Lcom/netflix/mediaclient/event/nrdp/player/Restart;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/event/nrdp/player/Restart;->mError:I

    .line 28
    const-string/jumbo v0, "stack"

    const-string/jumbo v1, ""

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/event/nrdp/player/Restart;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/player/Restart;->mStack:Ljava/lang/String;

    .line 29
    const-string/jumbo v0, "pts"

    invoke-static {p1, v0, v4}, Lcom/netflix/mediaclient/event/nrdp/player/Restart;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/event/nrdp/player/Restart;->mPts:I

    .line 30
    return-void
.end method
