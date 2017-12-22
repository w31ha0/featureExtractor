.class public final Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo;
.super Ljava/lang/Object;
.source "CurrencyData.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final DEFAULT:Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo;


# instance fields
.field private final symbols:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 47
    const-class v0, Lcom/ibm/icu/impl/CurrencyData;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo;->$assertionsDisabled:Z

    .line 95
    new-instance v0, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo;

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "[:letter:]"

    aput-object v4, v3, v2

    const-string/jumbo v2, "[:digit:]"

    aput-object v2, v3, v1

    const/4 v1, 0x2

    const-string/jumbo v2, " "

    aput-object v2, v3, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "[:letter:]"

    aput-object v2, v3, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "[:digit:]"

    aput-object v2, v3, v1

    const/4 v1, 0x5

    const-string/jumbo v2, " "

    aput-object v2, v3, v1

    invoke-direct {v0, v3}, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo;-><init>([Ljava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo;->DEFAULT:Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo;

    return-void

    :cond_0
    move v0, v2

    .line 47
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    sget-object v0, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;->COUNT:Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;->ordinal()I

    move-result v0

    sget-object v1, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;->COUNT:Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;->ordinal()I

    move-result v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo;->symbols:[[Ljava/lang/String;

    .line 61
    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    sget-object v0, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;->COUNT:Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;->ordinal()I

    move-result v0

    sget-object v2, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;->COUNT:Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;

    invoke-virtual {v2}, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;->ordinal()I

    move-result v2

    filled-new-array {v0, v2}, [I

    move-result-object v0

    const-class v2, Ljava/lang/String;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo;->symbols:[[Ljava/lang/String;

    .line 64
    sget-boolean v0, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    array-length v0, p1

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    move v0, v1

    move v2, v1

    .line 67
    :goto_0
    sget-object v3, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;->COUNT:Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;

    invoke-virtual {v3}, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;->ordinal()I

    move-result v3

    if-ge v0, v3, :cond_2

    move v3, v1

    .line 68
    :goto_1
    sget-object v4, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;->COUNT:Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;

    invoke-virtual {v4}, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;->ordinal()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 69
    iget-object v4, p0, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo;->symbols:[[Ljava/lang/String;

    aget-object v4, v4, v0

    aget-object v5, p1, v2

    aput-object v5, v4, v3

    .line 70
    add-int/lit8 v4, v2, 0x1

    .line 68
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v4

    goto :goto_1

    .line 67
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    :cond_2
    return-void
.end method


# virtual methods
.method public getAfterSymbols()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo;->symbols:[[Ljava/lang/String;

    sget-object v1, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;->AFTER:Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getBeforeSymbols()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo;->symbols:[[Ljava/lang/String;

    sget-object v1, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;->BEFORE:Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method
