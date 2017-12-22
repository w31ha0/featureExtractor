.class Lcom/ibm/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;
.super Ljava/lang/Object;
.source "TZDBTimeZoneNames.java"


# instance fields
.field final ambiguousType:Z

.field final mzID:Ljava/lang/String;

.field final parseRegions:[Ljava/lang/String;

.field final type:Lcom/ibm/icu/text/TimeZoneNames$NameType;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/ibm/icu/text/TimeZoneNames$NameType;Z[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    iput-object p1, p0, Lcom/ibm/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;->mzID:Ljava/lang/String;

    .line 228
    iput-object p2, p0, Lcom/ibm/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;->type:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    .line 229
    iput-boolean p3, p0, Lcom/ibm/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;->ambiguousType:Z

    .line 230
    iput-object p4, p0, Lcom/ibm/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;->parseRegions:[Ljava/lang/String;

    .line 231
    return-void
.end method
