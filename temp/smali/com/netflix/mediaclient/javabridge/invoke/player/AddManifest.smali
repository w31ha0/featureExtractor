.class public final Lcom/netflix/mediaclient/javabridge/invoke/player/AddManifest;
.super Lcom/netflix/mediaclient/javabridge/invoke/player/PlayerInvoke;
.source "AddManifest.java"


# static fields
.field protected static final METHOD_ADD_MANIFEST:Ljava/lang/String; = "addManifest"

.field private static final PROPERTY_MANIFEST:Ljava/lang/String; = "manifest"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 19
    const-string/jumbo v0, "addManifest"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/javabridge/invoke/player/PlayerInvoke;-><init>(Ljava/lang/String;)V

    .line 22
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 23
    const-string/jumbo v1, "manifest"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 24
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/invoke/player/AddManifest;->arguments:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :goto_0
    return-void

    .line 25
    :catch_0
    move-exception v0

    .line 26
    const-string/jumbo v1, "nf_invoke"

    const-string/jumbo v2, "Failed to create JSON object"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method
