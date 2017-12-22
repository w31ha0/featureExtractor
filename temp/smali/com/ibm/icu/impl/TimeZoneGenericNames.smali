.class public Lcom/ibm/icu/impl/TimeZoneGenericNames;
.super Ljava/lang/Object;
.source "TimeZoneGenericNames.java"

# interfaces
.implements Lcom/ibm/icu/util/Freezable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ibm/icu/util/Freezable",
        "<",
        "Lcom/ibm/icu/impl/TimeZoneGenericNames;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static GENERIC_NAMES_CACHE:Lcom/ibm/icu/impl/TimeZoneGenericNames$Cache;

.field private static final GENERIC_NON_LOCATION_TYPES:[Lcom/ibm/icu/text/TimeZoneNames$NameType;


# instance fields
.field private volatile transient _frozen:Z

.field private transient _genericLocationNamesMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private transient _genericPartialLocationNamesMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private transient _gnamesTrie:Lcom/ibm/icu/impl/TextTrieMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ibm/icu/impl/TextTrieMap",
            "<",
            "Lcom/ibm/icu/impl/TimeZoneGenericNames$NameInfo;",
            ">;"
        }
    .end annotation
.end field

.field private transient _gnamesTrieFullyLoaded:Z

.field private final _locale:Lcom/ibm/icu/util/ULocale;

.field private transient _localeDisplayNamesRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/ibm/icu/text/LocaleDisplayNames;",
            ">;"
        }
    .end annotation
.end field

