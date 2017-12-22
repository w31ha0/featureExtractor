.class public Lcom/ibm/icu/impl/locale/KeyTypeData;
.super Ljava/lang/Object;
.source "KeyTypeData.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static BCP47_KEYS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field static DEPRECATED_KEYS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static DEPRECATED_KEY_TYPES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final KEYMAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/ibm/icu/impl/locale/KeyTypeData$KeyData;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEY_DATA:[[Ljava/lang/Object;

.field static VALUE_TYPES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/ibm/icu/impl/locale/KeyTypeData$ValueType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 30
    const-class v0, Lcom/ibm/icu/impl/locale/KeyTypeData;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/ibm/icu/impl/locale/KeyTypeData;->$assertionsDisabled:Z

    .line 399
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/impl/locale/KeyTypeData;->DEPRECATED_KEYS:Ljava/util/Set;

    .line 400
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/impl/locale/KeyTypeData;->VALUE_TYPES:Ljava/util/Map;

    .line 401
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/impl/locale/KeyTypeData;->DEPRECATED_KEY_TYPES:Ljava/util/Map;

    .line 537
    new-array v0, v1, [[Ljava/lang/Object;

    sput-object v0, Lcom/ibm/icu/impl/locale/KeyTypeData;->KEY_DATA:[[Ljava/lang/Object;

    .line 656
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ibm/icu/impl/locale/KeyTypeData;->KEYMAP:Ljava/util/Map;

    .line 661
    invoke-static {}, Lcom/ibm/icu/impl/locale/KeyTypeData;->initFromResourceBundle()V

    .line 662
    return-void

    :cond_0
    move v0, v1

    .line 30
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getKeyInfo(Lcom/ibm/icu/util/UResourceBundle;)V
    .locals 9

    .prologue
    .line 422
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 423
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 424
    invoke-virtual {p0}, Lcom/ibm/icu/util/UResourceBundle;->getIterator()Lcom/ibm/icu/util/UResourceBundleIterator;

    move-result-object v2

    :cond_0
    invoke-virtual {v2}, Lcom/ibm/icu/util/UResourceBundleIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 425
    invoke-virtual {v2}, Lcom/ibm/icu/util/UResourceBundleIterator;->next()Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v3

    .line 426
    invoke-virtual {v3}, Lcom/ibm/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 427
    invoke-static {v4}, Lcom/ibm/icu/impl/locale/KeyTypeData$KeyInfoType;->valueOf(Ljava/lang/String;)Lcom/ibm/icu/impl/locale/KeyTypeData$KeyInfoType;

    move-result-object v4

    .line 428
    invoke-virtual {v3}, Lcom/ibm/icu/util/UResourceBundle;->getIterator()Lcom/ibm/icu/util/UResourceBundleIterator;

    move-result-object v3

    :goto_0
    invoke-virtual {v3}, Lcom/ibm/icu/util/UResourceBundleIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 429
    invoke-virtual {v3}, Lcom/ibm/icu/util/UResourceBundleIterator;->next()Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v5

    .line 430
    invoke-virtual {v5}, Lcom/ibm/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v6

    .line 431
    invoke-virtual {v5}, Lcom/ibm/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v5

    .line 432
    sget-object v7, Lcom/ibm/icu/impl/locale/KeyTypeData$1;->$SwitchMap$com$ibm$icu$impl$locale$KeyTypeData$KeyInfoType:[I

    invoke-virtual {v4}, Lcom/ibm/icu/impl/locale/KeyTypeData$KeyInfoType;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    .line 434
    :pswitch_0
    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 437
    :pswitch_1
    invoke-static {v5}, Lcom/ibm/icu/impl/locale/KeyTypeData$ValueType;->valueOf(Ljava/lang/String;)Lcom/ibm/icu/impl/locale/KeyTypeData$ValueType;

    move-result-object v5

    invoke-interface {v1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 442
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/impl/locale/KeyTypeData;->DEPRECATED_KEYS:Ljava/util/Set;

    .line 443
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/impl/locale/KeyTypeData;->VALUE_TYPES:Ljava/util/Map;

    .line 444
    return-void

    .line 432
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getTypeInfo(Lcom/ibm/icu/util/UResourceBundle;)V
    .locals 10

    .prologue
    .line 459
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 460
    invoke-virtual {p0}, Lcom/ibm/icu/util/UResourceBundle;->getIterator()Lcom/ibm/icu/util/UResourceBundleIterator;

    move-result-object v1

    :cond_0
    invoke-virtual {v1}, Lcom/ibm/icu/util/UResourceBundleIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 461
    invoke-virtual {v1}, Lcom/ibm/icu/util/UResourceBundleIterator;->next()Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v2

    .line 462
    invoke-virtual {v2}, Lcom/ibm/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 463
    invoke-static {v3}, Lcom/ibm/icu/impl/locale/KeyTypeData$TypeInfoType;->valueOf(Ljava/lang/String;)Lcom/ibm/icu/impl/locale/KeyTypeData$TypeInfoType;

    move-result-object v3

    .line 464
    invoke-virtual {v2}, Lcom/ibm/icu/util/UResourceBundle;->getIterator()Lcom/ibm/icu/util/UResourceBundleIterator;

    move-result-object v2

    :goto_0
    invoke-virtual {v2}, Lcom/ibm/icu/util/UResourceBundleIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 465
    invoke-virtual {v2}, Lcom/ibm/icu/util/UResourceBundleIterator;->next()Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v4

    .line 466
    invoke-virtual {v4}, Lcom/ibm/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 467
    new-instance v6, Ljava/util/LinkedHashSet;

    invoke-direct {v6}, Ljava/util/LinkedHashSet;-><init>()V

    .line 468
    invoke-virtual {v4}, Lcom/ibm/icu/util/UResourceBundle;->getIterator()Lcom/ibm/icu/util/UResourceBundleIterator;

    move-result-object v4

    :goto_1
    invoke-virtual {v4}, Lcom/ibm/icu/util/UResourceBundleIterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 469
    invoke-virtual {v4}, Lcom/ibm/icu/util/UResourceBundleIterator;->next()Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v7

    .line 470
    invoke-virtual {v7}, Lcom/ibm/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v7

    .line 471
    sget-object v8, Lcom/ibm/icu/impl/locale/KeyTypeData$1;->$SwitchMap$com$ibm$icu$impl$locale$KeyTypeData$TypeInfoType:[I

    invoke-virtual {v3}, Lcom/ibm/icu/impl/locale/KeyTypeData$TypeInfoType;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    goto :goto_1

    .line 473
    :pswitch_0
    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 477
    :cond_1
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 480
    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/impl/locale/KeyTypeData;->DEPRECATED_KEY_TYPES:Ljava/util/Map;

    .line 481
    return-void

    .line 471
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static initFromResourceBundle()V
    .locals 23

    .prologue
    .line 213
    const-string/jumbo v3, "com/ibm/icu/impl/data/icudt59b"

    const-string/jumbo v4, "keyTypeData"

    sget-object v5, Lcom/ibm/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    invoke-static {v3, v4, v5}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v5

    .line 218
    const-string/jumbo v3, "keyInfo"

    invoke-virtual {v5, v3}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v3

    invoke-static {v3}, Lcom/ibm/icu/impl/locale/KeyTypeData;->getKeyInfo(Lcom/ibm/icu/util/UResourceBundle;)V

    .line 219
    const-string/jumbo v3, "typeInfo"

    invoke-virtual {v5, v3}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v3

    invoke-static {v3}, Lcom/ibm/icu/impl/locale/KeyTypeData;->getTypeInfo(Lcom/ibm/icu/util/UResourceBundle;)V

    .line 221
    const-string/jumbo v3, "keyMap"

    invoke-virtual {v5, v3}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v6

    .line 222
    const-string/jumbo v3, "typeMap"

    invoke-virtual {v5, v3}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v14

    .line 225
    const/4 v4, 0x0

    .line 226
    const/4 v3, 0x0

    .line 229
    :try_start_0
    const-string/jumbo v7, "typeAlias"

    invoke-virtual {v5, v7}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object v13, v4

    .line 235
    :goto_0
    :try_start_1
    const-string/jumbo v4, "bcpTypeAlias"

    invoke-virtual {v5, v4}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    move-object v4, v3

    .line 241
    :goto_1
    invoke-virtual {v6}, Lcom/ibm/icu/util/UResourceBundle;->getIterator()Lcom/ibm/icu/util/UResourceBundleIterator;

    move-result-object v15

    .line 242
    new-instance v16, Ljava/util/LinkedHashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/LinkedHashMap;-><init>()V

    .line 244
    :cond_0
    :goto_2
    invoke-virtual {v15}, Lcom/ibm/icu/util/UResourceBundleIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 245
    invoke-virtual {v15}, Lcom/ibm/icu/util/UResourceBundleIterator;->next()Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v3

    .line 246
    invoke-virtual {v3}, Lcom/ibm/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v7

    .line 247
    invoke-virtual {v3}, Lcom/ibm/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v5

    .line 249
    const/4 v3, 0x0

    .line 250
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_13

    .line 253
    const/4 v3, 0x1

    move v5, v3

    move-object v6, v7

    .line 255
    :goto_3
    new-instance v17, Ljava/util/LinkedHashSet;

    invoke-direct/range {v17 .. v17}, Ljava/util/LinkedHashSet;-><init>()V

    .line 256
    invoke-static/range {v17 .. v17}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-interface {v0, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    const-string/jumbo v3, "timezone"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    .line 261
    const/4 v3, 0x0

    .line 262
    if-eqz v13, :cond_12

    .line 263
    const/4 v8, 0x0

    .line 265
    :try_start_2
    invoke-virtual {v13, v7}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;
    :try_end_2
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object v8

    .line 269
    :goto_4
    if-eqz v8, :cond_12

    .line 270
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 271
    invoke-virtual {v8}, Lcom/ibm/icu/util/UResourceBundle;->getIterator()Lcom/ibm/icu/util/UResourceBundleIterator;

    move-result-object v10

    .line 272
    :goto_5
    invoke-virtual {v10}, Lcom/ibm/icu/util/UResourceBundleIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 273
    invoke-virtual {v10}, Lcom/ibm/icu/util/UResourceBundleIterator;->next()Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v8

    .line 274
    invoke-virtual {v8}, Lcom/ibm/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 275
    invoke-virtual {v8}, Lcom/ibm/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v11

    .line 276
    if-eqz v18, :cond_11

    .line 277
    const/16 v8, 0x3a

    const/16 v12, 0x2f

    invoke-virtual {v3, v8, v12}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    move-object v8, v3

    .line 279
    :goto_6
    invoke-interface {v9, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 280
    if-nez v3, :cond_1

    .line 281
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 282
    invoke-interface {v9, v11, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    :cond_1
    invoke-interface {v3, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 230
    :catch_0
    move-exception v7

    move-object v13, v4

    goto/16 :goto_0

    .line 236
    :catch_1
    move-exception v4

    move-object v4, v3

    goto/16 :goto_1

    :cond_2
    move-object v12, v9

    .line 290
    :goto_7
    const/4 v3, 0x0

    .line 291
    if-eqz v4, :cond_4

    .line 292
    const/4 v8, 0x0

    .line 294
    :try_start_3
    invoke-virtual {v4, v6}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;
    :try_end_3
    .catch Ljava/util/MissingResourceException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v8

    move-object v9, v8

    .line 298
    :goto_8
    if-eqz v9, :cond_4

    .line 299
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 300
    invoke-virtual {v9}, Lcom/ibm/icu/util/UResourceBundle;->getIterator()Lcom/ibm/icu/util/UResourceBundleIterator;

    move-result-object v9

    .line 301
    :goto_9
    invoke-virtual {v9}, Lcom/ibm/icu/util/UResourceBundleIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 302
    invoke-virtual {v9}, Lcom/ibm/icu/util/UResourceBundleIterator;->next()Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v3

    .line 303
    invoke-virtual {v3}, Lcom/ibm/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v10

    .line 304
    invoke-virtual {v3}, Lcom/ibm/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v11

    .line 305
    invoke-interface {v8, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 306
    if-nez v3, :cond_3

    .line 307
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 308
    invoke-interface {v8, v11, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    :cond_3
    invoke-interface {v3, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 295
    :catch_2
    move-exception v9

    move-object v9, v8

    goto :goto_8

    :cond_4
    move-object v8, v3

    .line 315
    :cond_5
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 316
    const/4 v9, 0x0

    .line 319
    const/4 v3, 0x0

    .line 321
    :try_start_4
    invoke-virtual {v14, v7}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;
    :try_end_4
    .catch Ljava/util/MissingResourceException; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v3

    .line 326
    :cond_6
    if-eqz v3, :cond_d

    .line 327
    invoke-virtual {v3}, Lcom/ibm/icu/util/UResourceBundle;->getIterator()Lcom/ibm/icu/util/UResourceBundleIterator;

    move-result-object v20

    .line 328
    :cond_7
    :goto_a
    invoke-virtual/range {v20 .. v20}, Lcom/ibm/icu/util/UResourceBundleIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 329
    invoke-virtual/range {v20 .. v20}, Lcom/ibm/icu/util/UResourceBundleIterator;->next()Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v3

    .line 330
    invoke-virtual {v3}, Lcom/ibm/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v10

    .line 331
    invoke-virtual {v3}, Lcom/ibm/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v11

    .line 334
    const/4 v3, 0x0

    invoke-virtual {v10, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 335
    const/16 v21, 0x39

    move/from16 v0, v21

    if-ge v0, v3, :cond_8

    const/16 v21, 0x61

    move/from16 v0, v21

    if-ge v3, v0, :cond_8

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_8

    const/4 v3, 0x1

    .line 336
    :goto_b
    if-eqz v3, :cond_9

    .line 337
    if-nez v9, :cond_10

    .line 338
    const-class v3, Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;

    invoke-static {v3}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v3

    .line 340
    :goto_c
    invoke-static {v10}, Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;->valueOf(Ljava/lang/String;)Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 341
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    move-object v9, v3

    .line 342
    goto :goto_a

    .line 322
    :catch_3
    move-exception v10

    .line 324
    sget-boolean v10, Lcom/ibm/icu/impl/locale/KeyTypeData;->$assertionsDisabled:Z

    if-nez v10, :cond_6

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 335
    :cond_8
    const/4 v3, 0x0

    goto :goto_b

    .line 345
    :cond_9
    if-eqz v18, :cond_f

    .line 348
    const/16 v3, 0x3a

    const/16 v21, 0x2f

    move/from16 v0, v21

    invoke-virtual {v10, v3, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    .line 351
    :goto_d
    const/4 v10, 0x0

    .line 352
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v21

    if-nez v21, :cond_a

    .line 355
    const/4 v10, 0x1

    move-object v11, v3

    .line 357
    :cond_a
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 363
    new-instance v21, Lcom/ibm/icu/impl/locale/KeyTypeData$Type;

    move-object/from16 v0, v21

    invoke-direct {v0, v3, v11}, Lcom/ibm/icu/impl/locale/KeyTypeData$Type;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    invoke-static {v3}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    if-nez v10, :cond_b

    .line 366
    invoke-static {v11}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    :cond_b
    if-eqz v12, :cond_c

    .line 371
    invoke-interface {v12, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 372
    if-eqz v3, :cond_c

    .line 373
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_e
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 374
    invoke-static {v3}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    .line 378
    :cond_c
    if-eqz v8, :cond_7

    .line 379
    invoke-interface {v8, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 380
    if-eqz v3, :cond_7

    .line 381
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_f
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 382
    invoke-static {v3}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    .line 389
    :cond_d
    new-instance v3, Lcom/ibm/icu/impl/locale/KeyTypeData$KeyData;

    move-object/from16 v0, v19

    invoke-direct {v3, v7, v6, v0, v9}, Lcom/ibm/icu/impl/locale/KeyTypeData$KeyData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/EnumSet;)V

    .line 391
    sget-object v8, Lcom/ibm/icu/impl/locale/KeyTypeData;->KEYMAP:Ljava/util/Map;

    invoke-static {v7}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v8, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    if-nez v5, :cond_0

    .line 393
    sget-object v5, Lcom/ibm/icu/impl/locale/KeyTypeData;->KEYMAP:Ljava/util/Map;

    invoke-static {v6}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 396
    :cond_e
    invoke-static/range {v16 .. v16}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    sput-object v3, Lcom/ibm/icu/impl/locale/KeyTypeData;->BCP47_KEYS:Ljava/util/Map;

    .line 397
    return-void

    .line 266
    :catch_4
    move-exception v9

    goto/16 :goto_4

    :cond_f
    move-object v3, v10

    goto/16 :goto_d

    :cond_10
    move-object v3, v9

    goto/16 :goto_c

    :cond_11
    move-object v8, v3

    goto/16 :goto_6

    :cond_12
    move-object v12, v3

    goto/16 :goto_7

    :cond_13
    move-object v6, v5

    move v5, v3

    goto/16 :goto_3
.end method

.method public static toBcpKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 122
    invoke-static {p0}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    sget-object v1, Lcom/ibm/icu/impl/locale/KeyTypeData;->KEYMAP:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/locale/KeyTypeData$KeyData;

    .line 124
    if-eqz v0, :cond_0

    .line 125
    iget-object v0, v0, Lcom/ibm/icu/impl/locale/KeyTypeData$KeyData;->bcpId:Ljava/lang/String;

    .line 127
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static toBcpType(Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/Output;Lcom/ibm/icu/util/Output;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/ibm/icu/util/Output",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/ibm/icu/util/Output",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 142
    if-eqz p2, :cond_0

    .line 143
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p2, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    .line 145
    :cond_0
    if-eqz p3, :cond_1

    .line 146
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p3, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    .line 149
    :cond_1
    invoke-static {p0}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    invoke-static {p1}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 152
    sget-object v1, Lcom/ibm/icu/impl/locale/KeyTypeData;->KEYMAP:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/locale/KeyTypeData$KeyData;

    .line 153
    if-eqz v0, :cond_6

    .line 154
    if-eqz p2, :cond_2

    .line 155
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, p2, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    .line 157
    :cond_2
    iget-object v1, v0, Lcom/ibm/icu/impl/locale/KeyTypeData$KeyData;->typeMap:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/impl/locale/KeyTypeData$Type;

    .line 158
    if-eqz v1, :cond_3

    .line 159
    iget-object v0, v1, Lcom/ibm/icu/impl/locale/KeyTypeData$Type;->bcpId:Ljava/lang/String;

    .line 172
    :goto_0
    return-object v0

    .line 161
    :cond_3
    iget-object v1, v0, Lcom/ibm/icu/impl/locale/KeyTypeData$KeyData;->specialTypes:Ljava/util/EnumSet;

    if-eqz v1, :cond_6

    .line 162
    iget-object v0, v0, Lcom/ibm/icu/impl/locale/KeyTypeData$KeyData;->specialTypes:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;

    .line 163
    iget-object v3, v0, Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;->handler:Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialTypeHandler;

    invoke-virtual {v3, v2}, Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialTypeHandler;->isWellFormed(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 164
    if-eqz p3, :cond_5

    .line 165
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p3, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    .line 167
    :cond_5
    iget-object v0, v0, Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;->handler:Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialTypeHandler;

    invoke-virtual {v0, v2}, Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialTypeHandler;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 172
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static toLegacyKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 131
    invoke-static {p0}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    sget-object v1, Lcom/ibm/icu/impl/locale/KeyTypeData;->KEYMAP:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/locale/KeyTypeData$KeyData;

    .line 133
    if-eqz v0, :cond_0

    .line 134
    iget-object v0, v0, Lcom/ibm/icu/impl/locale/KeyTypeData$KeyData;->legacyId:Ljava/lang/String;

    .line 136
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static toLegacyType(Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/Output;Lcom/ibm/icu/util/Output;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/ibm/icu/util/Output",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/ibm/icu/util/Output",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 179
    if-eqz p2, :cond_0

    .line 180
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p2, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    .line 182
    :cond_0
    if-eqz p3, :cond_1

    .line 183
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p3, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    .line 186
    :cond_1
    invoke-static {p0}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 187
    invoke-static {p1}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 189
    sget-object v1, Lcom/ibm/icu/impl/locale/KeyTypeData;->KEYMAP:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/locale/KeyTypeData$KeyData;

    .line 190
    if-eqz v0, :cond_6

    .line 191
    if-eqz p2, :cond_2

    .line 192
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, p2, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    .line 194
    :cond_2
    iget-object v1, v0, Lcom/ibm/icu/impl/locale/KeyTypeData$KeyData;->typeMap:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/impl/locale/KeyTypeData$Type;

    .line 195
    if-eqz v1, :cond_3

    .line 196
    iget-object v0, v1, Lcom/ibm/icu/impl/locale/KeyTypeData$Type;->legacyId:Ljava/lang/String;

    .line 209
    :goto_0
    return-object v0

    .line 198
    :cond_3
    iget-object v1, v0, Lcom/ibm/icu/impl/locale/KeyTypeData$KeyData;->specialTypes:Ljava/util/EnumSet;

    if-eqz v1, :cond_6

    .line 199
    iget-object v0, v0, Lcom/ibm/icu/impl/locale/KeyTypeData$KeyData;->specialTypes:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;

    .line 200
    iget-object v3, v0, Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;->handler:Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialTypeHandler;

    invoke-virtual {v3, v2}, Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialTypeHandler;->isWellFormed(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 201
    if-eqz p3, :cond_5

    .line 202
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p3, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    .line 204
    :cond_5
    iget-object v0, v0, Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;->handler:Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialTypeHandler;

    invoke-virtual {v0, v2}, Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialTypeHandler;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 209
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method
