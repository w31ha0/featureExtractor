.class public Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;
.super Lcom/ibm/icu/impl/ICUService$Key;
.source "ICULocaleService.java"


# instance fields
.field private currentID:Ljava/lang/String;

.field private fallbackID:Ljava/lang/String;

.field private kind:I

.field private primaryID:Ljava/lang/String;

.field private varstart:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x4

    const/4 v2, 0x0

    .line 207
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/ICUService$Key;-><init>(Ljava/lang/String;)V

    .line 208
    iput p4, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->kind:I

    .line 210
    if-eqz p2, :cond_0

    const-string/jumbo v0, "root"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    :cond_0
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->primaryID:Ljava/lang/String;

    .line 212
    iput-object v7, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->fallbackID:Ljava/lang/String;

    .line 231
    :goto_0
    iget v0, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->varstart:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->primaryID:Ljava/lang/String;

    :goto_1
    iput-object v0, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->currentID:Ljava/lang/String;

    .line 232
    return-void

    .line 214
    :cond_1
    const/16 v0, 0x40

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 215
    if-ne v6, v5, :cond_2

    const/4 v1, 0x1

    const-string/jumbo v3, "root"

    move-object v0, p2

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 216
    invoke-virtual {p2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->primaryID:Ljava/lang/String;

    .line 217
    iput v2, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->varstart:I

    .line 218
    iput-object v7, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->fallbackID:Ljava/lang/String;

    goto :goto_0

    .line 220
    :cond_2
    iput-object p2, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->primaryID:Ljava/lang/String;

    .line 221
    iput v6, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->varstart:I

    .line 223
    if-eqz p3, :cond_3

    iget-object v0, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->primaryID:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 224
    :cond_3
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->fallbackID:Ljava/lang/String;

    goto :goto_0

    .line 226
    :cond_4
    iput-object p3, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->fallbackID:Ljava/lang/String;

    goto :goto_0

    .line 231
    :cond_5
    iget-object v0, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->primaryID:Ljava/lang/String;

    iget v1, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->varstart:I

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static createWithCanonical(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;I)Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;
    .locals 2

    .prologue
    .line 193
    if-nez p0, :cond_0

    .line 194
    const/4 v0, 0x0

    .line 197
    :goto_0
    return-object v0

    .line 196
    :cond_0
    invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale;->getName()Ljava/lang/String;

    move-result-object v1

    .line 197
    new-instance v0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;

    invoke-direct {v0, v1, v1, p1, p2}, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method


# virtual methods
.method public canonicalID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->primaryID:Ljava/lang/String;

    return-object v0
.end method

.method public currentDescriptor()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 270
    invoke-virtual {p0}, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->currentID()Ljava/lang/String;

    move-result-object v0

    .line 271
    if-eqz v0, :cond_2

    .line 272
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 273
    iget v2, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->kind:I

    if-eq v2, v3, :cond_0

    .line 274
    invoke-virtual {p0}, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->prefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    :cond_0
    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 277
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    iget v0, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->varstart:I

    if-eq v0, v3, :cond_1

    .line 279
    iget-object v0, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->primaryID:Ljava/lang/String;

    iget v2, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->varstart:I

    iget-object v3, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->primaryID:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 283
    :cond_2
    return-object v0
.end method

.method public currentID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->currentID:Ljava/lang/String;

    return-object v0
.end method

.method public currentLocale()Lcom/ibm/icu/util/ULocale;
    .locals 4

    .prologue
    .line 297
    iget v0, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->varstart:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 298
    new-instance v0, Lcom/ibm/icu/util/ULocale;

    iget-object v1, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->currentID:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    .line 300
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/ibm/icu/util/ULocale;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->currentID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->primaryID:Ljava/lang/String;

    iget v3, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->varstart:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public fallback()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x5f

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 315
    iget-object v2, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->currentID:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 316
    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 317
    :cond_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_1

    iget-object v3, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->currentID:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v4, :cond_0

    .line 319
    :cond_1
    iget-object v3, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->currentID:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->currentID:Ljava/lang/String;

    .line 332
    :goto_0
    return v0

    .line 322
    :cond_2
    iget-object v2, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->fallbackID:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 323
    iget-object v1, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->fallbackID:Ljava/lang/String;

    iput-object v1, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->currentID:Ljava/lang/String;

    .line 324
    iget-object v1, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->fallbackID:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 325
    iput-object v5, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->fallbackID:Ljava/lang/String;

    goto :goto_0

    .line 327
    :cond_3
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->fallbackID:Ljava/lang/String;

    goto :goto_0

    .line 331
    :cond_4
    iput-object v5, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->currentID:Ljava/lang/String;

    move v0, v1

    .line 332
    goto :goto_0
.end method

.method public kind()I
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->kind:I

    return v0
.end method

.method public prefix()Ljava/lang/String;
    .locals 2

    .prologue
    .line 238
    iget v0, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->kind:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->kind()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
