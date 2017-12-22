.class final Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig;
.super Lcom/netflix/android/widgetry/lolomo/RowConfig;
.source "AutoValue_RowConfig.java"


# instance fields
.field private final adjustStrategy:I

.field private final aspectRatio:F

.field private final freeScroll:Z

.field private final itemPadding:I

.field private final lightTheme:Z

.field private final listPadding:I

.field private final maxHeight:I

.field private final millisecondsPerInch:I

.field private final numberOfItemsPerPage:I

.field private final numberOfPagesToScrollOnFling:I

.field private final peekRatio:F

.field private final recycledViewPool:Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

.field private final viewType:I


# direct methods
.method private constructor <init>(IFIIIIFILandroid/support/v7/widget/RecyclerView$RecycledViewPool;IZZI)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/netflix/android/widgetry/lolomo/RowConfig;-><init>()V

    .line 40
    iput p1, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig;->numberOfItemsPerPage:I

    .line 41
    iput p2, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig;->aspectRatio:F

    .line 42
    iput p3, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig;->numberOfPagesToScrollOnFling:I

    .line 43
    iput p4, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig;->millisecondsPerInch:I

    .line 44
    iput p5, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig;->itemPadding:I

    .line 45
    iput p6, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig;->listPadding:I

    .line 46
    iput p7, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig;->peekRatio:F

    .line 47
    iput p8, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig;->maxHeight:I

    .line 48
    iput-object p9, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig;->recycledViewPool:Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    .line 49
    iput p10, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig;->viewType:I

    .line 50
    iput-boolean p11, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig;->freeScroll:Z

    .line 51
    iput-boolean p12, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig;->lightTheme:Z

    .line 52
    iput p13, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig;->adjustStrategy:I

    .line 53
    return-void
.end method

