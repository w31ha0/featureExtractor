.class public final Lcom/ibm/icu/impl/CaseMapImpl;
.super Ljava/lang/Object;
.source "CaseMapImpl.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/ibm/icu/impl/CaseMapImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/ibm/icu/impl/CaseMapImpl;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(ILjava/lang/Appendable;IILcom/ibm/icu/text/Edits;)V
    .locals 0

    .prologue
    .line 12
    invoke-static {p0, p1, p2, p3, p4}, Lcom/ibm/icu/impl/CaseMapImpl;->appendResult(ILjava/lang/Appendable;IILcom/ibm/icu/text/Edits;)V

    return-void
.end method

.method private static appendCodePoint(Ljava/lang/Appendable;I)I
    .locals 2

    .prologue
    .line 143
    const v0, 0xffff

    if-gt p1, v0, :cond_0

    .line 144
    int-to-char v0, p1

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 145
    const/4 v0, 0x1

    .line 149
    :goto_0
    return v0

    .line 147
    :cond_0
    const v0, 0xd7c0

    shr-int/lit8 v1, p1, 0xa

    add-int/2addr v0, v1

    int-to-char v0, v0

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 148
    const v0, 0xdc00

    and-int/lit16 v1, p1, 0x3ff

    add-int/2addr v0, v1

    int-to-char v0, v0

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 149
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private static appendResult(ILjava/lang/Appendable;IILcom/ibm/icu/text/Edits;)V
    .locals 1

    .prologue
    .line 160
    if-gez p0, :cond_2

    .line 162
    if-eqz p4, :cond_1

    .line 163
    invoke-virtual {p4, p2}, Lcom/ibm/icu/text/Edits;->addUnchanged(I)V

    .line 164
    and-int/lit16 v0, p3, 0x4000

    if-eqz v0, :cond_1

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    xor-int/lit8 v0, p0, -0x1

    invoke-static {p1, v0}, Lcom/ibm/icu/impl/CaseMapImpl;->appendCodePoint(Ljava/lang/Appendable;I)I

    goto :goto_0

    .line 169
    :cond_2
    const/16 v0, 0x1f

    if-gt p0, v0, :cond_3

    .line 171
    if-eqz p4, :cond_0

    .line 172
    invoke-virtual {p4, p2, p0}, Lcom/ibm/icu/text/Edits;->addReplace(II)V

    goto :goto_0

    .line 176
    :cond_3
    invoke-static {p1, p0}, Lcom/ibm/icu/impl/CaseMapImpl;->appendCodePoint(Ljava/lang/Appendable;I)I

    move-result v0

    .line 177
    if-eqz p4, :cond_0

    .line 178
    invoke-virtual {p4, p2, v0}, Lcom/ibm/icu/text/Edits;->addReplace(II)V

    goto :goto_0
.end method

