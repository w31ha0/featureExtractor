.class public Lcom/skipping/WeightActivity;
.super Landroid/app/Activity;
.source "WeightActivity.java"


# instance fields
.field TextView3:Landroid/widget/TextView;

.field TextView4:Landroid/widget/TextView;

.field TextViewWeight:Landroid/widget/Button;

.field WeightUnit:I

.field private bmiChanged:Z

.field private bmiScrolled:Z

.field private mSettings:Landroid/content/SharedPreferences;

.field temp_bmi_weight:I

.field temp_bmi_weight1:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 31
    iput v0, p0, Lcom/skipping/WeightActivity;->WeightUnit:I

    .line 38
    iput-boolean v0, p0, Lcom/skipping/WeightActivity;->bmiChanged:Z

    .line 39
    iput-boolean v0, p0, Lcom/skipping/WeightActivity;->bmiScrolled:Z

    .line 26
    return-void
.end method

.method static synthetic access$0(Lcom/skipping/WeightActivity;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/skipping/WeightActivity;->mSettings:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$1(Lcom/skipping/WeightActivity;)Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/skipping/WeightActivity;->bmiScrolled:Z

    return v0
.end method

.method static synthetic access$2(Lcom/skipping/WeightActivity;Z)V
    .locals 0

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/skipping/WeightActivity;->bmiChanged:Z

    return-void
.end method

.method static synthetic access$3(Lcom/skipping/WeightActivity;Z)V
    .locals 0

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/skipping/WeightActivity;->bmiScrolled:Z

    return-void
.end method

.method private addChangingListener(Lwheel_lib/WheelView;Ljava/lang/String;)V
    .locals 1
    .param p1, "wheel"    # Lwheel_lib/WheelView;
    .param p2, "label"    # Ljava/lang/String;

    .prologue
    .line 336
    new-instance v0, Lcom/skipping/WeightActivity$6;

    invoke-direct {v0, p0}, Lcom/skipping/WeightActivity$6;-><init>(Lcom/skipping/WeightActivity;)V

    invoke-virtual {p1, v0}, Lwheel_lib/WheelView;->addChangingListener(Lwheel_lib/OnWheelChangedListener;)V

    .line 341
    return-void
.end method


# virtual methods
.method public Back(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/skipping/WeightActivity;->finish()V

    .line 101
    return-void
.end method

.method public Button_cancel(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/skipping/WeightActivity;->finish()V

    .line 223
    return-void
.end method

.method public Button_ok(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/high16 v6, 0x41200000    # 10.0f

    const v5, 0x3ee83d42

    .line 172
    iget v3, p0, Lcom/skipping/WeightActivity;->WeightUnit:I

    if-nez v3, :cond_1

    .line 174
    iget-object v3, p0, Lcom/skipping/WeightActivity;->mSettings:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 175
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "last_weight_0"

    iget v4, p0, Lcom/skipping/WeightActivity;->temp_bmi_weight:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 176
    const-string v3, "last_weight1_0"

    iget v4, p0, Lcom/skipping/WeightActivity;->temp_bmi_weight1:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 178
    const-string v3, "user_weight"

    iget v4, p0, Lcom/skipping/WeightActivity;->temp_bmi_weight:I

    int-to-float v4, v4

    iget v5, p0, Lcom/skipping/WeightActivity;->temp_bmi_weight1:I

    int-to-float v5, v5

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 180
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 217
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/skipping/WeightActivity;->finish()V

    .line 219
    return-void

    .line 184
    :cond_1
    iget v3, p0, Lcom/skipping/WeightActivity;->WeightUnit:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 186
    iget-object v3, p0, Lcom/skipping/WeightActivity;->mSettings:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 187
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "last_weight_1"

    iget v4, p0, Lcom/skipping/WeightActivity;->temp_bmi_weight:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 188
    const-string v3, "last_weight1_1"

    iget v4, p0, Lcom/skipping/WeightActivity;->temp_bmi_weight1:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 190
    iget v3, p0, Lcom/skipping/WeightActivity;->temp_bmi_weight:I

    int-to-float v3, v3

    iget v4, p0, Lcom/skipping/WeightActivity;->temp_bmi_weight1:I

    int-to-float v4, v4

    div-float/2addr v4, v6

    add-float v1, v3, v4

    .line 192
    .local v1, "temp_weight":F
    const-string v3, "user_weight"

    mul-float v4, v1, v5

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 194
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 198
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "temp_weight":F
    :cond_2
    iget v3, p0, Lcom/skipping/WeightActivity;->WeightUnit:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 200
    iget-object v3, p0, Lcom/skipping/WeightActivity;->mSettings:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 201
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "last_weight_2"

    iget v4, p0, Lcom/skipping/WeightActivity;->temp_bmi_weight:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 202
    const-string v3, "last_weight1_2"

    iget v4, p0, Lcom/skipping/WeightActivity;->temp_bmi_weight1:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 204
    iget v3, p0, Lcom/skipping/WeightActivity;->temp_bmi_weight:I

    int-to-float v3, v3

    const v4, 0x40cb359a

    mul-float v1, v3, v4

    .line 205
    .restart local v1    # "temp_weight":F
    iget v3, p0, Lcom/skipping/WeightActivity;->temp_bmi_weight1:I

    int-to-float v3, v3

    mul-float v2, v3, v5

    .line 207
    .local v2, "temp_weight1":F
    const-string v3, "user_weight"

    add-float v4, v1, v2

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 209
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public DrawDrams()V
    .locals 11

    .prologue
    const/16 v10, 0xa

    const/16 v9, 0x9

    const/4 v7, 0x1

    const/16 v6, 0x3e7

    const/4 v8, 0x0

    .line 232
    const v5, 0x7f0a0008

    invoke-virtual {p0, v5}, Lcom/skipping/WeightActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lwheel_lib/WheelView;

    .line 233
    .local v0, "WVweight":Lwheel_lib/WheelView;
    iget v5, p0, Lcom/skipping/WeightActivity;->WeightUnit:I

    if-nez v5, :cond_1

    .line 234
    new-instance v5, Lwheel_lib/adapters/NumericWheelAdapter;

    invoke-direct {v5, p0, v8, v6}, Lwheel_lib/adapters/NumericWheelAdapter;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v0, v5}, Lwheel_lib/WheelView;->setViewAdapter(Lwheel_lib/adapters/WheelViewAdapter;)V

    .line 241
    :goto_0
    const v5, 0x7f0a0009

    invoke-virtual {p0, v5}, Lcom/skipping/WeightActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lwheel_lib/WheelView;

    .line 242
    .local v1, "WVweight1":Lwheel_lib/WheelView;
    iget v5, p0, Lcom/skipping/WeightActivity;->WeightUnit:I

    if-nez v5, :cond_3

    .line 243
    new-instance v5, Lwheel_lib/adapters/NumericWheelAdapter;

    const-string v6, ".%2d"

    invoke-direct {v5, p0, v8, v9, v6}, Lwheel_lib/adapters/NumericWheelAdapter;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    invoke-virtual {v1, v5}, Lwheel_lib/WheelView;->setViewAdapter(Lwheel_lib/adapters/WheelViewAdapter;)V

    .line 255
    :goto_1
    iget v5, p0, Lcom/skipping/WeightActivity;->WeightUnit:I

    if-nez v5, :cond_5

    .line 256
    iget-object v5, p0, Lcom/skipping/WeightActivity;->mSettings:Landroid/content/SharedPreferences;

    const-string v6, "last_weight_0"

    const/16 v7, 0x32

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v0, v5}, Lwheel_lib/WheelView;->setCurrentItem(I)V

    .line 257
    iget-object v5, p0, Lcom/skipping/WeightActivity;->mSettings:Landroid/content/SharedPreferences;

    const-string v6, "last_weight1_0"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v1, v5}, Lwheel_lib/WheelView;->setCurrentItem(I)V

    .line 266
    :cond_0
    :goto_2
    invoke-virtual {v0}, Lwheel_lib/WheelView;->getCurrentItem()I

    move-result v5

    iput v5, p0, Lcom/skipping/WeightActivity;->temp_bmi_weight:I

    .line 267
    invoke-virtual {v1}, Lwheel_lib/WheelView;->getCurrentItem()I

    move-result v5

    iput v5, p0, Lcom/skipping/WeightActivity;->temp_bmi_weight1:I

    .line 271
    const-string v5, "WVweight"

    invoke-direct {p0, v0, v5}, Lcom/skipping/WeightActivity;->addChangingListener(Lwheel_lib/WheelView;Ljava/lang/String;)V

    .line 272
    const-string v5, "WVweight1"

    invoke-direct {p0, v1, v5}, Lcom/skipping/WeightActivity;->addChangingListener(Lwheel_lib/WheelView;Ljava/lang/String;)V

    .line 275
    new-instance v4, Lcom/skipping/WeightActivity$3;

    invoke-direct {v4, p0, v0, v1}, Lcom/skipping/WeightActivity$3;-><init>(Lcom/skipping/WeightActivity;Lwheel_lib/WheelView;Lwheel_lib/WheelView;)V

    .line 291
    .local v4, "wheelListener":Lwheel_lib/OnWheelChangedListener;
    invoke-virtual {v0, v4}, Lwheel_lib/WheelView;->addChangingListener(Lwheel_lib/OnWheelChangedListener;)V

    .line 292
    invoke-virtual {v1, v4}, Lwheel_lib/WheelView;->addChangingListener(Lwheel_lib/OnWheelChangedListener;)V

    .line 294
    new-instance v2, Lcom/skipping/WeightActivity$4;

    invoke-direct {v2, p0}, Lcom/skipping/WeightActivity$4;-><init>(Lcom/skipping/WeightActivity;)V

    .line 301
    .local v2, "click":Lwheel_lib/OnWheelClickedListener;
    invoke-virtual {v0, v2}, Lwheel_lib/WheelView;->addClickingListener(Lwheel_lib/OnWheelClickedListener;)V

    .line 302
    invoke-virtual {v1, v2}, Lwheel_lib/WheelView;->addClickingListener(Lwheel_lib/OnWheelClickedListener;)V

    .line 304
    new-instance v3, Lcom/skipping/WeightActivity$5;

    invoke-direct {v3, p0, v0, v1}, Lcom/skipping/WeightActivity$5;-><init>(Lcom/skipping/WeightActivity;Lwheel_lib/WheelView;Lwheel_lib/WheelView;)V

    .line 323
    .local v3, "scrollListener":Lwheel_lib/OnWheelScrollListener;
    invoke-virtual {v0, v3}, Lwheel_lib/WheelView;->addScrollingListener(Lwheel_lib/OnWheelScrollListener;)V

    .line 324
    invoke-virtual {v1, v3}, Lwheel_lib/WheelView;->addScrollingListener(Lwheel_lib/OnWheelScrollListener;)V

    .line 327
    return-void

    .line 235
    .end local v1    # "WVweight1":Lwheel_lib/WheelView;
    .end local v2    # "click":Lwheel_lib/OnWheelClickedListener;
    .end local v3    # "scrollListener":Lwheel_lib/OnWheelScrollListener;
    .end local v4    # "wheelListener":Lwheel_lib/OnWheelChangedListener;
    :cond_1
    iget v5, p0, Lcom/skipping/WeightActivity;->WeightUnit:I

    if-ne v5, v7, :cond_2

    .line 236
    new-instance v5, Lwheel_lib/adapters/NumericWheelAdapter;

    invoke-direct {v5, p0, v8, v6}, Lwheel_lib/adapters/NumericWheelAdapter;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v0, v5}, Lwheel_lib/WheelView;->setViewAdapter(Lwheel_lib/adapters/WheelViewAdapter;)V

    goto :goto_0

    .line 238
    :cond_2
    new-instance v5, Lwheel_lib/adapters/NumericWheelAdapter;

    invoke-direct {v5, p0, v8, v6}, Lwheel_lib/adapters/NumericWheelAdapter;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v0, v5}, Lwheel_lib/WheelView;->setViewAdapter(Lwheel_lib/adapters/WheelViewAdapter;)V

    goto :goto_0

    .line 244
    .restart local v1    # "WVweight1":Lwheel_lib/WheelView;
    :cond_3
    iget v5, p0, Lcom/skipping/WeightActivity;->WeightUnit:I

    if-ne v5, v7, :cond_4

    .line 245
    new-instance v5, Lwheel_lib/adapters/NumericWheelAdapter;

    const-string v6, ".%2d"

    invoke-direct {v5, p0, v8, v9, v6}, Lwheel_lib/adapters/NumericWheelAdapter;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    invoke-virtual {v1, v5}, Lwheel_lib/WheelView;->setViewAdapter(Lwheel_lib/adapters/WheelViewAdapter;)V

    goto :goto_1

    .line 247
    :cond_4
    new-instance v5, Lwheel_lib/adapters/NumericWheelAdapter;

    invoke-direct {v5, p0, v8, v6, v10}, Lwheel_lib/adapters/NumericWheelAdapter;-><init>(Landroid/content/Context;III)V

    invoke-virtual {v1, v5}, Lwheel_lib/WheelView;->setViewAdapter(Lwheel_lib/adapters/WheelViewAdapter;)V

    goto/16 :goto_1

    .line 258
    :cond_5
    iget v5, p0, Lcom/skipping/WeightActivity;->WeightUnit:I

    if-ne v5, v7, :cond_6

    .line 259
    iget-object v5, p0, Lcom/skipping/WeightActivity;->mSettings:Landroid/content/SharedPreferences;

    const-string v6, "last_weight_1"

    const/16 v7, 0x6e

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v0, v5}, Lwheel_lib/WheelView;->setCurrentItem(I)V

    .line 260
    iget-object v5, p0, Lcom/skipping/WeightActivity;->mSettings:Landroid/content/SharedPreferences;

    const-string v6, "last_weight1_1"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v1, v5}, Lwheel_lib/WheelView;->setCurrentItem(I)V

    goto/16 :goto_2

    .line 261
    :cond_6
    iget v5, p0, Lcom/skipping/WeightActivity;->WeightUnit:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 262
    iget-object v5, p0, Lcom/skipping/WeightActivity;->mSettings:Landroid/content/SharedPreferences;

    const-string v6, "last_weight_2"

    invoke-interface {v5, v6, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v0, v5}, Lwheel_lib/WheelView;->setCurrentItem(I)V

    .line 263
    iget-object v5, p0, Lcom/skipping/WeightActivity;->mSettings:Landroid/content/SharedPreferences;

    const-string v6, "last_weight1_2"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v1, v5}, Lwheel_lib/WheelView;->setCurrentItem(I)V

    goto/16 :goto_2
