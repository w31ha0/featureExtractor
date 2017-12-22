.class public Lcom/netflix/mediaclient/javabridge/invoke/android/SetServerTime;
.super Lcom/netflix/mediaclient/javabridge/invoke/BaseInvoke;
.source "SetServerTime.java"


# static fields
.field private static final METHOD:Ljava/lang/String; = "setServerTime"

.field private static final PROPERTY_TIME:Ljava/lang/String; = "time"

.field private static final TAG:Ljava/lang/String; = "SetServerTime"

.field private static final TARGET:Ljava/lang/String; = "nrdp"


# direct methods
.method public constructor <init>(J)V
    .locals 3

    .prologue
    .line 27
    const-string/jumbo v0, "nrdp"

    const-string/jumbo v1, "setServerTime"

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/javabridge/invoke/BaseInvoke;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/javabridge/invoke/android/SetServerTime;->setArguments(J)V

    .line 29
    return-void
.end method

.method private setArguments(J)V
    .locals 3

    .prologue
    .line 35
    .line 38
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 39
    const-string/jumbo v1, "time"

    invoke-virtual {v0, v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 40
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/invoke/android/SetServerTime;->arguments:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :goto_0
    return-void

    .line 42
    :catch_0
    move-exception v0

    .line 43
    const-string/jumbo v1, "SetServerTime"

    const-string/jumbo v2, "Failed to create JSON object"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
