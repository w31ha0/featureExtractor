.class public Lcom/netflix/mediaclient/javabridge/invoke/android/SendSubtitleQoe;
.super Lcom/netflix/mediaclient/javabridge/invoke/BaseInvoke;
.source "SendSubtitleQoe.java"


# static fields
.field private static final METHOD:Ljava/lang/String; = "sendSubtitleQoe"

.field private static final PROPERTY_DOWNLOADABLE_ID:Ljava/lang/String; = "dlid"

.field private static final PROPERTY_EXPECTED:Ljava/lang/String; = "expected"

.field private static final PROPERTY_MISSED:Ljava/lang/String; = "missed"

.field private static final TARGET:Ljava/lang/String; = "android"


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 2

    .prologue
    .line 32
    const-string/jumbo v0, "android"

    const-string/jumbo v1, "sendSubtitleQoe"

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/javabridge/invoke/BaseInvoke;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/javabridge/invoke/android/SendSubtitleQoe;->setArguments(Ljava/lang/String;II)V

    .line 34
    return-void
.end method

.method private setArguments(Ljava/lang/String;II)V
    .locals 3

    .prologue
    .line 40
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    :goto_0
    return-void

    .line 44
    :cond_0
    sub-int v0, p2, p3

    .line 52
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 53
    const-string/jumbo v2, "dlid"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    const-string/jumbo v2, "expected"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 55
    const-string/jumbo v2, "missed"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 57
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/invoke/android/SendSubtitleQoe;->arguments:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    const-string/jumbo v1, "nf_invoke"

    const-string/jumbo v2, "Failed to create JSON object"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 65
    :catch_1
    move-exception v0

    .line 66
    const-string/jumbo v1, "nf_invoke"

    const-string/jumbo v2, "Unable to log subtitle QOE"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
