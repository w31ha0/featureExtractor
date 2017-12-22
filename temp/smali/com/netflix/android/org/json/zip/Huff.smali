.class public Lcom/netflix/android/org/json/zip/Huff;
.super Ljava/lang/Object;
.source "Huff.java"

# interfaces
.implements Lcom/netflix/android/org/json/zip/None;
.implements Lcom/netflix/android/org/json/zip/PostMortem;


# instance fields
.field private final domain:I

.field private final symbols:[Lcom/netflix/android/org/json/zip/Huff$Symbol;

.field private table:Lcom/netflix/android/org/json/zip/Huff$Symbol;

.field private upToDate:Z

.field private width:I


# direct methods
.method public constructor <init>(I)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-boolean v0, p0, Lcom/netflix/android/org/json/zip/Huff;->upToDate:Z

    .line 134
    iput p1, p0, Lcom/netflix/android/org/json/zip/Huff;->domain:I

    .line 135
    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, -0x1

    .line 136
    new-array v2, v1, [Lcom/netflix/android/org/json/zip/Huff$Symbol;

    iput-object v2, p0, Lcom/netflix/android/org/json/zip/Huff;->symbols:[Lcom/netflix/android/org/json/zip/Huff$Symbol;

    .line 140
    :goto_0
    if-ge v0, p1, :cond_0

    .line 141
    iget-object v2, p0, Lcom/netflix/android/org/json/zip/Huff;->symbols:[Lcom/netflix/android/org/json/zip/Huff$Symbol;

    new-instance v3, Lcom/netflix/android/org/json/zip/Huff$Symbol;

    invoke-direct {v3, v0}, Lcom/netflix/android/org/json/zip/Huff$Symbol;-><init>(I)V

    aput-object v3, v2, v0

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 146
    :cond_0
    :goto_1
    if-ge p1, v1, :cond_1

    .line 147
    iget-object v0, p0, Lcom/netflix/android/org/json/zip/Huff;->symbols:[Lcom/netflix/android/org/json/zip/Huff$Symbol;

    new-instance v2, Lcom/netflix/android/org/json/zip/Huff$Symbol;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Lcom/netflix/android/org/json/zip/Huff$Symbol;-><init>(I)V

    aput-object v2, v0, p1

    .line 146
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 149
    :cond_1
    return-void
.end method

.method private postMortem(I)Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 254
    iget v0, p0, Lcom/netflix/android/org/json/zip/Huff;->domain:I

    new-array v5, v0, [I

    .line 255
    iget-object v0, p0, Lcom/netflix/android/org/json/zip/Huff;->symbols:[Lcom/netflix/android/org/json/zip/Huff$Symbol;

    aget-object v0, v0, p1

    .line 256
    iget v2, v0, Lcom/netflix/android/org/json/zip/Huff$Symbol;->integer:I

    if-eq v2, p1, :cond_1

    .line 284
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v2, v0

    move v0, v1

    .line 261
    :goto_1
    iget-object v3, v2, Lcom/netflix/android/org/json/zip/Huff$Symbol;->back:Lcom/netflix/android/org/json/zip/Huff$Symbol;

    .line 262
    if-nez v3, :cond_2

    .line 275
    iget-object v3, p0, Lcom/netflix/android/org/json/zip/Huff;->table:Lcom/netflix/android/org/json/zip/Huff$Symbol;

    if-ne v2, v3, :cond_0

    .line 278
    iput v1, p0, Lcom/netflix/android/org/json/zip/Huff;->width:I

    .line 279
    iget-object v2, p0, Lcom/netflix/android/org/json/zip/Huff;->table:Lcom/netflix/android/org/json/zip/Huff$Symbol;

    .line 280
    :goto_2
    iget v3, v2, Lcom/netflix/android/org/json/zip/Huff$Symbol;->integer:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_5

    .line 281
    add-int/lit8 v0, v0, -0x1

    .line 282
    aget v3, v5, v0

    if-eqz v3, :cond_4

    iget-object v2, v2, Lcom/netflix/android/org/json/zip/Huff$Symbol;->one:Lcom/netflix/android/org/json/zip/Huff$Symbol;

    goto :goto_2

    .line 265
    :cond_2
    iget-object v6, v3, Lcom/netflix/android/org/json/zip/Huff$Symbol;->zero:Lcom/netflix/android/org/json/zip/Huff$Symbol;

    if-ne v6, v2, :cond_3

    .line 266
    aput v1, v5, v0

    .line 272
    :goto_3
    add-int/lit8 v0, v0, 0x1

    move-object v2, v3

    .line 274
    goto :goto_1

    .line 267
    :cond_3
    iget-object v6, v3, Lcom/netflix/android/org/json/zip/Huff$Symbol;->one:Lcom/netflix/android/org/json/zip/Huff$Symbol;

    if-ne v6, v2, :cond_0

    .line 268
    aput v4, v5, v0

    goto :goto_3

    .line 282
    :cond_4
    iget-object v2, v2, Lcom/netflix/android/org/json/zip/Huff$Symbol;->zero:Lcom/netflix/android/org/json/zip/Huff$Symbol;

    goto :goto_2

    .line 284
    :cond_5
    iget v2, v2, Lcom/netflix/android/org/json/zip/Huff$Symbol;->integer:I

    if-ne v2, p1, :cond_0

    if-nez v0, :cond_0

    move v1, v4

    goto :goto_0
.end method

.method private write(Lcom/netflix/android/org/json/zip/Huff$Symbol;Lcom/netflix/android/org/json/zip/BitWriter;)V
    .locals 2

    .prologue
    .line 372
    :try_start_0
    iget-object v0, p1, Lcom/netflix/android/org/json/zip/Huff$Symbol;->back:Lcom/netflix/android/org/json/zip/Huff$Symbol;

    .line 373
    if-eqz v0, :cond_0

    .line 374
    iget v1, p0, Lcom/netflix/android/org/json/zip/Huff;->width:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/netflix/android/org/json/zip/Huff;->width:I

    .line 375
    invoke-direct {p0, v0, p2}, Lcom/netflix/android/org/json/zip/Huff;->write(Lcom/netflix/android/org/json/zip/Huff$Symbol;Lcom/netflix/android/org/json/zip/BitWriter;)V

    .line 376
    iget-object v0, v0, Lcom/netflix/android/org/json/zip/Huff$Symbol;->zero:Lcom/netflix/android/org/json/zip/Huff$Symbol;

    if-ne v0, p1, :cond_1

    .line 377
    invoke-interface {p2}, Lcom/netflix/android/org/json/zip/BitWriter;->zero()V

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 379
    :cond_1
    invoke-interface {p2}, Lcom/netflix/android/org/json/zip/BitWriter;->one()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 382
    :catch_0
    move-exception v0

    .line 383
    new-instance v1, Lcom/netflix/android/org/json/JSONException;

    invoke-direct {v1, v0}, Lcom/netflix/android/org/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public generate()V
    .locals 13

    .prologue
    const/4 v1, 0x1

    const/4 v12, 0x0

    .line 158
    iget-boolean v0, p0, Lcom/netflix/android/org/json/zip/Huff;->upToDate:Z

    if-nez v0, :cond_5

    .line 162
    iget-object v0, p0, Lcom/netflix/android/org/json/zip/Huff;->symbols:[Lcom/netflix/android/org/json/zip/Huff$Symbol;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    .line 167
    iput-object v12, p0, Lcom/netflix/android/org/json/zip/Huff;->table:Lcom/netflix/android/org/json/zip/Huff$Symbol;

    .line 168
    iput-object v12, v0, Lcom/netflix/android/org/json/zip/Huff$Symbol;->next:Lcom/netflix/android/org/json/zip/Huff$Symbol;

    move-object v2, v0

    move-object v3, v0

    move v0, v1

    .line 169
    :goto_0
    iget v4, p0, Lcom/netflix/android/org/json/zip/Huff;->domain:I

    if-ge v0, v4, :cond_4

    .line 170
    iget-object v4, p0, Lcom/netflix/android/org/json/zip/Huff;->symbols:[Lcom/netflix/android/org/json/zip/Huff$Symbol;

    aget-object v5, v4, v0

    .line 174
    iget-wide v6, v5, Lcom/netflix/android/org/json/zip/Huff$Symbol;->weight:J

    iget-wide v8, v3, Lcom/netflix/android/org/json/zip/Huff$Symbol;->weight:J

    cmp-long v4, v6, v8

    if-gez v4, :cond_0

    .line 175
    iput-object v3, v5, Lcom/netflix/android/org/json/zip/Huff$Symbol;->next:Lcom/netflix/android/org/json/zip/Huff$Symbol;

    move-object v3, v5

    .line 169
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 182
    :cond_0
    iget-wide v6, v5, Lcom/netflix/android/org/json/zip/Huff$Symbol;->weight:J

    iget-wide v8, v2, Lcom/netflix/android/org/json/zip/Huff$Symbol;->weight:J

    cmp-long v4, v6, v8

    if-gez v4, :cond_1

    move-object v2, v3

    .line 190
    :cond_1
    :goto_2
    iget-object v4, v2, Lcom/netflix/android/org/json/zip/Huff$Symbol;->next:Lcom/netflix/android/org/json/zip/Huff$Symbol;

    .line 191
    if-eqz v4, :cond_2

    iget-wide v6, v5, Lcom/netflix/android/org/json/zip/Huff$Symbol;->weight:J

    iget-wide v8, v4, Lcom/netflix/android/org/json/zip/Huff$Symbol;->weight:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_3

    .line 196
    :cond_2
    iput-object v4, v5, Lcom/netflix/android/org/json/zip/Huff$Symbol;->next:Lcom/netflix/android/org/json/zip/Huff$Symbol;

    .line 197
    iput-object v5, v2, Lcom/netflix/android/org/json/zip/Huff$Symbol;->next:Lcom/netflix/android/org/json/zip/Huff$Symbol;

    move-object v2, v5

    .line 198
    goto :goto_1

    :cond_3
    move-object v2, v4

    .line 194
    goto :goto_2

    .line 205
    :cond_4
    iget v0, p0, Lcom/netflix/android/org/json/zip/Huff;->domain:I

    move-object v4, v3

    .line 211
    :goto_3
    iget-object v6, v4, Lcom/netflix/android/org/json/zip/Huff$Symbol;->next:Lcom/netflix/android/org/json/zip/Huff$Symbol;

    .line 212
    iget-object v5, v6, Lcom/netflix/android/org/json/zip/Huff$Symbol;->next:Lcom/netflix/android/org/json/zip/Huff$Symbol;

    .line 213
    iget-object v2, p0, Lcom/netflix/android/org/json/zip/Huff;->symbols:[Lcom/netflix/android/org/json/zip/Huff$Symbol;

    aget-object v2, v2, v0

    .line 214
    add-int/lit8 v0, v0, 0x1

    .line 215
    iget-wide v8, v4, Lcom/netflix/android/org/json/zip/Huff$Symbol;->weight:J

    iget-wide v10, v6, Lcom/netflix/android/org/json/zip/Huff$Symbol;->weight:J

    add-long/2addr v8, v10

    iput-wide v8, v2, Lcom/netflix/android/org/json/zip/Huff$Symbol;->weight:J

    .line 216
    iput-object v4, v2, Lcom/netflix/android/org/json/zip/Huff$Symbol;->zero:Lcom/netflix/android/org/json/zip/Huff$Symbol;

    .line 217
    iput-object v6, v2, Lcom/netflix/android/org/json/zip/Huff$Symbol;->one:Lcom/netflix/android/org/json/zip/Huff$Symbol;

    .line 218
    iput-object v12, v2, Lcom/netflix/android/org/json/zip/Huff$Symbol;->back:Lcom/netflix/android/org/json/zip/Huff$Symbol;

    .line 219
    iput-object v2, v4, Lcom/netflix/android/org/json/zip/Huff$Symbol;->back:Lcom/netflix/android/org/json/zip/Huff$Symbol;

    .line 220
    iput-object v2, v6, Lcom/netflix/android/org/json/zip/Huff$Symbol;->back:Lcom/netflix/android/org/json/zip/Huff$Symbol;

    .line 221
    if-nez v5, :cond_6

    .line 248
    iput-object v2, p0, Lcom/netflix/android/org/json/zip/Huff;->table:Lcom/netflix/android/org/json/zip/Huff$Symbol;

    .line 249
    iput-boolean v1, p0, Lcom/netflix/android/org/json/zip/Huff;->upToDate:Z

    .line 251
    :cond_5
    return-void

    .line 227
    :cond_6
    iget-wide v6, v2, Lcom/netflix/android/org/json/zip/Huff$Symbol;->weight:J

    iget-wide v8, v5, Lcom/netflix/android/org/json/zip/Huff$Symbol;->weight:J

    cmp-long v4, v6, v8

    if-gez v4, :cond_8

    .line 228
    iput-object v5, v2, Lcom/netflix/android/org/json/zip/Huff$Symbol;->next:Lcom/netflix/android/org/json/zip/Huff$Symbol;

    move-object v3, v2

    move-object v4, v2

    .line 230
    goto :goto_3

    :cond_7
    move-object v3, v4

    .line 233
    :cond_8
    iget-object v4, v3, Lcom/netflix/android/org/json/zip/Huff$Symbol;->next:Lcom/netflix/android/org/json/zip/Huff$Symbol;

    .line 234
    if-eqz v4, :cond_9

    iget-wide v6, v2, Lcom/netflix/android/org/json/zip/Huff$Symbol;->weight:J

    iget-wide v8, v4, Lcom/netflix/android/org/json/zip/Huff$Symbol;->weight:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_7

    .line 239
    :cond_9
    iput-object v4, v2, Lcom/netflix/android/org/json/zip/Huff$Symbol;->next:Lcom/netflix/android/org/json/zip/Huff$Symbol;

    .line 240
    iput-object v2, v3, Lcom/netflix/android/org/json/zip/Huff$Symbol;->next:Lcom/netflix/android/org/json/zip/Huff$Symbol;

    move-object v3, v2

    move-object v4, v5

    .line 241
    goto :goto_3
.end method

.method public postMortem(Lcom/netflix/android/org/json/zip/PostMortem;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 295
    move v0, v1

    :goto_0
    iget v2, p0, Lcom/netflix/android/org/json/zip/Huff;->domain:I

    if-ge v0, v2, :cond_1

    .line 296
    invoke-direct {p0, v0}, Lcom/netflix/android/org/json/zip/Huff;->postMortem(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 297
    const-string/jumbo v2, "\nBad huff "

    invoke-static {v2}, Lcom/netflix/android/org/json/zip/JSONzip;->log(Ljava/lang/String;)V

    .line 298
    invoke-static {v0, v0}, Lcom/netflix/android/org/json/zip/JSONzip;->logchar(II)V

    .line 302
    :goto_1
    return v1

    .line 295
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 302
    :cond_1
    iget-object v0, p0, Lcom/netflix/android/org/json/zip/Huff;->table:Lcom/netflix/android/org/json/zip/Huff$Symbol;

    check-cast p1, Lcom/netflix/android/org/json/zip/Huff;

    iget-object v1, p1, Lcom/netflix/android/org/json/zip/Huff;->table:Lcom/netflix/android/org/json/zip/Huff$Symbol;

    invoke-virtual {v0, v1}, Lcom/netflix/android/org/json/zip/Huff$Symbol;->postMortem(Lcom/netflix/android/org/json/zip/PostMortem;)Z

    move-result v1

    goto :goto_1
.end method

.method public read(Lcom/netflix/android/org/json/zip/BitReader;)I
    .locals 3

    .prologue
    .line 316
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/netflix/android/org/json/zip/Huff;->width:I

    .line 317
    iget-object v0, p0, Lcom/netflix/android/org/json/zip/Huff;->table:Lcom/netflix/android/org/json/zip/Huff$Symbol;

    .line 318
    :goto_0
    iget v1, v0, Lcom/netflix/android/org/json/zip/Huff$Symbol;->integer:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 319
    iget v1, p0, Lcom/netflix/android/org/json/zip/Huff;->width:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/netflix/android/org/json/zip/Huff;->width:I

    .line 320
    invoke-interface {p1}, Lcom/netflix/android/org/json/zip/BitReader;->bit()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/netflix/android/org/json/zip/Huff$Symbol;->one:Lcom/netflix/android/org/json/zip/Huff$Symbol;

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/netflix/android/org/json/zip/Huff$Symbol;->zero:Lcom/netflix/android/org/json/zip/Huff$Symbol;

    goto :goto_0

    .line 322
    :cond_1
    iget v1, v0, Lcom/netflix/android/org/json/zip/Huff$Symbol;->integer:I

    invoke-virtual {p0, v1}, Lcom/netflix/android/org/json/zip/Huff;->tick(I)V

    .line 326
    iget v0, v0, Lcom/netflix/android/org/json/zip/Huff$Symbol;->integer:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 327
    :catch_0
    move-exception v0

    .line 328
    new-instance v1, Lcom/netflix/android/org/json/JSONException;

    invoke-direct {v1, v0}, Lcom/netflix/android/org/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public tick(I)V
    .locals 6

    .prologue
    .line 340
    iget-object v0, p0, Lcom/netflix/android/org/json/zip/Huff;->symbols:[Lcom/netflix/android/org/json/zip/Huff$Symbol;

    aget-object v0, v0, p1

    iget-wide v2, v0, Lcom/netflix/android/org/json/zip/Huff$Symbol;->weight:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/netflix/android/org/json/zip/Huff$Symbol;->weight:J

    .line 341
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/android/org/json/zip/Huff;->upToDate:Z

    .line 342
    return-void
.end method

.method public tick(II)V
    .locals 0

    .prologue
    .line 354
    :goto_0
    if-gt p1, p2, :cond_0

    .line 355
    invoke-virtual {p0, p1}, Lcom/netflix/android/org/json/zip/Huff;->tick(I)V

    .line 354
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 357
    :cond_0
    return-void
.end method

.method public write(ILcom/netflix/android/org/json/zip/BitWriter;)V
    .locals 1

    .prologue
    .line 399
    const/4 v0, 0x0

    iput v0, p0, Lcom/netflix/android/org/json/zip/Huff;->width:I

    .line 400
    iget-object v0, p0, Lcom/netflix/android/org/json/zip/Huff;->symbols:[Lcom/netflix/android/org/json/zip/Huff$Symbol;

    aget-object v0, v0, p1

    invoke-direct {p0, v0, p2}, Lcom/netflix/android/org/json/zip/Huff;->write(Lcom/netflix/android/org/json/zip/Huff$Symbol;Lcom/netflix/android/org/json/zip/BitWriter;)V

    .line 401
    invoke-virtual {p0, p1}, Lcom/netflix/android/org/json/zip/Huff;->tick(I)V

    .line 405
    return-void
.end method
