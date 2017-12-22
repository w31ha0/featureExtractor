.class public Lcom/netflix/mediaclient/javabridge/invoke/mdx/pair/PairingRequest;
.super Lcom/netflix/mediaclient/javabridge/invoke/BaseInvoke;
.source "PairingRequest.java"


# static fields
.field private static final METHOD:Ljava/lang/String; = "pairingRequest"

.field private static final PROPERTY_uuid:Ljava/lang/String; = "uuid"

.field private static final TARGET:Ljava/lang/String; = "mdx"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 35
    const-string/jumbo v0, "mdx"

    const-string/jumbo v1, "pairingRequest"

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/javabridge/invoke/BaseInvoke;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/javabridge/invoke/mdx/pair/PairingRequest;->setArguments(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method private setArguments(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 44
    .line 47
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 48
    const-string/jumbo v1, "uuid"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/invoke/mdx/pair/PairingRequest;->arguments:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 52
    const-string/jumbo v1, "nf_invoke"

    const-string/jumbo v2, "Failed to create JSON object"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
