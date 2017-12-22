.class Lcom/ibm/icu/text/NumberingSystem$LocaleLookupData;
.super Ljava/lang/Object;
.source "NumberingSystem.java"


# instance fields
.field public final locale:Lcom/ibm/icu/util/ULocale;

.field public final numbersKeyword:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput-object p1, p0, Lcom/ibm/icu/text/NumberingSystem$LocaleLookupData;->locale:Lcom/ibm/icu/util/ULocale;

    .line 158
    iput-object p2, p0, Lcom/ibm/icu/text/NumberingSystem$LocaleLookupData;->numbersKeyword:Ljava/lang/String;

    .line 159
    return-void
.end method
