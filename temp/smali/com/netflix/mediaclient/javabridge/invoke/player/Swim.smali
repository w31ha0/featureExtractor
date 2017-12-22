.class public Lcom/netflix/mediaclient/javabridge/invoke/player/Swim;
.super Lcom/netflix/mediaclient/javabridge/invoke/player/PlayerInvoke;
.source "Swim.java"


# static fields
.field private static final METHOD:Ljava/lang/String; = "swim"

.field private static final PROPERTY_absolute:Ljava/lang/String; = "absolute"

.field private static final PROPERTY_allowRebuffer:Ljava/lang/String; = "allowRebuffer"

.field private static final PROPERTY_forceRebuffer:Ljava/lang/String; = "forceRebuffer"

.field private static final PROPERTY_fuzz:Ljava/lang/String; = "fuzz"

.field private static final PROPERTY_pts:Ljava/lang/String; = "pts"


# direct methods
.method public constructor <init>(I)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 61
    const-string/jumbo v0, "swim"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/javabridge/invoke/player/PlayerInvoke;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move v1, p1

    move v4, v2

    move v5, v3

    .line 62
    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/javabridge/invoke/player/Swim;->setArguments(IZIZZ)V

    .line 63
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 72
    const-string/jumbo v0, "swim"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/javabridge/invoke/player/PlayerInvoke;-><init>(Ljava/lang/String;)V

    .line 73
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v4, v2

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/javabridge/invoke/player/Swim;->setArguments(IZIZZ)V

    .line 74
    return-void
.end method

.method public constructor <init>(IZIZ)V
    .locals 6

    .prologue
    .line 91
    const-string/jumbo v0, "swim"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/javabridge/invoke/player/PlayerInvoke;-><init>(Ljava/lang/String;)V

    .line 92
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/javabridge/invoke/player/Swim;->setArguments(IZIZZ)V

    .line 93
    return-void
.end method

.method public constructor <init>(IZIZZ)V
    .locals 1

    .prologue
    .line 112
    const-string/jumbo v0, "swim"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/javabridge/invoke/player/PlayerInvoke;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-direct/range {p0 .. p5}, Lcom/netflix/mediaclient/javabridge/invoke/player/Swim;->setArguments(IZIZZ)V

    .line 114
    return-void
.end method

.method private setArguments(IZIZZ)V
    .locals 3

    .prologue
    .line 121
    .line 124
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 125
    const-string/jumbo v1, "pts"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 126
    const-string/jumbo v1, "absolute"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 127
    const-string/jumbo v1, "fuzz"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 128
    const-string/jumbo v1, "allowRebuffer"

    invoke-virtual {v0, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 129
    const-string/jumbo v1, "forceRebuffer"

    invoke-virtual {v0, v1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 130
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/invoke/player/Swim;->arguments:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :goto_0
    return-void

    .line 132
    :catch_0
    move-exception v0

    .line 133
    const-string/jumbo v1, "nf_invoke"

    const-string/jumbo v2, "Failed to create JSON object"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
