.class public final Lcom/netflix/mediaclient/javabridge/invoke/player/SetStreamingBuffer;
.super Lcom/netflix/mediaclient/javabridge/invoke/player/PlayerInvoke;
.source "SetStreamingBuffer.java"


# static fields
.field protected static final METHOD_SET_STRAMING_BUFFER:Ljava/lang/String; = "setStreamingBuffer"

.field private static final PROPERTY_maxBufferLen:Ljava/lang/String; = "maxBufferLen"

.field private static final PROPERTY_minBufferLen:Ljava/lang/String; = "minBufferLen"

.field private static final PROPERTY_powerSaving:Ljava/lang/String; = "powerSaving"


# direct methods
.method public constructor <init>(ZII)V
    .locals 4

    .prologue
    .line 20
    const-string/jumbo v0, "setStreamingBuffer"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/javabridge/invoke/player/PlayerInvoke;-><init>(Ljava/lang/String;)V

    .line 24
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 25
    const-string/jumbo v1, "powerSaving"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 26
    const-string/jumbo v1, "maxBufferLen"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 27
    const-string/jumbo v1, "minBufferLen"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 28
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/invoke/player/SetStreamingBuffer;->arguments:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :goto_0
    return-void

    .line 29
    :catch_0
    move-exception v0

    .line 30
    const-string/jumbo v1, "nf_invoke"

    const-string/jumbo v2, "Failed to create JSON object"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method
