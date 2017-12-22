.class public Lcom/netflix/mediaclient/javabridge/invoke/SetConfigData;
.super Lcom/netflix/mediaclient/javabridge/invoke/BaseInvoke;
.source "SetConfigData.java"


# static fields
.field private static final DATA:Ljava/lang/String; = "data"

.field private static final METHOD:Ljava/lang/String; = "setConfigData"

.field private static final NAME:Ljava/lang/String; = "name"

.field private static final TAG:Ljava/lang/String; = "SetConfigData"

.field private static final TARGET:Ljava/lang/String; = "nrdp"


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 35
    const-string/jumbo v0, "nrdp"

    const-string/jumbo v1, "setConfigData"

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/javabridge/invoke/BaseInvoke;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 38
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 39
    const-string/jumbo v1, "name"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    const-string/jumbo v1, "data"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/invoke/SetConfigData;->arguments:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :cond_0
    :goto_0
    return-void

    .line 42
    :catch_0
    move-exception v0

    .line 43
    const-string/jumbo v1, "SetConfigData"

    const-string/jumbo v2, "Unable to setConfigData"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
