.class public abstract Lcom/netflix/model/leafs/advisory/Advisory;
.super Ljava/lang/Object;
.source "Advisory.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/interface_/JsonMerger;
.implements Lcom/netflix/mediaclient/servicemgr/interface_/JsonPopulator;


# static fields
.field private static final TAG:Ljava/lang/String; = "Advisory"


# instance fields
.field public displayDelay:F

.field public displayDuration:F

.field public timeLocation:Lcom/netflix/model/leafs/advisory/Advisory$DisplayLocation;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    sget-object v0, Lcom/netflix/model/leafs/advisory/Advisory$DisplayLocation;->START:Lcom/netflix/model/leafs/advisory/Advisory$DisplayLocation;

    iput-object v0, p0, Lcom/netflix/model/leafs/advisory/Advisory;->timeLocation:Lcom/netflix/model/leafs/advisory/Advisory$DisplayLocation;

    .line 94
    return-void
.end method

.method public static asList(Lcom/google/gson/JsonArray;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/netflix/model/leafs/advisory/Advisory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 124
    if-eqz p0, :cond_1

    .line 125
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/gson/JsonArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 126
    invoke-virtual {p0, v0}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    .line 129
    const-string/jumbo v3, "type"

    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/netflix/model/leafs/advisory/Advisory$Type;->fromString(Ljava/lang/String;)Lcom/netflix/model/leafs/advisory/Advisory$Type;

    move-result-object v3

    .line 130
    invoke-static {v3, v2}, Lcom/netflix/model/leafs/advisory/Advisory;->make(Lcom/netflix/model/leafs/advisory/Advisory$Type;Lcom/google/gson/JsonObject;)Lcom/netflix/model/leafs/advisory/Advisory;

    move-result-object v2

    .line 131
    if-eqz v2, :cond_0

    .line 132
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    :cond_1
    return-object v1
.end method

.method public static getConcreteInstance(Lcom/netflix/model/leafs/advisory/Advisory$Type;)Lcom/netflix/model/leafs/advisory/Advisory;
    .locals 2

    .prologue
    .line 104
    sget-object v0, Lcom/netflix/model/leafs/advisory/Advisory$1;->$SwitchMap$com$netflix$model$leafs$advisory$Advisory$Type:[I

    invoke-virtual {p0}, Lcom/netflix/model/leafs/advisory/Advisory$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 115
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Advisory ... Unknown Type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :pswitch_0
    new-instance v0, Lcom/netflix/model/leafs/advisory/ProductPlacementAdvisory;

    invoke-direct {v0}, Lcom/netflix/model/leafs/advisory/ProductPlacementAdvisory;-><init>()V

    .line 118
    :goto_0
    return-object v0

    .line 109
    :pswitch_1
    new-instance v0, Lcom/netflix/model/leafs/advisory/ContentAdvisory;

    invoke-direct {v0}, Lcom/netflix/model/leafs/advisory/ContentAdvisory;-><init>()V

    goto :goto_0

    .line 112
    :pswitch_2
    new-instance v0, Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory;

    invoke-direct {v0}, Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory;-><init>()V

    goto :goto_0

    .line 104
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static make(Lcom/netflix/model/leafs/advisory/Advisory$Type;Lcom/google/gson/JsonObject;)Lcom/netflix/model/leafs/advisory/Advisory;
    .locals 1

    .prologue
    .line 97
    invoke-static {p0}, Lcom/netflix/model/leafs/advisory/Advisory;->getConcreteInstance(Lcom/netflix/model/leafs/advisory/Advisory$Type;)Lcom/netflix/model/leafs/advisory/Advisory;

    move-result-object v0

    .line 98
    invoke-virtual {v0, p1}, Lcom/netflix/model/leafs/advisory/Advisory;->populate(Lcom/google/gson/JsonElement;)V

    .line 99
    return-object v0
.end method


# virtual methods
.method public abstract getData(Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonObject;
.end method

.method public getDelay()F
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/netflix/model/leafs/advisory/Advisory;->displayDelay:F

    return v0
.end method

.method public getDuration()F
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/netflix/model/leafs/advisory/Advisory;->displayDuration:F

    return v0
.end method

.method public abstract getMessage(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getSecondaryMessage(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getType()Lcom/netflix/model/leafs/advisory/Advisory$Type;
.end method

.method public populate(Lcom/google/gson/JsonElement;)V
    .locals 5

    .prologue
    .line 141
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 146
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

    .line 148
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    move v0, v2

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 150
    :pswitch_0
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/model/leafs/advisory/Advisory$DisplayLocation;->fromString(Ljava/lang/String;)Lcom/netflix/model/leafs/advisory/Advisory$DisplayLocation;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/advisory/Advisory;->timeLocation:Lcom/netflix/model/leafs/advisory/Advisory$DisplayLocation;

    goto :goto_0

    .line 148
    :sswitch_0
    const-string/jumbo v4, "displayTimeLocation"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v4, "displayDuration"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v4, "displayTimeGap"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v4, "data"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    .line 153
    :pswitch_1
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v0

    iput v0, p0, Lcom/netflix/model/leafs/advisory/Advisory;->displayDuration:F

    goto :goto_0

    .line 156
    :pswitch_2
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v0

    iput v0, p0, Lcom/netflix/model/leafs/advisory/Advisory;->displayDelay:F

    goto :goto_0

    .line 160
    :pswitch_3
    invoke-virtual {p0, v1}, Lcom/netflix/model/leafs/advisory/Advisory;->getData(Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonObject;

    goto :goto_0

    .line 165
    :cond_1
    return-void

    .line 148
    nop

    :sswitch_data_0
    .sparse-switch
        -0x546d6c7c -> :sswitch_0
        0x2eefaa -> :sswitch_3
        0x127b35a7 -> :sswitch_2
        0x4207e876 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public set(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)Z
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x0

    return v0
.end method
