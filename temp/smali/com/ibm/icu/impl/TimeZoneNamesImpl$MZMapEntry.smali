.class Lcom/ibm/icu/impl/TimeZoneNamesImpl$MZMapEntry;
.super Ljava/lang/Object;
.source "TimeZoneNamesImpl.java"


# instance fields
.field private _from:J

.field private _mzID:Ljava/lang/String;

.field private _to:J


# direct methods
.method constructor <init>(Ljava/lang/String;JJ)V
    .locals 0

    .prologue
    .line 832
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 833
    iput-object p1, p0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$MZMapEntry;->_mzID:Ljava/lang/String;

    .line 834
    iput-wide p2, p0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$MZMapEntry;->_from:J

    .line 835
    iput-wide p4, p0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$MZMapEntry;->_to:J

    .line 836
    return-void
.end method


# virtual methods
.method from()J
    .locals 2

    .prologue
    .line 843
    iget-wide v0, p0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$MZMapEntry;->_from:J

    return-wide v0
.end method

.method mzID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 839
    iget-object v0, p0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$MZMapEntry;->_mzID:Ljava/lang/String;

    return-object v0
.end method

.method to()J
    .locals 2

    .prologue
    .line 847
    iget-wide v0, p0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$MZMapEntry;->_to:J

    return-wide v0
.end method