.method synthetic constructor <init>(IFIIIIFILandroid/support/v7/widget/RecyclerView$RecycledViewPool;IZZILcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig$1;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct/range {p0 .. p13}, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig;-><init>(IFIIIIFILandroid/support/v7/widget/RecyclerView$RecycledViewPool;IZZI)V

    return-void
.end method


# virtual methods
.method public adjustStrategy()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig;->adjustStrategy:I

    return v0
.end method

.method public aspectRatio()F
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig;->aspectRatio:F

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 148
    if-ne p1, p0, :cond_1

    .line 167
    :cond_0
    :goto_0
    return v0

    .line 151
    :cond_1
    instance-of v2, p1, Lcom/netflix/android/widgetry/lolomo/RowConfig;

    if-eqz v2, :cond_4

    .line 152
    check-cast p1, Lcom/netflix/android/widgetry/lolomo/RowConfig;

    .line 153
    iget v2, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig;->numberOfItemsPerPage:I

    invoke-virtual {p1}, Lcom/netflix/android/widgetry/lolomo/RowConfig;->numberOfItemsPerPage()I

    move-result v3

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig;->aspectRatio:F

    .line 154
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    invoke-virtual {p1}, Lcom/netflix/android/widgetry/lolomo/RowConfig;->aspectRatio()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig;->numberOfPagesToScrollOnFling:I

    .line 155
    invoke-virtual {p1}, Lcom/netflix/android/widgetry/lolomo/RowConfig;->numberOfPagesToScrollOnFling()I

    move-result v3

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig;->millisecondsPerInch:I

    .line 156
    invoke-virtual {p1}, Lcom/netflix/android/widgetry/lolomo/RowConfig;->millisecondsPerInch()I

    move-result v3

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig;->itemPadding:I

    .line 157
    invoke-virtual {p1}, Lcom/netflix/android/widgetry/lolomo/RowConfig;->itemPadding()I

    move-result v3

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig;->listPadding:I

    .line 158
    invoke-virtual {p1}, Lcom/netflix/android/widgetry/lolomo/RowConfig;->listPadding()I

    move-result v3

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig;->peekRatio:F

    .line 159
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    invoke-virtual {p1}, Lcom/netflix/android/widgetry/lolomo/RowConfig;->peekRatio()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig;->maxHeight:I

    .line 160
    invoke-virtual {p1}, Lcom/netflix/android/widgetry/lolomo/RowConfig;->maxHeight()I

    move-result v3

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig;->recycledViewPool:Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    if-nez v2, :cond_3

    .line 161
    invoke-virtual {p1}, Lcom/netflix/android/widgetry/lolomo/RowConfig;->recycledViewPool()Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    move-result-object v2

    if-nez v2, :cond_2

    :goto_1
    iget v2, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig;->viewType:I

    .line 162
    invoke-virtual {p1}, Lcom/netflix/android/widgetry/lolomo/RowConfig;->viewType()I

    move-result v3

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig;->freeScroll:Z

    .line 163
    invoke-virtual {p1}, Lcom/netflix/android/widgetry/lolomo/RowConfig;->freeScroll()Z

    move-result v3

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig;->lightTheme:Z

    .line 164
    invoke-virtual {p1}, Lcom/netflix/android/widgetry/lolomo/RowConfig;->lightTheme()Z

    move-result v3

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig;->adjustStrategy:I

    .line 165
    invoke-virtual {p1}, Lcom/netflix/android/widgetry/lolomo/RowConfig;->adjustStrategy()I

    move-result v3

    if-eq v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto/16 :goto_0

    .line 161
    :cond_3
    iget-object v2, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig;->recycledViewPool:Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    invoke-virtual {p1}, Lcom/netflix/android/widgetry/lolomo/RowConfig;->recycledViewPool()Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_4
    move v0, v1

    .line 167
    goto/16 :goto_0
.end method

.method public freeScroll()Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig;->freeScroll:Z

    return v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/16 v2, 0x4d5

    const/16 v1, 0x4cf

    const v4, 0xf4243

    .line 172
    .line 174
    iget v0, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig;->numberOfItemsPerPage:I

    xor-int/2addr v0, v4

    .line 175
    mul-int/2addr v0, v4

    .line 176
    iget v3, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig;->aspectRatio:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    xor-int/2addr v0, v3

    .line 177
    mul-int/2addr v0, v4

    .line 178
    iget v3, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig;->numberOfPagesToScrollOnFling:I

    xor-int/2addr v0, v3

    .line 179
    mul-int/2addr v0, v4

    .line 180
    iget v3, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig;->millisecondsPerInch:I

    xor-int/2addr v0, v3

    .line 181
    mul-int/2addr v0, v4

    .line 182
    iget v3, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig;->itemPadding:I

    xor-int/2addr v0, v3

    .line 183
    mul-int/2addr v0, v4

    .line 184
    iget v3, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig;->listPadding:I

    xor-int/2addr v0, v3

    .line 185
    mul-int/2addr v0, v4

    .line 186
    iget v3, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig;->peekRatio:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    xor-int/2addr v0, v3

    .line 187
    mul-int/2addr v0, v4

    .line 188
    iget v3, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig;->maxHeight:I

    xor-int/2addr v0, v3

    .line 189
    mul-int v3, v0, v4

    .line 190
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig;->recycledViewPool:Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    xor-int/2addr v0, v3

    .line 191
    mul-int/2addr v0, v4

    .line 192
    iget v3, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig;->viewType:I

    xor-int/2addr v0, v3

    .line 193
    mul-int v3, v0, v4

    .line 194
    iget-boolean v0, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig;->freeScroll:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    xor-int/2addr v0, v3

    .line 195
    mul-int/2addr v0, v4

    .line 196
    iget-boolean v3, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig;->lightTheme:Z

    if-eqz v3, :cond_2

    :goto_2
    xor-int/2addr v0, v1

    .line 197
    mul-int/2addr v0, v4

    .line 198
    iget v1, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig;->adjustStrategy:I

    xor-int/2addr v0, v1

    .line 199
    return v0

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig;->recycledViewPool:Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    .line 194
    goto :goto_1

    :cond_2
    move v1, v2

    .line 196
    goto :goto_2
.end method

.method public itemPadding()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig;->itemPadding:I

    return v0
.end method

.method public lightTheme()Z
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig;->lightTheme:Z

    return v0
.end method

.method public listPadding()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig;->listPadding:I

    return v0
.end method

.method public maxHeight()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig;->maxHeight:I

    return v0
.end method

.method public millisecondsPerInch()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig;->millisecondsPerInch:I

    return v0
.end method

.method public numberOfItemsPerPage()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig;->numberOfItemsPerPage:I

    return v0
.end method

.method public numberOfPagesToScrollOnFling()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig;->numberOfPagesToScrollOnFling:I

    return v0
.end method

.method public peekRatio()F
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig;->peekRatio:F

    return v0
.end method

.method public recycledViewPool()Landroid/support/v7/widget/RecyclerView$RecycledViewPool;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig;->recycledViewPool:Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    return-object v0
.end method

.method protected toBuilder()Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;
    .locals 2

    .prologue
    .line 204
    new-instance v0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig$Builder;-><init>(Lcom/netflix/android/widgetry/lolomo/RowConfig;Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig$1;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "RowConfig{numberOfItemsPerPage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig;->numberOfItemsPerPage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", aspectRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig;->aspectRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", numberOfPagesToScrollOnFling="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig;->numberOfPagesToScrollOnFling:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", millisecondsPerInch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig;->millisecondsPerInch:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", itemPadding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig;->itemPadding:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", listPadding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig;->listPadding:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", peekRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig;->peekRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", maxHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig;->maxHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", recycledViewPool="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig;->recycledViewPool:Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", viewType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig;->viewType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", freeScroll="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig;->freeScroll:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", lightTheme="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig;->lightTheme:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", adjustStrategy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig;->adjustStrategy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public viewType()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig;->viewType:I

    return v0
.end method
