.class public Lcom/skipping/AfterTrainingActivity;
.super Landroid/app/Activity;
.source "AfterTrainingActivity.java"


# instance fields
.field ButtonJump:Landroid/widget/Button;

.field JumpChanged:Z

.field JumpScrolled:Z

.field Jumps:I

.field JumpsFromTraining:I

.field private adView:Lcom/google/ads/AdView;

.field advancedTextView:Lcom/skipping/AdvancedTextView;

.field buttonEasy:Landroid/widget/Button;

.field buttonHard:Landroid/widget/Button;

.field buttonNormal:Landroid/widget/Button;

.field listALLMyWorkouts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ldatabase/MyWorkouts;",
            ">;"
        }
    .end annotation
.end field

.field mDBConnectorWorkouts:Ldatabase/DBConnectorWorkouts;

.field mSettings:Landroid/content/SharedPreferences;

.field mw:Ldatabase/MyWorkouts;

.field selected_level:I

.field text1:Landroid/widget/TextView;

.field text2:Landroid/widget/TextView;

.field text3:Landroid/widget/TextView;

.field text4:Landroid/widget/TextView;

.field text5:Landroid/widget/TextView;

.field textViewCalories:Landroid/widget/TextView;

.field textViewTime:Landroid/widget/TextView;

.field workout_start_time:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 41
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/skipping/AfterTrainingActivity;->workout_start_time:J

    .line 48
    iput-boolean v2, p0, Lcom/skipping/AfterTrainingActivity;->JumpChanged:Z

    .line 49
    iput-boolean v2, p0, Lcom/skipping/AfterTrainingActivity;->JumpScrolled:Z

    .line 50
    iput v2, p0, Lcom/skipping/AfterTrainingActivity;->Jumps:I

    .line 51
    iput v2, p0, Lcom/skipping/AfterTrainingActivity;->JumpsFromTraining:I

    .line 34
    return-void
.end method


