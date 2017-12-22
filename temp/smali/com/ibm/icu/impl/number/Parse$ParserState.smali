.class Lcom/ibm/icu/impl/number/Parse$ParserState;
.super Ljava/lang/Object;
.source "Parse.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field affixHolders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/ibm/icu/impl/number/Parse$AffixHolder;",
            ">;"
        }
    .end annotation
.end field

.field caseSensitive:Z

.field decimalCp1:I

.field decimalCp2:I

.field decimalType1:Lcom/ibm/icu/impl/number/Parse$SeparatorType;

.field decimalType2:Lcom/ibm/icu/impl/number/Parse$SeparatorType;

.field digitTrie:Lcom/ibm/icu/impl/TextTrieMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ibm/icu/impl/TextTrieMap",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field groupingCp1:I

.field groupingCp2:I

.field groupingMode:Lcom/ibm/icu/impl/number/Parse$GroupingMode;

.field groupingType1:Lcom/ibm/icu/impl/number/Parse$SeparatorType;

.field groupingType2:Lcom/ibm/icu/impl/number/Parse$SeparatorType;

.field items:[Lcom/ibm/icu/impl/number/Parse$StateItem;

.field length:I

.field mode:Lcom/ibm/icu/impl/number/Parse$ParseMode;

.field parseCurrency:Z

.field prevItems:[Lcom/ibm/icu/impl/number/Parse$StateItem;

.field prevLength:I

.field properties:Lcom/ibm/icu/impl/number/Parse$IProperties;

.field symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 668
    const-class v0, Lcom/ibm/icu/impl/number/Parse;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/ibm/icu/impl/number/Parse$ParserState;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 4

    .prologue
    const/16 v1, 0x10

    .line 697
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 671
    new-array v0, v1, [Lcom/ibm/icu/impl/number/Parse$StateItem;

    iput-object v0, p0, Lcom/ibm/icu/impl/number/Parse$ParserState;->items:[Lcom/ibm/icu/impl/number/Parse$StateItem;

    .line 672
    new-array v0, v1, [Lcom/ibm/icu/impl/number/Parse$StateItem;

    iput-object v0, p0, Lcom/ibm/icu/impl/number/Parse$ParserState;->prevItems:[Lcom/ibm/icu/impl/number/Parse$StateItem;

    .line 695
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/number/Parse$ParserState;->affixHolders:Ljava/util/Set;

    .line 698
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/ibm/icu/impl/number/Parse$ParserState;->items:[Lcom/ibm/icu/impl/number/Parse$StateItem;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 699
    iget-object v1, p0, Lcom/ibm/icu/impl/number/Parse$ParserState;->items:[Lcom/ibm/icu/impl/number/Parse$StateItem;

    new-instance v2, Lcom/ibm/icu/impl/number/Parse$StateItem;

    add-int/lit8 v3, v0, 0x41

    int-to-char v3, v3

    invoke-direct {v2, v3}, Lcom/ibm/icu/impl/number/Parse$StateItem;-><init>(C)V

    aput-object v2, v1, v0

    .line 700
    iget-object v1, p0, Lcom/ibm/icu/impl/number/Parse$ParserState;->prevItems:[Lcom/ibm/icu/impl/number/Parse$StateItem;

    new-instance v2, Lcom/ibm/icu/impl/number/Parse$StateItem;

    add-int/lit8 v3, v0, 0x41

    int-to-char v3, v3

    invoke-direct {v2, v3}, Lcom/ibm/icu/impl/number/Parse$StateItem;-><init>(C)V

    aput-object v2, v1, v0

    .line 698
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 702
    :cond_0
    return-void
.end method


# virtual methods
.method clear()Lcom/ibm/icu/impl/number/Parse$ParserState;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 710
    iput v0, p0, Lcom/ibm/icu/impl/number/Parse$ParserState;->length:I

    .line 711
    iput v0, p0, Lcom/ibm/icu/impl/number/Parse$ParserState;->prevLength:I

    .line 712
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu/impl/number/Parse$ParserState;->digitTrie:Lcom/ibm/icu/impl/TextTrieMap;

    .line 713
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Parse$ParserState;->affixHolders:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 714
    return-object p0
.end method

.method public getItem(I)Lcom/ibm/icu/impl/number/Parse$StateItem;
    .locals 1

    .prologue
    .line 777
    sget-boolean v0, Lcom/ibm/icu/impl/number/Parse$ParserState;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/ibm/icu/impl/number/Parse$ParserState;->length:I

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 778
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Parse$ParserState;->items:[Lcom/ibm/icu/impl/number/Parse$StateItem;

    aget-object v0, v0, p1

    return-object v0
.end method

.method getNext()Lcom/ibm/icu/impl/number/Parse$StateItem;
    .locals 2

    .prologue
    .line 752
    iget v0, p0, Lcom/ibm/icu/impl/number/Parse$ParserState;->length:I

    iget-object v1, p0, Lcom/ibm/icu/impl/number/Parse$ParserState;->items:[Lcom/ibm/icu/impl/number/Parse$StateItem;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 756
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Parse$ParserState;->items:[Lcom/ibm/icu/impl/number/Parse$StateItem;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ibm/icu/impl/number/Parse$ParserState;->length:I

    .line 758
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Parse$ParserState;->items:[Lcom/ibm/icu/impl/number/Parse$StateItem;

    iget v1, p0, Lcom/ibm/icu/impl/number/Parse$ParserState;->length:I

    aget-object v0, v0, v1

    .line 759
    iget v1, p0, Lcom/ibm/icu/impl/number/Parse$ParserState;->length:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/ibm/icu/impl/number/Parse$ParserState;->length:I

    .line 760
    return-object v0
.end method

.method public lastInsertedIndex()I
    .locals 1

    .prologue
    .line 765
    sget-boolean v0, Lcom/ibm/icu/impl/number/Parse$ParserState;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/ibm/icu/impl/number/Parse$ParserState;->length:I

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 766
    :cond_0
    iget v0, p0, Lcom/ibm/icu/impl/number/Parse$ParserState;->length:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method swap()V
    .locals 2

    .prologue
    .line 722
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Parse$ParserState;->prevItems:[Lcom/ibm/icu/impl/number/Parse$StateItem;

    .line 723
    iget-object v1, p0, Lcom/ibm/icu/impl/number/Parse$ParserState;->items:[Lcom/ibm/icu/impl/number/Parse$StateItem;

    iput-object v1, p0, Lcom/ibm/icu/impl/number/Parse$ParserState;->prevItems:[Lcom/ibm/icu/impl/number/Parse$StateItem;

    .line 724
    iput-object v0, p0, Lcom/ibm/icu/impl/number/Parse$ParserState;->items:[Lcom/ibm/icu/impl/number/Parse$StateItem;

    .line 725
    iget v0, p0, Lcom/ibm/icu/impl/number/Parse$ParserState;->length:I

    iput v0, p0, Lcom/ibm/icu/impl/number/Parse$ParserState;->prevLength:I

    .line 726
    const/4 v0, 0x0

    iput v0, p0, Lcom/ibm/icu/impl/number/Parse$ParserState;->length:I

    .line 727
    return-void
.end method

.method swapBack()V
    .locals 2

    .prologue
    .line 734
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Parse$ParserState;->prevItems:[Lcom/ibm/icu/impl/number/Parse$StateItem;

    .line 735
    iget-object v1, p0, Lcom/ibm/icu/impl/number/Parse$ParserState;->items:[Lcom/ibm/icu/impl/number/Parse$StateItem;

    iput-object v1, p0, Lcom/ibm/icu/impl/number/Parse$ParserState;->prevItems:[Lcom/ibm/icu/impl/number/Parse$StateItem;

    .line 736
    iput-object v0, p0, Lcom/ibm/icu/impl/number/Parse$ParserState;->items:[Lcom/ibm/icu/impl/number/Parse$StateItem;

    .line 737
    iget v0, p0, Lcom/ibm/icu/impl/number/Parse$ParserState;->prevLength:I

    iput v0, p0, Lcom/ibm/icu/impl/number/Parse$ParserState;->length:I

    .line 738
    const/4 v0, 0x0

    iput v0, p0, Lcom/ibm/icu/impl/number/Parse$ParserState;->prevLength:I

    .line 739
    return-void
.end method
