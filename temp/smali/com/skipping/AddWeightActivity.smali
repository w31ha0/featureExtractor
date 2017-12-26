.class public Lcom/skipping/AddWeightActivity;
.super Landroid/app/Activity;
.source "AddWeightActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/skipping/AddWeightActivity$DateArrayAdapter;,
        Lcom/skipping/AddWeightActivity$DateNumericAdapter;
    }
.end annotation


# instance fields
.field TextView3:Landroid/widget/TextView;

.field TextView4:Landroid/widget/TextView;

.field TextViewWeight:Landroid/widget/Button;

.field WeightUnit:I

.field private adView:Lcom/google/ads/AdView;

.field private bmiChanged:Z

.field private bmiScrolled:Z

.field private mSettings:Landroid/content/SharedPreferences;

.field temp_bmi_weight:I

.field temp_bmi_weight1:I

.field temp_day:I

.field temp_month:I

.field temp_year:I

.field weight_to_db:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 49
    iput v0, p0, Lcom/skipping/AddWeightActivity;->WeightUnit:I

    .line 56
    iput-boolean v0, p0, Lcom/skipping/AddWeightActivity;->bmiChanged:Z

    .line 57
    iput-boolean v0, p0, Lcom/skipping/AddWeightActivity;->bmiScrolled:Z

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/skipping/AddWeightActivity;->weight_to_db:F

    .line 43
    return-void
.end method

.method static synthetic access$0(Lcom/skipping/AddWeightActivity;)Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/skipping/AddWeightActivity;->bmiScrolled:Z

    return v0
.end method

.method static synthetic access$1(Lcom/skipping/AddWeightActivity;Z)V
    .locals 0

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/skipping/AddWeightActivity;->bmiChanged:Z

    return-void
.end method

.method static synthetic access$2(Lcom/skipping/AddWeightActivity;Z)V
    .locals 0

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/skipping/AddWeightActivity;->bmiScrolled:Z

    return-void
.end method

.method private addChangingListener(Lwheel_lib/WheelView;Ljava/lang/String;)V
    .locals 1
    .param p1, "wheel"    # Lwheel_lib/WheelView;
    .param p2, "label"    # Ljava/lang/String;

    .prologue
    .line 609
    new-instance v0, Lcom/skipping/AddWeightActivity$7;

    invoke-direct {v0, p0}, Lcom/skipping/AddWeightActivity$7;-><init>(Lcom/skipping/AddWeightActivity;)V

    invoke-virtual {p1, v0}, Lwheel_lib/WheelView;->addChangingListener(Lwheel_lib/OnWheelChangedListener;)V

    .line 614
    return-void
.end method


