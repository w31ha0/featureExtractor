.class public Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;
.super Ljava/lang/Object;
.source "DeepErrorElement.java"


# static fields
.field public static final MESSAGE:Ljava/lang/String; = "message"

.field public static final STACKTRACE:Ljava/lang/String; = "stackTrace"

.field private static final STR_MESSAGE:Ljava/lang/String; = "srtMessage"

.field private static final ST_FILE_NAME:Ljava/lang/String; = "stackTraceFileName"

.field private static final ST_LINE_NUMBER:Ljava/lang/String; = "stackTraceLineNumber"

.field private static final ST_METHOD_NAME:Ljava/lang/String; = "stackTraceMethodName"


# instance fields
.field private message:Lorg/json/JSONObject;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "message"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.0
    .end annotation
.end field

.field private stackTrace:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "stackTrace"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.0
    .end annotation
.end field

.field private stackTraceFileName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "stackTraceFileName"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.0
    .end annotation
.end field

.field private stackTraceLineNumber:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "stackTraceLineNumber"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.0
    .end annotation
.end field

.field private stackTraceMethodName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "stackTraceMethodName"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.0
    .end annotation
.end field

.field private strMessage:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "strMessage"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.0
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    return-void
.end method

.method public static createInstance(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 276
    if-nez p0, :cond_0

    .line 289
    :goto_0
    return-object v0

    .line 280
    :cond_0
    new-instance v1, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;

    invoke-direct {v1}, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;-><init>()V

    .line 282
    const-string/jumbo v2, "stackTrace"

    invoke-static {p0, v2, v0}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;->stackTrace:Ljava/lang/String;

    .line 283
    const-string/jumbo v2, "message"

    invoke-static {p0, v2, v0}, Lcom/netflix/mediaclient/util/JsonUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, v1, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;->message:Lorg/json/JSONObject;

    .line 284
    const-string/jumbo v2, "srtMessage"

    invoke-static {p0, v2, v0}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;->strMessage:Ljava/lang/String;

    .line 285
    const-string/jumbo v2, "stackTraceFileName"

    invoke-static {p0, v2, v0}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;->stackTraceFileName:Ljava/lang/String;

    .line 286
    const-string/jumbo v2, "stackTraceLineNumber"

    invoke-static {p0, v2, v0}, Lcom/netflix/mediaclient/util/JsonUtils;->getIntegerObject(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;->stackTraceLineNumber:Ljava/lang/Integer;

    .line 287
    const-string/jumbo v2, "stackTraceMethodName"

    invoke-static {p0, v2, v0}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;->stackTraceMethodName:Ljava/lang/String;

    move-object v0, v1

    .line 289
    goto :goto_0
.end method


# virtual methods
.method public getMessage()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;->message:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getStackTrace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;->stackTrace:Ljava/lang/String;

    return-object v0
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 293
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;->strMessage:Ljava/lang/String;

    .line 294
    return-void
.end method

.method public setMessage(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;->message:Lorg/json/JSONObject;

    .line 247
    return-void
.end method

.method public setStackTrace(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;->stackTrace:Ljava/lang/String;

    .line 207
    return-void
.end method

.method public setStackTrace(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 216
    if-nez p1, :cond_1

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;->setStackTrace(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;->setStackTraceFileName(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;->setStackTraceLineNumber(I)V

    .line 226
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;->setStackTraceMethodName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setStackTraceFileName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 297
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;->stackTraceFileName:Ljava/lang/String;

    .line 298
    return-void
.end method

.method public setStackTraceLineNumber(I)V
    .locals 1

    .prologue
    .line 301
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;->stackTraceLineNumber:Ljava/lang/Integer;

    .line 302
    return-void
.end method

.method public setStackTraceMethodName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 305
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;->stackTraceMethodName:Ljava/lang/String;

    .line 306
    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 262
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 264
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;->stackTrace:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "stackTrace"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;->stackTrace:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 265
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;->message:Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    const-string/jumbo v1, "message"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;->message:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 266
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;->strMessage:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string/jumbo v1, "srtMessage"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;->strMessage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 267
    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;->stackTraceFileName:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string/jumbo v1, "stackTraceFileName"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;->stackTraceFileName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 268
    :cond_3
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;->stackTraceLineNumber:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    const-string/jumbo v1, "stackTraceLineNumber"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;->stackTraceLineNumber:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 269
    :cond_4
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;->stackTraceMethodName:Ljava/lang/String;

    if-eqz v1, :cond_5

    const-string/jumbo v1, "stackTraceMethodName"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;->stackTraceMethodName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 271
    :cond_5
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Debug [stackTrace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;->stackTrace:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;->message:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