.end method

.method public SelectWeightUnit(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 111
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 112
    .local v0, "dialog":Landroid/app/Dialog;
    const v4, 0x7f03000c

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setContentView(I)V

    .line 114
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v5}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 115
    const/high16 v4, 0x7f0a0000

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 116
    .local v1, "dialogButton":Landroid/widget/Button;
    const v4, 0x7f0a005a

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 120
    .local v2, "dialogButton1":Landroid/widget/Button;
    const v4, 0x7f0a005b

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioGroup;

    .line 121
    .local v3, "radioButtonGroup":Landroid/widget/RadioGroup;
    iget v4, p0, Lcom/skipping/WeightActivity;->WeightUnit:I

    if-nez v4, :cond_0

    const v4, 0x7f0a005c

    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->check(I)V

    .line 129
    :goto_0
    new-instance v4, Lcom/skipping/WeightActivity$1;

    invoke-direct {v4, p0, v3, v0}, Lcom/skipping/WeightActivity$1;-><init>(Lcom/skipping/WeightActivity;Landroid/widget/RadioGroup;Landroid/app/Dialog;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    new-instance v4, Lcom/skipping/WeightActivity$2;

    invoke-direct {v4, p0, v0}, Lcom/skipping/WeightActivity$2;-><init>(Lcom/skipping/WeightActivity;Landroid/app/Dialog;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 166
    return-void

    .line 122
    :cond_0
    iget v4, p0, Lcom/skipping/WeightActivity;->WeightUnit:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    const v4, 0x7f0a005d

    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 124
    :cond_1
    const v4, 0x7f0a005e

    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0
.end method

.method public drawTexts()V
    .locals 3

    .prologue
    const v2, 0x7f05002d

    .line 355
    iget v0, p0, Lcom/skipping/WeightActivity;->WeightUnit:I

    if-nez v0, :cond_1

    .line 356
    iget-object v0, p0, Lcom/skipping/WeightActivity;->TextViewWeight:Landroid/widget/Button;

    const v1, 0x7f05002c

    invoke-virtual {p0, v1}, Lcom/skipping/WeightActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 358
    iget-object v0, p0, Lcom/skipping/WeightActivity;->TextView3:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    iget-object v0, p0, Lcom/skipping/WeightActivity;->TextView4:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 375
    :cond_0
    :goto_0
    return-void

    .line 360
    :cond_1
    iget v0, p0, Lcom/skipping/WeightActivity;->WeightUnit:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 361
    iget-object v0, p0, Lcom/skipping/WeightActivity;->TextViewWeight:Landroid/widget/Button;

    invoke-virtual {p0, v2}, Lcom/skipping/WeightActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 363
    iget-object v0, p0, Lcom/skipping/WeightActivity;->TextView3:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    iget-object v0, p0, Lcom/skipping/WeightActivity;->TextView4:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 365
    :cond_2
    iget v0, p0, Lcom/skipping/WeightActivity;->WeightUnit:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 366
    iget-object v0, p0, Lcom/skipping/WeightActivity;->TextViewWeight:Landroid/widget/Button;

    const v1, 0x7f05002e

    invoke-virtual {p0, v1}, Lcom/skipping/WeightActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 368
    iget-object v0, p0, Lcom/skipping/WeightActivity;->TextView3:Landroid/widget/TextView;

    const v1, 0x7f05002f

    invoke-virtual {p0, v1}, Lcom/skipping/WeightActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 369
    iget-object v0, p0, Lcom/skipping/WeightActivity;->TextView4:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/skipping/WeightActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v0, 0x7f03000a

    invoke-virtual {p0, v0}, Lcom/skipping/WeightActivity;->setContentView(I)V

    .line 52
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/skipping/WeightActivity;->mSettings:Landroid/content/SharedPreferences;

    .line 55
    iget-object v0, p0, Lcom/skipping/WeightActivity;->mSettings:Landroid/content/SharedPreferences;

    const-string v1, "WeightUnit"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/skipping/WeightActivity;->WeightUnit:I

    .line 58
    const v0, 0x7f0a000a

    invoke-virtual {p0, v0}, Lcom/skipping/WeightActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/skipping/WeightActivity;->TextViewWeight:Landroid/widget/Button;

    .line 62
    const v0, 0x7f0a0006

    invoke-virtual {p0, v0}, Lcom/skipping/WeightActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/skipping/WeightActivity;->TextView3:Landroid/widget/TextView;

    .line 63
    const v0, 0x7f0a0007

    invoke-virtual {p0, v0}, Lcom/skipping/WeightActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/skipping/WeightActivity;->TextView4:Landroid/widget/TextView;

    .line 68
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 82
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 84
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 73
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 75
    invoke-virtual {p0}, Lcom/skipping/WeightActivity;->drawTexts()V

    .line 76
    invoke-virtual {p0}, Lcom/skipping/WeightActivity;->DrawDrams()V

    .line 78
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 88
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 89
    invoke-static {p0}, Lcom/google/analytics/tracking/android/EasyTracker;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/EasyTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/analytics/tracking/android/EasyTracker;->activityStart(Landroid/app/Activity;)V

    .line 90
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 94
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 95
    invoke-static {p0}, Lcom/google/analytics/tracking/android/EasyTracker;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/EasyTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/analytics/tracking/android/EasyTracker;->activityStop(Landroid/app/Activity;)V

    .line 96
    return-void
.end method
