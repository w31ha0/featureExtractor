.class Lcom/netflix/android/org/json/zip/TrieKeep;
.super Lcom/netflix/android/org/json/zip/Keep;
.source "TrieKeep.java"


# instance fields
.field private froms:[I

.field private kims:[Lcom/netflix/android/org/json/Kim;

.field private root:Lcom/netflix/android/org/json/zip/TrieKeep$Node;

.field private thrus:[I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 185
    invoke-direct {p0, p1}, Lcom/netflix/android/org/json/zip/Keep;-><init>(I)V

    .line 186
    iget v0, p0, Lcom/netflix/android/org/json/zip/TrieKeep;->capacity:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/netflix/android/org/json/zip/TrieKeep;->froms:[I

    .line 187
    iget v0, p0, Lcom/netflix/android/org/json/zip/TrieKeep;->capacity:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/netflix/android/org/json/zip/TrieKeep;->thrus:[I

    .line 188
    iget v0, p0, Lcom/netflix/android/org/json/zip/TrieKeep;->capacity:I

    new-array v0, v0, [Lcom/netflix/android/org/json/Kim;

    iput-object v0, p0, Lcom/netflix/android/org/json/zip/TrieKeep;->kims:[Lcom/netflix/android/org/json/Kim;

    .line 189
    new-instance v0, Lcom/netflix/android/org/json/zip/TrieKeep$Node;

    invoke-direct {v0, p0}, Lcom/netflix/android/org/json/zip/TrieKeep$Node;-><init>(Lcom/netflix/android/org/json/zip/TrieKeep;)V

    iput-object v0, p0, Lcom/netflix/android/org/json/zip/TrieKeep;->root:Lcom/netflix/android/org/json/zip/TrieKeep$Node;

    .line 190
    return-void
.end method


# virtual methods
.method public kim(I)Lcom/netflix/android/org/json/Kim;
    .locals 4

    .prologue
    .line 199
    iget-object v0, p0, Lcom/netflix/android/org/json/zip/TrieKeep;->kims:[Lcom/netflix/android/org/json/Kim;

    aget-object v0, v0, p1

    .line 200
    iget-object v1, p0, Lcom/netflix/android/org/json/zip/TrieKeep;->froms:[I

    aget v2, v1, p1

    .line 201
    iget-object v1, p0, Lcom/netflix/android/org/json/zip/TrieKeep;->thrus:[I

    aget v3, v1, p1

    .line 202
    if-nez v2, :cond_0

    iget v1, v0, Lcom/netflix/android/org/json/Kim;->length:I

    if-eq v3, v1, :cond_1

    .line 203
    :cond_0
    new-instance v1, Lcom/netflix/android/org/json/Kim;

    invoke-direct {v1, v0, v2, v3}, Lcom/netflix/android/org/json/Kim;-><init>(Lcom/netflix/android/org/json/Kim;II)V

    .line 204
    iget-object v0, p0, Lcom/netflix/android/org/json/zip/TrieKeep;->froms:[I

    const/4 v2, 0x0

    aput v2, v0, p1

    .line 205
    iget-object v0, p0, Lcom/netflix/android/org/json/zip/TrieKeep;->thrus:[I

    iget v2, v1, Lcom/netflix/android/org/json/Kim;->length:I

    aput v2, v0, p1

    .line 206
    iget-object v0, p0, Lcom/netflix/android/org/json/zip/TrieKeep;->kims:[Lcom/netflix/android/org/json/Kim;

    aput-object v1, v0, p1

    move-object v0, v1

    .line 208
    :cond_1
    return-object v0
.end method

.method public length(I)I
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/netflix/android/org/json/zip/TrieKeep;->thrus:[I

    aget v0, v0, p1

    iget-object v1, p0, Lcom/netflix/android/org/json/zip/TrieKeep;->froms:[I

    aget v1, v1, p1

    sub-int/2addr v0, v1

    return v0
.end method

.method public match(Lcom/netflix/android/org/json/Kim;II)I
    .locals 5

    .prologue
    const/4 v1, -0x1

    .line 231
    iget-object v0, p0, Lcom/netflix/android/org/json/zip/TrieKeep;->root:Lcom/netflix/android/org/json/zip/TrieKeep$Node;

    move-object v2, v0

    move v3, p2

    move v0, v1

    .line 233
    :goto_0
    if-ge p2, p3, :cond_0

    .line 234
    invoke-virtual {p1, p2}, Lcom/netflix/android/org/json/Kim;->get(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/netflix/android/org/json/zip/TrieKeep$Node;->get(I)Lcom/netflix/android/org/json/zip/TrieKeep$Node;

    move-result-object v2

    .line 235
    if-nez v2, :cond_1

    .line 243
    :cond_0
    return v0

    .line 238
    :cond_1
    invoke-static {v2}, Lcom/netflix/android/org/json/zip/TrieKeep$Node;->access$000(Lcom/netflix/android/org/json/zip/TrieKeep$Node;)I

    move-result v4

    if-eq v4, v1, :cond_2

    .line 239
    invoke-static {v2}, Lcom/netflix/android/org/json/zip/TrieKeep$Node;->access$000(Lcom/netflix/android/org/json/zip/TrieKeep$Node;)I

    move-result v0

    .line 241
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 233
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method public postMortem(Lcom/netflix/android/org/json/zip/PostMortem;)Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 247
    .line 248
    check-cast p1, Lcom/netflix/android/org/json/zip/TrieKeep;

    .line 249
    iget v0, p0, Lcom/netflix/android/org/json/zip/TrieKeep;->length:I

    iget v2, p1, Lcom/netflix/android/org/json/zip/TrieKeep;->length:I

    if-eq v0, v2, :cond_0

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\nLength "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/netflix/android/org/json/zip/TrieKeep;->length:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " <> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Lcom/netflix/android/org/json/zip/TrieKeep;->length:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/android/org/json/zip/JSONzip;->log(Ljava/lang/String;)V

    .line 266
    :goto_0
    return v1

    .line 253
    :cond_0
    iget v0, p0, Lcom/netflix/android/org/json/zip/TrieKeep;->capacity:I

    iget v2, p1, Lcom/netflix/android/org/json/zip/TrieKeep;->capacity:I

    if-eq v0, v2, :cond_1

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\nCapacity "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/netflix/android/org/json/zip/TrieKeep;->capacity:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " <> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Lcom/netflix/android/org/json/zip/TrieKeep;->capacity:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/android/org/json/zip/JSONzip;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move v0, v1

    move v2, v3

    .line 258
    :goto_1
    iget v4, p0, Lcom/netflix/android/org/json/zip/TrieKeep;->length:I

    if-ge v0, v4, :cond_3

    .line 259
    invoke-virtual {p0, v0}, Lcom/netflix/android/org/json/zip/TrieKeep;->kim(I)Lcom/netflix/android/org/json/Kim;

    move-result-object v4

    .line 260
    invoke-virtual {p1, v0}, Lcom/netflix/android/org/json/zip/TrieKeep;->kim(I)Lcom/netflix/android/org/json/Kim;

    move-result-object v5

    .line 261
    invoke-virtual {v4, v5}, Lcom/netflix/android/org/json/Kim;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 262
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\n["

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, "] "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " <> "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/android/org/json/zip/JSONzip;->log(Ljava/lang/String;)V

    move v2, v1

    .line 258
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 266
    :cond_3
    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/netflix/android/org/json/zip/TrieKeep;->root:Lcom/netflix/android/org/json/zip/TrieKeep$Node;

    iget-object v2, p1, Lcom/netflix/android/org/json/zip/TrieKeep;->root:Lcom/netflix/android/org/json/zip/TrieKeep$Node;

    invoke-virtual {v0, v2}, Lcom/netflix/android/org/json/zip/TrieKeep$Node;->postMortem(Lcom/netflix/android/org/json/zip/PostMortem;)Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_2
    move v1, v3

    goto :goto_0

    :cond_4
    move v3, v1

    goto :goto_2
.end method

.method public registerMany(Lcom/netflix/android/org/json/Kim;)V
    .locals 12

    .prologue
    const/16 v0, 0x28

    const/16 v2, 0xa

    .line 270
    iget v5, p1, Lcom/netflix/android/org/json/Kim;->length:I

    .line 271
    iget v1, p0, Lcom/netflix/android/org/json/zip/TrieKeep;->capacity:I

    iget v3, p0, Lcom/netflix/android/org/json/zip/TrieKeep;->length:I

    sub-int/2addr v1, v3

    .line 272
    if-le v1, v0, :cond_4

    .line 275
    :goto_0
    add-int/lit8 v6, v5, -0x2

    .line 276
    const/4 v3, 0x0

    move v1, v0

    :goto_1
    if-ge v3, v6, :cond_1

    .line 277
    sub-int v0, v5, v3

    .line 278
    if-le v0, v2, :cond_0

    move v0, v2

    .line 281
    :cond_0
    add-int v7, v0, v3

    .line 282
    iget-object v0, p0, Lcom/netflix/android/org/json/zip/TrieKeep;->root:Lcom/netflix/android/org/json/zip/TrieKeep$Node;

    move-object v4, v0

    move v0, v1

    move v1, v3

    .line 283
    :goto_2
    if-ge v1, v7, :cond_3

    .line 284
    invoke-virtual {p1, v1}, Lcom/netflix/android/org/json/Kim;->get(I)I

    move-result v8

    invoke-virtual {v4, v8}, Lcom/netflix/android/org/json/zip/TrieKeep$Node;->vet(I)Lcom/netflix/android/org/json/zip/TrieKeep$Node;

    move-result-object v4

    .line 285
    invoke-static {v4}, Lcom/netflix/android/org/json/zip/TrieKeep$Node;->access$000(Lcom/netflix/android/org/json/zip/TrieKeep$Node;)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_2

    sub-int v8, v1, v3

    const/4 v9, 0x2

    if-lt v8, v9, :cond_2

    .line 287
    iget v8, p0, Lcom/netflix/android/org/json/zip/TrieKeep;->length:I

    invoke-static {v4, v8}, Lcom/netflix/android/org/json/zip/TrieKeep$Node;->access$002(Lcom/netflix/android/org/json/zip/TrieKeep$Node;I)I

    .line 288
    iget-object v8, p0, Lcom/netflix/android/org/json/zip/TrieKeep;->uses:[J

    iget v9, p0, Lcom/netflix/android/org/json/zip/TrieKeep;->length:I

    const-wide/16 v10, 0x1

    aput-wide v10, v8, v9

    .line 289
    iget-object v8, p0, Lcom/netflix/android/org/json/zip/TrieKeep;->kims:[Lcom/netflix/android/org/json/Kim;

    iget v9, p0, Lcom/netflix/android/org/json/zip/TrieKeep;->length:I

    aput-object p1, v8, v9

    .line 290
    iget-object v8, p0, Lcom/netflix/android/org/json/zip/TrieKeep;->froms:[I

    iget v9, p0, Lcom/netflix/android/org/json/zip/TrieKeep;->length:I

    aput v3, v8, v9

    .line 291
    iget-object v8, p0, Lcom/netflix/android/org/json/zip/TrieKeep;->thrus:[I

    iget v9, p0, Lcom/netflix/android/org/json/zip/TrieKeep;->length:I

    add-int/lit8 v10, v1, 0x1

    aput v10, v8, v9

    .line 299
    iget v8, p0, Lcom/netflix/android/org/json/zip/TrieKeep;->length:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/netflix/android/org/json/zip/TrieKeep;->length:I

    .line 300
    add-int/lit8 v0, v0, -0x1

    .line 301
    if-gtz v0, :cond_2

    .line 308
    :cond_1
    return-void

    .line 283
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 276
    :cond_3
    add-int/lit8 v3, v3, 0x1

    move v1, v0

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public registerOne(Lcom/netflix/android/org/json/Kim;II)I
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 318
    iget v1, p0, Lcom/netflix/android/org/json/zip/TrieKeep;->length:I

    iget v2, p0, Lcom/netflix/android/org/json/zip/TrieKeep;->capacity:I

    if-ge v1, v2, :cond_1

    .line 319
    iget-object v1, p0, Lcom/netflix/android/org/json/zip/TrieKeep;->root:Lcom/netflix/android/org/json/zip/TrieKeep$Node;

    move-object v2, v1

    move v1, p2

    .line 320
    :goto_0
    if-ge v1, p3, :cond_0

    .line 321
    invoke-virtual {p1, v1}, Lcom/netflix/android/org/json/Kim;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/netflix/android/org/json/zip/TrieKeep$Node;->vet(I)Lcom/netflix/android/org/json/zip/TrieKeep$Node;

    move-result-object v2

    .line 320
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 323
    :cond_0
    invoke-static {v2}, Lcom/netflix/android/org/json/zip/TrieKeep$Node;->access$000(Lcom/netflix/android/org/json/zip/TrieKeep$Node;)I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 324
    iget v0, p0, Lcom/netflix/android/org/json/zip/TrieKeep;->length:I

    .line 325
    invoke-static {v2, v0}, Lcom/netflix/android/org/json/zip/TrieKeep$Node;->access$002(Lcom/netflix/android/org/json/zip/TrieKeep$Node;I)I

    .line 326
    iget-object v1, p0, Lcom/netflix/android/org/json/zip/TrieKeep;->uses:[J

    const-wide/16 v2, 0x1

    aput-wide v2, v1, v0

    .line 327
    iget-object v1, p0, Lcom/netflix/android/org/json/zip/TrieKeep;->kims:[Lcom/netflix/android/org/json/Kim;

    aput-object p1, v1, v0

    .line 328
    iget-object v1, p0, Lcom/netflix/android/org/json/zip/TrieKeep;->froms:[I

    aput p2, v1, v0

    .line 329
    iget-object v1, p0, Lcom/netflix/android/org/json/zip/TrieKeep;->thrus:[I

    aput p3, v1, v0

    .line 336
    iget v1, p0, Lcom/netflix/android/org/json/zip/TrieKeep;->length:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/netflix/android/org/json/zip/TrieKeep;->length:I

    .line 340
    :cond_1
    return v0
.end method

.method public registerOne(Lcom/netflix/android/org/json/Kim;)V
    .locals 2

    .prologue
    .line 311
    const/4 v0, 0x0

    iget v1, p1, Lcom/netflix/android/org/json/Kim;->length:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/netflix/android/org/json/zip/TrieKeep;->registerOne(Lcom/netflix/android/org/json/Kim;II)I

    move-result v0

    .line 312
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 313
    iget-object v1, p0, Lcom/netflix/android/org/json/zip/TrieKeep;->kims:[Lcom/netflix/android/org/json/Kim;

    aput-object p1, v1, v0

    .line 315
    :cond_0
    return-void
.end method

.method public reserve()V
    .locals 11

    .prologue
    const/16 v10, 0x28

    const/4 v1, 0x0

    .line 350
    iget v0, p0, Lcom/netflix/android/org/json/zip/TrieKeep;->capacity:I

    iget v2, p0, Lcom/netflix/android/org/json/zip/TrieKeep;->length:I

    sub-int/2addr v0, v2

    if-ge v0, v10, :cond_4

    .line 353
    new-instance v0, Lcom/netflix/android/org/json/zip/TrieKeep$Node;

    invoke-direct {v0, p0}, Lcom/netflix/android/org/json/zip/TrieKeep$Node;-><init>(Lcom/netflix/android/org/json/zip/TrieKeep;)V

    iput-object v0, p0, Lcom/netflix/android/org/json/zip/TrieKeep;->root:Lcom/netflix/android/org/json/zip/TrieKeep$Node;

    move v0, v1

    move v2, v1

    .line 354
    :goto_0
    iget v3, p0, Lcom/netflix/android/org/json/zip/TrieKeep;->capacity:I

    if-ge v2, v3, :cond_2

    .line 355
    iget-object v3, p0, Lcom/netflix/android/org/json/zip/TrieKeep;->uses:[J

    aget-wide v4, v3, v2

    const-wide/16 v6, 0x1

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    .line 356
    iget-object v3, p0, Lcom/netflix/android/org/json/zip/TrieKeep;->kims:[Lcom/netflix/android/org/json/Kim;

    aget-object v5, v3, v2

    .line 357
    iget-object v3, p0, Lcom/netflix/android/org/json/zip/TrieKeep;->thrus:[I

    aget v6, v3, v2

    .line 358
    iget-object v4, p0, Lcom/netflix/android/org/json/zip/TrieKeep;->root:Lcom/netflix/android/org/json/zip/TrieKeep$Node;

    .line 359
    iget-object v3, p0, Lcom/netflix/android/org/json/zip/TrieKeep;->froms:[I

    aget v3, v3, v2

    :goto_1
    if-ge v3, v6, :cond_0

    .line 360
    invoke-virtual {v5, v3}, Lcom/netflix/android/org/json/Kim;->get(I)I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/netflix/android/org/json/zip/TrieKeep$Node;->vet(I)Lcom/netflix/android/org/json/zip/TrieKeep$Node;

    move-result-object v4

    .line 359
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 363
    :cond_0
    invoke-static {v4, v0}, Lcom/netflix/android/org/json/zip/TrieKeep$Node;->access$002(Lcom/netflix/android/org/json/zip/TrieKeep$Node;I)I

    .line 364
    iget-object v3, p0, Lcom/netflix/android/org/json/zip/TrieKeep;->uses:[J

    iget-object v4, p0, Lcom/netflix/android/org/json/zip/TrieKeep;->uses:[J

    aget-wide v8, v4, v2

    invoke-static {v8, v9}, Lcom/netflix/android/org/json/zip/TrieKeep;->age(J)J

    move-result-wide v8

    aput-wide v8, v3, v0

    .line 365
    iget-object v3, p0, Lcom/netflix/android/org/json/zip/TrieKeep;->froms:[I

    iget-object v4, p0, Lcom/netflix/android/org/json/zip/TrieKeep;->froms:[I

    aget v4, v4, v2

    aput v4, v3, v0

    .line 366
    iget-object v3, p0, Lcom/netflix/android/org/json/zip/TrieKeep;->thrus:[I

    aput v6, v3, v0

    .line 367
    iget-object v3, p0, Lcom/netflix/android/org/json/zip/TrieKeep;->kims:[Lcom/netflix/android/org/json/Kim;

    aput-object v5, v3, v0

    .line 368
    add-int/lit8 v0, v0, 0x1

    .line 370
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 376
    :cond_2
    iget v2, p0, Lcom/netflix/android/org/json/zip/TrieKeep;->capacity:I

    sub-int/2addr v2, v0

    if-ge v2, v10, :cond_3

    .line 377
    iput v1, p0, Lcom/netflix/android/org/json/zip/TrieKeep;->power:I

    .line 378
    new-instance v0, Lcom/netflix/android/org/json/zip/TrieKeep$Node;

    invoke-direct {v0, p0}, Lcom/netflix/android/org/json/zip/TrieKeep$Node;-><init>(Lcom/netflix/android/org/json/zip/TrieKeep;)V

    iput-object v0, p0, Lcom/netflix/android/org/json/zip/TrieKeep;->root:Lcom/netflix/android/org/json/zip/TrieKeep$Node;

    move v0, v1

    .line 381
    :cond_3
    iput v0, p0, Lcom/netflix/android/org/json/zip/TrieKeep;->length:I

    .line 382
    :goto_2
    iget v2, p0, Lcom/netflix/android/org/json/zip/TrieKeep;->capacity:I

    if-ge v0, v2, :cond_4

    .line 383
    iget-object v2, p0, Lcom/netflix/android/org/json/zip/TrieKeep;->uses:[J

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v0

    .line 384
    iget-object v2, p0, Lcom/netflix/android/org/json/zip/TrieKeep;->kims:[Lcom/netflix/android/org/json/Kim;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 385
    iget-object v2, p0, Lcom/netflix/android/org/json/zip/TrieKeep;->froms:[I

    aput v1, v2, v0

    .line 386
    iget-object v2, p0, Lcom/netflix/android/org/json/zip/TrieKeep;->thrus:[I

    aput v1, v2, v0

    .line 387
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 391
    :cond_4
    return-void
.end method

.method public value(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 394
    invoke-virtual {p0, p1}, Lcom/netflix/android/org/json/zip/TrieKeep;->kim(I)Lcom/netflix/android/org/json/Kim;

    move-result-object v0

    return-object v0
.end method