# virtual methods
.method public Back(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 255
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/skipping/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/skipping/AfterTrainingActivity;->startActivity(Landroid/content/Intent;)V

    .line 256
    return-void
.end method

.method public Easy(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 228
    iget v1, p0, Lcom/skipping/AfterTrainingActivity;->selected_level:I

    const/16 v2, 0xcf

    if-ge v1, v2, :cond_0

    .line 229
    iget-object v1, p0, Lcom/skipping/AfterTrainingActivity;->mSettings:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 230
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "selected_level"

    iget v2, p0, Lcom/skipping/AfterTrainingActivity;->selected_level:I

    add-int/lit8 v2, v2, 0x8

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 231
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 234
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/skipping/MainActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/skipping/AfterTrainingActivity;->startActivity(Landroid/content/Intent;)V

    .line 236
    return-void
.end method

.method public Hard(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 241
    iget v1, p0, Lcom/skipping/AfterTrainingActivity;->selected_level:I

    const/16 v2, 0x8

    if-le v1, v2, :cond_0

    .line 242
    iget-object v1, p0, Lcom/skipping/AfterTrainingActivity;->mSettings:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 243
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "selected_level"

    iget v2, p0, Lcom/skipping/AfterTrainingActivity;->selected_level:I

    add-int/lit8 v2, v2, -0x8

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 244
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 247
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/skipping/MainActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/skipping/AfterTrainingActivity;->startActivity(Landroid/content/Intent;)V

    .line 249
    return-void
.end method

.method public Jump(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    .line 260
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 261
    .local v0, "dialog":Landroid/app/Dialog;
    const v5, 0x7f03000b

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setContentView(I)V

    .line 263
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v6, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v5, v6}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 268
    const v5, 0x7f0a0059

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lwheel_lib/WheelView;

    .line 269
    .local v3, "jump":Lwheel_lib/WheelView;
    new-instance v5, Lwheel_lib/adapters/NumericWheelAdapter;

    const/16 v6, 0x270f

    invoke-direct {v5, p0, v7, v6}, Lwheel_lib/adapters/NumericWheelAdapter;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v3, v5}, Lwheel_lib/WheelView;->setViewAdapter(Lwheel_lib/adapters/WheelViewAdapter;)V

    .line 271
    iget v5, p0, Lcom/skipping/AfterTrainingActivity;->JumpsFromTraining:I

    invoke-virtual {v3, v5}, Lwheel_lib/WheelView;->setCurrentItem(I)V

    .line 274
    new-instance v4, Lcom/skipping/AfterTrainingActivity$1;

    invoke-direct {v4, p0, v3}, Lcom/skipping/AfterTrainingActivity$1;-><init>(Lcom/skipping/AfterTrainingActivity;Lwheel_lib/WheelView;)V

    .line 288
    .local v4, "scrollListener":Lwheel_lib/OnWheelScrollListener;
    invoke-virtual {v3, v4}, Lwheel_lib/WheelView;->addScrollingListener(Lwheel_lib/OnWheelScrollListener;)V

    .line 292
    const/high16 v5, 0x7f0a0000

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 293
    .local v1, "dialogButton":Landroid/widget/Button;
    new-instance v5, Lcom/skipping/AfterTrainingActivity$2;

    invoke-direct {v5, p0, v0}, Lcom/skipping/AfterTrainingActivity$2;-><init>(Lcom/skipping/AfterTrainingActivity;Landroid/app/Dialog;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    const v5, 0x7f0a005a

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 310
    .local v2, "dialogButton1":Landroid/widget/Button;
    new-instance v5, Lcom/skipping/AfterTrainingActivity$3;

    invoke-direct {v5, p0, v0}, Lcom/skipping/AfterTrainingActivity$3;-><init>(Lcom/skipping/AfterTrainingActivity;Landroid/app/Dialog;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 317
    return-void
.end method

.method public Normal(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 238
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/skipping/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/skipping/AfterTrainingActivity;->startActivity(Landroid/content/Intent;)V

    .line 239
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v3, 0x7f030002

    invoke-virtual {p0, v3}, Lcom/skipping/AfterTrainingActivity;->setContentView(I)V

    .line 66
    const v3, 0x7f0a0010

    invoke-virtual {p0, v3}, Lcom/skipping/AfterTrainingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/skipping/AdvancedTextView;

    iput-object v3, p0, Lcom/skipping/AfterTrainingActivity;->advancedTextView:Lcom/skipping/AdvancedTextView;

    .line 68
    const v3, 0x7f0a000c

    invoke-virtual {p0, v3}, Lcom/skipping/AfterTrainingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/skipping/AfterTrainingActivity;->textViewTime:Landroid/widget/TextView;

    .line 69
    const v3, 0x7f0a000d

    invoke-virtual {p0, v3}, Lcom/skipping/AfterTrainingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/skipping/AfterTrainingActivity;->textViewCalories:Landroid/widget/TextView;

    .line 70
    const v3, 0x7f0a000e

    invoke-virtual {p0, v3}, Lcom/skipping/AfterTrainingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/skipping/AfterTrainingActivity;->ButtonJump:Landroid/widget/Button;

    .line 72
    const v3, 0x7f0a0011

    invoke-virtual {p0, v3}, Lcom/skipping/AfterTrainingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/skipping/AfterTrainingActivity;->text1:Landroid/widget/TextView;

    .line 73
    const v3, 0x7f0a0012

    invoke-virtual {p0, v3}, Lcom/skipping/AfterTrainingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/skipping/AfterTrainingActivity;->text2:Landroid/widget/TextView;

    .line 74
    const v3, 0x7f0a0013

    invoke-virtual {p0, v3}, Lcom/skipping/AfterTrainingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/skipping/AfterTrainingActivity;->text3:Landroid/widget/TextView;

    .line 75
    const v3, 0x7f0a0014

    invoke-virtual {p0, v3}, Lcom/skipping/AfterTrainingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/skipping/AfterTrainingActivity;->text4:Landroid/widget/TextView;

    .line 76
    const v3, 0x7f0a0015

    invoke-virtual {p0, v3}, Lcom/skipping/AfterTrainingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/skipping/AfterTrainingActivity;->text5:Landroid/widget/TextView;

    .line 78
    const v3, 0x7f0a0016

    invoke-virtual {p0, v3}, Lcom/skipping/AfterTrainingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/skipping/AfterTrainingActivity;->buttonEasy:Landroid/widget/Button;

    .line 79
    const v3, 0x7f0a0017

    invoke-virtual {p0, v3}, Lcom/skipping/AfterTrainingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/skipping/AfterTrainingActivity;->buttonNormal:Landroid/widget/Button;

    .line 80
    const v3, 0x7f0a0018

    invoke-virtual {p0, v3}, Lcom/skipping/AfterTrainingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/skipping/AfterTrainingActivity;->buttonHard:Landroid/widget/Button;

    .line 82
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/skipping/AfterTrainingActivity;->mSettings:Landroid/content/SharedPreferences;

    .line 84
    invoke-virtual {p0}, Lcom/skipping/AfterTrainingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 85
    .local v1, "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 86
    const-string v3, "workout_start_time"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/skipping/AfterTrainingActivity;->workout_start_time:J

    .line 92
    :cond_0
    iget-object v3, p0, Lcom/skipping/AfterTrainingActivity;->mSettings:Landroid/content/SharedPreferences;

    const-string v4, "disable_ads"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 93
    .local v0, "disable_ads":Z
    if-nez v0, :cond_1

    .line 95
    new-instance v3, Lcom/google/ads/AdView;

    sget-object v4, Lcom/google/ads/AdSize;->SMART_BANNER:Lcom/google/ads/AdSize;

    const-string v5, "ca-app-pub-8661822564276571/3559185041"

    invoke-direct {v3, p0, v4, v5}, Lcom/google/ads/AdView;-><init>(Landroid/app/Activity;Lcom/google/ads/AdSize;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/skipping/AfterTrainingActivity;->adView:Lcom/google/ads/AdView;

    .line 99
    const v3, 0x7f0a0002

    invoke-virtual {p0, v3}, Lcom/skipping/AfterTrainingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 102
    .local v2, "layout":Landroid/widget/LinearLayout;
    iget-object v3, p0, Lcom/skipping/AfterTrainingActivity;->adView:Lcom/google/ads/AdView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 105
    iget-object v3, p0, Lcom/skipping/AfterTrainingActivity;->adView:Lcom/google/ads/AdView;

    new-instance v4, Lcom/google/ads/AdRequest;

    invoke-direct {v4}, Lcom/google/ads/AdRequest;-><init>()V

    invoke-virtual {v3, v4}, Lcom/google/ads/AdView;->loadAd(Lcom/google/ads/AdRequest;)V

    .line 109
    .end local v2    # "layout":Landroid/widget/LinearLayout;
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 113
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 115
    iget-object v0, p0, Lcom/skipping/AfterTrainingActivity;->adView:Lcom/google/ads/AdView;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/skipping/AfterTrainingActivity;->adView:Lcom/google/ads/AdView;

    invoke-virtual {v0}, Lcom/google/ads/AdView;->destroy()V

    .line 118
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 323
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 327
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/skipping/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/skipping/AfterTrainingActivity;->startActivity(Landroid/content/Intent;)V

    .line 329
    const/4 v0, 0x1

    .line 331
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 26

    .prologue
    .line 135
    invoke-super/range {p0 .. p0}, Landroid/app/Activity;->onResume()V

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/AfterTrainingActivity;->mSettings:Landroid/content/SharedPreferences;

    move-object/from16 v21, v0

    const-string v22, "selected_level"

    const/16 v23, 0x0

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/skipping/AfterTrainingActivity;->selected_level:I

    .line 138
    move-object/from16 v0, p0

    iget v0, v0, Lcom/skipping/AfterTrainingActivity;->selected_level:I

    move/from16 v21, v0

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_4

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/AfterTrainingActivity;->buttonHard:Landroid/widget/Button;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 140
    .local v14, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v21, 0x0

    move/from16 v0, v21

    iput v0, v14, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/AfterTrainingActivity;->buttonHard:Landroid/widget/Button;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    .end local v14    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/skipping/AfterTrainingActivity;->selected_level:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/skipping/LevelActivity;->getLevel(I)[I

    move-result-object v10

    .line 149
    .local v10, "ll":[I
    const-string v4, ""

    .line 150
    .local v4, "LevelName":Ljava/lang/String;
    const/16 v21, 0x1

    aget v21, v10, v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_5

    .line 151
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const v22, 0x7f050014

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/skipping/AfterTrainingActivity;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ": "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x0

    aget v22, v10, v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "("

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const v22, 0x7f050018

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/skipping/AfterTrainingActivity;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ")"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 159
    :cond_1
    :goto_1
    const/16 v21, 0x2

    aget v21, v10, v21

    rem-int/lit8 v16, v21, 0x3c

    .line 160
    .local v16, "seconds1":I
    const/16 v21, 0x2

    aget v21, v10, v21

    div-int/lit8 v12, v21, 0x3c

    .line 162
    .local v12, "minutes1":I
    const/16 v21, 0x5

    aget v21, v10, v21

    rem-int/lit8 v17, v21, 0x3c

    .line 163
    .local v17, "seconds2":I
    const/16 v21, 0x5

    aget v21, v10, v21

    div-int/lit8 v13, v21, 0x3c

    .line 165
    .local v13, "minutes2":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/AfterTrainingActivity;->text1:Landroid/widget/TextView;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/AfterTrainingActivity;->text2:Landroid/widget/TextView;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v21, 0xa

    move/from16 v0, v21

    if-ge v12, v0, :cond_8

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v24, "0"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    :goto_2
    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v23, ":"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v21, 0xa

    move/from16 v0, v16

    move/from16 v1, v21

    if-ge v0, v1, :cond_9

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v24, "0"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    :goto_3
    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/AfterTrainingActivity;->text3:Landroid/widget/TextView;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v23, 0x3

    aget v23, v10, v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/AfterTrainingActivity;->text4:Landroid/widget/TextView;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v23, 0x4

    aget v23, v10, v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/AfterTrainingActivity;->text5:Landroid/widget/TextView;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v21, 0xa

    move/from16 v0, v21

    if-ge v13, v0, :cond_a

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v24, "0"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    :goto_4
    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v23, ":"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v21, 0xa

    move/from16 v0, v17

    move/from16 v1, v21

    if-ge v0, v1, :cond_b

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v24, "0"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    :goto_5
    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/skipping/AfterTrainingActivity;->workout_start_time:J

    move-wide/from16 v21, v0

    const-wide/16 v23, 0x0

    cmp-long v21, v21, v23

    if-eqz v21, :cond_3

    .line 176
    new-instance v21, Ldatabase/DBConnectorWorkouts;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ldatabase/DBConnectorWorkouts;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/skipping/AfterTrainingActivity;->mDBConnectorWorkouts:Ldatabase/DBConnectorWorkouts;

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/AfterTrainingActivity;->mDBConnectorWorkouts:Ldatabase/DBConnectorWorkouts;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/skipping/AfterTrainingActivity;->workout_start_time:J

    move-wide/from16 v22, v0

    invoke-virtual/range {v21 .. v23}, Ldatabase/DBConnectorWorkouts;->select_start_time(J)Ldatabase/MyWorkouts;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/skipping/AfterTrainingActivity;->mw:Ldatabase/MyWorkouts;

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/AfterTrainingActivity;->mDBConnectorWorkouts:Ldatabase/DBConnectorWorkouts;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ldatabase/DBConnectorWorkouts;->selectAll()Ljava/util/ArrayList;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/skipping/AfterTrainingActivity;->listALLMyWorkouts:Ljava/util/ArrayList;

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/AfterTrainingActivity;->mw:Ldatabase/MyWorkouts;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ldatabase/MyWorkouts;->getWorkoutEndTime()J

    move-result-wide v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/AfterTrainingActivity;->mw:Ldatabase/MyWorkouts;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ldatabase/MyWorkouts;->getWorkoutStartTime()J

    move-result-wide v23

    sub-long v21, v21, v23

    const-wide/16 v23, 0x3e8

    div-long v21, v21, v23

    move-wide/from16 v0, v21

    long-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v6, v0

    .line 183
    .local v6, "duration":J
    const-wide/16 v21, 0x3c

    rem-long v21, v6, v21

    move-wide/from16 v0, v21

    long-to-int v15, v0

    .line 184
    .local v15, "seconds":I
    const-wide/16 v21, 0x3c

    div-long v21, v6, v21

    move-wide/from16 v0, v21

    long-to-int v11, v0

    .line 185
    .local v11, "minutes":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/AfterTrainingActivity;->textViewTime:Landroid/widget/TextView;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v21, 0xa

    move/from16 v0, v21

    if-ge v11, v0, :cond_c

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v24, "0"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    :goto_6
    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v23, ":"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v21, 0xa

    move/from16 v0, v21

    if-ge v15, v0, :cond_d

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v24, "0"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    :goto_7
    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/AfterTrainingActivity;->textViewCalories:Landroid/widget/TextView;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/AfterTrainingActivity;->mw:Ldatabase/MyWorkouts;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ldatabase/MyWorkouts;->getCalories()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/AfterTrainingActivity;->ButtonJump:Landroid/widget/Button;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/AfterTrainingActivity;->mw:Ldatabase/MyWorkouts;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ldatabase/MyWorkouts;->getJumps()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/AfterTrainingActivity;->mw:Ldatabase/MyWorkouts;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ldatabase/MyWorkouts;->getJumps()I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/skipping/AfterTrainingActivity;->Jumps:I

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/AfterTrainingActivity;->mw:Ldatabase/MyWorkouts;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ldatabase/MyWorkouts;->getJumps()I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/skipping/AfterTrainingActivity;->JumpsFromTraining:I

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/AfterTrainingActivity;->mSettings:Landroid/content/SharedPreferences;

    move-object/from16 v21, v0

    const-string v22, "selected_level"

    const/16 v23, 0x0

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v18

    .line 194
    .local v18, "selected_level":I
    invoke-static/range {v18 .. v18}, Lcom/skipping/LevelActivity;->getLevel(I)[I

    move-result-object v21

    const/16 v22, 0x5

    aget v9, v21, v22

    .line 197
    .local v9, "level_sec_week":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 198
    .local v5, "calendar":Ljava/util/Calendar;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/skipping/AfterTrainingActivity;->workout_start_time:J

    move-wide/from16 v21, v0

    move-wide/from16 v0, v21

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 199
    const/16 v21, 0xb

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 200
    const/16 v21, 0xc

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 201
    const/16 v21, 0xd

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 202
    const/16 v21, 0xe

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 203
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 205
    .local v2, "BeginOfWorkoutDay":J
    const-wide/16 v19, 0x0

    .line 207
    .local v19, "week_milis":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/AfterTrainingActivity;->listALLMyWorkouts:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    if-eqz v21, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/AfterTrainingActivity;->listALLMyWorkouts:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    if-lez v21, :cond_2

    .line 208
    const/4 v8, 0x0

    .local v8, "i1":I
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/AfterTrainingActivity;->listALLMyWorkouts:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    add-int/lit8 v21, v21, 0x0

    move/from16 v0, v21

    if-lt v8, v0, :cond_e

    .line 215
    .end local v8    # "i1":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/AfterTrainingActivity;->advancedTextView:Lcom/skipping/AdvancedTextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Lcom/skipping/AdvancedTextView;->setMaxValue(I)V

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/AfterTrainingActivity;->advancedTextView:Lcom/skipping/AdvancedTextView;

    move-object/from16 v21, v0

    const-wide/16 v22, 0x3e8

    div-long v22, v19, v22

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/skipping/AdvancedTextView;->setValue(I)V

    .line 220
    .end local v2    # "BeginOfWorkoutDay":J
    .end local v5    # "calendar":Ljava/util/Calendar;
    .end local v6    # "duration":J
    .end local v9    # "level_sec_week":I
    .end local v11    # "minutes":I
    .end local v15    # "seconds":I
    .end local v18    # "selected_level":I
    .end local v19    # "week_milis":J
    :cond_3
    return-void

    .line 142
    .end local v4    # "LevelName":Ljava/lang/String;
    .end local v10    # "ll":[I
    .end local v12    # "minutes1":I
    .end local v13    # "minutes2":I
    .end local v16    # "seconds1":I
    .end local v17    # "seconds2":I
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/skipping/AfterTrainingActivity;->selected_level:I

    move/from16 v21, v0

    const/16 v22, 0xcf

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_0

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/AfterTrainingActivity;->buttonEasy:Landroid/widget/Button;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 144
    .restart local v14    # "params":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v21, 0x0

    move/from16 v0, v21

    iput v0, v14, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/AfterTrainingActivity;->buttonEasy:Landroid/widget/Button;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 152
    .end local v14    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v4    # "LevelName":Ljava/lang/String;
    .restart local v10    # "ll":[I
    :cond_5
    const/16 v21, 0x1

    aget v21, v10, v21

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_6

    .line 153
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const v22, 0x7f050014

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/skipping/AfterTrainingActivity;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ": "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x0

    aget v22, v10, v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "("

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const v22, 0x7f050019

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/skipping/AfterTrainingActivity;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ")"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 154
    goto/16 :goto_1

    :cond_6
    const/16 v21, 0x1

    aget v21, v10, v21

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_7

    .line 155
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const v22, 0x7f050014

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/skipping/AfterTrainingActivity;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ": "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x0

    aget v22, v10, v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "("

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const v22, 0x7f05001a

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/skipping/AfterTrainingActivity;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ")"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 156
    goto/16 :goto_1

    :cond_7
    const/16 v21, 0x1

    aget v21, v10, v21

    const/16 v22, 0x4

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    .line 157
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const v22, 0x7f050014

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/skipping/AfterTrainingActivity;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ": "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x0

    aget v22, v10, v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "("

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const v22, 0x7f05001b

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/skipping/AfterTrainingActivity;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ")"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 166
    .restart local v12    # "minutes1":I
    .restart local v13    # "minutes2":I
    .restart local v16    # "seconds1":I
    .restart local v17    # "seconds2":I
    :cond_8
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    goto/16 :goto_2

    :cond_9
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    goto/16 :goto_3

    .line 169
    :cond_a
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    goto/16 :goto_4

    :cond_b
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    goto/16 :goto_5

    .line 185
    .restart local v6    # "duration":J
    .restart local v11    # "minutes":I
    .restart local v15    # "seconds":I
    :cond_c
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    goto/16 :goto_6

    :cond_d
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    goto/16 :goto_7

    .line 209
    .restart local v2    # "BeginOfWorkoutDay":J
    .restart local v5    # "calendar":Ljava/util/Calendar;
    .restart local v8    # "i1":I
    .restart local v9    # "level_sec_week":I
    .restart local v18    # "selected_level":I
    .restart local v19    # "week_milis":J
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/AfterTrainingActivity;->listALLMyWorkouts:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ldatabase/MyWorkouts;

    invoke-virtual/range {v21 .. v21}, Ldatabase/MyWorkouts;->getWorkoutStartTime()J

    move-result-wide v21

    cmp-long v21, v21, v2

    if-lez v21, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/AfterTrainingActivity;->listALLMyWorkouts:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ldatabase/MyWorkouts;

    invoke-virtual/range {v21 .. v21}, Ldatabase/MyWorkouts;->getWorkoutStartTime()J

    move-result-wide v21

    const-wide/32 v23, 0x5265c00

    add-long v23, v23, v2

    cmp-long v21, v21, v23

    if-gez v21, :cond_f

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/AfterTrainingActivity;->listALLMyWorkouts:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ldatabase/MyWorkouts;

    invoke-virtual/range {v21 .. v21}, Ldatabase/MyWorkouts;->getWorkoutEndTime()J

    move-result-wide v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/AfterTrainingActivity;->listALLMyWorkouts:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ldatabase/MyWorkouts;

    invoke-virtual/range {v21 .. v21}, Ldatabase/MyWorkouts;->getWorkoutStartTime()J

    move-result-wide v24

    sub-long v21, v22, v24

    add-long v19, v19, v21

    .line 208
    :cond_f
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_8
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 122
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 123
    invoke-static {p0}, Lcom/google/analytics/tracking/android/EasyTracker;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/EasyTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/analytics/tracking/android/EasyTracker;->activityStart(Landroid/app/Activity;)V

    .line 124
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 128
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 129
    invoke-static {p0}, Lcom/google/analytics/tracking/android/EasyTracker;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/EasyTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/analytics/tracking/android/EasyTracker;->activityStop(Landroid/app/Activity;)V

    .line 130
    return-void
.end method
