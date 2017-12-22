.class public Lcom/netflix/model/leafs/PostPlayAsset;
.super Ljava/lang/Object;
.source "PostPlayAsset.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/interface_/JsonMerger;
.implements Lcom/netflix/mediaclient/servicemgr/interface_/JsonPopulator;


# static fields
.field private static final TAG:Ljava/lang/String; = "PostPlayAsset"


# instance fields
.field private assetType:Ljava/lang/String;

.field private height:I

.field private isBadged:Z

.field private tone:Lcom/netflix/model/leafs/PostPlayAsset$Tone;

.field private type:Lcom/netflix/model/leafs/PostPlayAsset$Type;

.field private url:Ljava/lang/String;

.field private width:I


# direct methods
.method public constructor <init>(Lcom/netflix/model/leafs/PostPlayAsset$Type;)V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/netflix/model/leafs/PostPlayAsset;-><init>(Lcom/netflix/model/leafs/PostPlayAsset$Type;Lcom/google/gson/JsonElement;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/netflix/model/leafs/PostPlayAsset$Type;Lcom/google/gson/JsonElement;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput v0, p0, Lcom/netflix/model/leafs/PostPlayAsset;->width:I

    .line 35
    iput v0, p0, Lcom/netflix/model/leafs/PostPlayAsset;->height:I

    .line 36
    iput-boolean v0, p0, Lcom/netflix/model/leafs/PostPlayAsset;->isBadged:Z

    .line 44
    iput-object p1, p0, Lcom/netflix/model/leafs/PostPlayAsset;->type:Lcom/netflix/model/leafs/PostPlayAsset$Type;

    .line 45
    if-eqz p2, :cond_0

    .line 46
    invoke-virtual {p0, p2}, Lcom/netflix/model/leafs/PostPlayAsset;->populate(Lcom/google/gson/JsonElement;)V

    .line 48
    :cond_0
    return-void
.end method


# virtual methods
.method public getAssetType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayAsset;->assetType:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/netflix/model/leafs/PostPlayAsset;->height:I

    return v0
.end method

.method public getTone()Lcom/netflix/model/leafs/PostPlayAsset$Tone;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayAsset;->tone:Lcom/netflix/model/leafs/PostPlayAsset$Tone;

    return-object v0
.end method

.method public getType()Lcom/netflix/model/leafs/PostPlayAsset$Type;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayAsset;->type:Lcom/netflix/model/leafs/PostPlayAsset$Type;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayAsset;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/netflix/model/leafs/PostPlayAsset;->width:I

    return v0
.end method

.method public isBadged()Z
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/netflix/model/leafs/PostPlayAsset;->isBadged:Z

    return v0
.end method

.method public populate(Lcom/google/gson/JsonElement;)V
    .locals 5

    .prologue
    .line 58
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 63
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

    .line 64
    instance-of v2, v1, Lcom/google/gson/JsonNull;

    if-nez v2, :cond_0

    .line 65
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_1
    move v0, v2

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 66
    :pswitch_0
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/PostPlayAsset;->url:Ljava/lang/String;

    goto :goto_0

    .line 65
    :sswitch_0
    const-string/jumbo v4, "url"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v4, "assetType"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v4, "width"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v4, "height"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_4
    const-string/jumbo v4, "isBadged"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_5
    const-string/jumbo v4, "tone"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    goto :goto_1

    .line 67
    :pswitch_1
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/PostPlayAsset;->assetType:Ljava/lang/String;

    goto :goto_0

    .line 68
    :pswitch_2
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    iput v0, p0, Lcom/netflix/model/leafs/PostPlayAsset;->width:I

    goto :goto_0

    .line 69
    :pswitch_3
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    iput v0, p0, Lcom/netflix/model/leafs/PostPlayAsset;->height:I

    goto/16 :goto_0

    .line 70
    :pswitch_4
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/model/leafs/PostPlayAsset;->isBadged:Z

    goto/16 :goto_0

    .line 71
    :pswitch_5
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/netflix/model/leafs/PostPlayAsset$Tone;->DARK:Lcom/netflix/model/leafs/PostPlayAsset$Tone;

    invoke-virtual {v1}, Lcom/netflix/model/leafs/PostPlayAsset$Tone;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/netflix/model/leafs/PostPlayAsset$Tone;->DARK:Lcom/netflix/model/leafs/PostPlayAsset$Tone;

    :goto_2
    iput-object v0, p0, Lcom/netflix/model/leafs/PostPlayAsset;->tone:Lcom/netflix/model/leafs/PostPlayAsset$Tone;

    goto/16 :goto_0

    :cond_2
    sget-object v0, Lcom/netflix/model/leafs/PostPlayAsset$Tone;->LIGHT:Lcom/netflix/model/leafs/PostPlayAsset$Tone;

    goto :goto_2

    .line 74
    :cond_3
    return-void

    .line 65
    :sswitch_data_0
    .sparse-switch
        -0x48c76ed9 -> :sswitch_3
        -0x2b123515 -> :sswitch_4
        0x1c56f -> :sswitch_0
        0x366972 -> :sswitch_5
        0x6be2dc6 -> :sswitch_2
        0x4e65f64a -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public set(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)Z
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public setAssetType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/netflix/model/leafs/PostPlayAsset;->assetType:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setBadged(Z)V
    .locals 0

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/netflix/model/leafs/PostPlayAsset;->isBadged:Z

    .line 123
    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .prologue
    .line 114
    iput p1, p0, Lcom/netflix/model/leafs/PostPlayAsset;->height:I

    .line 115
    return-void
.end method

.method public setTone(Lcom/netflix/model/leafs/PostPlayAsset$Tone;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/netflix/model/leafs/PostPlayAsset;->tone:Lcom/netflix/model/leafs/PostPlayAsset$Tone;

    .line 131
    return-void
.end method

.method public setType(Lcom/netflix/model/leafs/PostPlayAsset$Type;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/netflix/model/leafs/PostPlayAsset;->type:Lcom/netflix/model/leafs/PostPlayAsset$Type;

    .line 83
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/netflix/model/leafs/PostPlayAsset;->url:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .prologue
    .line 106
    iput p1, p0, Lcom/netflix/model/leafs/PostPlayAsset;->width:I

    .line 107
    return-void
.end method
