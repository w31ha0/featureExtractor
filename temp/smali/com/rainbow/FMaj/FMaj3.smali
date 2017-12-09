.class public Lcom/rainbow/FMaj/FMaj3;
.super Landroid/app/Activity;
.source "FMaj3.java"


# instance fields
.field private myMain:Lcom/rainbow/FMaj/GameView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rainbow/FMaj/FMaj3;->myMain:Lcom/rainbow/FMaj/GameView;

    .line 13
    return-void
.end method


# virtual methods
.method public GetMoney()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x2710

    .line 60
    invoke-virtual {p0}, Lcom/rainbow/FMaj/FMaj3;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.rainbow.myFMaj"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 61
    .local v0, "settings":Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/rainbow/FMaj/FMaj3;->myMain:Lcom/rainbow/FMaj/GameView;

    iget-object v1, v1, Lcom/rainbow/FMaj/GameView;->JiaoMoney:[I

    const-string v2, "JiaoMoney0"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    aput v2, v1, v3

    .line 62
    iget-object v1, p0, Lcom/rainbow/FMaj/FMaj3;->myMain:Lcom/rainbow/FMaj/GameView;

    iget-object v1, v1, Lcom/rainbow/FMaj/GameView;->JiaoMoney:[I

    const-string v2, "JiaoMoney1"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    aput v2, v1, v5

    .line 63
    iget-object v1, p0, Lcom/rainbow/FMaj/FMaj3;->myMain:Lcom/rainbow/FMaj/GameView;

    iget-object v1, v1, Lcom/rainbow/FMaj/GameView;->JiaoMoney:[I

    const/4 v2, 0x2

    const-string v3, "JiaoMoney2"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    aput v3, v1, v2

    .line 64
    iget-object v1, p0, Lcom/rainbow/FMaj/FMaj3;->myMain:Lcom/rainbow/FMaj/GameView;

    iget-object v1, v1, Lcom/rainbow/FMaj/GameView;->JiaoMoney:[I

    const/4 v2, 0x3

    const-string v3, "JiaoMoney3"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    aput v3, v1, v2

    .line 65
    iget-object v1, p0, Lcom/rainbow/FMaj/FMaj3;->myMain:Lcom/rainbow/FMaj/GameView;

    iget-object v1, v1, Lcom/rainbow/FMaj/GameView;->JiaoMoney:[I

    const/4 v2, 0x4

    const-string v3, "JiaoMoney4"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    aput v3, v1, v2

    .line 66
    iget-object v1, p0, Lcom/rainbow/FMaj/FMaj3;->myMain:Lcom/rainbow/FMaj/GameView;

    iget-object v1, v1, Lcom/rainbow/FMaj/GameView;->JiaoMoney:[I

    const/4 v2, 0x5

    const-string v3, "JiaoMoney5"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    aput v3, v1, v2

    .line 67
    iget-object v1, p0, Lcom/rainbow/FMaj/FMaj3;->myMain:Lcom/rainbow/FMaj/GameView;

    iget-object v1, v1, Lcom/rainbow/FMaj/GameView;->JiaoMoney:[I

    const/4 v2, 0x6

    const-string v3, "JiaoMoney6"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    aput v3, v1, v2

    .line 68
    iget-object v1, p0, Lcom/rainbow/FMaj/FMaj3;->myMain:Lcom/rainbow/FMaj/GameView;

    const-string v2, "Sound"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/rainbow/FMaj/GameView;->g_bSound:Z

    .line 69
    return-void
.end method

.method public SaveMoney()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 73
    invoke-virtual {p0}, Lcom/rainbow/FMaj/FMaj3;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.rainbow.myFMaj"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 74
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 75
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "JiaoMoney0"

    iget-object v3, p0, Lcom/rainbow/FMaj/FMaj3;->myMain:Lcom/rainbow/FMaj/GameView;

    iget-object v3, v3, Lcom/rainbow/FMaj/GameView;->JiaoMoney:[I

    aget v3, v3, v4

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 76
    const-string v2, "JiaoMoney1"

    iget-object v3, p0, Lcom/rainbow/FMaj/FMaj3;->myMain:Lcom/rainbow/FMaj/GameView;

    iget-object v3, v3, Lcom/rainbow/FMaj/GameView;->JiaoMoney:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 77
    const-string v2, "JiaoMoney2"

    iget-object v3, p0, Lcom/rainbow/FMaj/FMaj3;->myMain:Lcom/rainbow/FMaj/GameView;

    iget-object v3, v3, Lcom/rainbow/FMaj/GameView;->JiaoMoney:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 78
    const-string v2, "JiaoMoney3"

    iget-object v3, p0, Lcom/rainbow/FMaj/FMaj3;->myMain:Lcom/rainbow/FMaj/GameView;

    iget-object v3, v3, Lcom/rainbow/FMaj/GameView;->JiaoMoney:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 79
    const-string v2, "JiaoMoney4"

    iget-object v3, p0, Lcom/rainbow/FMaj/FMaj3;->myMain:Lcom/rainbow/FMaj/GameView;

    iget-object v3, v3, Lcom/rainbow/FMaj/GameView;->JiaoMoney:[I

    const/4 v4, 0x4

    aget v3, v3, v4

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 80
    const-string v2, "JiaoMoney5"

    iget-object v3, p0, Lcom/rainbow/FMaj/FMaj3;->myMain:Lcom/rainbow/FMaj/GameView;

    iget-object v3, v3, Lcom/rainbow/FMaj/GameView;->JiaoMoney:[I

    const/4 v4, 0x5

    aget v3, v3, v4

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 81
    const-string v2, "JiaoMoney6"

    iget-object v3, p0, Lcom/rainbow/FMaj/FMaj3;->myMain:Lcom/rainbow/FMaj/GameView;

    iget-object v3, v3, Lcom/rainbow/FMaj/GameView;->JiaoMoney:[I

    const/4 v4, 0x6

    aget v3, v3, v4

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 82
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 84
    return-void
.end method

.method public SaveSound()V
    .locals 5

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/rainbow/FMaj/FMaj3;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.rainbow.myFMaj"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 89
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 90
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "Sound"

    iget-object v3, p0, Lcom/rainbow/FMaj/FMaj3;->myMain:Lcom/rainbow/FMaj/GameView;

    iget-boolean v3, v3, Lcom/rainbow/FMaj/GameView;->g_bSound:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 91
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 92
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v9, 0x400

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 20
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 25
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/rainbow/FMaj/FMaj3;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 26
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v4, v5, :cond_0

    .line 28
    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 29
    .local v3, "nW":I
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 30
    .local v2, "nH":I
    invoke-virtual {p0, v6}, Lcom/rainbow/FMaj/FMaj3;->setRequestedOrientation(I)V

    .line 38
    :goto_0
    invoke-virtual {p0, v6}, Lcom/rainbow/FMaj/FMaj3;->requestWindowFeature(I)Z

    .line 39
    invoke-virtual {p0}, Lcom/rainbow/FMaj/FMaj3;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v9, v9}, Landroid/view/Window;->setFlags(II)V

    .line 40
    const v4, 0x7f030002

    invoke-virtual {p0, v4}, Lcom/rainbow/FMaj/FMaj3;->setContentView(I)V

    .line 42
    const v4, 0x7f060003

    invoke-virtual {p0, v4}, Lcom/rainbow/FMaj/FMaj3;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/rainbow/FMaj/GameView;

    iput-object v4, p0, Lcom/rainbow/FMaj/FMaj3;->myMain:Lcom/rainbow/FMaj/GameView;

    .line 44
    invoke-virtual {p0}, Lcom/rainbow/FMaj/FMaj3;->GetMoney()V

    .line 47
    iget-object v4, p0, Lcom/rainbow/FMaj/FMaj3;->myMain:Lcom/rainbow/FMaj/GameView;

    iget-object v4, v4, Lcom/rainbow/FMaj/GameView;->JiaoFang:[I

    const/4 v5, 0x6

    aput v5, v4, v7

    .line 49
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 50
    .local v1, "my":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/rainbow/FMaj/FMaj3;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 51
    iget-object v4, p0, Lcom/rainbow/FMaj/FMaj3;->myMain:Lcom/rainbow/FMaj/GameView;

    iget-object v4, v4, Lcom/rainbow/FMaj/GameView;->JiaoFang:[I

    const-string v5, "T1"

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    aput v5, v4, v6

    .line 52
    iget-object v4, p0, Lcom/rainbow/FMaj/FMaj3;->myMain:Lcom/rainbow/FMaj/GameView;

    iget-object v4, v4, Lcom/rainbow/FMaj/GameView;->JiaoFang:[I

    const-string v5, "T2"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    aput v5, v4, v8

    .line 53
    iget-object v4, p0, Lcom/rainbow/FMaj/FMaj3;->myMain:Lcom/rainbow/FMaj/GameView;

    iget-object v4, v4, Lcom/rainbow/FMaj/GameView;->JiaoFang:[I

    const/4 v5, 0x3

    const-string v6, "T3"

    invoke-virtual {v1, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    aput v6, v4, v5

    .line 55
    iget-object v4, p0, Lcom/rainbow/FMaj/FMaj3;->myMain:Lcom/rainbow/FMaj/GameView;

    invoke-virtual {v4, v3, v2, p0}, Lcom/rainbow/FMaj/GameView;->SetWH(IILcom/rainbow/FMaj/FMaj3;)V

    .line 56
    return-void

    .line 34
    .end local v1    # "my":Landroid/content/Intent;
    .end local v2    # "nH":I
    .end local v3    # "nW":I
    :cond_0
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 35
    .restart local v3    # "nW":I
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .restart local v2    # "nH":I
    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 97
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 98
    iget-object v0, p0, Lcom/rainbow/FMaj/FMaj3;->myMain:Lcom/rainbow/FMaj/GameView;

    invoke-virtual {v0}, Lcom/rainbow/FMaj/GameView;->myDes()V

    .line 99
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 101
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 106
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/rainbow/FMaj/FMaj3;->myMain:Lcom/rainbow/FMaj/GameView;

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->menuDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 107
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
