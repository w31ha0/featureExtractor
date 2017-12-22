.class Lcom/netflix/mediaclient/util/PositiveRandom;
.super Ljava/util/Random;
.source "PositiveRandom.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/util/Random;-><init>()V

    return-void
.end method


# virtual methods
.method public nextPositive()I
    .locals 1

    .prologue
    .line 16
    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/util/PositiveRandom;->next(I)I

    move-result v0

    return v0
.end method
