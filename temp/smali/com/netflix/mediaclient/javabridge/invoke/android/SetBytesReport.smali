.class public Lcom/netflix/mediaclient/javabridge/invoke/android/SetBytesReport;
.super Lcom/netflix/mediaclient/javabridge/invoke/BaseInvoke;
.source "SetBytesReport.java"


# static fields
.field private static final METHOD:Ljava/lang/String; = "setBytesReport"

.field private static final PROPERTY_BYTES_RX:Ljava/lang/String; = "bytesRx"

.field private static final PROPERTY_BYTES_TX:Ljava/lang/String; = "bytesTx"

.field private static final TARGET:Ljava/lang/String; = "android"


# direct methods
.method public constructor <init>(II)V
    .locals 4

    .prologue
    .line 18
    const-string/jumbo v0, "android"

    const-string/jumbo v1, "setBytesReport"

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/javabridge/invoke/BaseInvoke;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 21
    :try_start_0
    const-string/jumbo v0, "bytesRx"

    invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 22
    const-string/jumbo v0, "bytesTx"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 28
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/invoke/android/SetBytesReport;->arguments:Ljava/lang/String;

    .line 29
    return-void

    .line 23
    :catch_0
    move-exception v0

    .line 24
    const-string/jumbo v2, "nf_invoke"

    const-string/jumbo v3, "Failed to create JSON object"

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 25
    :catch_1
    move-exception v0

    .line 26
    const-string/jumbo v2, "nf_invoke"

    const-string/jumbo v3, "Unable to Log WifiLinkSpeed "

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