.method private static final appendUnchanged(Ljava/lang/CharSequence;IILjava/lang/Appendable;ILcom/ibm/icu/text/Edits;)V
    .locals 1

    .prologue
    .line 185
    if-lez p2, :cond_0

    .line 186
    if-eqz p5, :cond_1

    .line 187
    invoke-virtual {p5, p2}, Lcom/ibm/icu/text/Edits;->addUnchanged(I)V

    .line 188
    and-int/lit16 v0, p4, 0x4000

    if-eqz v0, :cond_1

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    add-int v0, p1, p2

    invoke-interface {p3, p0, p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    goto :goto_0
.end method

.method public static fold(ILjava/lang/CharSequence;Ljava/lang/Appendable;Lcom/ibm/icu/text/Edits;)Ljava/lang/Appendable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            ">(I",
            "Ljava/lang/CharSequence;",
            "TA;",
            "Lcom/ibm/icu/text/Edits;",
            ")TA;"
        }
    .end annotation

    .prologue
    .line 353
    if-eqz p3, :cond_0

    .line 354
    :try_start_0
    invoke-virtual {p3}, Lcom/ibm/icu/text/Edits;->reset()V

    .line 356
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 357
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 358
    invoke-static {p1, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 359
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    .line 360
    add-int/2addr v0, v3

    .line 361
    sget-object v4, Lcom/ibm/icu/impl/UCaseProps;->INSTANCE:Lcom/ibm/icu/impl/UCaseProps;

    invoke-virtual {v4, v2, p2, p0}, Lcom/ibm/icu/impl/UCaseProps;->toFullFolding(ILjava/lang/Appendable;I)I

    move-result v2

    .line 362
    invoke-static {v2, p2, v3, p0, p3}, Lcom/ibm/icu/impl/CaseMapImpl;->appendResult(ILjava/lang/Appendable;IILcom/ibm/icu/text/Edits;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 365
    :catch_0
    move-exception v0

    .line 366
    new-instance v1, Lcom/ibm/icu/util/ICUUncheckedIOException;

    invoke-direct {v1, v0}, Lcom/ibm/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 364
    :cond_1
    return-object p2
.end method

.method private static internalToLower(IILcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;Ljava/lang/Appendable;Lcom/ibm/icu/text/Edits;)V
    .locals 2

    .prologue
    .line 199
    :goto_0
    invoke-virtual {p2}, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->nextCaseMapCP()I

    move-result v0

    if-ltz v0, :cond_0

    .line 200
    sget-object v1, Lcom/ibm/icu/impl/UCaseProps;->INSTANCE:Lcom/ibm/icu/impl/UCaseProps;

    invoke-virtual {v1, v0, p2, p3, p0}, Lcom/ibm/icu/impl/UCaseProps;->toFullLower(ILcom/ibm/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;I)I

    move-result v0

    .line 201
    invoke-virtual {p2}, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->getCPLength()I

    move-result v1

    invoke-static {v0, p3, v1, p1, p4}, Lcom/ibm/icu/impl/CaseMapImpl;->appendResult(ILjava/lang/Appendable;IILcom/ibm/icu/text/Edits;)V

    goto :goto_0

    .line 203
    :cond_0
    return-void
.end method

.method public static toLower(IILjava/lang/CharSequence;Ljava/lang/Appendable;Lcom/ibm/icu/text/Edits;)Ljava/lang/Appendable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            ">(II",
            "Ljava/lang/CharSequence;",
            "TA;",
            "Lcom/ibm/icu/text/Edits;",
            ")TA;"
        }
    .end annotation

    .prologue
    .line 208
    if-eqz p4, :cond_0

    .line 209
    :try_start_0
    invoke-virtual {p4}, Lcom/ibm/icu/text/Edits;->reset()V

    .line 211
    :cond_0
    new-instance v0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;

    invoke-direct {v0, p2}, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;-><init>(Ljava/lang/CharSequence;)V

    .line 212
    invoke-static {p0, p1, v0, p3, p4}, Lcom/ibm/icu/impl/CaseMapImpl;->internalToLower(IILcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;Ljava/lang/Appendable;Lcom/ibm/icu/text/Edits;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    return-object p3

    .line 214
    :catch_0
    move-exception v0

    .line 215
    new-instance v1, Lcom/ibm/icu/util/ICUUncheckedIOException;

    invoke-direct {v1, v0}, Lcom/ibm/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static toTitle(IILcom/ibm/icu/text/BreakIterator;Ljava/lang/CharSequence;Ljava/lang/Appendable;Lcom/ibm/icu/text/Edits;)Ljava/lang/Appendable;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            ">(II",
            "Lcom/ibm/icu/text/BreakIterator;",
            "Ljava/lang/CharSequence;",
            "TA;",
            "Lcom/ibm/icu/text/Edits;",
            ")TA;"
        }
    .end annotation

    .prologue
    .line 244
    if-eqz p5, :cond_0

    .line 245
    :try_start_0
    invoke-virtual/range {p5 .. p5}, Lcom/ibm/icu/text/Edits;->reset()V

    .line 249
    :cond_0
    new-instance v13, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;

    move-object/from16 v0, p3

    invoke-direct {v13, v0}, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;-><init>(Ljava/lang/CharSequence;)V

    .line 250
    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    move-result v11

    .line 251
    const/4 v3, 0x0

    .line 252
    const/4 v4, 0x1

    .line 255
    :goto_0
    if-ge v3, v11, :cond_f

    .line 258
    if-eqz v4, :cond_7

    .line 259
    const/4 v4, 0x0

    .line 260
    invoke-virtual/range {p2 .. p2}, Lcom/ibm/icu/text/BreakIterator;->first()I

    move-result v2

    move v12, v4

    .line 264
    :goto_1
    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    if-le v2, v11, :cond_10

    :cond_1
    move v10, v11

    .line 281
    :goto_2
    if-ge v3, v10, :cond_d

    .line 284
    invoke-virtual {v13, v10}, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->setLimit(I)V

    .line 285
    invoke-virtual {v13}, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->nextCaseMapCP()I

    move-result v2

    .line 286
    and-int/lit16 v4, p1, 0x200

    if-nez v4, :cond_4

    sget-object v4, Lcom/ibm/icu/impl/UCaseProps;->INSTANCE:Lcom/ibm/icu/impl/UCaseProps;

    .line 287
    invoke-virtual {v4, v2}, Lcom/ibm/icu/impl/UCaseProps;->getType(I)I

    move-result v4

    if-nez v4, :cond_4

    .line 289
    :cond_2
    invoke-virtual {v13}, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->nextCaseMapCP()I

    move-result v8

    if-ltz v8, :cond_3

    sget-object v2, Lcom/ibm/icu/impl/UCaseProps;->INSTANCE:Lcom/ibm/icu/impl/UCaseProps;

    .line 290
    invoke-virtual {v2, v8}, Lcom/ibm/icu/impl/UCaseProps;->getType(I)I

    move-result v2

    if-eqz v2, :cond_2

    .line 293
    :cond_3
    invoke-virtual {v13}, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->getCPStart()I

    move-result v9

    .line 294
    sub-int v4, v9, v3

    move-object/from16 v2, p3

    move-object/from16 v5, p4

    move v6, p1

    move-object/from16 v7, p5

    invoke-static/range {v2 .. v7}, Lcom/ibm/icu/impl/CaseMapImpl;->appendUnchanged(Ljava/lang/CharSequence;IILjava/lang/Appendable;ILcom/ibm/icu/text/Edits;)V

    move v2, v8

    move v3, v9

    .line 297
    :cond_4
    if-ge v3, v10, :cond_d

    .line 298
    invoke-virtual {v13}, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->getCPLimit()I

    move-result v8

    .line 300
    sget-object v4, Lcom/ibm/icu/impl/UCaseProps;->INSTANCE:Lcom/ibm/icu/impl/UCaseProps;

    move-object/from16 v0, p4

    invoke-virtual {v4, v2, v13, v0, p0}, Lcom/ibm/icu/impl/UCaseProps;->toFullTitle(ILcom/ibm/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;I)I

    move-result v2

    .line 301
    invoke-virtual {v13}, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->getCPLength()I

    move-result v4

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-static {v2, v0, v4, p1, v1}, Lcom/ibm/icu/impl/CaseMapImpl;->appendResult(ILjava/lang/Appendable;IILcom/ibm/icu/text/Edits;)V

    .line 304
    add-int/lit8 v2, v3, 0x1

    if-ge v2, v10, :cond_b

    const/4 v2, 0x5

    if-ne p0, v2, :cond_b

    .line 305
    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 306
    const/16 v4, 0x69

    if-eq v2, v4, :cond_5

    const/16 v4, 0x49

    if-ne v2, v4, :cond_b

    .line 307
    :cond_5
    add-int/lit8 v2, v3, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    .line 308
    const/16 v2, 0x6a

    if-ne v9, v2, :cond_9

    .line 309
    const/16 v2, 0x4a

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 310
    if-eqz p5, :cond_6

    .line 311
    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v3}, Lcom/ibm/icu/text/Edits;->addReplace(II)V

    .line 313
    :cond_6
    invoke-virtual {v13}, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->nextCaseMapCP()I

    move-result v2

    .line 314
    add-int/lit8 v3, v8, 0x1

    .line 315
    sget-boolean v4, Lcom/ibm/icu/impl/CaseMapImpl;->$assertionsDisabled:Z

    if-nez v4, :cond_8

    if-eq v2, v9, :cond_8

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    :catch_0
    move-exception v2

    .line 346
    new-instance v3, Lcom/ibm/icu/util/ICUUncheckedIOException;

    invoke-direct {v3, v2}, Lcom/ibm/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 262
    :cond_7
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Lcom/ibm/icu/text/BreakIterator;->next()I

    move-result v2

    move v12, v4

    goto/16 :goto_1

    .line 316
    :cond_8
    sget-boolean v2, Lcom/ibm/icu/impl/CaseMapImpl;->$assertionsDisabled:Z

    if-nez v2, :cond_c

    invoke-virtual {v13}, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->getCPLimit()I

    move-result v2

    if-eq v3, v2, :cond_c

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 317
    :cond_9
    const/16 v2, 0x4a

    if-ne v9, v2, :cond_b

    .line 319
    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    move-object/from16 v2, p3

    move-object/from16 v5, p4

    move v6, p1

    move-object/from16 v7, p5

    invoke-static/range {v2 .. v7}, Lcom/ibm/icu/impl/CaseMapImpl;->appendUnchanged(Ljava/lang/CharSequence;IILjava/lang/Appendable;ILcom/ibm/icu/text/Edits;)V

    .line 320
    invoke-virtual {v13}, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->nextCaseMapCP()I

    move-result v2

    .line 321
    add-int/lit8 v3, v8, 0x1

    .line 322
    sget-boolean v4, Lcom/ibm/icu/impl/CaseMapImpl;->$assertionsDisabled:Z

    if-nez v4, :cond_a

    if-eq v2, v9, :cond_a

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 323
    :cond_a
    sget-boolean v2, Lcom/ibm/icu/impl/CaseMapImpl;->$assertionsDisabled:Z

    if-nez v2, :cond_c

    invoke-virtual {v13}, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->getCPLimit()I

    move-result v2

    if-eq v3, v2, :cond_c

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_b
    move v3, v8

    .line 329
    :cond_c
    if-ge v3, v10, :cond_d

    .line 330
    and-int/lit16 v2, p1, 0x100

    if-nez v2, :cond_e

    .line 332
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-static {p0, p1, v13, v0, v1}, Lcom/ibm/icu/impl/CaseMapImpl;->internalToLower(IILcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;Ljava/lang/Appendable;Lcom/ibm/icu/text/Edits;)V

    :cond_d
    :goto_3
    move v4, v12

    move v3, v10

    .line 343
    goto/16 :goto_0

    .line 335
    :cond_e
    sub-int v4, v10, v3

    move-object/from16 v2, p3

    move-object/from16 v5, p4

    move v6, p1

    move-object/from16 v7, p5

    invoke-static/range {v2 .. v7}, Lcom/ibm/icu/impl/CaseMapImpl;->appendUnchanged(Ljava/lang/CharSequence;IILjava/lang/Appendable;ILcom/ibm/icu/text/Edits;)V

    .line 336
    invoke-virtual {v13}, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->moveToLimit()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 344
    :cond_f
    return-object p4

    :cond_10
    move v10, v2

    goto/16 :goto_2
