.class public Lcom/wordloco/wordchallenge/view/TestAmazon;
.super Lcom/google/example/games/basegameutils/BaseGameActivity;
.source "SourceFile"


# instance fields
.field private a:Lcom/amazon/device/ads/AdLayout;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/google/example/games/basegameutils/BaseGameActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/wordloco/wordchallenge/view/TestAmazon;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/TestAmazon;->d:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic b(Lcom/wordloco/wordchallenge/view/TestAmazon;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/TestAmazon;->b:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic c(Lcom/wordloco/wordchallenge/view/TestAmazon;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/TestAmazon;->c:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic d(Lcom/wordloco/wordchallenge/view/TestAmazon;)Lcom/amazon/device/ads/AdLayout;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/TestAmazon;->a:Lcom/amazon/device/ads/AdLayout;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/TestAmazon;->a:Lcom/amazon/device/ads/AdLayout;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdLayout;->loadAd()Z

    .line 134
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/TestAmazon;->a:Lcom/amazon/device/ads/AdLayout;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdLayout;->showAd()Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    const-string v0, "SimpleAdSample"

    const-string v1, "The ad was not shown. Check the logcat for more information."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/TestAmazon;->c:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 144
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/TestAmazon;->b:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 145
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 45
    invoke-super {p0, p1}, Lcom/google/example/games/basegameutils/BaseGameActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v0, 0x7f030017

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/TestAmazon;->setContentView(I)V

    .line 47
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/TestAmazon;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pasando 1"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 50
    invoke-static {v3}, Lcom/amazon/device/ads/AdRegistration;->enableLogging(Z)V

    .line 52
    invoke-static {v3}, Lcom/amazon/device/ads/AdRegistration;->enableTesting(Z)V

    .line 54
    const v0, 0x7f0600af

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/TestAmazon;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/ads/AdLayout;

    iput-object v0, p0, Lcom/wordloco/wordchallenge/view/TestAmazon;->a:Lcom/amazon/device/ads/AdLayout;

    .line 55
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/TestAmazon;->a:Lcom/amazon/device/ads/AdLayout;

    new-instance v1, Lcom/wordloco/wordchallenge/view/ar;

    invoke-direct {v1, p0}, Lcom/wordloco/wordchallenge/view/ar;-><init>(Lcom/wordloco/wordchallenge/view/TestAmazon;)V

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdLayout;->setListener(Lcom/amazon/device/ads/AdListener;)V

    .line 58
    :try_start_0
    const-string v0, "36eccea9de8f4218a107d1042c49c0d3"

    invoke-static {v0}, Lcom/amazon/device/ads/AdRegistration;->setAppKey(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    const v0, 0x7f0600b0

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/TestAmazon;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/wordloco/wordchallenge/view/TestAmazon;->d:Landroid/widget/CheckBox;

    .line 68
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/TestAmazon;->d:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/TestAmazon;->a:Lcom/amazon/device/ads/AdLayout;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdLayout;->disableAutoShow()V

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/TestAmazon;->d:Landroid/widget/CheckBox;

    new-instance v1, Lcom/wordloco/wordchallenge/view/ao;

    invoke-direct {v1, p0}, Lcom/wordloco/wordchallenge/view/ao;-><init>(Lcom/wordloco/wordchallenge/view/TestAmazon;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 87
    const v0, 0x7f0600b1

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/TestAmazon;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wordloco/wordchallenge/view/TestAmazon;->c:Landroid/widget/Button;

    .line 88
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/TestAmazon;->c:Landroid/widget/Button;

    new-instance v1, Lcom/wordloco/wordchallenge/view/ap;

    invoke-direct {v1, p0}, Lcom/wordloco/wordchallenge/view/ap;-><init>(Lcom/wordloco/wordchallenge/view/TestAmazon;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    const v0, 0x7f0600b2

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/TestAmazon;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wordloco/wordchallenge/view/TestAmazon;->b:Landroid/widget/Button;

    .line 96
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/TestAmazon;->b:Landroid/widget/Button;

    new-instance v1, Lcom/wordloco/wordchallenge/view/aq;

    invoke-direct {v1, p0}, Lcom/wordloco/wordchallenge/view/aq;-><init>(Lcom/wordloco/wordchallenge/view/TestAmazon;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    const-string v1, "SimpleAdSample"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IllegalArgumentException thrown: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onSignInFailed()V
    .locals 0

    .prologue
    .line 35
    return-void
.end method

.method public onSignInSucceeded()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method
