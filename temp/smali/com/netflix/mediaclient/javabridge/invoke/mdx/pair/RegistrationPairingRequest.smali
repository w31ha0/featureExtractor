.class public Lcom/netflix/mediaclient/javabridge/invoke/mdx/pair/RegistrationPairingRequest;
.super Lcom/netflix/mediaclient/javabridge/invoke/BaseInvoke;
.source "RegistrationPairingRequest.java"


# static fields
.field private static final METHOD:Ljava/lang/String; = "regPairRequest"

.field private static final PROPERTY_pin:Ljava/lang/String; = "pin"

.field private static final PROPERTY_remotedevice:Ljava/lang/String; = "remotedevice"

.field private static final TARGET:Ljava/lang/String; = "mdx"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 34
    const-string/jumbo v0, "mdx"

    const-string/jumbo v1, "regPairRequest"

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/javabridge/invoke/BaseInvoke;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/javabridge/invoke/mdx/pair/RegistrationPairingRequest;->setArguments(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method private setArguments(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 43
    .line 46
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 47
    const-string/jumbo v1, "remotedevice"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    if-eqz p2, :cond_0

    .line 49
    const-string/jumbo v1, "pin"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/invoke/mdx/pair/RegistrationPairingRequest;->arguments:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    const-string/jumbo v1, "nf_invoke"

    const-string/jumbo v2, "Failed to create JSON object"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