.end method

.method public static toUpper(IILjava/lang/CharSequence;Ljava/lang/Appendable;Lcom/ibm/icu/text/Edits;)Ljava/lang/Appendable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            ">(II",
            "Ljava/lang/CharSequence;",
            "TA;",
            "Lcom/ibm/icu/text/Edits;",
            ")TA;"
        }
    .end annotation

    .prologue
    .line 222
    if-eqz p4, :cond_0

    .line 223
    :try_start_0
    invoke-virtual {p4}, Lcom/ibm/icu/text/Edits;->reset()V

    .line 225
    :cond_0
    const/4 v0, 0x4

    if-ne p0, v0, :cond_2

    .line 226
    invoke-static {p1, p2, p3, p4}, Lcom/ibm/icu/impl/CaseMapImpl$GreekUpper;->access$000(ILjava/lang/CharSequence;Ljava/lang/Appendable;Lcom/ibm/icu/text/Edits;)Ljava/lang/Appendable;

    move-result-object p3

    .line 234
    :cond_1
    return-object p3

    .line 228
    :cond_2
    new-instance v0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;

    invoke-direct {v0, p2}, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;-><init>(Ljava/lang/CharSequence;)V

    .line 230
    :goto_0
    invoke-virtual {v0}, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->nextCaseMapCP()I

    move-result v1

    if-ltz v1, :cond_1

    .line 231
    sget-object v2, Lcom/ibm/icu/impl/UCaseProps;->INSTANCE:Lcom/ibm/icu/impl/UCaseProps;

    invoke-virtual {v2, v1, v0, p3, p0}, Lcom/ibm/icu/impl/UCaseProps;->toFullUpper(ILcom/ibm/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;I)I

    move-result v1

    .line 232
    invoke-virtual {v0}, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->getCPLength()I

    move-result v2

    invoke-static {v1, p3, v2, p1, p4}, Lcom/ibm/icu/impl/CaseMapImpl;->appendResult(ILjava/lang/Appendable;IILcom/ibm/icu/text/Edits;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 235
    :catch_0
    move-exception v0

    .line 236
    new-instance v1, Lcom/ibm/icu/util/ICUUncheckedIOException;

    invoke-direct {v1, v0}, Lcom/ibm/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