# virtual methods
.method public Back(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/skipping/AddWeightActivity;->finish()V

    .line 148
    return-void
.end method

.method public Button_cancel(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/skipping/AddWeightActivity;->finish()V

    .line 314
    return-void
.end method

.method public Button_ok(Landroid/view/View;)V
    .locals 13
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 222
    iget v1, p0, Lcom/skipping/AddWeightActivity;->WeightUnit:I

    if-nez v1, :cond_1

    .line 224
    iget-object v1, p0, Lcom/skipping/AddWeightActivity;->mSettings:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 225
    .local v8, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "last_weight_0_last"

    iget v2, p0, Lcom/skipping/AddWeightActivity;->temp_bmi_weight:I

    invoke-interface {v8, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 226
    const-string v1, "last_weight1_0_last"

    iget v2, p0, Lcom/skipping/AddWeightActivity;->temp_bmi_weight1:I

    invoke-interface {v8, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 230
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 233
    iget v1, p0, Lcom/skipping/AddWeightActivity;->temp_bmi_weight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/skipping/AddWeightActivity;->temp_bmi_weight1:I

    int-to-float v2, v2

    const/high16 v5, 0x41200000    # 10.0f

    div-float/2addr v2, v5

    add-float/2addr v1, v2

    iput v1, p0, Lcom/skipping/AddWeightActivity;->weight_to_db:F

    .line 279
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    :goto_0
    const-string v1, "Europe/London"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v12

    .line 281
    .local v12, "timeZone":Ljava/util/TimeZone;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 282
    .local v7, "calendar":Ljava/util/Calendar;
    const/4 v1, 0x1

    iget v2, p0, Lcom/skipping/AddWeightActivity;->temp_year:I

    invoke-virtual {v7, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 283
    const/4 v1, 0x2

    iget v2, p0, Lcom/skipping/AddWeightActivity;->temp_month:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v7, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 284
    const/4 v1, 0x5

    iget v2, p0, Lcom/skipping/AddWeightActivity;->temp_day:I

    invoke-virtual {v7, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 285
    const/16 v1, 0xb

    const/4 v2, 0x1

    invoke-virtual {v7, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 286
    const/16 v1, 0xc

    const/4 v2, 0x1

    invoke-virtual {v7, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 287
    const/16 v1, 0xd

    const/4 v2, 0x1

    invoke-virtual {v7, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 288
    const/16 v1, 0xe

    const/4 v2, 0x1

    invoke-virtual {v7, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 289
    invoke-virtual {v7, v12}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 290
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    .line 293
    .local v3, "dateLong":J
    new-instance v0, Ldatabase/MyWeight;

    const-wide/16 v1, -0x1

    iget v5, p0, Lcom/skipping/AddWeightActivity;->weight_to_db:F

    const v6, 0x49742400    # 1000000.0f

    mul-float/2addr v5, v6

    float-to-long v5, v5

    invoke-direct/range {v0 .. v6}, Ldatabase/MyWeight;-><init>(JJJ)V

    .line 295
    .local v0, "md":Ldatabase/MyWeight;
    new-instance v9, Ldatabase/DBConnectorWeight;

    invoke-direct {v9, p0}, Ldatabase/DBConnectorWeight;-><init>(Landroid/content/Context;)V

    .line 297
    .local v9, "mDBConnector":Ldatabase/DBConnectorWeight;
    invoke-virtual {v9, v3, v4}, Ldatabase/DBConnectorWeight;->select_date(J)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 298
    invoke-virtual {v9, v0}, Ldatabase/DBConnectorWeight;->update_date(Ldatabase/MyWeight;)I

    .line 306
    :goto_1
    invoke-virtual {p0}, Lcom/skipping/AddWeightActivity;->finish()V

    .line 310
    return-void

    .line 239
    .end local v0    # "md":Ldatabase/MyWeight;
    .end local v3    # "dateLong":J
    .end local v7    # "calendar":Ljava/util/Calendar;
    .end local v9    # "mDBConnector":Ldatabase/DBConnectorWeight;
    .end local v12    # "timeZone":Ljava/util/TimeZone;
    :cond_1
    iget v1, p0, Lcom/skipping/AddWeightActivity;->WeightUnit:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 241
    iget-object v1, p0, Lcom/skipping/AddWeightActivity;->mSettings:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 242
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "last_weight_1_last"

    iget v2, p0, Lcom/skipping/AddWeightActivity;->temp_bmi_weight:I

    invoke-interface {v8, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 243
    const-string v1, "last_weight1_1_last"

    iget v2, p0, Lcom/skipping/AddWeightActivity;->temp_bmi_weight1:I

    invoke-interface {v8, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 245
    iget v1, p0, Lcom/skipping/AddWeightActivity;->temp_bmi_weight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/skipping/AddWeightActivity;->temp_bmi_weight1:I

    int-to-float v2, v2

    const/high16 v5, 0x41200000    # 10.0f

    div-float/2addr v2, v5

    add-float v10, v1, v2

    .line 249
    .local v10, "temp_weight":F
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 252
    const v1, 0x3ee83d42

    mul-float/2addr v1, v10

    iput v1, p0, Lcom/skipping/AddWeightActivity;->weight_to_db:F

    goto/16 :goto_0

    .line 256
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v10    # "temp_weight":F
    :cond_2
    iget v1, p0, Lcom/skipping/AddWeightActivity;->WeightUnit:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 258
    iget-object v1, p0, Lcom/skipping/AddWeightActivity;->mSettings:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 259
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "last_weight_2_last"

    iget v2, p0, Lcom/skipping/AddWeightActivity;->temp_bmi_weight:I

    invoke-interface {v8, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 260
    const-string v1, "last_weight1_2_last"

    iget v2, p0, Lcom/skipping/AddWeightActivity;->temp_bmi_weight1:I

    invoke-interface {v8, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 262
    iget v1, p0, Lcom/skipping/AddWeightActivity;->temp_bmi_weight:I

    int-to-float v1, v1

    const v2, 0x40cb359a

    mul-float v10, v1, v2

    .line 263
    .restart local v10    # "temp_weight":F
    iget v1, p0, Lcom/skipping/AddWeightActivity;->temp_bmi_weight1:I

    int-to-float v1, v1

    const v2, 0x3ee83d42

    mul-float v11, v1, v2

    .line 265
    .local v11, "temp_weight1":F
    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v11, v1

    .line 269
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 272
    add-float v1, v10, v11

    iput v1, p0, Lcom/skipping/AddWeightActivity;->weight_to_db:F

    goto/16 :goto_0

    .line 301
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v10    # "temp_weight":F
    .end local v11    # "temp_weight1":F
    .restart local v0    # "md":Ldatabase/MyWeight;
    .restart local v3    # "dateLong":J
    .restart local v7    # "calendar":Ljava/util/Calendar;
    .restart local v9    # "mDBConnector":Ldatabase/DBConnectorWeight;
    .restart local v12    # "timeZone":Ljava/util/TimeZone;
    :cond_3
    invoke-virtual {v9, v0}, Ldatabase/DBConnectorWeight;->insert(Ldatabase/MyWeight;)J

    goto :goto_1
.end method

.method public DrawDrams()V
    .locals 11

    .prologue
    const/16 v10, 0xa

    const/16 v9, 0x9

    const/4 v7, 0x1

    const/16 v6, 0x3e7

    const/4 v8, 0x0

    .line 323
    const v5, 0x7f0a0008

    invoke-virtual {p0, v5}, Lcom/skipping/AddWeightActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lwheel_lib/WheelView;

    .line 324
    .local v0, "WVweight":Lwheel_lib/WheelView;
    iget v5, p0, Lcom/skipping/AddWeightActivity;->WeightUnit:I

    if-nez v5, :cond_1

    .line 325
    new-instance v5, Lwheel_lib/adapters/NumericWheelAdapter;

    invoke-direct {v5, p0, v8, v6}, Lwheel_lib/adapters/NumericWheelAdapter;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v0, v5}, Lwheel_lib/WheelView;->setViewAdapter(Lwheel_lib/adapters/WheelViewAdapter;)V

    .line 332
    :goto_0
    const v5, 0x7f0a0009

    invoke-virtual {p0, v5}, Lcom/skipping/AddWeightActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lwheel_lib/WheelView;

    .line 333
    .local v1, "WVweight1":Lwheel_lib/WheelView;
    iget v5, p0, Lcom/skipping/AddWeightActivity;->WeightUnit:I

    if-nez v5, :cond_3

    .line 334
    new-instance v5, Lwheel_lib/adapters/NumericWheelAdapter;

    const-string v6, ".%2d"

    invoke-direct {v5, p0, v8, v9, v6}, Lwheel_lib/adapters/NumericWheelAdapter;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    invoke-virtual {v1, v5}, Lwheel_lib/WheelView;->setViewAdapter(Lwheel_lib/adapters/WheelViewAdapter;)V

    .line 346
    :goto_1
    iget v5, p0, Lcom/skipping/AddWeightActivity;->WeightUnit:I

    if-nez v5, :cond_5

    .line 347
    iget-object v5, p0, Lcom/skipping/AddWeightActivity;->mSettings:Landroid/content/SharedPreferences;

    const-string v6, "last_weight_0_last"

    const/16 v7, 0x32

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v0, v5}, Lwheel_lib/WheelView;->setCurrentItem(I)V

    .line 348
    iget-object v5, p0, Lcom/skipping/AddWeightActivity;->mSettings:Landroid/content/SharedPreferences;

    const-string v6, "last_weight1_0_last"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v1, v5}, Lwheel_lib/WheelView;->setCurrentItem(I)V

    .line 357
    :cond_0
    :goto_2
    invoke-virtual {v0}, Lwheel_lib/WheelView;->getCurrentItem()I

    move-result v5

    iput v5, p0, Lcom/skipping/AddWeightActivity;->temp_bmi_weight:I

    .line 358
    invoke-virtual {v1}, Lwheel_lib/WheelView;->getCurrentItem()I

    move-result v5

    iput v5, p0, Lcom/skipping/AddWeightActivity;->temp_bmi_weight1:I

    .line 362
    const-string v5, "WVweight"

    invoke-direct {p0, v0, v5}, Lcom/skipping/AddWeightActivity;->addChangingListener(Lwheel_lib/WheelView;Ljava/lang/String;)V

    .line 363
    const-string v5, "WVweight1"

    invoke-direct {p0, v1, v5}, Lcom/skipping/AddWeightActivity;->addChangingListener(Lwheel_lib/WheelView;Ljava/lang/String;)V

    .line 366
    new-instance v4, Lcom/skipping/AddWeightActivity$3;

    invoke-direct {v4, p0, v0, v1}, Lcom/skipping/AddWeightActivity$3;-><init>(Lcom/skipping/AddWeightActivity;Lwheel_lib/WheelView;Lwheel_lib/WheelView;)V

    .line 382
    .local v4, "wheelListener":Lwheel_lib/OnWheelChangedListener;
    invoke-virtual {v0, v4}, Lwheel_lib/WheelView;->addChangingListener(Lwheel_lib/OnWheelChangedListener;)V

    .line 383
    invoke-virtual {v1, v4}, Lwheel_lib/WheelView;->addChangingListener(Lwheel_lib/OnWheelChangedListener;)V

    .line 385
    new-instance v2, Lcom/skipping/AddWeightActivity$4;

    invoke-direct {v2, p0}, Lcom/skipping/AddWeightActivity$4;-><init>(Lcom/skipping/AddWeightActivity;)V

    .line 392
    .local v2, "click":Lwheel_lib/OnWheelClickedListener;
    invoke-virtual {v0, v2}, Lwheel_lib/WheelView;->addClickingListener(Lwheel_lib/OnWheelClickedListener;)V

    .line 393
    invoke-virtual {v1, v2}, Lwheel_lib/WheelView;->addClickingListener(Lwheel_lib/OnWheelClickedListener;)V

    .line 395
    new-instance v3, Lcom/skipping/AddWeightActivity$5;

    invoke-direct {v3, p0, v0, v1}, Lcom/skipping/AddWeightActivity$5;-><init>(Lcom/skipping/AddWeightActivity;Lwheel_lib/WheelView;Lwheel_lib/WheelView;)V

    .line 414
    .local v3, "scrollListener":Lwheel_lib/OnWheelScrollListener;
    invoke-virtual {v0, v3}, Lwheel_lib/WheelView;->addScrollingListener(Lwheel_lib/OnWheelScrollListener;)V

    .line 415
    invoke-virtual {v1, v3}, Lwheel_lib/WheelView;->addScrollingListener(Lwheel_lib/OnWheelScrollListener;)V

    .line 418
    return-void

    .line 326
    .end local v1    # "WVweight1":Lwheel_lib/WheelView;
    .end local v2    # "click":Lwheel_lib/OnWheelClickedListener;
    .end local v3    # "scrollListener":Lwheel_lib/OnWheelScrollListener;
    .end local v4    # "wheelListener":Lwheel_lib/OnWheelChangedListener;
    :cond_1
    iget v5, p0, Lcom/skipping/AddWeightActivity;->WeightUnit:I

    if-ne v5, v7, :cond_2

    .line 327
    new-instance v5, Lwheel_lib/adapters/NumericWheelAdapter;

    invoke-direct {v5, p0, v8, v6}, Lwheel_lib/adapters/NumericWheelAdapter;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v0, v5}, Lwheel_lib/WheelView;->setViewAdapter(Lwheel_lib/adapters/WheelViewAdapter;)V

    goto :goto_0

    .line 329
    :cond_2
    new-instance v5, Lwheel_lib/adapters/NumericWheelAdapter;

    invoke-direct {v5, p0, v8, v6}, Lwheel_lib/adapters/NumericWheelAdapter;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v0, v5}, Lwheel_lib/WheelView;->setViewAdapter(Lwheel_lib/adapters/WheelViewAdapter;)V

    goto :goto_0

    .line 335
    .restart local v1    # "WVweight1":Lwheel_lib/WheelView;
    :cond_3
    iget v5, p0, Lcom/skipping/AddWeightActivity;->WeightUnit:I

    if-ne v5, v7, :cond_4

    .line 336
    new-instance v5, Lwheel_lib/adapters/NumericWheelAdapter;

    const-string v6, ".%2d"

    invoke-direct {v5, p0, v8, v9, v6}, Lwheel_lib/adapters/NumericWheelAdapter;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    invoke-virtual {v1, v5}, Lwheel_lib/WheelView;->setViewAdapter(Lwheel_lib/adapters/WheelViewAdapter;)V

    goto :goto_1

    .line 338
    :cond_4
    new-instance v5, Lwheel_lib/adapters/NumericWheelAdapter;

    invoke-direct {v5, p0, v8, v6, v10}, Lwheel_lib/adapters/NumericWheelAdapter;-><init>(Landroid/content/Context;III)V

    invoke-virtual {v1, v5}, Lwheel_lib/WheelView;->setViewAdapter(Lwheel_lib/adapters/WheelViewAdapter;)V

    goto/16 :goto_1

    .line 349
    :cond_5
    iget v5, p0, Lcom/skipping/AddWeightActivity;->WeightUnit:I

    if-ne v5, v7, :cond_6

    .line 350
    iget-object v5, p0, Lcom/skipping/AddWeightActivity;->mSettings:Landroid/content/SharedPreferences;

    const-string v6, "last_weight_1_last"

    const/16 v7, 0x6e

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v0, v5}, Lwheel_lib/WheelView;->setCurrentItem(I)V

    .line 351
    iget-object v5, p0, Lcom/skipping/AddWeightActivity;->mSettings:Landroid/content/SharedPreferences;

    const-string v6, "last_weight1_1_last"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v1, v5}, Lwheel_lib/WheelView;->setCurrentItem(I)V

    goto/16 :goto_2

    .line 352
    :cond_6
    iget v5, p0, Lcom/skipping/AddWeightActivity;->WeightUnit:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 353
    iget-object v5, p0, Lcom/skipping/AddWeightActivity;->mSettings:Landroid/content/SharedPreferences;

    const-string v6, "last_weight_2_last"

    invoke-interface {v5, v6, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v0, v5}, Lwheel_lib/WheelView;->setCurrentItem(I)V

    .line 354
    iget-object v5, p0, Lcom/skipping/AddWeightActivity;->mSettings:Landroid/content/SharedPreferences;

    const-string v6, "last_weight1_2_last"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v1, v5}, Lwheel_lib/WheelView;->setCurrentItem(I)V

    goto/16 :goto_2
.end method

.method public DrawDramsDate()V
    .locals 15

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v14, 0x5

    .line 428
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 430
    .local v6, "calendar":Ljava/util/Calendar;
    const v0, 0x7f0a0004

    invoke-virtual {p0, v0}, Lcom/skipping/AddWeightActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lwheel_lib/WheelView;

    .line 431
    .local v11, "month":Lwheel_lib/WheelView;
    const v0, 0x7f0a0005

    invoke-virtual {p0, v0}, Lcom/skipping/AddWeightActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lwheel_lib/WheelView;

    .line 432
    .local v13, "year":Lwheel_lib/WheelView;
    const v0, 0x7f0a0003

    invoke-virtual {p0, v0}, Lcom/skipping/AddWeightActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lwheel_lib/WheelView;

    .line 434
    .local v9, "day":Lwheel_lib/WheelView;
    new-instance v10, Lcom/skipping/AddWeightActivity$6;

    invoke-direct {v10, p0, v13, v11, v9}, Lcom/skipping/AddWeightActivity$6;-><init>(Lcom/skipping/AddWeightActivity;Lwheel_lib/WheelView;Lwheel_lib/WheelView;Lwheel_lib/WheelView;)V

    .line 441
    .local v10, "listener":Lwheel_lib/OnWheelChangedListener;
    invoke-virtual {v6, v2}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 444
    .local v7, "curMonth":I
    const/16 v0, 0xc

    new-array v12, v0, [Ljava/lang/String;

    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/text/DateFormatSymbols;

    invoke-direct {v1}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v5

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v12, v5

    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/text/DateFormatSymbols;

    invoke-direct {v1}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v12, v4

    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/text/DateFormatSymbols;

    invoke-direct {v1}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v12, v2

    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/text/DateFormatSymbols;

    invoke-direct {v1}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v12, v3

    const/4 v0, 0x4

    .line 449
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/text/DateFormatSymbols;

    invoke-direct {v2}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v12, v0

    .line 450
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/text/DateFormatSymbols;

    invoke-direct {v1}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v14

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v12, v14

    const/4 v0, 0x6

    .line 451
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/text/DateFormatSymbols;

    invoke-direct {v2}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v12, v0

    const/4 v0, 0x7

    .line 452
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/text/DateFormatSymbols;

    invoke-direct {v2}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x7

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v12, v0

    const/16 v0, 0x8

    .line 453
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/text/DateFormatSymbols;

    invoke-direct {v2}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v12, v0

    const/16 v0, 0x9

    .line 454
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/text/DateFormatSymbols;

    invoke-direct {v2}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x9

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v12, v0

    const/16 v0, 0xa

    .line 455
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/text/DateFormatSymbols;

    invoke-direct {v2}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v12, v0

    const/16 v0, 0xb

    .line 456
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/text/DateFormatSymbols;

    invoke-direct {v2}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xb

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v12, v0

    .line 459
    .local v12, "months":[Ljava/lang/String;
    new-instance v0, Lcom/skipping/AddWeightActivity$DateArrayAdapter;

    invoke-direct {v0, p0, p0, v12, v7}, Lcom/skipping/AddWeightActivity$DateArrayAdapter;-><init>(Lcom/skipping/AddWeightActivity;Landroid/content/Context;[Ljava/lang/String;I)V

    invoke-virtual {v11, v0}, Lwheel_lib/WheelView;->setViewAdapter(Lwheel_lib/adapters/WheelViewAdapter;)V

    .line 460
    invoke-virtual {v11, v7}, Lwheel_lib/WheelView;->setCurrentItem(I)V

    .line 461
    invoke-virtual {v11, v10}, Lwheel_lib/WheelView;->addChangingListener(Lwheel_lib/OnWheelChangedListener;)V

    .line 464
    invoke-virtual {v6, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit16 v8, v0, -0x7d0

    .line 465
    .local v8, "curYear":I
    new-instance v0, Lcom/skipping/AddWeightActivity$DateNumericAdapter;

    const/16 v3, 0x7d0

    const/16 v4, 0x802

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/skipping/AddWeightActivity$DateNumericAdapter;-><init>(Lcom/skipping/AddWeightActivity;Landroid/content/Context;III)V

    invoke-virtual {v13, v0}, Lwheel_lib/WheelView;->setViewAdapter(Lwheel_lib/adapters/WheelViewAdapter;)V

    .line 466
    invoke-virtual {v13, v8}, Lwheel_lib/WheelView;->setCurrentItem(I)V

    .line 467
    invoke-virtual {v13, v10}, Lwheel_lib/WheelView;->addChangingListener(Lwheel_lib/OnWheelChangedListener;)V

    .line 470
    invoke-virtual {p0, v13, v11, v9}, Lcom/skipping/AddWeightActivity;->updateDays(Lwheel_lib/WheelView;Lwheel_lib/WheelView;Lwheel_lib/WheelView;)V

    .line 471
    invoke-virtual {v6, v14}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v9, v0}, Lwheel_lib/WheelView;->setCurrentItem(I)V

    .line 472
    invoke-virtual {v6, v14}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/skipping/AddWeightActivity;->temp_day:I

    .line 473
    invoke-virtual {v9, v10}, Lwheel_lib/WheelView;->addChangingListener(Lwheel_lib/OnWheelChangedListener;)V

    .line 477
    return-void
.end method

.method public SelectWeightUnit(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 158
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 159
    .local v0, "dialog":Landroid/app/Dialog;
    const v4, 0x7f03000c

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setContentView(I)V

    .line 161
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v5}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 162
    const/high16 v4, 0x7f0a0000

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 163
    .local v1, "dialogButton":Landroid/widget/Button;
    const v4, 0x7f0a005a

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 167
    .local v2, "dialogButton1":Landroid/widget/Button;
    const v4, 0x7f0a005b

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioGroup;

    .line 168
    .local v3, "radioButtonGroup":Landroid/widget/RadioGroup;
    iget v4, p0, Lcom/skipping/AddWeightActivity;->WeightUnit:I

    if-nez v4, :cond_0

    const v4, 0x7f0a005c

    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->check(I)V

    .line 176
    :goto_0
    new-instance v4, Lcom/skipping/AddWeightActivity$1;

    invoke-direct {v4, p0, v3, v0}, Lcom/skipping/AddWeightActivity$1;-><init>(Lcom/skipping/AddWeightActivity;Landroid/widget/RadioGroup;Landroid/app/Dialog;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    new-instance v4, Lcom/skipping/AddWeightActivity$2;

    invoke-direct {v4, p0, v0}, Lcom/skipping/AddWeightActivity$2;-><init>(Lcom/skipping/AddWeightActivity;Landroid/app/Dialog;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 213
    return-void

    .line 169
    :cond_0
    iget v4, p0, Lcom/skipping/AddWeightActivity;->WeightUnit:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    const v4, 0x7f0a005d

    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 171
    :cond_1
    const v4, 0x7f0a005e

    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0
.end method

.method public drawTexts()V
    .locals 3

    .prologue
    const v2, 0x7f05002d

    .line 625
    iget v0, p0, Lcom/skipping/AddWeightActivity;->WeightUnit:I

    if-nez v0, :cond_1

    .line 626
    iget-object v0, p0, Lcom/skipping/AddWeightActivity;->TextViewWeight:Landroid/widget/Button;

    const v1, 0x7f05002c

    invoke-virtual {p0, v1}, Lcom/skipping/AddWeightActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 628
    iget-object v0, p0, Lcom/skipping/AddWeightActivity;->TextView3:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 629
    iget-object v0, p0, Lcom/skipping/AddWeightActivity;->TextView4:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 641
    :cond_0
    :goto_0
    return-void

    .line 630
    :cond_1
    iget v0, p0, Lcom/skipping/AddWeightActivity;->WeightUnit:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 631
    iget-object v0, p0, Lcom/skipping/AddWeightActivity;->TextViewWeight:Landroid/widget/Button;

    invoke-virtual {p0, v2}, Lcom/skipping/AddWeightActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 633
    iget-object v0, p0, Lcom/skipping/AddWeightActivity;->TextView3:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 634
    iget-object v0, p0, Lcom/skipping/AddWeightActivity;->TextView4:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 635
    :cond_2
    iget v0, p0, Lcom/skipping/AddWeightActivity;->WeightUnit:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 636
    iget-object v0, p0, Lcom/skipping/AddWeightActivity;->TextViewWeight:Landroid/widget/Button;

    const v1, 0x7f05002e

    invoke-virtual {p0, v1}, Lcom/skipping/AddWeightActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 638
    iget-object v0, p0, Lcom/skipping/AddWeightActivity;->TextView3:Landroid/widget/TextView;

    const v1, 0x7f05002f

    invoke-virtual {p0, v1}, Lcom/skipping/AddWeightActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 639
    iget-object v0, p0, Lcom/skipping/AddWeightActivity;->TextView4:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/skipping/AddWeightActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 71
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    const v2, 0x7f030001

    invoke-virtual {p0, v2}, Lcom/skipping/AddWeightActivity;->setContentView(I)V

    .line 75
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/skipping/AddWeightActivity;->mSettings:Landroid/content/SharedPreferences;

    .line 78
    iget-object v2, p0, Lcom/skipping/AddWeightActivity;->mSettings:Landroid/content/SharedPreferences;

    const-string v3, "WeightUnitForChart"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/skipping/AddWeightActivity;->WeightUnit:I

    .line 81
    const v2, 0x7f0a000a

    invoke-virtual {p0, v2}, Lcom/skipping/AddWeightActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/skipping/AddWeightActivity;->TextViewWeight:Landroid/widget/Button;

    .line 85
    const v2, 0x7f0a0006

    invoke-virtual {p0, v2}, Lcom/skipping/AddWeightActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/skipping/AddWeightActivity;->TextView3:Landroid/widget/TextView;

    .line 86
    const v2, 0x7f0a0007

    invoke-virtual {p0, v2}, Lcom/skipping/AddWeightActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/skipping/AddWeightActivity;->TextView4:Landroid/widget/TextView;

    .line 89
    iget-object v2, p0, Lcom/skipping/AddWeightActivity;->mSettings:Landroid/content/SharedPreferences;

    const-string v3, "disable_ads"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 90
    .local v0, "disable_ads":Z
    if-nez v0, :cond_0

    .line 92
    new-instance v2, Lcom/google/ads/AdView;

    sget-object v3, Lcom/google/ads/AdSize;->SMART_BANNER:Lcom/google/ads/AdSize;

    const-string v4, "ca-app-pub-8661822564276571/3559185041"

    invoke-direct {v2, p0, v3, v4}, Lcom/google/ads/AdView;-><init>(Landroid/app/Activity;Lcom/google/ads/AdSize;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/skipping/AddWeightActivity;->adView:Lcom/google/ads/AdView;

    .line 96
    const v2, 0x7f0a0002

    invoke-virtual {p0, v2}, Lcom/skipping/AddWeightActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 99
    .local v1, "layout":Landroid/widget/LinearLayout;
    iget-object v2, p0, Lcom/skipping/AddWeightActivity;->adView:Lcom/google/ads/AdView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 102
    iget-object v2, p0, Lcom/skipping/AddWeightActivity;->adView:Lcom/google/ads/AdView;

    new-instance v3, Lcom/google/ads/AdRequest;

    invoke-direct {v3}, Lcom/google/ads/AdRequest;-><init>()V

    invoke-virtual {v2, v3}, Lcom/google/ads/AdView;->loadAd(Lcom/google/ads/AdRequest;)V

    .line 106
    .end local v1    # "layout":Landroid/widget/LinearLayout;
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 109
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 111
    iget-object v0, p0, Lcom/skipping/AddWeightActivity;->adView:Lcom/google/ads/AdView;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/skipping/AddWeightActivity;->adView:Lcom/google/ads/AdView;

    invoke-virtual {v0}, Lcom/google/ads/AdView;->destroy()V

    .line 114
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 141
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 143
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 131
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 133
    invoke-virtual {p0}, Lcom/skipping/AddWeightActivity;->drawTexts()V

    .line 134
    invoke-virtual {p0}, Lcom/skipping/AddWeightActivity;->DrawDrams()V

    .line 135
    invoke-virtual {p0}, Lcom/skipping/AddWeightActivity;->DrawDramsDate()V

    .line 137
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 118
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 119
    invoke-static {p0}, Lcom/google/analytics/tracking/android/EasyTracker;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/EasyTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/analytics/tracking/android/EasyTracker;->activityStart(Landroid/app/Activity;)V

    .line 120
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 124
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 125
    invoke-static {p0}, Lcom/google/analytics/tracking/android/EasyTracker;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/EasyTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/analytics/tracking/android/EasyTracker;->activityStop(Landroid/app/Activity;)V

    .line 126
    return-void
.end method

.method updateDays(Lwheel_lib/WheelView;Lwheel_lib/WheelView;Lwheel_lib/WheelView;)V
    .locals 8
    .param p1, "year"    # Lwheel_lib/WheelView;
    .param p2, "month"    # Lwheel_lib/WheelView;
    .param p3, "day"    # Lwheel_lib/WheelView;

    .prologue
    const/4 v2, 0x5

    const/4 v3, 0x1

    .line 481
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 482
    .local v6, "calendar":Ljava/util/Calendar;
    invoke-virtual {v6, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p1}, Lwheel_lib/WheelView;->getCurrentItem()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {v6, v3, v0}, Ljava/util/Calendar;->set(II)V

    .line 483
    const/4 v0, 0x2

    invoke-virtual {p2}, Lwheel_lib/WheelView;->getCurrentItem()I

    move-result v1

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 485
    invoke-virtual {v6, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v4

    .line 486
    .local v4, "maxDays":I
    new-instance v0, Lcom/skipping/AddWeightActivity$DateNumericAdapter;

    invoke-virtual {v6, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v5, v1, -0x1

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/skipping/AddWeightActivity$DateNumericAdapter;-><init>(Lcom/skipping/AddWeightActivity;Landroid/content/Context;III)V

    invoke-virtual {p3, v0}, Lwheel_lib/WheelView;->setViewAdapter(Lwheel_lib/adapters/WheelViewAdapter;)V

    .line 487
    invoke-virtual {p3}, Lwheel_lib/WheelView;->getCurrentItem()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 488
    .local v7, "curDay":I
    add-int/lit8 v0, v7, -0x1

    invoke-virtual {p3, v0, v3}, Lwheel_lib/WheelView;->setCurrentItem(IZ)V

    .line 491
    iput v7, p0, Lcom/skipping/AddWeightActivity;->temp_day:I

    .line 492
    invoke-virtual {p2}, Lwheel_lib/WheelView;->getCurrentItem()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/skipping/AddWeightActivity;->temp_month:I

    .line 493
    invoke-virtual {p1}, Lwheel_lib/WheelView;->getCurrentItem()I

    move-result v0

    add-int/lit16 v0, v0, 0x7d0

    iput v0, p0, Lcom/skipping/AddWeightActivity;->temp_year:I

    .line 497
    return-void
.end method
