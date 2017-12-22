.class final Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig$Builder;
.super Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;
.source "AutoValue_RowConfig.java"


# instance fields
.field private adjustStrategy:Ljava/lang/Integer;

.field private aspectRatio:Ljava/lang/Float;

.field private freeScroll:Ljava/lang/Boolean;

.field private itemPadding:Ljava/lang/Integer;

.field private lightTheme:Ljava/lang/Boolean;

.field private listPadding:Ljava/lang/Integer;

.field private maxHeight:Ljava/lang/Integer;

.field private millisecondsPerInch:Ljava/lang/Integer;

.field private numberOfItemsPerPage:Ljava/lang/Integer;

.field private numberOfPagesToScrollOnFling:Ljava/lang/Integer;

.field private peekRatio:Ljava/lang/Float;

.field private recycledViewPool:Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

.field private viewType:Ljava/lang/Integer;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 221
    invoke-direct {p0}, Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;-><init>()V

    .line 222
    return-void
.end method

.method private constructor <init>(Lcom/netflix/android/widgetry/lolomo/RowConfig;)V
    .locals 1

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;-><init>()V

    .line 224
    invoke-virtual {p1}, Lcom/netflix/android/widgetry/lolomo/RowConfig;->numberOfItemsPerPage()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig$Builder;->numberOfItemsPerPage:Ljava/lang/Integer;

    .line 225
    invoke-virtual {p1}, Lcom/netflix/android/widgetry/lolomo/RowConfig;->aspectRatio()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig$Builder;->aspectRatio:Ljava/lang/Float;

    .line 226
    invoke-virtual {p1}, Lcom/netflix/android/widgetry/lolomo/RowConfig;->numberOfPagesToScrollOnFling()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig$Builder;->numberOfPagesToScrollOnFling:Ljava/lang/Integer;

    .line 227
    invoke-virtual {p1}, Lcom/netflix/android/widgetry/lolomo/RowConfig;->millisecondsPerInch()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig$Builder;->millisecondsPerInch:Ljava/lang/Integer;

    .line 228
    invoke-virtual {p1}, Lcom/netflix/android/widgetry/lolomo/RowConfig;->itemPadding()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig$Builder;->itemPadding:Ljava/lang/Integer;

    .line 229
    invoke-virtual {p1}, Lcom/netflix/android/widgetry/lolomo/RowConfig;->listPadding()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig$Builder;->listPadding:Ljava/lang/Integer;

    .line 230
    invoke-virtual {p1}, Lcom/netflix/android/widgetry/lolomo/RowConfig;->peekRatio()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig$Builder;->peekRatio:Ljava/lang/Float;

    .line 231
    invoke-virtual {p1}, Lcom/netflix/android/widgetry/lolomo/RowConfig;->maxHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig$Builder;->maxHeight:Ljava/lang/Integer;

    .line 232
    invoke-virtual {p1}, Lcom/netflix/android/widgetry/lolomo/RowConfig;->recycledViewPool()Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig$Builder;->recycledViewPool:Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    .line 233
    invoke-virtual {p1}, Lcom/netflix/android/widgetry/lolomo/RowConfig;->viewType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig$Builder;->viewType:Ljava/lang/Integer;

    .line 234
    invoke-virtual {p1}, Lcom/netflix/android/widgetry/lolomo/RowConfig;->freeScroll()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig$Builder;->freeScroll:Ljava/lang/Boolean;

    .line 235
    invoke-virtual {p1}, Lcom/netflix/android/widgetry/lolomo/RowConfig;->lightTheme()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig$Builder;->lightTheme:Ljava/lang/Boolean;

    .line 236
    invoke-virtual {p1}, Lcom/netflix/android/widgetry/lolomo/RowConfig;->adjustStrategy()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig$Builder;->adjustStrategy:Ljava/lang/Integer;

    .line 237
    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/android/widgetry/lolomo/RowConfig;Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig$1;)V
    .locals 0

    .prologue
    .line 207
    invoke-direct {p0, p1}, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig$Builder;-><init>(Lcom/netflix/android/widgetry/lolomo/RowConfig;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/netflix/android/widgetry/lolomo/RowConfig;
    .locals 15

    .prologue
    .line 305
    const-string/jumbo v0, ""

    .line 306
    iget-object v1, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig$Builder;->numberOfItemsPerPage:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 307
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " numberOfItemsPerPage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 309
    :cond_0
    iget-object v1, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig$Builder;->aspectRatio:Ljava/lang/Float;

    if-nez v1, :cond_1

    .line 310
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " aspectRatio"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 312
    :cond_1
    iget-object v1, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig$Builder;->numberOfPagesToScrollOnFling:Ljava/lang/Integer;

    if-nez v1, :cond_2

    .line 313
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " numberOfPagesToScrollOnFling"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 315
    :cond_2
    iget-object v1, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig$Builder;->millisecondsPerInch:Ljava/lang/Integer;

    if-nez v1, :cond_3

    .line 316
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " millisecondsPerInch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 318
    :cond_3
    iget-object v1, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig$Builder;->itemPadding:Ljava/lang/Integer;

    if-nez v1, :cond_4

    .line 319
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " itemPadding"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 321
    :cond_4
    iget-object v1, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig$Builder;->listPadding:Ljava/lang/Integer;

    if-nez v1, :cond_5

    .line 322
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " listPadding"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 324
    :cond_5
    iget-object v1, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig$Builder;->peekRatio:Ljava/lang/Float;

    if-nez v1, :cond_6

    .line 325
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " peekRatio"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 327
    :cond_6
    iget-object v1, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig$Builder;->maxHeight:Ljava/lang/Integer;

    if-nez v1, :cond_7

    .line 328
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " maxHeight"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 330
    :cond_7
    iget-object v1, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig$Builder;->viewType:Ljava/lang/Integer;

    if-nez v1, :cond_8

    .line 331
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " viewType"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 333
    :cond_8
    iget-object v1, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig$Builder;->freeScroll:Ljava/lang/Boolean;

    if-nez v1, :cond_9

    .line 334
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " freeScroll"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 336
    :cond_9
    iget-object v1, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig$Builder;->lightTheme:Ljava/lang/Boolean;

    if-nez v1, :cond_a

    .line 337
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " lightTheme"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 339
    :cond_a
    iget-object v1, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig$Builder;->adjustStrategy:Ljava/lang/Integer;

    if-nez v1, :cond_b

    .line 340
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " adjustStrategy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 342
    :cond_b
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c

    .line 343
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Missing required properties:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 345
    :cond_c
    new-instance v0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig;

    iget-object v1, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig$Builder;->numberOfItemsPerPage:Ljava/lang/Integer;

    .line 346
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig$Builder;->aspectRatio:Ljava/lang/Float;

    .line 347
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v3, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig$Builder;->numberOfPagesToScrollOnFling:Ljava/lang/Integer;

    .line 348
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig$Builder;->millisecondsPerInch:Ljava/lang/Integer;

    .line 349
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig$Builder;->itemPadding:Ljava/lang/Integer;

    .line 350
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig$Builder;->listPadding:Ljava/lang/Integer;

    .line 351
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig$Builder;->peekRatio:Ljava/lang/Float;

    .line 352
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    iget-object v8, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig$Builder;->maxHeight:Ljava/lang/Integer;

    .line 353
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v9, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig$Builder;->recycledViewPool:Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    iget-object v10, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig$Builder;->viewType:Ljava/lang/Integer;

    .line 355
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v11, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig$Builder;->freeScroll:Ljava/lang/Boolean;

    .line 356
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    iget-object v12, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig$Builder;->lightTheme:Ljava/lang/Boolean;

    .line 357
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    iget-object v13, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig$Builder;->adjustStrategy:Ljava/lang/Integer;

    .line 358
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/4 v14, 0x0

    invoke-direct/range {v0 .. v14}, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig;-><init>(IFIIIIFILandroid/support/v7/widget/RecyclerView$RecycledViewPool;IZZILcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig$1;)V

    .line 345
    return-object v0
.end method

.method public setAdjustStrategy(I)Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;
    .locals 1

    .prologue
    .line 300
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig$Builder;->adjustStrategy:Ljava/lang/Integer;

    .line 301
    return-object p0
.end method

.method public setAspectRatio(F)Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;
    .locals 1

    .prologue
    .line 245
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig$Builder;->aspectRatio:Ljava/lang/Float;

    .line 246
    return-object p0
.end method

.method public setFreeScroll(Z)Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;
    .locals 1

    .prologue
    .line 290
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig$Builder;->freeScroll:Ljava/lang/Boolean;

    .line 291
    return-object p0
.end method

.method public setItemPadding(I)Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;
    .locals 1

    .prologue
    .line 260
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig$Builder;->itemPadding:Ljava/lang/Integer;

    .line 261
    return-object p0
.end method

.method public setLightTheme(Z)Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;
    .locals 1

    .prologue
    .line 295
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig$Builder;->lightTheme:Ljava/lang/Boolean;

    .line 296
    return-object p0
.end method

.method public setListPadding(I)Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;
    .locals 1

    .prologue
    .line 265
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig$Builder;->listPadding:Ljava/lang/Integer;

    .line 266
    return-object p0
.end method

.method public setMaxHeight(I)Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;
    .locals 1

    .prologue
    .line 275
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig$Builder;->maxHeight:Ljava/lang/Integer;

    .line 276
    return-object p0
.end method

.method public setMillisecondsPerInch(I)Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;
    .locals 1

    .prologue
    .line 255
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig$Builder;->millisecondsPerInch:Ljava/lang/Integer;

    .line 256
    return-object p0
.end method

.method public setNumberOfItemsPerPage(I)Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;
    .locals 1

    .prologue
    .line 240
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig$Builder;->numberOfItemsPerPage:Ljava/lang/Integer;

    .line 241
    return-object p0
.end method

.method public setNumberOfPagesToScrollOnFling(I)Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;
    .locals 1

    .prologue
    .line 250
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig$Builder;->numberOfPagesToScrollOnFling:Ljava/lang/Integer;

    .line 251
    return-object p0
.end method

.method public setPeekRatio(F)Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;
    .locals 1

    .prologue
    .line 270
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig$Builder;->peekRatio:Ljava/lang/Float;

    .line 271
    return-object p0
.end method

.method public setRecycledViewPool(Landroid/support/v7/widget/RecyclerView$RecycledViewPool;)Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig$Builder;->recycledViewPool:Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    .line 281
    return-object p0
.end method

.method public setViewType(I)Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;
    .locals 1

    .prologue
    .line 285
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig$Builder;->viewType:Ljava/lang/Integer;

    .line 286
    return-object p0
.end method
