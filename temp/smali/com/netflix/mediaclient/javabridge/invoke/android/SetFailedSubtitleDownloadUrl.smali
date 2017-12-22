.class public Lcom/netflix/mediaclient/javabridge/invoke/android/SetFailedSubtitleDownloadUrl;
.super Lcom/netflix/mediaclient/javabridge/invoke/BaseInvoke;
.source "SetFailedSubtitleDownloadUrl.java"


# static fields
.field private static final METHOD:Ljava/lang/String; = "setFailedSubtitleDownloadUrl"

.field private static final PROPERTY_REASON:Ljava/lang/String; = "reason"

.field private static final PROPERTY_URL:Ljava/lang/String; = "url"

.field private static final TARGET:Ljava/lang/String; = "android"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;)V
    .locals 2

    .prologue
    .line 26
    const-string/jumbo v0, "android"

    const-string/jumbo v1, "setFailedSubtitleDownloadUrl"

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/javabridge/invoke/BaseInvoke;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    const-string/jumbo v0, "nf_invoke"

    const-string/jumbo v1, "Url can not be empty!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    const-string/jumbo p1, ""

    .line 31
    :cond_0
    if-nez p2, :cond_1

    .line 32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Reason can not be empty!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/javabridge/invoke/android/SetFailedSubtitleDownloadUrl;->setArguments(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;)V

    .line 35
    return-void
.end method

.method private setArguments(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;)V
    .locals 3

    .prologue
    .line 41
    .line 44
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 45
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    const-string/jumbo v1, "reason"

    invoke-virtual {p2}, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/invoke/android/SetFailedSubtitleDownloadUrl;->arguments:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 54
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 50
    const-string/jumbo v1, "nf_invoke"

    const-string/jumbo v2, "Failed to create JSON object"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 51
    :catch_1
    move-exception v0

    .line 52
    const-string/jumbo v1, "nf_invoke"

    const-string/jumbo v2, "Unable to Log failed subtitle "

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
