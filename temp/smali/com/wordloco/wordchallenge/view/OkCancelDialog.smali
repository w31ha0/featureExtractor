.class public Lcom/wordloco/wordchallenge/view/OkCancelDialog;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:Ljava/lang/String;

.field b:Z

.field c:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/wordloco/wordchallenge/view/OkCancelDialog;->a:Ljava/lang/String;

    .line 30
    iput-boolean v1, p0, Lcom/wordloco/wordchallenge/view/OkCancelDialog;->b:Z

    .line 31
    iput-boolean v1, p0, Lcom/wordloco/wordchallenge/view/OkCancelDialog;->c:Z

    .line 27
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 172
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    .prologue
    const v4, 0x7f0600b4

    const/high16 v7, 0x20000

    const/4 v3, 0x0

    const v6, 0x7f0600b6

    const v5, 0x7f06002c

    .line 93
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/OkCancelDialog;->a:Ljava/lang/String;

    const-string v1, "Rate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    iget-boolean v0, p0, Lcom/wordloco/wordchallenge/view/OkCancelDialog;->b:Z

    if-eqz v0, :cond_6

    .line 96
    invoke-virtual {p0, v5}, Lcom/wordloco/wordchallenge/view/OkCancelDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    .line 98
    invoke-virtual {p0, v4}, Lcom/wordloco/wordchallenge/view/OkCancelDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 99
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/OkCancelDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 100
    const v2, 0x7f090094

    .line 99
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    invoke-virtual {p0, v4}, Lcom/wordloco/wordchallenge/view/OkCancelDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 103
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/OkCancelDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x7f040000

    .line 102
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 101
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 104
    iput-boolean v3, p0, Lcom/wordloco/wordchallenge/view/OkCancelDialog;->b:Z

    .line 105
    const-string v0, "Rate +Enjoy"

    invoke-static {v0}, Lcom/wordloco/wordchallenge/d/a;->a(Ljava/lang/String;)V

    .line 107
    :cond_0
    invoke-virtual {p0, v6}, Lcom/wordloco/wordchallenge/view/OkCancelDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    .line 108
    invoke-static {v3}, Lcom/wordloco/wordchallenge/d/i;->c(Z)V

    .line 109
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/OkCancelDialog;->finish()V

    .line 110
    const-string v0, "Rate -Enjoy"

    invoke-static {v0}, Lcom/wordloco/wordchallenge/d/a;->a(Ljava/lang/String;)V

    .line 131
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/OkCancelDialog;->a:Ljava/lang/String;

    const-string v1, "Buy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 132
    invoke-virtual {p0, v5}, Lcom/wordloco/wordchallenge/view/OkCancelDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 135
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/OkCancelDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/wordloco/wordchallenge/view/Game;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 136
    const-string v1, "Source"

    iget-object v2, p0, Lcom/wordloco/wordchallenge/view/OkCancelDialog;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    invoke-virtual {v0, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 138
    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/OkCancelDialog;->startActivity(Landroid/content/Intent;)V

    .line 139
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/OkCancelDialog;->finish()V

    .line 143
    :cond_2
    invoke-virtual {p0, v6}, Lcom/wordloco/wordchallenge/view/OkCancelDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 144
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/OkCancelDialog;->finish()V

    .line 148
    :cond_3
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/OkCancelDialog;->a:Ljava/lang/String;

    const-string v1, "Restart"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 149
    invoke-virtual {p0, v5}, Lcom/wordloco/wordchallenge/view/OkCancelDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_4

    .line 151
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/OkCancelDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/wordloco/wordchallenge/view/Game;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 152
    const-string v1, "Source"

    iget-object v2, p0, Lcom/wordloco/wordchallenge/view/OkCancelDialog;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    invoke-virtual {v0, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 154
    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/OkCancelDialog;->startActivity(Landroid/content/Intent;)V

    .line 155
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/OkCancelDialog;->finish()V

    .line 157
    :cond_4
    invoke-virtual {p0, v6}, Lcom/wordloco/wordchallenge/view/OkCancelDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_5

    .line 158
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/OkCancelDialog;->finish()V

    .line 162
    :cond_5
    return-void

    .line 113
    :cond_6
    invoke-virtual {p0, v5}, Lcom/wordloco/wordchallenge/view/OkCancelDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-ne p1, v0, :cond_7

    .line 114
    invoke-static {v3}, Lcom/wordloco/wordchallenge/d/i;->c(Z)V

    .line 115
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/OkCancelDialog;->finish()V

    .line 116
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "market://details?id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/OkCancelDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 119
    const v4, 0x7f0900a4

    .line 118
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 117
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 116
    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/OkCancelDialog;->startActivity(Landroid/content/Intent;)V

    .line 120
    const-string v0, "Rate +Rate"

    invoke-static {v0}, Lcom/wordloco/wordchallenge/d/a;->a(Ljava/lang/String;)V

    .line 122
    :cond_7
    invoke-virtual {p0, v6}, Lcom/wordloco/wordchallenge/view/OkCancelDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    .line 123
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->k()V

    .line 124
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/OkCancelDialog;->finish()V

    .line 125
    const-string v0, "Rate -Rate"

    invoke-static {v0}, Lcom/wordloco/wordchallenge/d/a;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const v5, 0x7f0600b6

    const v4, 0x7f0600b4

    const v3, 0x7f06002c

    .line 46
    :try_start_0
    const-string v0, "android.os.AsyncTask"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/OkCancelDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "textToShare"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 53
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/OkCancelDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "source"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wordloco/wordchallenge/view/OkCancelDialog;->a:Ljava/lang/String;

    .line 54
    const v0, 0x7f030018

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/OkCancelDialog;->setContentView(I)V

    .line 56
    invoke-virtual {p0, v4}, Lcom/wordloco/wordchallenge/view/OkCancelDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    invoke-virtual {p0, v3}, Lcom/wordloco/wordchallenge/view/OkCancelDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    invoke-virtual {p0, v5}, Lcom/wordloco/wordchallenge/view/OkCancelDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    invoke-virtual {p0, v4}, Lcom/wordloco/wordchallenge/view/OkCancelDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 62
    const-string v1, "#1C1C1C"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 61
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 64
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/OkCancelDialog;->a:Ljava/lang/String;

    const-string v1, "Rate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p0, v3}, Lcom/wordloco/wordchallenge/view/OkCancelDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 66
    const v1, 0x7f090095

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 67
    invoke-virtual {p0, v5}, Lcom/wordloco/wordchallenge/view/OkCancelDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 68
    const v1, 0x7f090096

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 69
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 70
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/OkCancelDialog;->setFinishOnTouchOutside(Z)V

    .line 74
    :cond_0
    return-void

    .line 47
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 35
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 37
    const v0, 0x7f0600b3

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/OkCancelDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 38
    const v0, 0x7f030010

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/OkCancelDialog;->setContentView(I)V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wordloco/wordchallenge/view/OkCancelDialog;->a:Ljava/lang/String;

    .line 40
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 166
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 168
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4

    .prologue
    const v3, 0x7f0600b4

    .line 78
    iget-boolean v0, p0, Lcom/wordloco/wordchallenge/view/OkCancelDialog;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/OkCancelDialog;->a:Ljava/lang/String;

    const-string v1, "Rate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {p0, v3}, Lcom/wordloco/wordchallenge/view/OkCancelDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 81
    const-string v1, "#1C1C1C"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 80
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 82
    invoke-virtual {p0, v3}, Lcom/wordloco/wordchallenge/view/OkCancelDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/OkCancelDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 83
    const v2, 0x7f090093

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    invoke-virtual {p0, v3}, Lcom/wordloco/wordchallenge/view/OkCancelDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 85
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/OkCancelDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 86
    const/high16 v2, 0x7f040000

    .line 85
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 84
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wordloco/wordchallenge/view/OkCancelDialog;->c:Z

    .line 89
    :cond_0
    return-void
.end method
