.class Lcom/ibm/icu/impl/TimeZoneGenericNames$NameInfo;
.super Ljava/lang/Object;
.source "TimeZoneGenericNames.java"


# instance fields
.field final type:Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;

.field final tzID:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;)V
    .locals 0

    .prologue
    .line 590
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 591
    iput-object p1, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames$NameInfo;->tzID:Ljava/lang/String;

    .line 592
    iput-object p2, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames$NameInfo;->type:Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;

    .line 593
    return-void
.end method
