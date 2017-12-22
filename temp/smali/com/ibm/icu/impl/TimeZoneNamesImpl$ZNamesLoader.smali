.class final Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNamesLoader;
.super Lcom/ibm/icu/impl/UResource$Sink;
.source "TimeZoneNamesImpl.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static DUMMY_LOADER:Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNamesLoader;


# instance fields
.field private names:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 584
    const-class v0, Lcom/ibm/icu/impl/TimeZoneNamesImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->$assertionsDisabled:Z

    .line 590
    new-instance v0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNamesLoader;

    invoke-direct {v0}, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNamesLoader;-><init>()V

    sput-object v0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->DUMMY_LOADER:Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNamesLoader;

    return-void

    .line 584
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 584
    invoke-direct {p0}, Lcom/ibm/icu/impl/UResource$Sink;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/impl/TimeZoneNamesImpl$1;)V
    .locals 0

    .prologue
    .line 584
    invoke-direct {p0}, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNamesLoader;-><init>()V

    return-void
.end method

.method static synthetic access$400()Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNamesLoader;
    .locals 1

    .prologue
    .line 584
    sget-object v0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->DUMMY_LOADER:Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNamesLoader;

    return-object v0
.end method

.method static synthetic access$600(Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNamesLoader;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 584
    invoke-direct {p0}, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->getNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getNames()[Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x7

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 658
    iget-object v0, p0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->names:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/Utility;->sameObjects(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 685
    :goto_0
    return-object v1

    :cond_0
    move v2, v3

    move v0, v3

    .line 662
    :goto_1
    if-ge v2, v6, :cond_3

    .line 663
    iget-object v4, p0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->names:[Ljava/lang/String;

    aget-object v4, v4, v2

    .line 664
    if-eqz v4, :cond_1

    .line 665
    const-string/jumbo v5, "\u2205\u2205\u2205"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 666
    iget-object v4, p0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->names:[Ljava/lang/String;

    aput-object v1, v4, v2

    .line 662
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 668
    :cond_2
    add-int/lit8 v0, v2, 0x1

    goto :goto_2

    .line 674
    :cond_3
    if-ne v0, v6, :cond_4

    .line 676
    iget-object v0, p0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->names:[Ljava/lang/String;

    :goto_3
    move-object v1, v0

    .line 685
    goto :goto_0

    .line 677
    :cond_4
    if-nez v0, :cond_5

    move-object v0, v1

    .line 679
    goto :goto_3

    .line 683
    :cond_5
    iget-object v1, p0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->names:[Ljava/lang/String;

    invoke-static {v1, v3, v0}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_3
.end method

.method private static nameTypeIndexFromKey(Lcom/ibm/icu/impl/UResource$Key;)Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;
    .locals 7

    .prologue
    const/16 v6, 0x67

    const/16 v5, 0x64

    const/16 v4, 0x73

    const/4 v0, 0x0

    .line 617
    invoke-virtual {p0}, Lcom/ibm/icu/impl/UResource$Key;->length()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 633
    :cond_0
    :goto_0
    return-object v0

    .line 620
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/ibm/icu/impl/UResource$Key;->charAt(I)C

    move-result v1

    .line 621
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/ibm/icu/impl/UResource$Key;->charAt(I)C

    move-result v2

    .line 622
    const/16 v3, 0x6c

    if-ne v1, v3, :cond_4

    .line 623
    if-ne v2, v6, :cond_2

    sget-object v0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->LONG_GENERIC:Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    goto :goto_0

    :cond_2
    if-ne v2, v4, :cond_3

    sget-object v0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->LONG_STANDARD:Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    goto :goto_0

    :cond_3
    if-ne v2, v5, :cond_0

    sget-object v0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->LONG_DAYLIGHT:Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    goto :goto_0

    .line 626
    :cond_4
    if-ne v1, v4, :cond_7

    .line 627
    if-ne v2, v6, :cond_5

    sget-object v0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->SHORT_GENERIC:Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    goto :goto_0

    :cond_5
    if-ne v2, v4, :cond_6

    sget-object v0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->SHORT_STANDARD:Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    goto :goto_0

    :cond_6
    if-ne v2, v5, :cond_0

    sget-object v0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->SHORT_DAYLIGHT:Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    goto :goto_0

    .line 630
    :cond_7
    const/16 v3, 0x65

    if-ne v1, v3, :cond_0

    const/16 v1, 0x63

    if-ne v2, v1, :cond_0

    .line 631
    sget-object v0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->EXEMPLAR_LOCATION:Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    goto :goto_0
.end method

.method private setNameIfEmpty(Lcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)V
    .locals 3

    .prologue
    const/4 v2, 0x7

    .line 637
    iget-object v0, p0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->names:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 638
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->names:[Ljava/lang/String;

    .line 640
    :cond_0
    invoke-static {p1}, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->nameTypeIndexFromKey(Lcom/ibm/icu/impl/UResource$Key;)Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    move-result-object v0

    .line 641
    if-nez v0, :cond_2

    .line 646
    :cond_1
    :goto_0
    return-void

    .line 642
    :cond_2
    sget-boolean v1, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->$assertionsDisabled:Z

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->ordinal()I

    move-result v1

    if-lt v1, v2, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 643
    :cond_3
    iget-object v1, p0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->names:[Ljava/lang/String;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    if-nez v1, :cond_1

    .line 644
    iget-object v1, p0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->names:[Ljava/lang/String;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->ordinal()I

    move-result v0

    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    goto :goto_0
.end method


# virtual methods
.method loadMetaZone(Lcom/ibm/icu/impl/ICUResourceBundle;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 593
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "meta:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 594
    invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->loadNames(Lcom/ibm/icu/impl/ICUResourceBundle;Ljava/lang/String;)V

    .line 595
    return-void
.end method

.method loadNames(Lcom/ibm/icu/impl/ICUResourceBundle;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 603
    sget-boolean v0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 604
    :cond_0
    sget-boolean v0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 605
    :cond_1
    sget-boolean v0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 608
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->names:[Ljava/lang/String;

    .line 610
    :try_start_0
    invoke-virtual {p1, p2, p0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Lcom/ibm/icu/impl/UResource$Sink;)V
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 613
    :goto_0
    return-void

    .line 611
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method loadTimeZone(Lcom/ibm/icu/impl/ICUResourceBundle;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 598
    const/16 v0, 0x2f

    const/16 v1, 0x3a

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 599
    invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->loadNames(Lcom/ibm/icu/impl/ICUResourceBundle;Ljava/lang/String;)V

    .line 600
    return-void
.end method

.method public put(Lcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;Z)V
    .locals 3

    .prologue
    .line 650
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getTable()Lcom/ibm/icu/impl/UResource$Table;

    move-result-object v1

    .line 651
    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1, v0, p1, p2}, Lcom/ibm/icu/impl/UResource$Table;->getKeyAndValue(ILcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 652
    sget-boolean v2, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getType()I

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 653
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->setNameIfEmpty(Lcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)V

    .line 651
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 655
    :cond_1
    return-void
.end method
