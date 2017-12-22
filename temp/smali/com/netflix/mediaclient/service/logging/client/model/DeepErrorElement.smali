.class public Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement;
.super Ljava/lang/Object;
.source "DeepErrorElement.java"


# static fields
.field public static final DEBUG:Ljava/lang/String; = "debug"

.field public static final ERROR_CODE:Ljava/lang/String; = "errorCode"

.field public static final FATAL:Ljava/lang/String; = "fatal"


# instance fields
.field private debug:Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "debug"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.0
    .end annotation
.end field

.field private errorCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "errorCode"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.0
    .end annotation
.end field

.field private fatal:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fatal"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.0
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method public static createInstance(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 135
    if-nez p0, :cond_0

    .line 144
    :goto_0
    return-object v0

    .line 139
    :cond_0
    new-instance v1, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement;

    invoke-direct {v1}, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement;-><init>()V

    .line 140
    const-string/jumbo v2, "debug"

    invoke-static {p0, v2, v0}, Lcom/netflix/mediaclient/util/JsonUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;->createInstance(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;

    move-result-object v2

    iput-object v2, v1, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement;->debug:Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;

    .line 141
    const-string/jumbo v2, "errorCode"

    invoke-static {p0, v2, v0}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement;->errorCode:Ljava/lang/String;

    .line 142
    const-string/jumbo v0, "fatal"

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Lcom/netflix/mediaclient/util/JsonUtils;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement;->fatal:Z

    move-object v0, v1

    .line 144
    goto :goto_0
.end method


# virtual methods
.method public getDebug()Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement;->debug:Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;

    return-object v0
.end method

.method public getErrorCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement;->errorCode:Ljava/lang/String;

    return-object v0
.end method

.method public isFatal()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement;->fatal:Z

    return v0
.end method

.method public setDebug(Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement;->debug:Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;

    .line 109
    return-void
.end method

.method public setErrorCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement;->errorCode:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setFatal(Z)V
    .locals 0

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement;->fatal:Z

    .line 91
    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 122
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 123
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement;->debug:Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;

    if-eqz v1, :cond_0

    .line 124
    const-string/jumbo v1, "debug"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement;->debug:Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement;->errorCode:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 127
    const-string/jumbo v1, "errorCode"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement;->errorCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    :cond_1
    const-string/jumbo v1, "fatal"

    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement;->fatal:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 130
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DeepErrorElement [errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement;->errorCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", fatal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement;->fatal:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", debug="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement;->debug:Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
