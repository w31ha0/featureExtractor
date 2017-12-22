.class public Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;
.super Ljava/lang/Object;
.source "TimeZoneNames.java"


# instance fields
.field private _matchLength:I

.field private _mzID:Ljava/lang/String;

.field private _nameType:Lcom/ibm/icu/text/TimeZoneNames$NameType;

.field private _tzID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ibm/icu/text/TimeZoneNames$NameType;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 377
    if-nez p1, :cond_0

    .line 378
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "nameType is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 380
    :cond_0
    if-nez p2, :cond_1

    if-nez p3, :cond_1

    .line 381
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Either tzID or mzID must be available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 383
    :cond_1
    if-gtz p4, :cond_2

    .line 384
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "matchLength must be positive value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 386
    :cond_2
    iput-object p1, p0, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->_nameType:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    .line 387
    iput-object p2, p0, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->_tzID:Ljava/lang/String;

    .line 388
    iput-object p3, p0, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->_mzID:Ljava/lang/String;

    .line 389
    iput p4, p0, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->_matchLength:I

    .line 390
    return-void
.end method


# virtual methods
.method public matchLength()I
    .locals 1

    .prologue
    .line 440
    iget v0, p0, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->_matchLength:I

    return v0
.end method

.method public mzID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->_mzID:Ljava/lang/String;

    return-object v0
.end method

.method public nameType()Lcom/ibm/icu/text/TimeZoneNames$NameType;
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->_nameType:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    return-object v0
.end method

.method public tzID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->_tzID:Ljava/lang/String;

    return-object v0
.end method
