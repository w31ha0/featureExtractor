.class public Lcom/rainbow/FMaj/FMaj;
.super Landroid/app/Activity;
.source "FMaj.java"


# instance fields
.field private myMain:Lcom/rainbow/FMaj/MainView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rainbow/FMaj/FMaj;->myMain:Lcom/rainbow/FMaj/MainView;

    .line 13
    return-void
.end method


# virtual methods
.method public GetMoney()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/16 v4, 0x2710

    .line 61
    invoke-virtual {p0}, Lcom/rainbow/FMaj/FMaj;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.rainbow.myFMaj"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 62
    .local v0, "settings":Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/rainbow/FMaj/FMaj;->myMain:Lcom/rainbow/FMaj/MainView;

    iget-object v1, v1, Lcom/rainbow/FMaj/MainView;->JiaoMoney:[I

    const-string v2, "JiaoMoney0"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    aput v2, v1, v3

    .line 63
    iget-object v1, p0, Lcom/rainbow/FMaj/FMaj;->myMain:Lcom/rainbow/FMaj/MainView;

    iget-object v1, v1, Lcom/rainbow/FMaj/MainView;->JiaoMoney:[I

    const/4 v2, 0x1

    const-string v3, "JiaoMoney1"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    aput v3, v1, v2

    .line 64
    iget-object v1, p0, Lcom/rainbow/FMaj/FMaj;->myMain:Lcom/rainbow/FMaj/MainView;

    iget-object v1, v1, Lcom/rainbow/FMaj/MainView;->JiaoMoney:[I

    const/4 v2, 0x2

    const-string v3, "JiaoMoney2"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    aput v3, v1, v2

    .line 65
    iget-object v1, p0, Lcom/rainbow/FMaj/FMaj;->myMain:Lcom/rainbow/FMaj/MainView;

    iget-object v1, v1, Lcom/rainbow/FMaj/MainView;->JiaoMoney:[I

    const/4 v2, 0x3

    const-string v3, "JiaoMoney3"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    aput v3, v1, v2

    .line 66
    iget-object v1, p0, Lcom/rainbow/FMaj/FMaj;->myMain:Lcom/rainbow/FMaj/MainView;

    iget-object v1, v1, Lcom/rainbow/FMaj/MainView;->JiaoMoney:[I

    const/4 v2, 0x4

    const-string v3, "JiaoMoney4"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    aput v3, v1, v2

    .line 67
    iget-object v1, p0, Lcom/rainbow/FMaj/FMaj;->myMain:Lcom/rainbow/FMaj/MainView;

    iget-object v1, v1, Lcom/rainbow/FMaj/MainView;->JiaoMoney:[I

    const/4 v2, 0x5

    const-string v3, "JiaoMoney5"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    aput v3, v1, v2

    .line 68
    iget-object v1, p0, Lcom/rainbow/FMaj/FMaj;->myMain:Lcom/rainbow/FMaj/MainView;

    iget-object v1, v1, Lcom/rainbow/FMaj/MainView;->JiaoMoney:[I

    const/4 v2, 0x6

    const-string v3, "JiaoMoney6"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    aput v3, v1, v2

    .line 69
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 52
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/rainbow/FMaj/FMaj;->GetMoney()V

    .line 55
    iget-object v0, p0, Lcom/rainbow/FMaj/FMaj;->myMain:Lcom/rainbow/FMaj/MainView;

    invoke-virtual {v0}, Lcom/rainbow/FMaj/MainView;->invalidate()V

    .line 57
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v6, 0x400

    const/4 v5, 0x1

    .line 20
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 25
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/rainbow/FMaj/FMaj;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 26
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v3, v4, :cond_0

    .line 28
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 29
    .local v2, "nW":I
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 30
    .local v1, "nH":I
    invoke-virtual {p0, v5}, Lcom/rainbow/FMaj/FMaj;->setRequestedOrientation(I)V

    .line 38
    :goto_0
    invoke-virtual {p0, v5}, Lcom/rainbow/FMaj/FMaj;->requestWindowFeature(I)Z

    .line 39
    invoke-virtual {p0}, Lcom/rainbow/FMaj/FMaj;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/view/Window;->setFlags(II)V

    .line 40
    const v3, 0x7f030001

    invoke-virtual {p0, v3}, Lcom/rainbow/FMaj/FMaj;->setContentView(I)V

    .line 42
    const v3, 0x7f060001

    invoke-virtual {p0, v3}, Lcom/rainbow/FMaj/FMaj;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/rainbow/FMaj/MainView;

    iput-object v3, p0, Lcom/rainbow/FMaj/FMaj;->myMain:Lcom/rainbow/FMaj/MainView;

    .line 44
    invoke-virtual {p0}, Lcom/rainbow/FMaj/FMaj;->GetMoney()V

    .line 46
    iget-object v3, p0, Lcom/rainbow/FMaj/FMaj;->myMain:Lcom/rainbow/FMaj/MainView;

    invoke-virtual {v3, v2, v1, p0}, Lcom/rainbow/FMaj/MainView;->SetWH(IILcom/rainbow/FMaj/FMaj;)V

    .line 47
    return-void

    .line 34
    .end local v1    # "nH":I
    .end local v2    # "nW":I
    :cond_0
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 35
    .restart local v2    # "nW":I
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .restart local v1    # "nH":I
    goto :goto_0
.end method
