.class Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/Server;
.super Ljava/lang/Object;
.source "Server.java"


# instance fields
.field public id:I

.field public isLowGrade:Ljava/lang/Boolean;

.field public key:Ljava/lang/String;

.field public level:Ljava/lang/Integer;

.field public name:Ljava/lang/String;

.field public rank:I

.field public weight:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;IILjava/lang/Integer;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/Server;->id:I

    .line 29
    iput-object p2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/Server;->name:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/Server;->isLowGrade:Ljava/lang/Boolean;

    .line 31
    iput-object p4, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/Server;->key:Ljava/lang/String;

    .line 32
    iput p5, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/Server;->rank:I

    .line 33
    iput p6, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/Server;->weight:I

    .line 34
    iput-object p7, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/Server;->level:Ljava/lang/Integer;

    .line 35
    return-void
.end method


# virtual methods
.method public toJson()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 39
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 40
    const-string/jumbo v1, "id"

    iget v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/Server;->id:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 41
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/Server;->name:Ljava/lang/String;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    const-string/jumbo v1, "nm"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/Server;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    :cond_0
    const-string/jumbo v1, "rk"

    iget v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/Server;->rank:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 45
    const-string/jumbo v1, "wt"

    iget v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/Server;->weight:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 47
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/Server;->key:Ljava/lang/String;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 48
    const-string/jumbo v1, "locid"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/Server;->key:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/Server;->level:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 51
    const-string/jumbo v1, "level"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/Server;->level:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 53
    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/Server;->isLowGrade:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    .line 54
    const-string/jumbo v1, "lowg"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/Server;->isLowGrade:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 57
    :cond_3
    return-object v0
.end method
