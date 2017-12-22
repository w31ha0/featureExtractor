.class public Lcom/netflix/model/leafs/originals/BillboardStackedLogo;
.super Lcom/netflix/model/leafs/originals/AbstractBillboardAsset;
.source "BillboardStackedLogo.java"


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/core/JsonParser;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/netflix/model/leafs/originals/AbstractBillboardAsset;-><init>(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/google/gson/JsonElement;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/netflix/model/leafs/originals/AbstractBillboardAsset;-><init>(Lcom/google/gson/JsonElement;)V

    .line 24
    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    const-string/jumbo v0, "StackedLogo"

    return-object v0
.end method
