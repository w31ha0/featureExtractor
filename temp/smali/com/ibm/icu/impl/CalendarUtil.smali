.class public final Lcom/ibm/icu/impl/CalendarUtil;
.super Ljava/lang/Object;
.source "CalendarUtil.java"


# direct methods
.method public static getCalendarType(Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 41
    const-string/jumbo v0, "calendar"

    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    if-eqz v0, :cond_1

    .line 56
    :cond_0
    :goto_0
    return-object v0

    .line 47
    :cond_1
    invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->createCanonical(Ljava/lang/String;)Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    .line 48
    const-string/jumbo v0, "calendar"

    invoke-virtual {v1, v0}, Lcom/ibm/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    if-nez v0, :cond_0

    .line 55
    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/ibm/icu/util/ULocale;->getRegionForSupplementalData(Lcom/ibm/icu/util/ULocale;Z)Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-static {}, Lcom/ibm/icu/impl/CalendarUtil$CalendarPreferences;->access$000()Lcom/ibm/icu/impl/CalendarUtil$CalendarPreferences;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ibm/icu/impl/CalendarUtil$CalendarPreferences;->getCalendarTypeForRegion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
