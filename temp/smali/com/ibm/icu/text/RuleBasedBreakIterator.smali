.class public Lcom/ibm/icu/text/RuleBasedBreakIterator;
.super Lcom/ibm/icu/text/BreakIterator;
.source "RuleBasedBreakIterator.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final TRACE:Z

.field static final fDebugEnv:Ljava/lang/String;

.field private static final gAllBreakEngines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ibm/icu/text/LanguageBreakEngine;",
            ">;"
        }
    .end annotation
.end field

.field private static final gUnhandledBreakEngine:Lcom/ibm/icu/text/UnhandledBreakEngine;


# instance fields
.field private fBreakEngines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ibm/icu/text/LanguageBreakEngine;",
            ">;"
        }
    .end annotation
.end field

.field private fBreakType:I

.field private fCachedBreakPositions:[I

.field private fDictionaryCharCount:I

.field private fLastRuleStatusIndex:I

.field private fLastStatusIndexValid:Z

.field private fLookAheadMatches:Lcom/ibm/icu/text/RuleBasedBreakIterator$LookAheadResults;

.field private fPositionInCache:I

.field fRData:Lcom/ibm/icu/text/RBBIDataWrapper;

.field private fText:Ljava/text/CharacterIterator;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 41
    const-class v0, Lcom/ibm/icu/text/RuleBasedBreakIterator;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->$assertionsDisabled:Z

    .line 260
    const-string/jumbo v0, "rbbi"

    invoke-static {v0}, Lcom/ibm/icu/impl/ICUDebug;->enabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "rbbi"

    .line 261
    invoke-static {v0}, Lcom/ibm/icu/impl/ICUDebug;->value(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "trace"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    :goto_1
    sput-boolean v1, Lcom/ibm/icu/text/RuleBasedBreakIterator;->TRACE:Z

    .line 289
    new-instance v0, Lcom/ibm/icu/text/UnhandledBreakEngine;

    invoke-direct {v0}, Lcom/ibm/icu/text/UnhandledBreakEngine;-><init>()V

    sput-object v0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->gUnhandledBreakEngine:Lcom/ibm/icu/text/UnhandledBreakEngine;

    .line 290
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->gAllBreakEngines:Ljava/util/List;

    .line 291
    sget-object v0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->gAllBreakEngines:Ljava/util/List;

    sget-object v1, Lcom/ibm/icu/text/RuleBasedBreakIterator;->gUnhandledBreakEngine:Lcom/ibm/icu/text/UnhandledBreakEngine;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1133
    const-string/jumbo v0, "rbbi"

    invoke-static {v0}, Lcom/ibm/icu/impl/ICUDebug;->enabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "rbbi"

    .line 1134
    invoke-static {v0}, Lcom/ibm/icu/impl/ICUDebug;->value(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    sput-object v0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fDebugEnv:Ljava/lang/String;

    .line 1133
    return-void

    :cond_0
    move v0, v2

    .line 41
    goto :goto_0

    :cond_1
    move v1, v2

    .line 261
    goto :goto_1

    .line 1134
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/ibm/icu/text/BreakIterator;-><init>()V

    .line 224
    new-instance v0, Ljava/text/StringCharacterIterator;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    .line 267
    const/4 v0, 0x2

    iput v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fBreakType:I

    .line 1259
    new-instance v0, Lcom/ibm/icu/text/RuleBasedBreakIterator$LookAheadResults;

    invoke-direct {v0}, Lcom/ibm/icu/text/RuleBasedBreakIterator$LookAheadResults;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fLookAheadMatches:Lcom/ibm/icu/text/RuleBasedBreakIterator$LookAheadResults;

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fLastStatusIndexValid:Z

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fDictionaryCharCount:I

    .line 52
    sget-object v1, Lcom/ibm/icu/text/RuleBasedBreakIterator;->gAllBreakEngines:Ljava/util/List;

    monitor-enter v1

    .line 53
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    sget-object v2, Lcom/ibm/icu/text/RuleBasedBreakIterator;->gAllBreakEngines:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fBreakEngines:Ljava/util/List;

    .line 54
    monitor-exit v1

    .line 55
    return-void

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private checkDictionary(IIZ)I
    .locals 10

    .prologue
    const/4 v4, 0x0

    const v3, 0x7fffffff

    .line 473
    invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->reset()V

    .line 478
    sub-int v0, p2, p1

    const/4 v1, 0x1

    if-gt v0, v1, :cond_2

    .line 479
    if-eqz p3, :cond_1

    .line 619
    :cond_0
    :goto_0
    return p1

    :cond_1
    move p1, p2

    .line 479
    goto :goto_0

    .line 485
    :cond_2
    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    if-eqz p3, :cond_7

    move v0, p2

    :goto_1
    invoke-interface {v1, v0}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 486
    if-eqz p3, :cond_3

    .line 487
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-static {v0}, Lcom/ibm/icu/impl/CharacterIteration;->previous32(Ljava/text/CharacterIterator;)I

    .line 495
    :cond_3
    new-instance v6, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;

    invoke-direct {v6}, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;-><init>()V

    .line 497
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-static {v0}, Lcom/ibm/icu/impl/CharacterIteration;->current32(Ljava/text/CharacterIterator;)I

    move-result v0

    .line 498
    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fRData:Lcom/ibm/icu/text/RBBIDataWrapper;

    iget-object v1, v1, Lcom/ibm/icu/text/RBBIDataWrapper;->fTrie:Lcom/ibm/icu/impl/CharTrie;

    invoke-virtual {v1, v0}, Lcom/ibm/icu/impl/CharTrie;->getCodePointValue(I)C

    move-result v1

    int-to-short v1, v1

    .line 505
    and-int/lit16 v2, v1, 0x4000

    if-eqz v2, :cond_18

    .line 506
    if-eqz p3, :cond_9

    .line 508
    :cond_4
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-static {v0}, Lcom/ibm/icu/impl/CharacterIteration;->next32(Ljava/text/CharacterIterator;)I

    .line 509
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-static {v0}, Lcom/ibm/icu/impl/CharacterIteration;->current32(Ljava/text/CharacterIterator;)I

    move-result v0

    .line 510
    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fRData:Lcom/ibm/icu/text/RBBIDataWrapper;

    iget-object v1, v1, Lcom/ibm/icu/text/RBBIDataWrapper;->fTrie:Lcom/ibm/icu/impl/CharTrie;

    invoke-virtual {v1, v0}, Lcom/ibm/icu/impl/CharTrie;->getCodePointValue(I)C

    move-result v1

    int-to-short v1, v1

    .line 511
    if-eq v0, v3, :cond_5

    and-int/lit16 v1, v1, 0x4000

    if-nez v1, :cond_4

    .line 514
    :cond_5
    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-interface {v1}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v1

    .line 515
    if-ne v0, v3, :cond_8

    .line 518
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-static {v0}, Lcom/ibm/icu/impl/CharacterIteration;->previous32(Ljava/text/CharacterIterator;)I

    move-result v0

    move v2, p1

    .line 541
    :goto_2
    iget-object v3, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fRData:Lcom/ibm/icu/text/RBBIDataWrapper;

    iget-object v3, v3, Lcom/ibm/icu/text/RBBIDataWrapper;->fTrie:Lcom/ibm/icu/impl/CharTrie;

    invoke-virtual {v3, v0}, Lcom/ibm/icu/impl/CharTrie;->getCodePointValue(I)C

    move-result v3

    int-to-short v3, v3

    move v9, v3

    move v3, v1

    move v1, v9

    .line 550
    :goto_3
    if-eqz p3, :cond_6

    .line 551
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-interface {v0, v2}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 552
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-static {v0}, Lcom/ibm/icu/impl/CharacterIteration;->current32(Ljava/text/CharacterIterator;)I

    move-result v0

    .line 553
    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fRData:Lcom/ibm/icu/text/RBBIDataWrapper;

    iget-object v1, v1, Lcom/ibm/icu/text/RBBIDataWrapper;->fTrie:Lcom/ibm/icu/impl/CharTrie;

    invoke-virtual {v1, v0}, Lcom/ibm/icu/impl/CharTrie;->getCodePointValue(I)C

    move-result v1

    int-to-short v1, v1

    .line 555
    :cond_6
    const/4 v5, 0x0

    move v7, v4

    move v9, v0

    move-object v0, v5

    move v5, v1

    move v1, v9

    .line 557
    :goto_4
    iget-object v8, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-interface {v8}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v8

    if-ge v8, v3, :cond_c

    and-int/lit16 v5, v5, 0x4000

    if-nez v5, :cond_c

    .line 558
    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-static {v1}, Lcom/ibm/icu/impl/CharacterIteration;->next32(Ljava/text/CharacterIterator;)I

    .line 559
    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-static {v1}, Lcom/ibm/icu/impl/CharacterIteration;->current32(Ljava/text/CharacterIterator;)I

    move-result v1

    .line 560
    iget-object v5, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fRData:Lcom/ibm/icu/text/RBBIDataWrapper;

    iget-object v5, v5, Lcom/ibm/icu/text/RBBIDataWrapper;->fTrie:Lcom/ibm/icu/impl/CharTrie;

    invoke-virtual {v5, v1}, Lcom/ibm/icu/impl/CharTrie;->getCodePointValue(I)C

    move-result v5

    int-to-short v5, v5

    goto :goto_4

    :cond_7
    move v0, p1

    .line 485
    goto/16 :goto_1

    .line 521
    :cond_8
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-static {v0}, Lcom/ibm/icu/impl/CharacterIteration;->previous32(Ljava/text/CharacterIterator;)I

    move-result v0

    move v2, p1

    goto :goto_2

    .line 526
    :cond_9
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-static {v0}, Lcom/ibm/icu/impl/CharacterIteration;->previous32(Ljava/text/CharacterIterator;)I

    move-result v0

    .line 527
    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fRData:Lcom/ibm/icu/text/RBBIDataWrapper;

    iget-object v1, v1, Lcom/ibm/icu/text/RBBIDataWrapper;->fTrie:Lcom/ibm/icu/impl/CharTrie;

    invoke-virtual {v1, v0}, Lcom/ibm/icu/impl/CharTrie;->getCodePointValue(I)C

    move-result v1

    int-to-short v1, v1

    .line 529
    if-eq v0, v3, :cond_a

    and-int/lit16 v1, v1, 0x4000

    if-nez v1, :cond_9

    .line 531
    :cond_a
    if-ne v0, v3, :cond_b

    .line 533
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-static {v0}, Lcom/ibm/icu/impl/CharacterIteration;->current32(Ljava/text/CharacterIterator;)I

    move-result v0

    .line 539
    :goto_5
    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-interface {v1}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v1

    move v2, v1

    move v1, p2

    goto :goto_2

    .line 536
    :cond_b
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-static {v0}, Lcom/ibm/icu/impl/CharacterIteration;->next32(Ljava/text/CharacterIterator;)I

    .line 537
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-static {v0}, Lcom/ibm/icu/impl/CharacterIteration;->current32(Ljava/text/CharacterIterator;)I

    move-result v0

    goto :goto_5

    .line 562
    :cond_c
    if-lt v8, v3, :cond_e

    .line 585
    if-lez v7, :cond_16

    .line 586
    invoke-virtual {v6}, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->size()I

    move-result v1

    if-eq v7, v1, :cond_d

    .line 587
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "oops, foundBreakCount != breaks.size().  LBE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 589
    :cond_d
    sget-boolean v0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->$assertionsDisabled:Z

    if-nez v0, :cond_11

    invoke-virtual {v6}, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->size()I

    move-result v0

    if-eq v7, v0, :cond_11

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 568
    :cond_e
    invoke-direct {p0, v1}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->getLanguageBreakEngine(I)Lcom/ibm/icu/text/LanguageBreakEngine;

    move-result-object v0

    .line 572
    if-eqz v0, :cond_f

    .line 573
    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-interface {v1}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v8

    .line 574
    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    iget v5, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fBreakType:I

    invoke-interface/range {v0 .. v6}, Lcom/ibm/icu/text/LanguageBreakEngine;->findBreaks(Ljava/text/CharacterIterator;IIZILcom/ibm/icu/text/DictionaryBreakEngine$DequeI;)I

    move-result v1

    add-int/2addr v1, v7

    .line 575
    sget-boolean v5, Lcom/ibm/icu/text/RuleBasedBreakIterator;->$assertionsDisabled:Z

    if-nez v5, :cond_10

    iget-object v5, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-interface {v5}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v5

    if-gt v5, v8, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_f
    move v1, v7

    .line 579
    :cond_10
    iget-object v5, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-static {v5}, Lcom/ibm/icu/impl/CharacterIteration;->current32(Ljava/text/CharacterIterator;)I

    move-result v5

    .line 580
    iget-object v7, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fRData:Lcom/ibm/icu/text/RBBIDataWrapper;

    iget-object v7, v7, Lcom/ibm/icu/text/RBBIDataWrapper;->fTrie:Lcom/ibm/icu/impl/CharTrie;

    invoke-virtual {v7, v5}, Lcom/ibm/icu/impl/CharTrie;->getCodePointValue(I)C

    move-result v7

    int-to-short v7, v7

    move v9, v5

    move v5, v7

    move v7, v1

    move v1, v9

    goto/16 :goto_4

    .line 590
    :cond_11
    invoke-virtual {v6}, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->peekLast()I

    move-result v0

    if-ge p1, v0, :cond_12

    .line 591
    invoke-virtual {v6, p1}, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->offer(I)V

    .line 593
    :cond_12
    invoke-virtual {v6}, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->peek()I

    move-result v0

    if-le p2, v0, :cond_13

    .line 594
    invoke-virtual {v6, p2}, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->push(I)V

    .line 598
    :cond_13
    invoke-virtual {v6}, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fCachedBreakPositions:[I

    .line 601
    :goto_6
    invoke-virtual {v6}, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->size()I

    move-result v0

    if-lez v0, :cond_14

    .line 602
    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fCachedBreakPositions:[I

    add-int/lit8 v0, v4, 0x1

    invoke-virtual {v6}, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->pollLast()I

    move-result v2

    aput v2, v1, v4

    move v4, v0

    goto :goto_6

    .line 608
    :cond_14
    if-eqz p3, :cond_15

    .line 609
    invoke-virtual {p0, p2}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->preceding(I)I

    move-result p1

    goto/16 :goto_0

    .line 612
    :cond_15
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->following(I)I

    move-result p1

    goto/16 :goto_0

    .line 618
    :cond_16
    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    if-eqz p3, :cond_17

    move v0, p1

    :goto_7
    invoke-interface {v1, v0}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 619
    if-nez p3, :cond_0

    move p1, p2

    goto/16 :goto_0

    :cond_17
    move v0, p2

    .line 618
    goto :goto_7

    :cond_18
    move v3, p2

    move v2, p1

    goto/16 :goto_3
.end method

.method private getLanguageBreakEngine(I)Lcom/ibm/icu/text/LanguageBreakEngine;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1141
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fBreakEngines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/LanguageBreakEngine;

    .line 1142
    iget v2, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fBreakType:I

    invoke-interface {v0, p1, v2}, Lcom/ibm/icu/text/LanguageBreakEngine;->handles(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1211
    :goto_0
    return-object v0

    .line 1147
    :cond_1
    sget-object v1, Lcom/ibm/icu/text/RuleBasedBreakIterator;->gAllBreakEngines:Ljava/util/List;

    monitor-enter v1

    .line 1151
    :try_start_0
    sget-object v0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->gAllBreakEngines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/LanguageBreakEngine;

    .line 1152
    iget v3, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fBreakType:I

    invoke-interface {v0, p1, v3}, Lcom/ibm/icu/text/LanguageBreakEngine;->handles(II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1153
    iget-object v2, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fBreakEngines:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1154
    monitor-exit v1

    goto :goto_0

    .line 1212
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1159
    :cond_3
    const/16 v0, 0x100a

    :try_start_1
    invoke-static {p1, v0}, Lcom/ibm/icu/lang/UCharacter;->getIntPropertyValue(II)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 1160
    const/16 v2, 0x16

    if-eq v0, v2, :cond_4

    const/16 v2, 0x14

    if-ne v0, v2, :cond_5

    .line 1163
    :cond_4
    const/16 v0, 0x11

    .line 1168
    :cond_5
    sparse-switch v0, :sswitch_data_0

    .line 1199
    :try_start_2
    sget-object v0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->gUnhandledBreakEngine:Lcom/ibm/icu/text/UnhandledBreakEngine;

    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->getBreakType()I

    move-result v2

    invoke-virtual {v0, p1, v2}, Lcom/ibm/icu/text/UnhandledBreakEngine;->handleChar(II)V

    .line 1200
    sget-object v0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->gUnhandledBreakEngine:Lcom/ibm/icu/text/UnhandledBreakEngine;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1207
    :goto_1
    if-eqz v0, :cond_6

    :try_start_3
    sget-object v2, Lcom/ibm/icu/text/RuleBasedBreakIterator;->gUnhandledBreakEngine:Lcom/ibm/icu/text/UnhandledBreakEngine;

    if-eq v0, v2, :cond_6

    .line 1208
    sget-object v2, Lcom/ibm/icu/text/RuleBasedBreakIterator;->gAllBreakEngines:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1209
    iget-object v2, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fBreakEngines:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1211
    :cond_6
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1170
    :sswitch_0
    :try_start_4
    new-instance v0, Lcom/ibm/icu/text/ThaiBreakEngine;

    invoke-direct {v0}, Lcom/ibm/icu/text/ThaiBreakEngine;-><init>()V

    goto :goto_1

    .line 1203
    :catch_0
    move-exception v0

    .line 1204
    const/4 v0, 0x0

    goto :goto_1

    .line 1173
    :sswitch_1
    new-instance v0, Lcom/ibm/icu/text/LaoBreakEngine;

    invoke-direct {v0}, Lcom/ibm/icu/text/LaoBreakEngine;-><init>()V

    goto :goto_1

    .line 1176
    :sswitch_2
    new-instance v0, Lcom/ibm/icu/text/BurmeseBreakEngine;

    invoke-direct {v0}, Lcom/ibm/icu/text/BurmeseBreakEngine;-><init>()V

    goto :goto_1

    .line 1179
    :sswitch_3
    new-instance v0, Lcom/ibm/icu/text/KhmerBreakEngine;

    invoke-direct {v0}, Lcom/ibm/icu/text/KhmerBreakEngine;-><init>()V

    goto :goto_1

    .line 1182
    :sswitch_4
    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->getBreakType()I

    move-result v0

    if-ne v0, v4, :cond_7

    .line 1183
    new-instance v0, Lcom/ibm/icu/text/CjkBreakEngine;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/ibm/icu/text/CjkBreakEngine;-><init>(Z)V

    goto :goto_1

    .line 1186
    :cond_7
    sget-object v0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->gUnhandledBreakEngine:Lcom/ibm/icu/text/UnhandledBreakEngine;

    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->getBreakType()I

    move-result v2

    invoke-virtual {v0, p1, v2}, Lcom/ibm/icu/text/UnhandledBreakEngine;->handleChar(II)V

    .line 1187
    sget-object v0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->gUnhandledBreakEngine:Lcom/ibm/icu/text/UnhandledBreakEngine;

    goto :goto_1

    .line 1191
    :sswitch_5
    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->getBreakType()I

    move-result v0

    if-ne v0, v4, :cond_8

    .line 1192
    new-instance v0, Lcom/ibm/icu/text/CjkBreakEngine;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lcom/ibm/icu/text/CjkBreakEngine;-><init>(Z)V

    goto :goto_1

    .line 1194
    :cond_8
    sget-object v0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->gUnhandledBreakEngine:Lcom/ibm/icu/text/UnhandledBreakEngine;

    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->getBreakType()I

    move-result v2

    invoke-virtual {v0, p1, v2}, Lcom/ibm/icu/text/UnhandledBreakEngine;->handleChar(II)V

    .line 1195
    sget-object v0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->gUnhandledBreakEngine:Lcom/ibm/icu/text/UnhandledBreakEngine;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 1168
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_4
        0x12 -> :sswitch_5
        0x17 -> :sswitch_3
        0x18 -> :sswitch_1
        0x1c -> :sswitch_2
        0x26 -> :sswitch_0
    .end sparse-switch
.end method

.method private handleNext([S)I
    .locals 14

    .prologue
    .line 1278
    sget-boolean v0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->TRACE:Z

    if-eqz v0, :cond_0

    .line 1279
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "Handle Next   pos      char  state category"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1283
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fLastStatusIndexValid:Z

    .line 1284
    const/4 v0, 0x0

    iput v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fLastRuleStatusIndex:I

    .line 1287
    iget-object v8, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    .line 1288
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fRData:Lcom/ibm/icu/text/RBBIDataWrapper;

    iget-object v9, v0, Lcom/ibm/icu/text/RBBIDataWrapper;->fTrie:Lcom/ibm/icu/impl/CharTrie;

    .line 1291
    invoke-interface {v8}, Ljava/text/CharacterIterator;->current()C

    move-result v0

    .line 1292
    const v1, 0xd800

    if-lt v0, v1, :cond_2

    .line 1293
    invoke-static {v8, v0}, Lcom/ibm/icu/impl/CharacterIteration;->nextTrail32(Ljava/text/CharacterIterator;I)I

    move-result v0

    .line 1294
    const v1, 0x7fffffff

    if-ne v0, v1, :cond_2

    .line 1295
    const/4 v4, -0x1

    .line 1438
    :cond_1
    :goto_0
    return v4

    .line 1298
    :cond_2
    invoke-interface {v8}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v7

    .line 1302
    const/4 v4, 0x1

    .line 1303
    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fRData:Lcom/ibm/icu/text/RBBIDataWrapper;

    invoke-virtual {v1, v4}, Lcom/ibm/icu/text/RBBIDataWrapper;->getRowIndex(I)I

    move-result v3

    .line 1304
    const/4 v2, 0x3

    .line 1305
    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fRData:Lcom/ibm/icu/text/RBBIDataWrapper;

    invoke-virtual {v1, p1}, Lcom/ibm/icu/text/RBBIDataWrapper;->getStateTableFlags([S)I

    move-result v5

    .line 1306
    const/4 v1, 0x1

    .line 1307
    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_3

    .line 1308
    const/4 v2, 0x2

    .line 1309
    const/4 v1, 0x0

    .line 1310
    sget-boolean v5, Lcom/ibm/icu/text/RuleBasedBreakIterator;->TRACE:Z

    if-eqz v5, :cond_3

    .line 1311
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "            "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v8}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v10

    const/4 v11, 0x5

    invoke-static {v10, v11}, Lcom/ibm/icu/text/RBBIDataWrapper;->intToString(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1312
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v6, 0xa

    invoke-static {v0, v6}, Lcom/ibm/icu/text/RBBIDataWrapper;->intToHexString(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1313
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x7

    invoke-static {v4, v10}, Lcom/ibm/icu/text/RBBIDataWrapper;->intToString(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v10, 0x6

    invoke-static {v2, v10}, Lcom/ibm/icu/text/RBBIDataWrapper;->intToString(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1316
    :cond_3
    iget-object v5, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fLookAheadMatches:Lcom/ibm/icu/text/RuleBasedBreakIterator$LookAheadResults;

    invoke-virtual {v5}, Lcom/ibm/icu/text/RuleBasedBreakIterator$LookAheadResults;->reset()V

    move v5, v3

    move v6, v4

    move v4, v7

    move v3, v0

    .line 1319
    :goto_1
    if-eqz v6, :cond_4

    .line 1320
    const v0, 0x7fffffff

    if-ne v3, v0, :cond_8

    .line 1322
    const/4 v0, 0x2

    if-ne v1, v0, :cond_6

    .line 1421
    :cond_4
    if-ne v4, v7, :cond_f

    .line 1422
    sget-boolean v0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->TRACE:Z

    if-eqz v0, :cond_5

    .line 1423
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "Iterator did not move. Advancing by 1."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1425
    :cond_5
    invoke-interface {v8, v7}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 1426
    invoke-static {v8}, Lcom/ibm/icu/impl/CharacterIteration;->next32(Ljava/text/CharacterIterator;)I

    .line 1427
    invoke-interface {v8}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v4

    .line 1435
    :goto_2
    sget-boolean v0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->TRACE:Z

    if-eqz v0, :cond_1

    .line 1436
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1329
    :cond_6
    const/4 v0, 0x2

    .line 1330
    const/4 v1, 0x1

    move v2, v3

    .line 1373
    :goto_3
    add-int/lit8 v3, v5, 0x4

    add-int/2addr v3, v1

    aget-short v6, p1, v3

    .line 1374
    iget-object v3, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fRData:Lcom/ibm/icu/text/RBBIDataWrapper;

    invoke-virtual {v3, v6}, Lcom/ibm/icu/text/RBBIDataWrapper;->getRowIndex(I)I

    move-result v5

    .line 1376
    add-int/lit8 v3, v5, 0x0

    aget-short v3, p1, v3

    const/4 v10, -0x1

    if-ne v3, v10, :cond_10

    .line 1378
    invoke-interface {v8}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v3

    .line 1379
    const/high16 v4, 0x10000

    if-lt v2, v4, :cond_7

    const v4, 0x10ffff

    if-gt v2, v4, :cond_7

    .line 1382
    add-int/lit8 v3, v3, -0x1

    .line 1386
    :cond_7
    add-int/lit8 v4, v5, 0x2

    aget-short v4, p1, v4

    iput v4, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fLastRuleStatusIndex:I

    .line 1389
    :goto_4
    add-int/lit8 v4, v5, 0x0

    aget-short v4, p1, v4

    .line 1390
    if-lez v4, :cond_c

    .line 1392
    iget-object v10, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fLookAheadMatches:Lcom/ibm/icu/text/RuleBasedBreakIterator$LookAheadResults;

    invoke-virtual {v10, v4}, Lcom/ibm/icu/text/RuleBasedBreakIterator$LookAheadResults;->getPosition(I)I

    move-result v4

    .line 1393
    if-ltz v4, :cond_c

    .line 1394
    add-int/lit8 v0, v5, 0x2

    aget-short v0, p1, v0

    iput v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fLastRuleStatusIndex:I

    .line 1395
    invoke-interface {v8, v4}, Ljava/text/CharacterIterator;->setIndex(I)C

    goto/16 :goto_0

    .line 1332
    :cond_8
    const/4 v0, 0x1

    if-ne v1, v0, :cond_b

    .line 1341
    invoke-virtual {v9, v3}, Lcom/ibm/icu/impl/CharTrie;->getCodePointValue(I)C

    move-result v0

    int-to-short v0, v0

    .line 1348
    and-int/lit16 v2, v0, 0x4000

    if-eqz v2, :cond_9

    .line 1349
    iget v2, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fDictionaryCharCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fDictionaryCharCount:I

    .line 1351
    and-int/lit16 v0, v0, -0x4001

    int-to-short v0, v0

    .line 1354
    :cond_9
    sget-boolean v2, Lcom/ibm/icu/text/RuleBasedBreakIterator;->TRACE:Z

    if-eqz v2, :cond_a

    .line 1355
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "            "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v8}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v11

    const/4 v12, 0x5

    invoke-static {v11, v12}, Lcom/ibm/icu/text/RBBIDataWrapper;->intToString(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1356
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v10, 0xa

    invoke-static {v3, v10}, Lcom/ibm/icu/text/RBBIDataWrapper;->intToHexString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1357
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x7

    invoke-static {v6, v10}, Lcom/ibm/icu/text/RBBIDataWrapper;->intToString(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v6, 0x6

    invoke-static {v0, v6}, Lcom/ibm/icu/text/RBBIDataWrapper;->intToString(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1363
    :cond_a
    invoke-interface {v8}, Ljava/text/CharacterIterator;->next()C

    move-result v2

    .line 1364
    const v3, 0xd800

    if-lt v2, v3, :cond_11

    .line 1365
    invoke-static {v8, v2}, Lcom/ibm/icu/impl/CharacterIteration;->nextTrail32(Ljava/text/CharacterIterator;I)I

    move-result v2

    move v13, v1

    move v1, v0

    move v0, v13

    goto/16 :goto_3

    .line 1369
    :cond_b
    const/4 v0, 0x1

    move v1, v2

    move v2, v3

    goto/16 :goto_3

    .line 1400
    :cond_c
    add-int/lit8 v4, v5, 0x1

    aget-short v10, p1, v4

    .line 1401
    if-eqz v10, :cond_e

    .line 1403
    invoke-interface {v8}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v4

    .line 1404
    const/high16 v11, 0x10000

    if-lt v2, v11, :cond_d

    const v11, 0x10ffff

    if-gt v2, v11, :cond_d

    .line 1407
    add-int/lit8 v4, v4, -0x1

    .line 1409
    :cond_d
    iget-object v11, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fLookAheadMatches:Lcom/ibm/icu/text/RuleBasedBreakIterator$LookAheadResults;

    invoke-virtual {v11, v10, v4}, Lcom/ibm/icu/text/RuleBasedBreakIterator$LookAheadResults;->setPosition(II)V

    :cond_e
    move v4, v3

    move v3, v2

    move v2, v1

    move v1, v0

    .line 1413
    goto/16 :goto_1

    .line 1433
    :cond_f
    invoke-interface {v8, v4}, Ljava/text/CharacterIterator;->setIndex(I)C

    goto/16 :goto_2

    :cond_10
    move v3, v4

    goto/16 :goto_4

    :cond_11
    move v13, v1

    move v1, v0

    move v0, v13

    goto/16 :goto_3
.end method

.method private handlePrevious([S)I
    .locals 12

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1442
    iget-object v2, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 1594
    :cond_0
    :goto_0
    return v0

    .line 1453
    :cond_1
    iget-object v2, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fLookAheadMatches:Lcom/ibm/icu/text/RuleBasedBreakIterator$LookAheadResults;

    invoke-virtual {v2}, Lcom/ibm/icu/text/RuleBasedBreakIterator$LookAheadResults;->reset()V

    .line 1459
    iput-boolean v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fLastStatusIndexValid:Z

    .line 1460
    iput v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fLastRuleStatusIndex:I

    .line 1463
    iget-object v2, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-interface {v2}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v7

    .line 1465
    iget-object v2, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-static {v2}, Lcom/ibm/icu/impl/CharacterIteration;->previous32(Ljava/text/CharacterIterator;)I

    move-result v4

    .line 1469
    iget-object v2, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fRData:Lcom/ibm/icu/text/RBBIDataWrapper;

    invoke-virtual {v2, v1}, Lcom/ibm/icu/text/RBBIDataWrapper;->getRowIndex(I)I

    move-result v5

    .line 1470
    const/4 v2, 0x3

    .line 1472
    iget-object v6, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fRData:Lcom/ibm/icu/text/RBBIDataWrapper;

    invoke-virtual {v6, p1}, Lcom/ibm/icu/text/RBBIDataWrapper;->getStateTableFlags([S)I

    move-result v6

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_11

    move v2, v3

    .line 1477
    :goto_1
    sget-boolean v6, Lcom/ibm/icu/text/RuleBasedBreakIterator;->TRACE:Z

    if-eqz v6, :cond_2

    .line 1478
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v8, "Handle Prev   pos   char  state category "

    invoke-virtual {v6, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    move v6, v5

    move v8, v1

    move v5, v0

    move v0, v2

    move v2, v7

    .line 1484
    :goto_2
    const v9, 0x7fffffff

    if-ne v4, v9, :cond_6

    .line 1486
    if-eq v5, v3, :cond_3

    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fRData:Lcom/ibm/icu/text/RBBIDataWrapper;

    iget-object v0, v0, Lcom/ibm/icu/text/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v0, v0, Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;->fVersion:I

    if-ne v0, v1, :cond_5

    .line 1491
    :cond_3
    if-ne v2, v7, :cond_10

    .line 1494
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-interface {v0, v7}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 1495
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-static {v0}, Lcom/ibm/icu/impl/CharacterIteration;->previous32(Ljava/text/CharacterIterator;)I

    move v0, v2

    .line 1583
    :goto_3
    if-ne v0, v7, :cond_4

    .line 1584
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-interface {v0, v7}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 1585
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-static {v0}, Lcom/ibm/icu/impl/CharacterIteration;->previous32(Ljava/text/CharacterIterator;)I

    .line 1586
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-interface {v0}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v0

    .line 1589
    :cond_4
    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-interface {v1, v0}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 1590
    sget-boolean v1, Lcom/ibm/icu/text/RuleBasedBreakIterator;->TRACE:Z

    if-eqz v1, :cond_0

    .line 1591
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    move v5, v3

    move v0, v1

    .line 1503
    :cond_6
    if-ne v5, v1, :cond_7

    .line 1507
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fRData:Lcom/ibm/icu/text/RBBIDataWrapper;

    iget-object v0, v0, Lcom/ibm/icu/text/RBBIDataWrapper;->fTrie:Lcom/ibm/icu/impl/CharTrie;

    invoke-virtual {v0, v4}, Lcom/ibm/icu/impl/CharTrie;->getCodePointValue(I)C

    move-result v0

    int-to-short v0, v0

    .line 1514
    and-int/lit16 v9, v0, 0x4000

    if-eqz v9, :cond_7

    .line 1515
    iget v9, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fDictionaryCharCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fDictionaryCharCount:I

    .line 1517
    and-int/lit16 v0, v0, -0x4001

    .line 1522
    :cond_7
    sget-boolean v9, Lcom/ibm/icu/text/RuleBasedBreakIterator;->TRACE:Z

    if-eqz v9, :cond_8

    .line 1523
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "             "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-interface {v11}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "   "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1524
    const/16 v9, 0x20

    if-gt v9, v4, :cond_a

    const/16 v9, 0x7f

    if-ge v4, v9, :cond_a

    .line 1525
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1529
    :goto_4
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, "  "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, " "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1534
    :cond_8
    add-int/lit8 v6, v6, 0x4

    add-int/2addr v6, v0

    aget-short v9, p1, v6

    .line 1535
    iget-object v6, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fRData:Lcom/ibm/icu/text/RBBIDataWrapper;

    invoke-virtual {v6, v9}, Lcom/ibm/icu/text/RBBIDataWrapper;->getRowIndex(I)I

    move-result v8

    .line 1537
    add-int/lit8 v6, v8, 0x0

    aget-short v6, p1, v6

    const/4 v10, -0x1

    if-ne v6, v10, :cond_9

    .line 1540
    iget-object v2, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-interface {v2}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v2

    .line 1544
    :cond_9
    add-int/lit8 v6, v8, 0x0

    aget-short v6, p1, v6

    .line 1545
    if-lez v6, :cond_b

    .line 1547
    iget-object v10, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fLookAheadMatches:Lcom/ibm/icu/text/RuleBasedBreakIterator$LookAheadResults;

    invoke-virtual {v10, v6}, Lcom/ibm/icu/text/RuleBasedBreakIterator$LookAheadResults;->getPosition(I)I

    move-result v6

    .line 1548
    if-ltz v6, :cond_b

    move v0, v6

    .line 1550
    goto/16 :goto_3

    .line 1527
    :cond_a
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_4

    .line 1553
    :cond_b
    add-int/lit8 v6, v8, 0x1

    aget-short v6, p1, v6

    .line 1554
    if-eqz v6, :cond_c

    .line 1556
    iget-object v10, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-interface {v10}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v10

    .line 1557
    iget-object v11, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fLookAheadMatches:Lcom/ibm/icu/text/RuleBasedBreakIterator$LookAheadResults;

    invoke-virtual {v11, v6, v10}, Lcom/ibm/icu/text/RuleBasedBreakIterator$LookAheadResults;->setPosition(II)V

    .line 1560
    :cond_c
    if-nez v9, :cond_d

    move v0, v2

    .line 1562
    goto/16 :goto_3

    .line 1567
    :cond_d
    if-ne v5, v1, :cond_f

    .line 1568
    iget-object v4, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-static {v4}, Lcom/ibm/icu/impl/CharacterIteration;->previous32(Ljava/text/CharacterIterator;)I

    move-result v4

    :cond_e
    :goto_5
    move v6, v8

    move v8, v9

    .line 1576
    goto/16 :goto_2

    .line 1570
    :cond_f
    if-nez v5, :cond_e

    move v5, v1

    .line 1571
    goto :goto_5

    :cond_10
    move v0, v2

    goto/16 :goto_3

    :cond_11
    move v0, v1

    goto/16 :goto_1
.end method

.method private reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 319
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fCachedBreakPositions:[I

    .line 321
    iput v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fDictionaryCharCount:I

    .line 322
    iput v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fPositionInCache:I

    .line 324
    return-void
.end method

.method private rulesFollowing(I)I
    .locals 2

    .prologue
    .line 759
    const/4 v0, 0x0

    iput v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fLastRuleStatusIndex:I

    .line 760
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fLastStatusIndexValid:Z

    .line 761
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-interface {v0}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v0

    if-lt p1, v0, :cond_2

    .line 762
    :cond_0
    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->last()I

    .line 763
    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->next()I

    move-result v0

    .line 834
    :cond_1
    :goto_0
    return v0

    .line 765
    :cond_2
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-interface {v0}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 766
    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->first()I

    move-result v0

    goto :goto_0

    .line 775
    :cond_3
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fRData:Lcom/ibm/icu/text/RBBIDataWrapper;

    iget-object v0, v0, Lcom/ibm/icu/text/RBBIDataWrapper;->fSRTable:[S

    if-eqz v0, :cond_4

    .line 778
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-interface {v0, p1}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 782
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-static {v0}, Lcom/ibm/icu/impl/CharacterIteration;->next32(Ljava/text/CharacterIterator;)I

    .line 784
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fRData:Lcom/ibm/icu/text/RBBIDataWrapper;

    iget-object v0, v0, Lcom/ibm/icu/text/RBBIDataWrapper;->fSRTable:[S

    invoke-direct {p0, v0}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->handlePrevious([S)I

    .line 785
    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->next()I

    move-result v0

    .line 786
    :goto_1
    if-gt v0, p1, :cond_1

    .line 787
    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->next()I

    move-result v0

    goto :goto_1

    .line 791
    :cond_4
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fRData:Lcom/ibm/icu/text/RBBIDataWrapper;

    iget-object v0, v0, Lcom/ibm/icu/text/RBBIDataWrapper;->fSFTable:[S

    if-eqz v0, :cond_6

    .line 794
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-interface {v0, p1}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 795
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-static {v0}, Lcom/ibm/icu/impl/CharacterIteration;->previous32(Ljava/text/CharacterIterator;)I

    .line 797
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fRData:Lcom/ibm/icu/text/RBBIDataWrapper;

    iget-object v0, v0, Lcom/ibm/icu/text/RBBIDataWrapper;->fSFTable:[S

    invoke-direct {p0, v0}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->handleNext([S)I

    .line 801
    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->previous()I

    move-result v0

    .line 802
    :goto_2
    if-le v0, p1, :cond_5

    .line 803
    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->previous()I

    move-result v1

    .line 804
    if-le v1, p1, :cond_1

    move v0, v1

    .line 807
    goto :goto_2

    .line 809
    :cond_5
    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->next()I

    move-result v0

    .line 810
    if-gt v0, p1, :cond_1

    .line 811
    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->next()I

    move-result v0

    goto :goto_0

    .line 824
    :cond_6
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-interface {v0, p1}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 825
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-interface {v0}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v0

    if-ne p1, v0, :cond_7

    .line 826
    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->next()I

    move-result v0

    goto :goto_0

    .line 828
    :cond_7
    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->previous()I

    move-result v0

    .line 830
    :goto_3
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-gt v0, p1, :cond_1

    .line 831
    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->next()I

    move-result v0

    goto :goto_3
.end method

.method private rulesPreceding(I)I
    .locals 2

    .prologue
    .line 876
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-interface {v0}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v0

    if-le p1, v0, :cond_2

    .line 878
    :cond_0
    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->last()I

    move-result v0

    .line 931
    :cond_1
    :goto_0
    return v0

    .line 880
    :cond_2
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-interface {v0}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 881
    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->first()I

    move-result v0

    goto :goto_0

    .line 889
    :cond_3
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fRData:Lcom/ibm/icu/text/RBBIDataWrapper;

    iget-object v0, v0, Lcom/ibm/icu/text/RBBIDataWrapper;->fSFTable:[S

    if-eqz v0, :cond_4

    .line 892
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-interface {v0, p1}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 896
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-static {v0}, Lcom/ibm/icu/impl/CharacterIteration;->previous32(Ljava/text/CharacterIterator;)I

    .line 897
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fRData:Lcom/ibm/icu/text/RBBIDataWrapper;

    iget-object v0, v0, Lcom/ibm/icu/text/RBBIDataWrapper;->fSFTable:[S

    invoke-direct {p0, v0}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->handleNext([S)I

    .line 898
    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->previous()I

    move-result v0

    .line 899
    :goto_1
    if-lt v0, p1, :cond_1

    .line 900
    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->previous()I

    move-result v0

    goto :goto_1

    .line 904
    :cond_4
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fRData:Lcom/ibm/icu/text/RBBIDataWrapper;

    iget-object v0, v0, Lcom/ibm/icu/text/RBBIDataWrapper;->fSRTable:[S

    if-eqz v0, :cond_6

    .line 906
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-interface {v0, p1}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 907
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-static {v0}, Lcom/ibm/icu/impl/CharacterIteration;->next32(Ljava/text/CharacterIterator;)I

    .line 909
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fRData:Lcom/ibm/icu/text/RBBIDataWrapper;

    iget-object v0, v0, Lcom/ibm/icu/text/RBBIDataWrapper;->fSRTable:[S

    invoke-direct {p0, v0}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->handlePrevious([S)I

    .line 914
    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->next()I

    move-result v0

    .line 915
    :goto_2
    if-ge v0, p1, :cond_5

    .line 916
    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->next()I

    move-result v1

    .line 917
    if-ge v1, p1, :cond_1

    move v0, v1

    .line 920
    goto :goto_2

    .line 922
    :cond_5
    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->previous()I

    move-result v0

    .line 923
    if-lt v0, p1, :cond_1

    .line 924
    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->previous()I

    move-result v0

    goto :goto_0

    .line 930
    :cond_6
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-interface {v0, p1}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 931
    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->previous()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 136
    invoke-super {p0}, Lcom/ibm/icu/text/BreakIterator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/RuleBasedBreakIterator;

    .line 137
    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    if-eqz v1, :cond_0

    .line 138
    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-interface {v1}, Ljava/text/CharacterIterator;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/CharacterIterator;

    check-cast v1, Ljava/text/CharacterIterator;

    iput-object v1, v0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    .line 140
    :cond_0
    sget-object v1, Lcom/ibm/icu/text/RuleBasedBreakIterator;->gAllBreakEngines:Ljava/util/List;

    monitor-enter v1

    .line 141
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    sget-object v3, Lcom/ibm/icu/text/RuleBasedBreakIterator;->gAllBreakEngines:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, v0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fBreakEngines:Ljava/util/List;

    .line 142
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    new-instance v1, Lcom/ibm/icu/text/RuleBasedBreakIterator$LookAheadResults;

    invoke-direct {v1}, Lcom/ibm/icu/text/RuleBasedBreakIterator$LookAheadResults;-><init>()V

    iput-object v1, v0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fLookAheadMatches:Lcom/ibm/icu/text/RuleBasedBreakIterator$LookAheadResults;

    .line 144
    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fCachedBreakPositions:[I

    if-eqz v1, :cond_1

    .line 145
    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fCachedBreakPositions:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fCachedBreakPositions:[I

    .line 147
    :cond_1
    return-object v0

    .line 142
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public current()I
    .locals 1

    .prologue
    .line 989
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-interface {v0}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 157
    if-nez p1, :cond_1

    .line 181
    :cond_0
    :goto_0
    return v0

    .line 160
    :cond_1
    if-ne p0, p1, :cond_2

    move v0, v1

    .line 161
    goto :goto_0

    .line 164
    :cond_2
    :try_start_0
    check-cast p1, Lcom/ibm/icu/text/RuleBasedBreakIterator;

    .line 165
    iget-object v2, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fRData:Lcom/ibm/icu/text/RBBIDataWrapper;

    iget-object v3, p1, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fRData:Lcom/ibm/icu/text/RBBIDataWrapper;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fRData:Lcom/ibm/icu/text/RBBIDataWrapper;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fRData:Lcom/ibm/icu/text/RBBIDataWrapper;

    if-eqz v2, :cond_0

    .line 168
    :cond_3
    iget-object v2, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fRData:Lcom/ibm/icu/text/RBBIDataWrapper;

    if-eqz v2, :cond_4

    iget-object v2, p1, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fRData:Lcom/ibm/icu/text/RBBIDataWrapper;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fRData:Lcom/ibm/icu/text/RBBIDataWrapper;

    iget-object v2, v2, Lcom/ibm/icu/text/RBBIDataWrapper;->fRuleSource:Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fRData:Lcom/ibm/icu/text/RBBIDataWrapper;

    iget-object v3, v3, Lcom/ibm/icu/text/RBBIDataWrapper;->fRuleSource:Ljava/lang/String;

    .line 169
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 172
    :cond_4
    iget-object v2, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    if-nez v2, :cond_5

    move v0, v1

    .line 173
    goto :goto_0

    .line 175
    :cond_5
    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    if-eqz v1, :cond_0

    .line 178
    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    iget-object v2, p1, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 180
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public first()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 370
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fCachedBreakPositions:[I

    .line 371
    iput v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fDictionaryCharCount:I

    .line 372
    iput v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fPositionInCache:I

    .line 373
    iput v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fLastRuleStatusIndex:I

    .line 374
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fLastStatusIndexValid:Z

    .line 375
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    if-nez v0, :cond_0

    .line 376
    const/4 v0, -0x1

    .line 379
    :goto_0
    return v0

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-interface {v0}, Ljava/text/CharacterIterator;->first()C

    .line 379
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-interface {v0}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v0

    goto :goto_0
.end method

.method public following(I)I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 730
    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->getText()Ljava/text/CharacterIterator;

    move-result-object v0

    .line 736
    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fCachedBreakPositions:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fCachedBreakPositions:[I

    aget v1, v1, v3

    if-lt p1, v1, :cond_0

    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fCachedBreakPositions:[I

    iget-object v2, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fCachedBreakPositions:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    if-lt p1, v1, :cond_1

    .line 738
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fCachedBreakPositions:[I

    .line 739
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->rulesFollowing(I)I

    move-result v0

    .line 751
    :goto_0
    return v0

    .line 746
    :cond_1
    iput v3, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fPositionInCache:I

    .line 747
    :goto_1
    iget v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fPositionInCache:I

    iget-object v2, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fCachedBreakPositions:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fCachedBreakPositions:[I

    iget v2, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fPositionInCache:I

    aget v1, v1, v2

    if-lt p1, v1, :cond_2

    .line 749
    iget v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fPositionInCache:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fPositionInCache:I

    goto :goto_1

    .line 750
    :cond_2
    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fCachedBreakPositions:[I

    iget v2, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fPositionInCache:I

    aget v1, v1, v2

    invoke-interface {v0, v1}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 751
    invoke-interface {v0}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v0

    goto :goto_0
.end method

.method getBreakType()I
    .locals 1

    .prologue
    .line 1126
    iget v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fBreakType:I

    return v0
.end method

.method public getText()Ljava/text/CharacterIterator;
    .locals 1

    .prologue
    .line 1099
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fRData:Lcom/ibm/icu/text/RBBIDataWrapper;

    iget-object v0, v0, Lcom/ibm/icu/text/RBBIDataWrapper;->fRuleSource:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public last()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 390
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fCachedBreakPositions:[I

    .line 391
    iput v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fDictionaryCharCount:I

    .line 392
    iput v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fPositionInCache:I

    .line 394
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    if-nez v0, :cond_0

    .line 395
    iput v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fLastRuleStatusIndex:I

    .line 396
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fLastStatusIndexValid:Z

    .line 397
    const/4 v0, -0x1

    .line 407
    :goto_0
    return v0

    .line 404
    :cond_0
    iput-boolean v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fLastStatusIndexValid:Z

    .line 405
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-interface {v0}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v0

    .line 406
    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-interface {v1, v0}, Ljava/text/CharacterIterator;->setIndex(I)C

    goto :goto_0
.end method

.method public next()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 443
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fCachedBreakPositions:[I

    if-eqz v0, :cond_2

    .line 444
    iget v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fPositionInCache:I

    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fCachedBreakPositions:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 445
    iget v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fPositionInCache:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fPositionInCache:I

    .line 446
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fCachedBreakPositions:[I

    iget v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fPositionInCache:I

    aget v0, v0, v1

    .line 447
    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-interface {v1, v0}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 461
    :cond_0
    :goto_0
    return v0

    .line 451
    :cond_1
    invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->reset()V

    .line 455
    :cond_2
    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->current()I

    move-result v1

    .line 456
    iput v3, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fDictionaryCharCount:I

    .line 457
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fRData:Lcom/ibm/icu/text/RBBIDataWrapper;

    iget-object v0, v0, Lcom/ibm/icu/text/RBBIDataWrapper;->fFTable:[S

    invoke-direct {p0, v0}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->handleNext([S)I

    move-result v0

    .line 458
    iget v2, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fDictionaryCharCount:I

    if-lez v2, :cond_0

    .line 459
    invoke-direct {p0, v1, v0, v3}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->checkDictionary(IIZ)I

    move-result v0

    goto :goto_0
.end method

.method public preceding(I)I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 845
    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->getText()Ljava/text/CharacterIterator;

    move-result-object v0

    .line 851
    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fCachedBreakPositions:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fCachedBreakPositions:[I

    aget v1, v1, v3

    if-le p1, v1, :cond_0

    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fCachedBreakPositions:[I

    iget-object v2, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fCachedBreakPositions:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    if-le p1, v1, :cond_1

    .line 853
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fCachedBreakPositions:[I

    .line 854
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->rulesPreceding(I)I

    move-result v0

    .line 867
    :goto_0
    return v0

    .line 861
    :cond_1
    iput v3, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fPositionInCache:I

    .line 862
    :goto_1
    iget v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fPositionInCache:I

    iget-object v2, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fCachedBreakPositions:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fCachedBreakPositions:[I

    iget v2, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fPositionInCache:I

    aget v1, v1, v2

    if-le p1, v1, :cond_2

    .line 864
    iget v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fPositionInCache:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fPositionInCache:I

    goto :goto_1

    .line 865
    :cond_2
    iget v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fPositionInCache:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fPositionInCache:I

    .line 866
    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fCachedBreakPositions:[I

    iget v2, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fPositionInCache:I

    aget v1, v1, v2

    invoke-interface {v0, v1}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 867
    invoke-interface {v0}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v0

    goto :goto_0
.end method

.method public previous()I
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v5, -0x1

    const/4 v1, 0x0

    .line 634
    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->getText()Ljava/text/CharacterIterator;

    move-result-object v0

    .line 636
    iput-boolean v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fLastStatusIndexValid:Z

    .line 640
    iget-object v3, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fCachedBreakPositions:[I

    if-eqz v3, :cond_2

    .line 641
    iget v3, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fPositionInCache:I

    if-lez v3, :cond_1

    .line 642
    iget v2, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fPositionInCache:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fPositionInCache:I

    .line 645
    iget v2, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fPositionInCache:I

    if-gtz v2, :cond_0

    .line 646
    iput-boolean v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fLastStatusIndexValid:Z

    .line 648
    :cond_0
    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fCachedBreakPositions:[I

    iget v2, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fPositionInCache:I

    aget v3, v1, v2

    .line 649
    invoke-interface {v0, v3}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 718
    :goto_0
    return v3

    .line 652
    :cond_1
    invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->reset()V

    .line 657
    :cond_2
    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->current()I

    move-result v3

    .line 658
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-interface {v0}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v0

    if-ne v3, v0, :cond_4

    .line 659
    :cond_3
    iput v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fLastRuleStatusIndex:I

    .line 660
    iput-boolean v2, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fLastStatusIndexValid:Z

    move v3, v5

    .line 661
    goto :goto_0

    .line 665
    :cond_4
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fRData:Lcom/ibm/icu/text/RBBIDataWrapper;

    iget-object v0, v0, Lcom/ibm/icu/text/RBBIDataWrapper;->fSRTable:[S

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fRData:Lcom/ibm/icu/text/RBBIDataWrapper;

    iget-object v0, v0, Lcom/ibm/icu/text/RBBIDataWrapper;->fSFTable:[S

    if-eqz v0, :cond_7

    .line 666
    :cond_5
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fRData:Lcom/ibm/icu/text/RBBIDataWrapper;

    iget-object v0, v0, Lcom/ibm/icu/text/RBBIDataWrapper;->fRTable:[S

    invoke-direct {p0, v0}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->handlePrevious([S)I

    move-result v0

    .line 667
    iget v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fDictionaryCharCount:I

    if-lez v1, :cond_6

    .line 668
    invoke-direct {p0, v0, v3, v2}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->checkDictionary(IIZ)I

    move-result v0

    :cond_6
    move v3, v0

    .line 670
    goto :goto_0

    .line 680
    :cond_7
    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->current()I

    move-result v6

    .line 682
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-static {v0}, Lcom/ibm/icu/impl/CharacterIteration;->previous32(Ljava/text/CharacterIterator;)I

    .line 683
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fRData:Lcom/ibm/icu/text/RBBIDataWrapper;

    iget-object v0, v0, Lcom/ibm/icu/text/RBBIDataWrapper;->fRTable:[S

    invoke-direct {p0, v0}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->handlePrevious([S)I

    move-result v0

    .line 684
    if-ne v0, v5, :cond_8

    .line 685
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-interface {v0}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v0

    .line 686
    iget-object v3, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-interface {v3, v0}, Ljava/text/CharacterIterator;->setIndex(I)C

    :cond_8
    move v3, v0

    move v0, v1

    .line 697
    :goto_1
    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->next()I

    move-result v4

    .line 698
    if-eq v4, v5, :cond_9

    if-lt v4, v6, :cond_a

    .line 715
    :cond_9
    iget-object v2, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-interface {v2, v3}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 716
    iput v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fLastRuleStatusIndex:I

    .line 717
    iput-boolean v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fLastStatusIndexValid:Z

    goto :goto_0

    .line 702
    :cond_a
    iget v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fLastRuleStatusIndex:I

    move v0, v2

    move v3, v4

    .line 703
    goto :goto_1
.end method

.method setBreakType(I)V
    .locals 0

    .prologue
    .line 1119
    iput p1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fBreakType:I

    .line 1120
    return-void
.end method

.method public setText(Ljava/text/CharacterIterator;)V
    .locals 0

    .prologue
    .line 1110
    iput-object p1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    .line 1112
    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->first()I

    .line 1113
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 192
    const-string/jumbo v0, ""

    .line 193
    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fRData:Lcom/ibm/icu/text/RBBIDataWrapper;

    if-eqz v1, :cond_0

    .line 194
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fRData:Lcom/ibm/icu/text/RBBIDataWrapper;

    iget-object v0, v0, Lcom/ibm/icu/text/RBBIDataWrapper;->fRuleSource:Ljava/lang/String;

    .line 196
    :cond_0
    return-object v0
.end method
