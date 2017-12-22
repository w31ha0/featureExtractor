.class public Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericMatchInfo;
.super Ljava/lang/Object;
.source "TimeZoneGenericNames.java"


# instance fields
.field final matchLength:I

.field final nameType:Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;

.field final timeType:Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

.field final tzID:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 607
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericMatchInfo;-><init>(Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;Ljava/lang/String;ILcom/ibm/icu/text/TimeZoneFormat$TimeType;)V

    .line 608
    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;Ljava/lang/String;ILcom/ibm/icu/impl/TimeZoneGenericNames$1;)V
    .locals 0

    .prologue
    .line 600
    invoke-direct {p0, p1, p2, p3}, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericMatchInfo;-><init>(Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;Ljava/lang/String;I)V

    return-void
.end method

.method private constructor <init>(Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;Ljava/lang/String;ILcom/ibm/icu/text/TimeZoneFormat$TimeType;)V
    .locals 0

    .prologue
    .line 610
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 611
    iput-object p1, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->nameType:Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;

    .line 612
    iput-object p2, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->tzID:Ljava/lang/String;

    .line 613
    iput p3, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->matchLength:I

    .line 614
    iput-object p4, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->timeType:Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    .line 615
    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;Ljava/lang/String;ILcom/ibm/icu/text/TimeZoneFormat$TimeType;Lcom/ibm/icu/impl/TimeZoneGenericNames$1;)V
    .locals 0

    .prologue
    .line 600
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericMatchInfo;-><init>(Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;Ljava/lang/String;ILcom/ibm/icu/text/TimeZoneFormat$TimeType;)V

    return-void
.end method


# virtual methods
.method public matchLength()I
    .locals 1

    .prologue
    .line 630
    iget v0, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->matchLength:I

    return v0
.end method

.method public timeType()Lcom/ibm/icu/text/TimeZoneFormat$TimeType;
    .locals 1

    .prologue
    .line 626
    iget-object v0, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->timeType:Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    return-object v0
.end method

.method public tzID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 622
    iget-object v0, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->tzID:Ljava/lang/String;

    return-object v0
.end method
