.class public Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory;
.super Lcom/netflix/model/leafs/advisory/Advisory;
.source "ExpiringContentAdvisory.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ParcelCreator"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ExpiryAdvisory"


# instance fields
.field public expirationTime:J

.field public localizedDate:Ljava/lang/String;

.field private type:Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory$ContentType;

.field public videoId:J

.field public willExpire:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/netflix/model/leafs/advisory/Advisory;-><init>()V

    .line 75
    sget-object v0, Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory$ContentType;->SEASON:Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory$ContentType;

    iput-object v0, p0, Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory;->type:Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory$ContentType;

    .line 107
    return-void
.end method


# virtual methods
.method public getData(Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonObject;
    .locals 6

    .prologue
    .line 116
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    .line 120
    invoke-virtual {v3}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 121
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

    .line 122
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    move v0, v2

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 123
    :pswitch_0
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory;->videoId:J

    goto :goto_0

    .line 122
    :sswitch_0
    const-string/jumbo v5, "video"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v5, "willExpire"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v5, "type"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v5, "expirationTime"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_4
    const-string/jumbo v5, "localizedDate"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    .line 124
    :pswitch_1
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory;->willExpire:Z

    goto :goto_0

    .line 125
    :pswitch_2
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory$ContentType;->valueOf(Ljava/lang/String;)Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory$ContentType;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory;->type:Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory$ContentType;

    goto :goto_0

    .line 126
    :pswitch_3
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory;->expirationTime:J

    goto :goto_0

    .line 127
    :pswitch_4
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory;->localizedDate:Ljava/lang/String;

    goto/16 :goto_0

    .line 130
    :cond_1
    return-object v3

    .line 122
    nop

    :sswitch_data_0
    .sparse-switch
        -0x27d5dde4 -> :sswitch_3
        -0x11d0c6f -> :sswitch_1
        0x368f3a -> :sswitch_2
        0x6b0147b -> :sswitch_0
        0x297ff1c9 -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getMessage(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 83
    sget-object v0, Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory$1;->$SwitchMap$com$netflix$model$leafs$advisory$ExpiringContentAdvisory$ContentType:[I

    iget-object v1, p0, Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory;->type:Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory$ContentType;

    invoke-virtual {v1}, Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory$ContentType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 94
    const v0, 0x7f090091

    .line 97
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory;->localizedDate:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 85
    :pswitch_0
    const v0, 0x7f090093

    .line 86
    goto :goto_0

    .line 88
    :pswitch_1
    const v0, 0x7f090094

    .line 89
    goto :goto_0

    .line 91
    :pswitch_2
    const v0, 0x7f090092

    .line 92
    goto :goto_0

    .line 83
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getSecondaryMessage(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()Lcom/netflix/model/leafs/advisory/Advisory$Type;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lcom/netflix/model/leafs/advisory/Advisory$Type;->EXPIRY_NOTICE:Lcom/netflix/model/leafs/advisory/Advisory$Type;

    return-object v0
.end method
