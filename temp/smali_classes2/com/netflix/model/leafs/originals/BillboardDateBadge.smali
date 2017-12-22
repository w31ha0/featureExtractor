.class public Lcom/netflix/model/leafs/originals/BillboardDateBadge;
.super Lcom/netflix/model/leafs/originals/AbstractBillboardAsset;
.source "BillboardDateBadge.java"


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/core/JsonParser;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/netflix/model/leafs/originals/AbstractBillboardAsset;-><init>(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Lcom/google/gson/JsonElement;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/netflix/model/leafs/originals/AbstractBillboardAsset;-><init>(Lcom/google/gson/JsonElement;)V

    .line 22
    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    const-string/jumbo v0, "DateBadge"

    return-object v0
.end method
