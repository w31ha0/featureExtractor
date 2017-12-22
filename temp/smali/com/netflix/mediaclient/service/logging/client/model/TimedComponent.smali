.class public Lcom/netflix/mediaclient/service/logging/client/model/TimedComponent;
.super Ljava/lang/Object;
.source "TimedComponent.java"


# static fields
.field public static final ELAPSED:Ljava/lang/String; = "elapsed"

.field public static final NAME:Ljava/lang/String; = "name"


# instance fields
.field private elapsed:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "elapsed"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.0
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.0
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/client/model/TimedComponent;->name:Ljava/lang/String;

    .line 54
    iput-wide p2, p0, Lcom/netflix/mediaclient/service/logging/client/model/TimedComponent;->elapsed:J

    .line 55
    return-void
.end method

.method public static createInstance(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/service/logging/client/model/TimedComponent;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 113
    if-nez p0, :cond_0

    .line 120
    :goto_0
    return-object v0

    .line 117
    :cond_0
    new-instance v1, Lcom/netflix/mediaclient/service/logging/client/model/TimedComponent;

    invoke-direct {v1}, Lcom/netflix/mediaclient/service/logging/client/model/TimedComponent;-><init>()V

    .line 118
    const-string/jumbo v2, "name"

    invoke-static {p0, v2, v0}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/netflix/mediaclient/service/logging/client/model/TimedComponent;->name:Ljava/lang/String;

    .line 119
    const-string/jumbo v0, "elapsed"

    const-wide/16 v2, 0x0

    invoke-static {p0, v0, v2, v3}, Lcom/netflix/mediaclient/util/JsonUtils;->getLong(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/netflix/mediaclient/service/logging/client/model/TimedComponent;->elapsed:J

    move-object v0, v1

    .line 120
    goto :goto_0
.end method


# virtual methods
.method public getElapsed()J
    .locals 2

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/TimedComponent;->elapsed:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/TimedComponent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setElapsed(J)V
    .locals 1

    .prologue
    .line 90
    iput-wide p1, p0, Lcom/netflix/mediaclient/service/logging/client/model/TimedComponent;->elapsed:J

    .line 91
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/client/model/TimedComponent;->name:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 103
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 104
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/TimedComponent;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 105
    const-string/jumbo v1, "name"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/TimedComponent;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    :cond_0
    const-string/jumbo v1, "elapsed"

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/TimedComponent;->elapsed:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 108
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "TimedComponent [name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/TimedComponent;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", elapsed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/TimedComponent;->elapsed:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
