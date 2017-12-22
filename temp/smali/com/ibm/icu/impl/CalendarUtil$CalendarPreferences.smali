.class final Lcom/ibm/icu/impl/CalendarUtil$CalendarPreferences;
.super Lcom/ibm/icu/impl/UResource$Sink;
.source "CalendarUtil.java"


# static fields
.field private static final INSTANCE:Lcom/ibm/icu/impl/CalendarUtil$CalendarPreferences;


# instance fields
.field prefs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/ibm/icu/impl/CalendarUtil$CalendarPreferences;

    invoke-direct {v0}, Lcom/ibm/icu/impl/CalendarUtil$CalendarPreferences;-><init>()V

    sput-object v0, Lcom/ibm/icu/impl/CalendarUtil$CalendarPreferences;->INSTANCE:Lcom/ibm/icu/impl/CalendarUtil$CalendarPreferences;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/ibm/icu/impl/UResource$Sink;-><init>()V

    .line 62
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/CalendarUtil$CalendarPreferences;->prefs:Ljava/util/Map;

    .line 66
    :try_start_0
    const-string/jumbo v0, "com/ibm/icu/impl/data/icudt59b"

    const-string/jumbo v1, "supplementalData"

    invoke-static {v0, v1}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundle;

    .line 68
    const-string/jumbo v1, "calendarPreferenceData"

    invoke-virtual {v0, v1, p0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Lcom/ibm/icu/impl/UResource$Sink;)V
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$000()Lcom/ibm/icu/impl/CalendarUtil$CalendarPreferences;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/ibm/icu/impl/CalendarUtil$CalendarPreferences;->INSTANCE:Lcom/ibm/icu/impl/CalendarUtil$CalendarPreferences;

    return-object v0
.end method


# virtual methods
.method getCalendarTypeForRegion(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/ibm/icu/impl/CalendarUtil$CalendarPreferences;->prefs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 76
    if-nez v0, :cond_0

    const-string/jumbo v0, "gregorian"

    :cond_0
    return-object v0
.end method

.method public put(Lcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;Z)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getTable()Lcom/ibm/icu/impl/UResource$Table;

    move-result-object v2

    move v0, v1

    .line 82
    :goto_0
    invoke-interface {v2, v0, p1, p2}, Lcom/ibm/icu/impl/UResource$Table;->getKeyAndValue(ILcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 83
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getArray()Lcom/ibm/icu/impl/UResource$Array;

    move-result-object v3

    .line 85
    invoke-interface {v3, v1, p2}, Lcom/ibm/icu/impl/UResource$Array;->getValue(ILcom/ibm/icu/impl/UResource$Value;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 86
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v3

    .line 87
    const-string/jumbo v4, "gregorian"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 88
    iget-object v4, p0, Lcom/ibm/icu/impl/CalendarUtil$CalendarPreferences;->prefs:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/ibm/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    :cond_1
    return-void
.end method
