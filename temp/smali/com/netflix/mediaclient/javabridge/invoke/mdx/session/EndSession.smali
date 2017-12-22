.class public Lcom/netflix/mediaclient/javabridge/invoke/mdx/session/EndSession;
.super Lcom/netflix/mediaclient/javabridge/invoke/BaseInvoke;
.source "EndSession.java"


# static fields
.field public static final METHOD:Ljava/lang/String; = "endSession"

.field public static final PROPERTY_sessionId:Ljava/lang/String; = "sid"

.field private static final TARGET:Ljava/lang/String; = "mdx"


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .prologue
    .line 33
    const-string/jumbo v0, "mdx"

    const-string/jumbo v1, "endSession"

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/javabridge/invoke/BaseInvoke;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/javabridge/invoke/mdx/session/EndSession;->setArguments(I)V

    .line 35
    return-void
.end method

.method private setArguments(I)V
    .locals 3

    .prologue
    .line 42
    .line 45
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 46
    const-string/jumbo v1, "sid"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 47
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/invoke/mdx/session/EndSession;->arguments:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
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
.end method
