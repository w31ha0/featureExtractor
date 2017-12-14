.class public Lcom/tutusw/phonespeedup/Setcpu;
.super Landroid/app/TabActivity;
.source "Setcpu.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# static fields
.field private static final SWIPE_MAX_OFF_PATH:I = 0xfa

.field private static final SWIPE_MIN_DISTANCE:I = 0x96

.field private static final SWIPE_THRESHOLD_VELOCITY:I = 0x258

.field private static final tabCount:I = 0x4


# instance fields
.field editor:Landroid/content/SharedPreferences$Editor;

.field private gestureDetector:Landroid/view/GestureDetector;

.field settings:Landroid/content/SharedPreferences;

.field tabHost:Landroid/widget/TabHost;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "mv"    # Landroid/view/MotionEvent;

    .prologue
    .line 132
    invoke-super {p0, p1}, Landroid/app/TabActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 135
    iget-object v0, p0, Lcom/tutusw/phonespeedup/Setcpu;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    if-nez v0, :cond_0

    .line 136
    const/4 v0, 0x0

    .line 139
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tutusw/phonespeedup/Setcpu;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 26
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    new-instance v3, Landroid/view/GestureDetector;

    invoke-direct {v3, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v3, p0, Lcom/tutusw/phonespeedup/Setcpu;->gestureDetector:Landroid/view/GestureDetector;

    .line 28
    const v3, 0x7f03000f

    invoke-virtual {p0, v3}, Lcom/tutusw/phonespeedup/Setcpu;->setContentView(I)V

    .line 30
    invoke-virtual {p0}, Lcom/tutusw/phonespeedup/Setcpu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 31
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/tutusw/phonespeedup/Setcpu;->getTabHost()Landroid/widget/TabHost;

    move-result-object v3

    iput-object v3, p0, Lcom/tutusw/phonespeedup/Setcpu;->tabHost:Landroid/widget/TabHost;

    .line 35
    const-string v3, "Speedup"

    invoke-virtual {p0, v3, v6}, Lcom/tutusw/phonespeedup/Setcpu;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/tutusw/phonespeedup/Setcpu;->settings:Landroid/content/SharedPreferences;

    .line 36
    iget-object v3, p0, Lcom/tutusw/phonespeedup/Setcpu;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    iput-object v3, p0, Lcom/tutusw/phonespeedup/Setcpu;->editor:Landroid/content/SharedPreferences$Editor;

    .line 38
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-class v4, Lcom/tutusw/phonespeedup/Home;

    invoke-virtual {v3, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 39
    .local v0, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/tutusw/phonespeedup/Setcpu;->tabHost:Landroid/widget/TabHost;

    const-string v4, "main"

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    const-string v4, "\u4e3b\u9875\u9762"

    .line 40
    const v5, 0x7f020014

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 39
    invoke-virtual {v3, v4, v5}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    .line 41
    invoke-virtual {v3, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    .line 42
    .local v2, "spec":Landroid/widget/TabHost$TabSpec;
    iget-object v3, p0, Lcom/tutusw/phonespeedup/Setcpu;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v3, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 44
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-class v4, Lcom/tutusw/phonespeedup/ProfilesActivity;

    invoke-virtual {v3, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 45
    iget-object v3, p0, Lcom/tutusw/phonespeedup/Setcpu;->tabHost:Landroid/widget/TabHost;

    const-string v4, "profiles"

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    const-string v4, "\u914d\u7f6e"

    .line 46
    const v5, 0x7f020017

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 45
    invoke-virtual {v3, v4, v5}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    .line 47
    invoke-virtual {v3, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    .line 48
    iget-object v3, p0, Lcom/tutusw/phonespeedup/Setcpu;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v3, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 50
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-class v4, Lcom/tutusw/phonespeedup/AdvancedActivity;

    invoke-virtual {v3, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 51
    iget-object v3, p0, Lcom/tutusw/phonespeedup/Setcpu;->tabHost:Landroid/widget/TabHost;

    const-string v4, "advanced"

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    const-string v4, "\u9ad8\u7ea7"

    .line 52
    const v5, 0x7f02000e

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 51
    invoke-virtual {v3, v4, v5}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    .line 53
    invoke-virtual {v3, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    .line 54
    iget-object v3, p0, Lcom/tutusw/phonespeedup/Setcpu;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v3, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 56
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-class v4, Lcom/tutusw/phonespeedup/InfoActivity;

    invoke-virtual {v3, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 57
    iget-object v3, p0, Lcom/tutusw/phonespeedup/Setcpu;->tabHost:Landroid/widget/TabHost;

    const-string v4, "info"

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    const-string v4, "\u4fe1\u606f"

    .line 58
    const v5, 0x7f020011

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 57
    invoke-virtual {v3, v4, v5}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    .line 59
    invoke-virtual {v3, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    .line 60
    iget-object v3, p0, Lcom/tutusw/phonespeedup/Setcpu;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v3, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 62
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-class v4, Lcom/tutusw/phonespeedup/AboutActivity;

    invoke-virtual {v3, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 63
    iget-object v3, p0, Lcom/tutusw/phonespeedup/Setcpu;->tabHost:Landroid/widget/TabHost;

    const-string v4, "about"

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    const-string v4, "\u5173\u4e8e"

    .line 64
    const v5, 0x7f02000b

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 63
    invoke-virtual {v3, v4, v5}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    .line 65
    invoke-virtual {v3, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    .line 66
    iget-object v3, p0, Lcom/tutusw/phonespeedup/Setcpu;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v3, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 68
    iget-object v3, p0, Lcom/tutusw/phonespeedup/Setcpu;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v3, v6}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 69
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x44160000    # 600.0f

    const/high16 v3, 0x43160000    # 150.0f

    .line 86
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x437a0000    # 250.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    move v1, v5

    .line 106
    :goto_0
    return v1

    .line 88
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v4

    if-lez v1, :cond_2

    .line 89
    iget-object v1, p0, Lcom/tutusw/phonespeedup/Setcpu;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v1

    const/4 v2, 0x4

    if-gt v1, v2, :cond_1

    .line 90
    iget-object v1, p0, Lcom/tutusw/phonespeedup/Setcpu;->tabHost:Landroid/widget/TabHost;

    iget-object v2, p0, Lcom/tutusw/phonespeedup/Setcpu;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->setCurrentTab(I)V

    :cond_1
    :goto_1
    move v1, v6

    .line 106
    goto :goto_0

    .line 92
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    cmpl-float v1, v1, v3

    if-lez v1, :cond_3

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v4

    if-lez v1, :cond_3

    .line 93
    iget-object v1, p0, Lcom/tutusw/phonespeedup/Setcpu;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v1

    if-lez v1, :cond_1

    .line 94
    iget-object v1, p0, Lcom/tutusw/phonespeedup/Setcpu;->tabHost:Landroid/widget/TabHost;

    iget-object v2, p0, Lcom/tutusw/phonespeedup/Setcpu;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v2

    sub-int/2addr v2, v6

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->setCurrentTab(I)V

    goto :goto_1

    .line 102
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, "e":Ljava/lang/Exception;
    move v1, v5

    .line 103
    goto :goto_0

    .line 97
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    cmpl-float v1, v1, v3

    if-lez v1, :cond_4

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v4

    if-gtz v1, :cond_1

    .line 99
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    cmpl-float v1, v1, v3

    if-lez v1, :cond_1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 112
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/MotionEvent;
    .param p2, "arg1"    # Landroid/view/MotionEvent;
    .param p3, "arg2"    # F
    .param p4, "arg3"    # F

    .prologue
    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 123
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/tutusw/phonespeedup/Setcpu;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
