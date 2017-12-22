.class public final Lcom/netflix/mediaclient/javabridge/invoke/player/ExternalIpAddressChange;
.super Lcom/netflix/mediaclient/javabridge/invoke/player/PlayerInvoke;
.source "ExternalIpAddressChange.java"


# static fields
.field protected static final METHOD_EXTERNAL_IPADRESS_CHANGE:Ljava/lang/String; = "externalIpAddressChange"

.field private static final PROPERTY_IPADDRESS:Ljava/lang/String; = "ipaddr"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 17
    const-string/jumbo v0, "externalIpAddressChange"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/javabridge/invoke/player/PlayerInvoke;-><init>(Ljava/lang/String;)V

    .line 20
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 21
    const-string/jumbo v1, "ipaddr"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/invoke/player/ExternalIpAddressChange;->arguments:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :goto_0
    return-void

    .line 23
    :catch_0
    move-exception v0

    .line 24
    const-string/jumbo v1, "nf_invoke"

    const-string/jumbo v2, "Failed to create JSON object"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method
