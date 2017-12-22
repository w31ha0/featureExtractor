.class final Lcom/netflix/model/branches/FalkorKidsCharacter$1;
.super Ljava/lang/Object;
.source "FalkorKidsCharacter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/netflix/model/branches/FalkorVideo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/netflix/model/branches/FalkorVideo;Lcom/netflix/model/branches/FalkorVideo;)I
    .locals 2

    .prologue
    .line 324
    invoke-virtual {p1}, Lcom/netflix/model/branches/FalkorVideo;->getYear()I

    move-result v0

    invoke-virtual {p2}, Lcom/netflix/model/branches/FalkorVideo;->getYear()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 325
    const/4 v0, 0x1

    .line 329
    :goto_0
    return v0

    .line 326
    :cond_0
    invoke-virtual {p1}, Lcom/netflix/model/branches/FalkorVideo;->getYear()I

    move-result v0

    invoke-virtual {p2}, Lcom/netflix/model/branches/FalkorVideo;->getYear()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 327
    const/4 v0, -0x1

    goto :goto_0

    .line 329
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 320
    check-cast p1, Lcom/netflix/model/branches/FalkorVideo;

    check-cast p2, Lcom/netflix/model/branches/FalkorVideo;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/model/branches/FalkorKidsCharacter$1;->compare(Lcom/netflix/model/branches/FalkorVideo;Lcom/netflix/model/branches/FalkorVideo;)I

    move-result v0

    return v0
.end method
