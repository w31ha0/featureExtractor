.class public Lcom/wordloco/wordchallenge/view/AdDialog;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:I

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/wordloco/wordchallenge/view/AdDialog;->a:I

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/wordloco/wordchallenge/view/AdDialog;->b:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/wordloco/wordchallenge/view/AdDialog;->c:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 107
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 108
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 84
    const v0, 0x7f06002c

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/AdDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "InternalAd "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/wordloco/wordchallenge/view/AdDialog;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wordloco/wordchallenge/d/a;->a(Ljava/lang/String;)V

    .line 86
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "market://details?id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/wordloco/wordchallenge/view/AdDialog;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 86
    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/AdDialog;->startActivity(Landroid/content/Intent;)V

    .line 88
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/AdDialog;->finish()V

    .line 90
    :cond_0
    const v0, 0x7f06002e

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/AdDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 91
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/AdDialog;->finish()V

    .line 93
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    .line 35
    :try_start_0
    const-string v0, "android.os.AsyncTask"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/AdDialog;->setContentView(I)V

    .line 43
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/AdDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "appname"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wordloco/wordchallenge/view/AdDialog;->b:Ljava/lang/String;

    .line 44
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/AdDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "packagename"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wordloco/wordchallenge/view/AdDialog;->c:Ljava/lang/String;

    .line 46
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/AdDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "internal_ad_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/wordloco/wordchallenge/view/AdDialog;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_screen_1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "drawable"

    .line 48
    const-string v3, "com.wordloco.wordchallenge"

    .line 46
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 49
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/AdDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "internal_ad_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/wordloco/wordchallenge/view/AdDialog;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_screen_2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "drawable"

    .line 51
    const-string v4, "com.wordloco.wordchallenge"

    .line 49
    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 53
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/AdDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 54
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "internal_ad_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/wordloco/wordchallenge/view/AdDialog;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_title"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "string"

    .line 55
    const-string v5, "com.wordloco.wordchallenge"

    .line 53
    invoke-virtual {v0, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 57
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/AdDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 58
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "internal_ad_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/wordloco/wordchallenge/view/AdDialog;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_desc"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "string"

    .line 59
    const-string v6, "com.wordloco.wordchallenge"

    .line 57
    invoke-virtual {v0, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 61
    const v0, 0x7f060027

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/AdDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/AdDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 62
    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 61
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    const v0, 0x7f060028

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/AdDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/AdDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 65
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 64
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    const v0, 0x7f06002a

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/AdDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 68
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/AdDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    const v0, 0x7f06002b

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/AdDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 71
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/AdDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 73
    const v0, 0x7f06002e

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/AdDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    const v0, 0x7f06002c

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/AdDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    return-void

    .line 36
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 26
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 27
    const v0, 0x7f060026

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/AdDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 28
    const v0, 0x7f030010

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/AdDialog;->setContentView(I)V

    .line 29
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 97
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 98
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .prologue
    .line 103
    return-void
.end method