.field private transient _patternFormatters:[Ljava/text/MessageFormat;

.field private transient _region:Ljava/lang/String;

.field private _tznames:Lcom/ibm/icu/text/TimeZoneNames;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 44
    const-class v0, Lcom/ibm/icu/impl/TimeZoneGenericNames;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->$assertionsDisabled:Z

    .line 122
    new-instance v0, Lcom/ibm/icu/impl/TimeZoneGenericNames$Cache;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/ibm/icu/impl/TimeZoneGenericNames$Cache;-><init>(Lcom/ibm/icu/impl/TimeZoneGenericNames$1;)V

    sput-object v0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->GENERIC_NAMES_CACHE:Lcom/ibm/icu/impl/TimeZoneGenericNames$Cache;

    .line 127
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/ibm/icu/text/TimeZoneNames$NameType;

    sget-object v3, Lcom/ibm/icu/text/TimeZoneNames$NameType;->LONG_GENERIC:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    aput-object v3, v0, v2

    sget-object v2, Lcom/ibm/icu/text/TimeZoneNames$NameType;->SHORT_GENERIC:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->GENERIC_NON_LOCATION_TYPES:[Lcom/ibm/icu/text/TimeZoneNames$NameType;

    return-void

    :cond_0
    move v0, v2

    .line 44
    goto :goto_0
.end method

.method private constructor <init>(Lcom/ibm/icu/util/ULocale;)V
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/impl/TimeZoneGenericNames;-><init>(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/TimeZoneNames;)V

    .line 172
    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/impl/TimeZoneGenericNames$1;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/TimeZoneGenericNames;-><init>(Lcom/ibm/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/TimeZoneNames;)V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-object p1, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_locale:Lcom/ibm/icu/util/ULocale;

    .line 139
    iput-object p2, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_tznames:Lcom/ibm/icu/text/TimeZoneNames;

    .line 140
    invoke-direct {p0}, Lcom/ibm/icu/impl/TimeZoneGenericNames;->init()V

    .line 141
    return-void
.end method

.method private createGenericMatchInfo(Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;)Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericMatchInfo;
    .locals 6

    .prologue
    .line 795
    .line 796
    sget-object v4, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    .line 797
    sget-object v0, Lcom/ibm/icu/impl/TimeZoneGenericNames$1;->$SwitchMap$com$ibm$icu$text$TimeZoneNames$NameType:[I

    invoke-virtual {p1}, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->nameType()Lcom/ibm/icu/text/TimeZoneNames$NameType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ibm/icu/text/TimeZoneNames$NameType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 813
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected MatchInfo name type - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->nameType()Lcom/ibm/icu/text/TimeZoneNames$NameType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 799
    :pswitch_0
    sget-object v1, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;->LONG:Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;

    .line 800
    sget-object v4, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;->STANDARD:Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    .line 816
    :goto_0
    invoke-virtual {p1}, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->tzID()Ljava/lang/String;

    move-result-object v2

    .line 817
    if-nez v2, :cond_1

    .line 818
    invoke-virtual {p1}, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->mzID()Ljava/lang/String;

    move-result-object v0

    .line 819
    sget-boolean v2, Lcom/ibm/icu/impl/TimeZoneGenericNames;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 803
    :pswitch_1
    sget-object v1, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;->LONG:Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;

    goto :goto_0

    .line 806
    :pswitch_2
    sget-object v1, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;->SHORT:Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;

    .line 807
    sget-object v4, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;->STANDARD:Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    goto :goto_0

    .line 810
    :pswitch_3
    sget-object v1, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;->SHORT:Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;

    goto :goto_0

    .line 820
    :cond_0
    iget-object v2, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_tznames:Lcom/ibm/icu/text/TimeZoneNames;

    invoke-direct {p0}, Lcom/ibm/icu/impl/TimeZoneGenericNames;->getTargetRegion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/ibm/icu/text/TimeZoneNames;->getReferenceZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 822
    :cond_1
    sget-boolean v0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez v2, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 824
    :cond_2
    new-instance v0, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericMatchInfo;

    invoke-virtual {p1}, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    move-result v3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericMatchInfo;-><init>(Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;Ljava/lang/String;ILcom/ibm/icu/text/TimeZoneFormat$TimeType;Lcom/ibm/icu/impl/TimeZoneGenericNames$1;)V

    .line 826
    return-object v0

    .line 797
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private declared-synchronized findLocal(Ljava/lang/String;ILjava/util/EnumSet;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericMatchInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 870
    monitor-enter p0

    :try_start_0
    new-instance v1, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;

    invoke-direct {v1, p3}, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;-><init>(Ljava/util/EnumSet;)V

    .line 871
    iget-object v0, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_gnamesTrie:Lcom/ibm/icu/impl/TextTrieMap;

    invoke-virtual {v0, p1, p2, v1}, Lcom/ibm/icu/impl/TextTrieMap;->find(Ljava/lang/CharSequence;ILcom/ibm/icu/impl/TextTrieMap$ResultHandler;)V

    .line 872
    invoke-virtual {v1}, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;->getMaxMatchLen()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, p2

    if-eq v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_gnamesTrieFullyLoaded:Z

    if-eqz v0, :cond_1

    .line 874
    :cond_0
    invoke-virtual {v1}, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;->getMatches()Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 889
    :goto_0
    monitor-exit p0

    return-object v0

    .line 880
    :cond_1
    :try_start_1
    sget-object v0, Lcom/ibm/icu/util/TimeZone$SystemTimeZoneType;->CANONICAL:Lcom/ibm/icu/util/TimeZone$SystemTimeZoneType;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/ibm/icu/util/TimeZone;->getAvailableIDs(Lcom/ibm/icu/util/TimeZone$SystemTimeZoneType;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/Set;

    move-result-object v0

    .line 881
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 882
    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/TimeZoneGenericNames;->loadStrings(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 870
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 884
    :cond_2
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_gnamesTrieFullyLoaded:Z

    .line 887
    invoke-virtual {v1}, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;->resetResults()V

    .line 888
    iget-object v0, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_gnamesTrie:Lcom/ibm/icu/impl/TextTrieMap;

    invoke-virtual {v0, p1, p2, v1}, Lcom/ibm/icu/impl/TextTrieMap;->find(Ljava/lang/CharSequence;ILcom/ibm/icu/impl/TextTrieMap$ResultHandler;)V

    .line 889
    invoke-virtual {v1}, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;->getMatches()Ljava/util/Collection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_0
.end method

.method private findTimeZoneNames(Ljava/lang/String;ILjava/util/EnumSet;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 839
    const/4 v0, 0x0

    .line 842
    const-class v1, Lcom/ibm/icu/text/TimeZoneNames$NameType;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    .line 843
    sget-object v2, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;->LONG:Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;

    invoke-virtual {p3, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 844
    sget-object v2, Lcom/ibm/icu/text/TimeZoneNames$NameType;->LONG_GENERIC:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 845
    sget-object v2, Lcom/ibm/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 847
    :cond_0
    sget-object v2, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;->SHORT:Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;

    invoke-virtual {p3, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 848
    sget-object v2, Lcom/ibm/icu/text/TimeZoneNames$NameType;->SHORT_GENERIC:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 849
    sget-object v2, Lcom/ibm/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 852
    :cond_1
    invoke-virtual {v1}, Ljava/util/EnumSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 854
    iget-object v0, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_tznames:Lcom/ibm/icu/text/TimeZoneNames;

    invoke-virtual {v0, p1, p2, v1}, Lcom/ibm/icu/text/TimeZoneNames;->find(Ljava/lang/CharSequence;ILjava/util/EnumSet;)Ljava/util/Collection;

    move-result-object v0

    .line 856
    :cond_2
    return-object v0
.end method

.method private formatGenericNonLocationName(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;J)Ljava/lang/String;
    .locals 17

    .prologue
    .line 325
    sget-boolean v4, Lcom/ibm/icu/impl/TimeZoneGenericNames;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    sget-object v4, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;->LONG:Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;

    move-object/from16 v0, p2

    if-eq v0, v4, :cond_0

    sget-object v4, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;->SHORT:Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;

    move-object/from16 v0, p2

    if-eq v0, v4, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 326
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/ibm/icu/impl/ZoneMeta;->getCanonicalCLDRID(Lcom/ibm/icu/util/TimeZone;)Ljava/lang/String;

    move-result-object v7

    .line 328
    if-nez v7, :cond_2

    .line 329
    const/4 v6, 0x0

    .line 429
    :cond_1
    :goto_0
    return-object v6

    .line 333
    :cond_2
    sget-object v4, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;->LONG:Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;

    move-object/from16 v0, p2

    if-ne v0, v4, :cond_6

    sget-object v4, Lcom/ibm/icu/text/TimeZoneNames$NameType;->LONG_GENERIC:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    .line 334
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_tznames:Lcom/ibm/icu/text/TimeZoneNames;

    invoke-virtual {v5, v7, v4}, Lcom/ibm/icu/text/TimeZoneNames;->getTimeZoneDisplayName(Ljava/lang/String;Lcom/ibm/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;

    move-result-object v6

    .line 336
    if-nez v6, :cond_1

    .line 341
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_tznames:Lcom/ibm/icu/text/TimeZoneNames;

    move-wide/from16 v0, p3

    invoke-virtual {v5, v7, v0, v1}, Lcom/ibm/icu/text/TimeZoneNames;->getMetaZoneID(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v8

    .line 342
    if-eqz v8, :cond_e

    .line 343
    const/4 v5, 0x0

    .line 344
    const/4 v9, 0x2

    new-array v9, v9, [I

    fill-array-data v9, :array_0

    .line 345
    const/4 v10, 0x0

    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2, v10, v9}, Lcom/ibm/icu/util/TimeZone;->getOffset(JZ[I)V

    .line 347
    const/4 v10, 0x1

    aget v10, v9, v10

    if-nez v10, :cond_3

    .line 348
    const/4 v5, 0x1

    .line 350
    move-object/from16 v0, p1

    instance-of v10, v0, Lcom/ibm/icu/util/BasicTimeZone;

    if-eqz v10, :cond_8

    .line 351
    check-cast p1, Lcom/ibm/icu/util/BasicTimeZone;

    .line 352
    const/4 v10, 0x1

    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2, v10}, Lcom/ibm/icu/util/BasicTimeZone;->getPreviousTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;

    move-result-object v10

    .line 353
    if-eqz v10, :cond_7

    .line 354
    invoke-virtual {v10}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v12

    sub-long v12, p3, v12

    const-wide v14, 0x3b3922000L

    cmp-long v11, v12, v14

    if-gez v11, :cond_7

    .line 355
    invoke-virtual {v10}, Lcom/ibm/icu/util/TimeZoneTransition;->getFrom()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v10

    invoke-virtual {v10}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v10

    if-eqz v10, :cond_7

    .line 356
    const/4 v5, 0x0

    .line 380
    :cond_3
    :goto_2
    if-eqz v5, :cond_4

    .line 381
    sget-object v5, Lcom/ibm/icu/text/TimeZoneNames$NameType;->LONG_GENERIC:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    if-ne v4, v5, :cond_a

    sget-object v5, Lcom/ibm/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    .line 383
    :goto_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_tznames:Lcom/ibm/icu/text/TimeZoneNames;

    move-wide/from16 v0, p3

    invoke-virtual {v10, v7, v5, v0, v1}, Lcom/ibm/icu/text/TimeZoneNames;->getDisplayName(Ljava/lang/String;Lcom/ibm/icu/text/TimeZoneNames$NameType;J)Ljava/lang/String;

    move-result-object v5

    .line 384
    if-eqz v5, :cond_4

    .line 392
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_tznames:Lcom/ibm/icu/text/TimeZoneNames;

    invoke-virtual {v6, v8, v4}, Lcom/ibm/icu/text/TimeZoneNames;->getMetaZoneDisplayName(Ljava/lang/String;Lcom/ibm/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;

    move-result-object v6

    .line 393
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 394
    const/4 v6, 0x0

    .line 399
    :cond_4
    :goto_4
    if-nez v6, :cond_e

    .line 401
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_tznames:Lcom/ibm/icu/text/TimeZoneNames;

    invoke-virtual {v5, v8, v4}, Lcom/ibm/icu/text/TimeZoneNames;->getMetaZoneDisplayName(Ljava/lang/String;Lcom/ibm/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;

    move-result-object v5

    .line 402
    if-eqz v5, :cond_e

    .line 406
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_tznames:Lcom/ibm/icu/text/TimeZoneNames;

    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/impl/TimeZoneGenericNames;->getTargetRegion()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v8, v10}, Lcom/ibm/icu/text/TimeZoneNames;->getReferenceZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 407
    if-eqz v6, :cond_d

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d

    .line 408
    invoke-static {v6}, Lcom/ibm/icu/util/TimeZone;->getFrozenTimeZone(Ljava/lang/String;)Lcom/ibm/icu/util/TimeZone;

    move-result-object v6

    .line 409
    const/4 v10, 0x2

    new-array v10, v10, [I

    fill-array-data v10, :array_1

    .line 415
    const/4 v11, 0x0

    aget v11, v9, v11

    int-to-long v12, v11

    add-long v12, v12, p3

    const/4 v11, 0x1

    aget v11, v9, v11

    int-to-long v14, v11

    add-long/2addr v12, v14

    const/4 v11, 0x1

    invoke-virtual {v6, v12, v13, v11, v10}, Lcom/ibm/icu/util/TimeZone;->getOffset(JZ[I)V

    .line 417
    const/4 v6, 0x0

    aget v6, v9, v6

    const/4 v11, 0x0

    aget v11, v10, v11

    if-ne v6, v11, :cond_5

    const/4 v6, 0x1

    aget v6, v9, v6

    const/4 v9, 0x1

    aget v9, v10, v9

    if-eq v6, v9, :cond_c

    .line 419
    :cond_5
    sget-object v6, Lcom/ibm/icu/text/TimeZoneNames$NameType;->LONG_GENERIC:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    if-ne v4, v6, :cond_b

    const/4 v4, 0x1

    :goto_5
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8, v4, v5}, Lcom/ibm/icu/impl/TimeZoneGenericNames;->getPartialLocationName(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_6
    move-object v6, v4

    .line 429
    goto/16 :goto_0

    .line 333
    :cond_6
    sget-object v4, Lcom/ibm/icu/text/TimeZoneNames$NameType;->SHORT_GENERIC:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    goto/16 :goto_1

    .line 358
    :cond_7
    const/4 v10, 0x0

    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2, v10}, Lcom/ibm/icu/util/BasicTimeZone;->getNextTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;

    move-result-object v10

    .line 359
    if-eqz v10, :cond_3

    .line 360
    invoke-virtual {v10}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v12

    sub-long v12, v12, p3

    const-wide v14, 0x3b3922000L

    cmp-long v11, v12, v14

    if-gez v11, :cond_3

    .line 361
    invoke-virtual {v10}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v10

    invoke-virtual {v10}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v10

    if-eqz v10, :cond_3

    .line 362
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 368
    :cond_8
    const/4 v10, 0x2

    new-array v10, v10, [I

    .line 369
    const-wide v12, 0x3b3922000L

    sub-long v12, p3, v12

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v11, v10}, Lcom/ibm/icu/util/TimeZone;->getOffset(JZ[I)V

    .line 370
    const/4 v11, 0x1

    aget v11, v10, v11

    if-eqz v11, :cond_9

    .line 371
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 373
    :cond_9
    const-wide v12, 0x3b3922000L

    add-long v12, v12, p3

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v11, v10}, Lcom/ibm/icu/util/TimeZone;->getOffset(JZ[I)V

    .line 374
    const/4 v11, 0x1

    aget v10, v10, v11

    if-eqz v10, :cond_3

    .line 375
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 381
    :cond_a
    sget-object v5, Lcom/ibm/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    goto/16 :goto_3

    .line 419
    :cond_b
    const/4 v4, 0x0

    goto :goto_5

    :cond_c
    move-object v4, v5

    .line 421
    goto :goto_6

    :cond_d
    move-object v4, v5

    .line 424
    goto :goto_6

    :cond_e
    move-object v4, v6

    goto :goto_6

    :cond_f
    move-object v6, v5

    goto/16 :goto_4

    .line 344
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 409
    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private varargs declared-synchronized formatPattern(Lcom/ibm/icu/impl/TimeZoneGenericNames$Pattern;[Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 442
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_patternFormatters:[Ljava/text/MessageFormat;

    if-nez v0, :cond_0

    .line 443
    invoke-static {}, Lcom/ibm/icu/impl/TimeZoneGenericNames$Pattern;->values()[Lcom/ibm/icu/impl/TimeZoneGenericNames$Pattern;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Ljava/text/MessageFormat;

    iput-object v0, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_patternFormatters:[Ljava/text/MessageFormat;

    .line 446
    :cond_0
    invoke-virtual {p1}, Lcom/ibm/icu/impl/TimeZoneGenericNames$Pattern;->ordinal()I

    move-result v1

    .line 447
    iget-object v0, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_patternFormatters:[Ljava/text/MessageFormat;

    aget-object v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 450
    :try_start_1
    const-string/jumbo v0, "com/ibm/icu/impl/data/icudt59b/zone"

    iget-object v2, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_locale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v0, v2}, Lcom/ibm/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundle;

    .line 452
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "zoneStrings/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ibm/icu/impl/TimeZoneGenericNames$Pattern;->key()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ibm/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 457
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_patternFormatters:[Ljava/text/MessageFormat;

    new-instance v3, Ljava/text/MessageFormat;

    invoke-direct {v3, v0}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v1

    .line 459
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_patternFormatters:[Ljava/text/MessageFormat;

    aget-object v0, v0, v1

    invoke-virtual {v0, p2}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 453
    :catch_0
    move-exception v0

    .line 454
    :try_start_3
    invoke-virtual {p1}, Lcom/ibm/icu/impl/TimeZoneGenericNames$Pattern;->defaultValue()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 442
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/impl/TimeZoneGenericNames;
    .locals 2

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v0

    .line 182
    sget-object v1, Lcom/ibm/icu/impl/TimeZoneGenericNames;->GENERIC_NAMES_CACHE:Lcom/ibm/icu/impl/TimeZoneGenericNames$Cache;

    invoke-virtual {v1, v0, p0}, Lcom/ibm/icu/impl/TimeZoneGenericNames$Cache;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/TimeZoneGenericNames;

    return-object v0
.end method

.method private declared-synchronized getLocaleDisplayNames()Lcom/ibm/icu/text/LocaleDisplayNames;
    .locals 2

    .prologue
    .line 471
    monitor-enter p0

    const/4 v0, 0x0

    .line 472
    :try_start_0
    iget-object v1, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_localeDisplayNamesRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 473
    iget-object v0, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_localeDisplayNamesRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/LocaleDisplayNames;

    .line 475
    :cond_0
    if-nez v0, :cond_1

    .line 476
    iget-object v0, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_locale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v0}, Lcom/ibm/icu/text/LocaleDisplayNames;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/LocaleDisplayNames;

    move-result-object v0

    .line 477
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_localeDisplayNamesRef:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 479
    :cond_1
    monitor-exit p0

    return-object v0

    .line 471
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getPartialLocationName(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 542
    if-eqz p3, :cond_0

    const-string/jumbo v0, "L"

    .line 543
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 544
    iget-object v0, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_genericPartialLocationNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 545
    if-eqz v0, :cond_1

    .line 580
    :goto_1
    return-object v0

    .line 542
    :cond_0
    const-string/jumbo v0, "S"

    goto :goto_0

    .line 549
    :cond_1
    invoke-static {p1}, Lcom/ibm/icu/impl/ZoneMeta;->getCanonicalCountry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 550
    if-eqz v0, :cond_5

    .line 552
    iget-object v1, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_tznames:Lcom/ibm/icu/text/TimeZoneNames;

    invoke-virtual {v1, p2, v0}, Lcom/ibm/icu/text/TimeZoneNames;->getReferenceZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 553
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 555
    invoke-direct {p0}, Lcom/ibm/icu/impl/TimeZoneGenericNames;->getLocaleDisplayNames()Lcom/ibm/icu/text/LocaleDisplayNames;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ibm/icu/text/LocaleDisplayNames;->regionDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 569
    :cond_2
    :goto_2
    sget-object v1, Lcom/ibm/icu/impl/TimeZoneGenericNames$Pattern;->FALLBACK_FORMAT:Lcom/ibm/icu/impl/TimeZoneGenericNames$Pattern;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object p4, v3, v0

    invoke-direct {p0, v1, v3}, Lcom/ibm/icu/impl/TimeZoneGenericNames;->formatPattern(Lcom/ibm/icu/impl/TimeZoneGenericNames$Pattern;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 570
    monitor-enter p0

    .line 571
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_genericPartialLocationNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 572
    if-nez v0, :cond_3

    .line 573
    new-instance v2, Lcom/ibm/icu/impl/TimeZoneGenericNames$NameInfo;

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    if-eqz p3, :cond_6

    sget-object v0, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;->LONG:Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;

    :goto_3
    invoke-direct {v2, v3, v0}, Lcom/ibm/icu/impl/TimeZoneGenericNames$NameInfo;-><init>(Ljava/lang/String;Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;)V

    .line 575
    iget-object v0, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_gnamesTrie:Lcom/ibm/icu/impl/TextTrieMap;

    invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/impl/TextTrieMap;->put(Ljava/lang/CharSequence;Ljava/lang/Object;)Lcom/ibm/icu/impl/TextTrieMap;

    move-object v0, v1

    .line 579
    :cond_3
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 558
    :cond_4
    iget-object v0, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_tznames:Lcom/ibm/icu/text/TimeZoneNames;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/TimeZoneNames;->getExemplarLocationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 561
    :cond_5
    iget-object v0, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_tznames:Lcom/ibm/icu/text/TimeZoneNames;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/TimeZoneNames;->getExemplarLocationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 562
    if-nez v0, :cond_2

    move-object v0, p1

    .line 566
    goto :goto_2

    .line 573
    :cond_6
    :try_start_1
    sget-object v0, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;->SHORT:Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method

.method private declared-synchronized getTargetRegion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 517
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_region:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_locale:Lcom/ibm/icu/util/ULocale;

    invoke-virtual {v0}, Lcom/ibm/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_region:Ljava/lang/String;

    .line 519
    iget-object v0, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_region:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_locale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->addLikelySubtags(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    .line 521
    invoke-virtual {v0}, Lcom/ibm/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_region:Ljava/lang/String;

    .line 522
    iget-object v0, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_region:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 523
    const-string/jumbo v0, "001"

    iput-object v0, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_region:Ljava/lang/String;

    .line 527
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_region:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 517
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_tznames:Lcom/ibm/icu/text/TimeZoneNames;

    if-nez v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_locale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v0}, Lcom/ibm/icu/text/TimeZoneNames;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/TimeZoneNames;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_tznames:Lcom/ibm/icu/text/TimeZoneNames;

    .line 151
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_genericLocationNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 152
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_genericPartialLocationNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 154
    new-instance v0, Lcom/ibm/icu/impl/TextTrieMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/ibm/icu/impl/TextTrieMap;-><init>(Z)V

    iput-object v0, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_gnamesTrie:Lcom/ibm/icu/impl/TextTrieMap;

    .line 155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_gnamesTrieFullyLoaded:Z

    .line 158
    invoke-static {}, Lcom/ibm/icu/util/TimeZone;->getDefault()Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    .line 159
    invoke-static {v0}, Lcom/ibm/icu/impl/ZoneMeta;->getCanonicalCLDRID(Lcom/ibm/icu/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    .line 160
    if-eqz v0, :cond_1

    .line 161
    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/TimeZoneGenericNames;->loadStrings(Ljava/lang/String;)V

    .line 163
    :cond_1
    return-void
.end method

.method private declared-synchronized loadStrings(Ljava/lang/String;)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 483
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 506
    :cond_0
    monitor-exit p0

    return-void

    .line 487
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/TimeZoneGenericNames;->getGenericLocationName(Ljava/lang/String;)Ljava/lang/String;

    .line 490
    iget-object v0, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_tznames:Lcom/ibm/icu/text/TimeZoneNames;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/TimeZoneNames;->getAvailableMetaZoneIDs(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 491
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 495
    iget-object v1, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_tznames:Lcom/ibm/icu/text/TimeZoneNames;

    invoke-direct {p0}, Lcom/ibm/icu/impl/TimeZoneGenericNames;->getTargetRegion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/ibm/icu/text/TimeZoneNames;->getReferenceZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 496
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 497
    sget-object v5, Lcom/ibm/icu/impl/TimeZoneGenericNames;->GENERIC_NON_LOCATION_TYPES:[Lcom/ibm/icu/text/TimeZoneNames$NameType;

    array-length v6, v5

    move v3, v2

    :goto_0
    if-ge v3, v6, :cond_2

    aget-object v1, v5, v3

    .line 498
    iget-object v7, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_tznames:Lcom/ibm/icu/text/TimeZoneNames;

    invoke-virtual {v7, v0, v1}, Lcom/ibm/icu/text/TimeZoneNames;->getMetaZoneDisplayName(Ljava/lang/String;Lcom/ibm/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;

    move-result-object v7

    .line 499
    if-eqz v7, :cond_3

    .line 501
    sget-object v8, Lcom/ibm/icu/text/TimeZoneNames$NameType;->LONG_GENERIC:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    if-ne v1, v8, :cond_4

    const/4 v1, 0x1

    :goto_1
    invoke-direct {p0, p1, v0, v1, v7}, Lcom/ibm/icu/impl/TimeZoneGenericNames;->getPartialLocationName(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 497
    :cond_3
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :cond_4
    move v1, v2

    .line 501
    goto :goto_1

    .line 483
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public findBestMatch(Ljava/lang/String;ILjava/util/EnumSet;)Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericMatchInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;",
            ">;)",
            "Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericMatchInfo;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 703
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    if-ltz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p2, v0, :cond_1

    .line 704
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "bad input text or range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 709
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/ibm/icu/impl/TimeZoneGenericNames;->findTimeZoneNames(Ljava/lang/String;ILjava/util/EnumSet;)Ljava/util/Collection;

    move-result-object v0

    .line 710
    if-eqz v0, :cond_5

    .line 712
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;

    .line 713
    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    move-result v4

    invoke-virtual {v1}, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    move-result v5

    if-le v4, v5, :cond_8

    :cond_2
    :goto_1
    move-object v1, v0

    .line 716
    goto :goto_0

    .line 717
    :cond_3
    if-eqz v1, :cond_5

    .line 718
    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/TimeZoneGenericNames;->createGenericMatchInfo(Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;)Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericMatchInfo;

    move-result-object v2

    .line 719
    invoke-virtual {v2}, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->matchLength()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p2

    if-ne v0, v1, :cond_5

    .line 737
    iget-object v0, v2, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->timeType:Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    sget-object v1, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;->STANDARD:Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    if-eq v0, v1, :cond_5

    .line 757
    :cond_4
    return-object v2

    .line 745
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lcom/ibm/icu/impl/TimeZoneGenericNames;->findLocal(Ljava/lang/String;ILjava/util/EnumSet;)Ljava/util/Collection;

    move-result-object v0

    .line 746
    if-eqz v0, :cond_4

    .line 747
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericMatchInfo;

    .line 751
    if-eqz v2, :cond_7

    invoke-virtual {v0}, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->matchLength()I

    move-result v3

    invoke-virtual {v2}, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->matchLength()I

    move-result v4

    if-lt v3, v4, :cond_6

    :cond_7
    move-object v2, v0

    .line 752
    goto :goto_2

    :cond_8
    move-object v0, v1

    goto :goto_1
.end method

.method public freeze()Lcom/ibm/icu/impl/TimeZoneGenericNames;
    .locals 1

    .prologue
    .line 929
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_frozen:Z

    .line 930
    return-object p0
.end method

.method public getDisplayName(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;J)Ljava/lang/String;
    .locals 3

    .prologue
    .line 196
    const/4 v0, 0x0

    .line 198
    sget-object v1, Lcom/ibm/icu/impl/TimeZoneGenericNames$1;->$SwitchMap$com$ibm$icu$impl$TimeZoneGenericNames$GenericNameType:[I

    invoke-virtual {p2}, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 216
    :cond_0
    :goto_0
    return-object v0

    .line 200
    :pswitch_0
    invoke-static {p1}, Lcom/ibm/icu/impl/ZoneMeta;->getCanonicalCLDRID(Lcom/ibm/icu/util/TimeZone;)Ljava/lang/String;

    move-result-object v1

    .line 201
    if-eqz v1, :cond_0

    .line 202
    invoke-virtual {p0, v1}, Lcom/ibm/icu/impl/TimeZoneGenericNames;->getGenericLocationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 207
    :pswitch_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ibm/icu/impl/TimeZoneGenericNames;->formatGenericNonLocationName(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;J)Ljava/lang/String;

    move-result-object v0

    .line 208
    if-nez v0, :cond_0

    .line 209
    invoke-static {p1}, Lcom/ibm/icu/impl/ZoneMeta;->getCanonicalCLDRID(Lcom/ibm/icu/util/TimeZone;)Ljava/lang/String;

    move-result-object v1

    .line 210
    if-eqz v1, :cond_0

    .line 211
    invoke-virtual {p0, v1}, Lcom/ibm/icu/impl/TimeZoneGenericNames;->getGenericLocationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 198
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getGenericLocationName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 226
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move-object v0, v1

    .line 271
    :cond_1
    :goto_0
    return-object v0

    .line 229
    :cond_2
    iget-object v0, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_genericLocationNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 230
    if-eqz v0, :cond_3

    .line 231
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    move-object v0, v1

    .line 233
    goto :goto_0

    .line 238
    :cond_3
    new-instance v1, Lcom/ibm/icu/util/Output;

    invoke-direct {v1}, Lcom/ibm/icu/util/Output;-><init>()V

    .line 239
    invoke-static {p1, v1}, Lcom/ibm/icu/impl/ZoneMeta;->getCanonicalCountry(Ljava/lang/String;Lcom/ibm/icu/util/Output;)Ljava/lang/String;

    move-result-object v2

    .line 240
    if-eqz v2, :cond_7

    .line 241
    iget-object v0, v1, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 243
    invoke-direct {p0}, Lcom/ibm/icu/impl/TimeZoneGenericNames;->getLocaleDisplayNames()Lcom/ibm/icu/text/LocaleDisplayNames;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ibm/icu/text/LocaleDisplayNames;->regionDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 244
    sget-object v1, Lcom/ibm/icu/impl/TimeZoneGenericNames$Pattern;->REGION_FORMAT:Lcom/ibm/icu/impl/TimeZoneGenericNames$Pattern;

    new-array v2, v4, [Ljava/lang/String;

    aput-object v0, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/ibm/icu/impl/TimeZoneGenericNames;->formatPattern(Lcom/ibm/icu/impl/TimeZoneGenericNames$Pattern;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 256
    :goto_1
    if-nez v1, :cond_5

    .line 257
    iget-object v0, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_genericLocationNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    goto :goto_0

    .line 251
    :cond_4
    iget-object v0, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_tznames:Lcom/ibm/icu/text/TimeZoneNames;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/TimeZoneNames;->getExemplarLocationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 252
    sget-object v1, Lcom/ibm/icu/impl/TimeZoneGenericNames$Pattern;->REGION_FORMAT:Lcom/ibm/icu/impl/TimeZoneGenericNames$Pattern;

    new-array v2, v4, [Ljava/lang/String;

    aput-object v0, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/ibm/icu/impl/TimeZoneGenericNames;->formatPattern(Lcom/ibm/icu/impl/TimeZoneGenericNames$Pattern;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 259
    :cond_5
    monitor-enter p0

    .line 260
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    .line 261
    iget-object v0, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_genericLocationNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 262
    if-nez v0, :cond_6

    .line 264
    new-instance v0, Lcom/ibm/icu/impl/TimeZoneGenericNames$NameInfo;

    sget-object v3, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;->LOCATION:Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;

    invoke-direct {v0, v2, v3}, Lcom/ibm/icu/impl/TimeZoneGenericNames$NameInfo;-><init>(Ljava/lang/String;Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;)V

    .line 265
    iget-object v2, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_gnamesTrie:Lcom/ibm/icu/impl/TextTrieMap;

    invoke-virtual {v2, v1, v0}, Lcom/ibm/icu/impl/TextTrieMap;->put(Ljava/lang/CharSequence;Ljava/lang/Object;)Lcom/ibm/icu/impl/TextTrieMap;

    move-object v0, v1

    .line 269
    :cond_6
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_7
    move-object v1, v0

    goto :goto_1
.end method
