.class public Lcom/netflix/mediaclient/service/logging/client/model/SessionKey;
.super Ljava/lang/Object;
.source "SessionKey.java"


# static fields
.field public static final SESSION_CATEGORY:Ljava/lang/String; = "category"

.field public static final SESSION_ID:Ljava/lang/String; = "sessionId"

.field public static final SESSION_NAME:Ljava/lang/String; = "sessionName"


# instance fields
.field private category:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sessionCategory"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.0
    .end annotation
.end field

.field private id:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sessionId"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.0
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sessionName"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.0
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/client/model/SessionKey;->id:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    .line 65
    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/client/model/SessionKey;->category:Ljava/lang/String;

    .line 66
    iput-object p3, p0, Lcom/netflix/mediaclient/service/logging/client/model/SessionKey;->name:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public static createInstance(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/service/logging/client/model/SessionKey;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 151
    if-nez p0, :cond_0

    .line 163
    :goto_0
    return-object v0

    .line 155
    :cond_0
    new-instance v1, Lcom/netflix/mediaclient/service/logging/client/model/SessionKey;

    invoke-direct {v1}, Lcom/netflix/mediaclient/service/logging/client/model/SessionKey;-><init>()V

    .line 156
    const-string/jumbo v2, "sessionId"

    const-wide/16 v4, -0x1

    invoke-static {p0, v2, v4, v5}, Lcom/netflix/mediaclient/util/JsonUtils;->getLong(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v2

    .line 157
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    .line 158
    new-instance v4, Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    invoke-direct {v4, v2, v3}, Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;-><init>(J)V

    iput-object v4, v1, Lcom/netflix/mediaclient/service/logging/client/model/SessionKey;->id:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    .line 160
    :cond_1
    const-string/jumbo v2, "category"

    invoke-static {p0, v2, v0}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/netflix/mediaclient/service/logging/client/model/SessionKey;->category:Ljava/lang/String;

    .line 161
    const-string/jumbo v2, "sessionName"

    invoke-static {p0, v2, v0}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/netflix/mediaclient/service/logging/client/model/SessionKey;->name:Ljava/lang/String;

    move-object v0, v1

    .line 163
    goto :goto_0
.end method


# virtual methods
.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/SessionKey;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/SessionKey;->id:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/SessionKey;->name:Ljava/lang/String;

    return-object v0
.end method

.method public toJSONArray()Lorg/json/JSONArray;
    .locals 4

    .prologue
    .line 136
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 137
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/SessionKey;->id:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    if-eqz v1, :cond_0

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/SessionKey;->id:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;->getValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 140
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/SessionKey;->category:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 141
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/SessionKey;->category:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 143
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/SessionKey;->name:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 144
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/SessionKey;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 146
    :cond_2
    return-object v0
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 115
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 116
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/SessionKey;->id:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    if-eqz v1, :cond_0

    .line 117
    const-string/jumbo v1, "sessionId"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/client/model/SessionKey;->id:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;->getValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/SessionKey;->category:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 120
    const-string/jumbo v1, "category"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/SessionKey;->category:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 122
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/SessionKey;->name:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 123
    const-string/jumbo v1, "sessionName"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/SessionKey;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    :cond_2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SessionKey [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/SessionKey;->id:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", category="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/SessionKey;->category:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/SessionKey;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
