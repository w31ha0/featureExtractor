.class public Lcom/netflix/mediaclient/util/MathUtils$Range;
.super Ljava/lang/Object;
.source "MathUtils.java"


# instance fields
.field private final end:I

.field private final midpoint:I

.field private final start:I


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lcom/netflix/mediaclient/util/MathUtils$Range;->start:I

    .line 30
    iput p2, p0, Lcom/netflix/mediaclient/util/MathUtils$Range;->end:I

    .line 31
    add-int v0, p1, p2

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/MathUtils;->divideIntsWithRounding(II)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/util/MathUtils$Range;->midpoint:I

    .line 32
    return-void
.end method


# virtual methods
.method public contains(I)Z
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/netflix/mediaclient/util/MathUtils$Range;->start:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/netflix/mediaclient/util/MathUtils$Range;->end:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMidpoint()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/netflix/mediaclient/util/MathUtils$Range;->midpoint:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Range [start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/util/MathUtils$Range;->start:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/util/MathUtils$Range;->end:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
