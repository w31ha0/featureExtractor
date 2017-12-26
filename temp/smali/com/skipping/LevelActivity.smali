.class public Lcom/skipping/LevelActivity;
.super Landroid/app/Activity;
.source "LevelActivity.java"


# static fields
.field public static selected_level:I


# instance fields
.field private adView:Lcom/google/ads/AdView;

.field dataAdapter:Lcom/skipping/LevelArrayAdapter;

.field levels_list:Landroid/widget/ListView;

.field mSettings:Landroid/content/SharedPreferences;

.field private final values:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/skipping/LevelFB;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/skipping/LevelActivity;->values:Ljava/util/ArrayList;

    .line 27
    return-void
.end method

.method public static getLevel(I)[I
    .locals 9
    .param p0, "level_line"    # I

    .prologue
    const/4 v8, 0x1

    .line 230
    div-int/lit8 v6, p0, 0x4

    add-int/lit8 v1, v6, 0x1

    .line 231
    .local v1, "level_int":I
    rem-int/lit8 v6, p0, 0x4

    add-int/lit8 v0, v6, 0x1

    .line 232
    .local v0, "level_difficulty":I
    const/4 v2, 0x0

    .line 233
    .local v2, "level_time":I
    const/4 v3, 0x0

    .line 234
    .local v3, "level_times_a_day":I
    rem-int/lit8 v6, p0, 0x4

    add-int/lit8 v4, v6, 0x2

    .line 239
    .local v4, "level_times_a_week":I
    const/16 v6, 0x27

    if-gt p0, v6, :cond_0

    .line 240
    div-int/lit8 v6, p0, 0x8

    add-int/lit8 v6, v6, 0x1

    mul-int/lit8 v2, v6, 0x3c

    .line 245
    :goto_0
    div-int/lit8 v6, p0, 0x4

    add-int/lit8 v6, v6, 0x1

    rem-int/lit8 v6, v6, 0x2

    if-ne v6, v8, :cond_1

    .line 246
    const/4 v3, 0x1

    .line 251
    :goto_1
    mul-int v6, v2, v3

    mul-int v5, v6, v4

    .line 254
    .local v5, "sec_week":I
    const/4 v6, 0x6

    new-array v6, v6, [I

    const/4 v7, 0x0

    aput v1, v6, v7

    aput v0, v6, v8

    const/4 v7, 0x2

    aput v2, v6, v7

    const/4 v7, 0x3

    aput v3, v6, v7

    const/4 v7, 0x4

    aput v4, v6, v7

    const/4 v7, 0x5

    aput v5, v6, v7

    return-object v6

    .line 242
    .end local v5    # "sec_week":I
    :cond_0
    div-int/lit8 v6, p0, 0x8

    add-int/lit8 v6, v6, 0x1

    mul-int/lit16 v6, v6, 0x96

    add-int/lit16 v2, v6, -0x1c2

    goto :goto_0

    .line 248
    :cond_1
    const/4 v3, 0x2

    goto :goto_1
.end method


# virtual methods
.method public Back(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/skipping/LevelActivity;->finish()V

    .line 261
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 18
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v2, 0x7f030003

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/skipping/LevelActivity;->setContentView(I)V

    .line 48
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/skipping/LevelActivity;->mSettings:Landroid/content/SharedPreferences;

    .line 50
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/skipping/LevelActivity;->mSettings:Landroid/content/SharedPreferences;

    const-string v4, "selected_level"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/skipping/LevelActivity;->selected_level:I

    .line 52
    const v2, 0x7f0a001a

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/skipping/LevelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/skipping/LevelActivity;->levels_list:Landroid/widget/ListView;

    .line 55
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    const/16 v2, 0xd8

    if-lt v9, v2, :cond_1

    .line 173
    new-instance v2, Lcom/skipping/LevelArrayAdapter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/skipping/LevelActivity;->values:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v4}, Lcom/skipping/LevelArrayAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/skipping/LevelActivity;->dataAdapter:Lcom/skipping/LevelArrayAdapter;

    .line 174
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/skipping/LevelActivity;->levels_list:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/skipping/LevelActivity;->dataAdapter:Lcom/skipping/LevelArrayAdapter;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 177
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/skipping/LevelActivity;->levels_list:Landroid/widget/ListView;

    new-instance v4, Lcom/skipping/LevelActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/skipping/LevelActivity$1;-><init>(Lcom/skipping/LevelActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 200
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/skipping/LevelActivity;->mSettings:Landroid/content/SharedPreferences;

    const-string v4, "disable_ads"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 201
    .local v8, "disable_ads":Z
    if-nez v8, :cond_0

    .line 203
    new-instance v2, Lcom/google/ads/AdView;

    sget-object v4, Lcom/google/ads/AdSize;->SMART_BANNER:Lcom/google/ads/AdSize;

    const-string v5, "ca-app-pub-8661822564276571/3559185041"

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v4, v5}, Lcom/google/ads/AdView;-><init>(Landroid/app/Activity;Lcom/google/ads/AdSize;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/skipping/LevelActivity;->adView:Lcom/google/ads/AdView;

    .line 207
    const v2, 0x7f0a0002

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/skipping/LevelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 210
    .local v10, "layout":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/skipping/LevelActivity;->adView:Lcom/google/ads/AdView;

    invoke-virtual {v10, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 213
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/skipping/LevelActivity;->adView:Lcom/google/ads/AdView;

    new-instance v4, Lcom/google/ads/AdRequest;

    invoke-direct {v4}, Lcom/google/ads/AdRequest;-><init>()V

    invoke-virtual {v2, v4}, Lcom/google/ads/AdView;->loadAd(Lcom/google/ads/AdRequest;)V

    .line 218
    .end local v10    # "layout":Landroid/widget/LinearLayout;
    :cond_0
    return-void

    .line 57
    .end local v8    # "disable_ads":Z
    :cond_1
    invoke-static {v9}, Lcom/skipping/LevelActivity;->getLevel(I)[I

    move-result-object v11

    .line 60
    .local v11, "ll":[I
    const-string v3, ""

    .line 61
    .local v3, "LevelName":Ljava/lang/String;
    const/4 v2, 0x1

    aget v2, v11, v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_3

    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f050014

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/skipping/LevelActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x0

    aget v4, v11, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v4, 0x7f050018

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/skipping/LevelActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 71
    :cond_2
    :goto_1
    const/4 v2, 0x2

    aget v2, v11, v2

    rem-int/lit8 v14, v2, 0x3c

    .line 73
    .local v14, "seconds":I
    const/4 v2, 0x2

    aget v2, v11, v2

    div-int/lit8 v12, v2, 0x3c

    .line 76
    .local v12, "minutes":I
    const/4 v2, 0x5

    aget v2, v11, v2

    rem-int/lit8 v15, v2, 0x3c

    .line 78
    .local v15, "seconds1":I
    const/4 v2, 0x5

    aget v2, v11, v2

    div-int/lit8 v13, v2, 0x3c

    .line 81
    .local v13, "minutes1":I
    new-instance v1, Lcom/skipping/LevelFB;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 83
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0xa

    if-ge v12, v4, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "0"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v4, 0xa

    if-ge v14, v4, :cond_7

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "0"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_3
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 84
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x3

    aget v6, v11, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 85
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x4

    aget v7, v11, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 86
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0xa

    if-ge v13, v7, :cond_8

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v17, "0"

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_4
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v16, ":"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v7, 0xa

    if-ge v15, v7, :cond_9

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v17, "0"

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_5
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 81
    invoke-direct/range {v1 .. v7}, Lcom/skipping/LevelFB;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .local v1, "one":Lcom/skipping/LevelFB;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/skipping/LevelActivity;->values:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 63
    .end local v1    # "one":Lcom/skipping/LevelFB;
    .end local v12    # "minutes":I
    .end local v13    # "minutes1":I
    .end local v14    # "seconds":I
    .end local v15    # "seconds1":I
    :cond_3
    const/4 v2, 0x1

    aget v2, v11, v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_4

    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f050014

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/skipping/LevelActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x0

    aget v4, v11, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v4, 0x7f050019

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/skipping/LevelActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 65
    goto/16 :goto_1

    :cond_4
    const/4 v2, 0x1

    aget v2, v11, v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_5

    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f050014

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/skipping/LevelActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x0

    aget v4, v11, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v4, 0x7f05001a

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/skipping/LevelActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 67
    goto/16 :goto_1

    :cond_5
    const/4 v2, 0x1

    aget v2, v11, v2

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f050014

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/skipping/LevelActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x0

    aget v4, v11, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v4, 0x7f05001b

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/skipping/LevelActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 83
    .restart local v12    # "minutes":I
    .restart local v13    # "minutes1":I
    .restart local v14    # "seconds":I
    .restart local v15    # "seconds1":I
    :cond_6
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto/16 :goto_2

    :cond_7
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto/16 :goto_3

    .line 86
    :cond_8
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto/16 :goto_4

    :cond_9
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto/16 :goto_5
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 221
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 223
    iget-object v0, p0, Lcom/skipping/LevelActivity;->adView:Lcom/google/ads/AdView;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/skipping/LevelActivity;->adView:Lcom/google/ads/AdView;

    invoke-virtual {v0}, Lcom/google/ads/AdView;->destroy()V

    .line 226
    :cond_0
    return-void
.end method
