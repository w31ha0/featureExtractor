.class Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames;
.super Ljava/lang/Object;
.source "TimeZoneNamesImpl.java"


# static fields
.field static final EMPTY_ZNAMES:Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames;

.field private static final EX_LOC_INDEX:I


# instance fields
.field private _names:[Ljava/lang/String;

.field private didAddIntoTrie:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 747
    new-instance v0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames;-><init>([Ljava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames;->EMPTY_ZNAMES:Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames;

    .line 749
    sget-object v0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->EXEMPLAR_LOCATION:Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->ordinal()I

    move-result v0

    sput v0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames;->EX_LOC_INDEX:I

    return-void
.end method

.method protected constructor <init>([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 754
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 755
    iput-object p1, p0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames;->_names:[Ljava/lang/String;

    .line 756
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames;->didAddIntoTrie:Z

    .line 757
    return-void

    .line 756
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private addNamesIntoTrie(Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/impl/TextTrieMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/ibm/icu/impl/TextTrieMap",
            "<",
            "Lcom/ibm/icu/impl/TimeZoneNamesImpl$NameInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 805
    iget-object v0, p0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames;->_names:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames;->didAddIntoTrie:Z

    if-eqz v0, :cond_1

    .line 820
    :cond_0
    return-void

    .line 808
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames;->didAddIntoTrie:Z

    .line 810
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames;->_names:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 811
    iget-object v1, p0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames;->_names:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 812
    if-eqz v1, :cond_2

    .line 813
    new-instance v2, Lcom/ibm/icu/impl/TimeZoneNamesImpl$NameInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/ibm/icu/impl/TimeZoneNamesImpl$NameInfo;-><init>(Lcom/ibm/icu/impl/TimeZoneNamesImpl$1;)V

    .line 814
    iput-object p1, v2, Lcom/ibm/icu/impl/TimeZoneNamesImpl$NameInfo;->mzID:Ljava/lang/String;

    .line 815
    iput-object p2, v2, Lcom/ibm/icu/impl/TimeZoneNamesImpl$NameInfo;->tzID:Ljava/lang/String;

    .line 816
    invoke-static {v0}, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames;->getNameType(I)Lcom/ibm/icu/text/TimeZoneNames$NameType;

    move-result-object v3

    iput-object v3, v2, Lcom/ibm/icu/impl/TimeZoneNamesImpl$NameInfo;->type:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    .line 817
    invoke-virtual {p3, v1, v2}, Lcom/ibm/icu/impl/TextTrieMap;->put(Ljava/lang/CharSequence;Ljava/lang/Object;)Lcom/ibm/icu/impl/TextTrieMap;

    .line 810
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static createMetaZoneAndPutInCache(Ljava/util/Map;[Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames;",
            ">;[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames;"
        }
    .end annotation

    .prologue
    .line 761
    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 763
    if-nez p1, :cond_0

    .line 764
    sget-object v0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames;->EMPTY_ZNAMES:Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames;

    .line 768
    :goto_0
    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 769
    return-object v0

    .line 766
    :cond_0
    new-instance v0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames;

    invoke-direct {v0, p1}, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames;-><init>([Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static createTimeZoneAndPutInCache(Ljava/util/Map;[Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames;",
            ">;[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames;"
        }
    .end annotation

    .prologue
    .line 776
    if-nez p1, :cond_0

    sget v0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames;->EX_LOC_INDEX:I

    add-int/lit8 v0, v0, 0x1

    new-array p1, v0, [Ljava/lang/String;

    .line 777
    :cond_0
    sget v0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames;->EX_LOC_INDEX:I

    aget-object v0, p1, v0

    if-nez v0, :cond_1

    .line 778
    sget v0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames;->EX_LOC_INDEX:I

    invoke-static {p2}, Lcom/ibm/icu/impl/TimeZoneNamesImpl;->getDefaultExemplarLocationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    .line 781
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 782
    new-instance v1, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames;

    invoke-direct {v1, p1}, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames;-><init>([Ljava/lang/String;)V

    .line 783
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    return-object v1
.end method

.method private static getNameType(I)Lcom/ibm/icu/text/TimeZoneNames$NameType;
    .locals 3

    .prologue
    .line 727
    sget-object v0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$1;->$SwitchMap$com$ibm$icu$impl$TimeZoneNamesImpl$ZNames$NameTypeIndex:[I

    sget-object v1, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->values:[Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    aget-object v1, v1, p0

    invoke-virtual {v1}, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 743
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No NameType match for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 729
    :pswitch_0
    sget-object v0, Lcom/ibm/icu/text/TimeZoneNames$NameType;->EXEMPLAR_LOCATION:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    .line 741
    :goto_0
    return-object v0

    .line 731
    :pswitch_1
    sget-object v0, Lcom/ibm/icu/text/TimeZoneNames$NameType;->LONG_GENERIC:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    goto :goto_0

    .line 733
    :pswitch_2
    sget-object v0, Lcom/ibm/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    goto :goto_0

    .line 735
    :pswitch_3
    sget-object v0, Lcom/ibm/icu/text/TimeZoneNames$NameType;->LONG_DAYLIGHT:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    goto :goto_0

    .line 737
    :pswitch_4
    sget-object v0, Lcom/ibm/icu/text/TimeZoneNames$NameType;->SHORT_GENERIC:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    goto :goto_0

    .line 739
    :pswitch_5
    sget-object v0, Lcom/ibm/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    goto :goto_0

    .line 741
    :pswitch_6
    sget-object v0, Lcom/ibm/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    goto :goto_0

    .line 727
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private static getNameTypeIndex(Lcom/ibm/icu/text/TimeZoneNames$NameType;)I
    .locals 3

    .prologue
    .line 706
    sget-object v0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$1;->$SwitchMap$com$ibm$icu$text$TimeZoneNames$NameType:[I

    invoke-virtual {p0}, Lcom/ibm/icu/text/TimeZoneNames$NameType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 722
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No NameTypeIndex match for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 708
    :pswitch_0
    sget-object v0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->EXEMPLAR_LOCATION:Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->ordinal()I

    move-result v0

    .line 720
    :goto_0
    return v0

    .line 710
    :pswitch_1
    sget-object v0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->LONG_GENERIC:Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->ordinal()I

    move-result v0

    goto :goto_0

    .line 712
    :pswitch_2
    sget-object v0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->LONG_STANDARD:Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->ordinal()I

    move-result v0

    goto :goto_0

    .line 714
    :pswitch_3
    sget-object v0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->LONG_DAYLIGHT:Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->ordinal()I

    move-result v0

    goto :goto_0

    .line 716
    :pswitch_4
    sget-object v0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->SHORT_GENERIC:Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->ordinal()I

    move-result v0

    goto :goto_0

    .line 718
    :pswitch_5
    sget-object v0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->SHORT_STANDARD:Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->ordinal()I

    move-result v0

    goto :goto_0

    .line 720
    :pswitch_6
    sget-object v0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->SHORT_DAYLIGHT:Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->ordinal()I

    move-result v0

    goto :goto_0

    .line 706
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public addAsMetaZoneIntoTrie(Ljava/lang/String;Lcom/ibm/icu/impl/TextTrieMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/ibm/icu/impl/TextTrieMap",
            "<",
            "Lcom/ibm/icu/impl/TimeZoneNamesImpl$NameInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 797
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames;->addNamesIntoTrie(Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/impl/TextTrieMap;)V

    .line 798
    return-void
.end method

.method public addAsTimeZoneIntoTrie(Ljava/lang/String;Lcom/ibm/icu/impl/TextTrieMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/ibm/icu/impl/TextTrieMap",
            "<",
            "Lcom/ibm/icu/impl/TimeZoneNamesImpl$NameInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 801
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames;->addNamesIntoTrie(Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/impl/TextTrieMap;)V

    .line 802
    return-void
.end method

.method public getName(Lcom/ibm/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 788
    invoke-static {p1}, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames;->getNameTypeIndex(Lcom/ibm/icu/text/TimeZoneNames$NameType;)I

    move-result v0

    .line 789
    iget-object v1, p0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames;->_names:[Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames;->_names:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 790
    iget-object v1, p0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames;->_names:[Ljava/lang/String;

    aget-object v0, v1, v0

    .line 792
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
