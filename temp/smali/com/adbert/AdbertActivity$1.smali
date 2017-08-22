.class Lcom/adbert/AdbertActivity$1;
.super Lcom/adbert/a/c/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adbert/AdbertActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adbert/AdbertActivity;


# direct methods
.method constructor <init>(Lcom/adbert/AdbertActivity;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/adbert/AdbertActivity$1;->a:Lcom/adbert/AdbertActivity;

    invoke-direct {p0}, Lcom/adbert/a/c/a;-><init>()V

    return-void
.end method


# virtual methods
.method public callReturnEvent()V
    .locals 3

    .prologue
    .line 156
    iget-object v0, p0, Lcom/adbert/AdbertActivity$1;->a:Lcom/adbert/AdbertActivity;

    invoke-static {v0}, Lcom/adbert/AdbertActivity;->a(Lcom/adbert/AdbertActivity;)Lcom/adbert/a/a/a;

    move-result-object v0

    iget-boolean v0, v0, Lcom/adbert/a/a/a;->n:Z

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/adbert/AdbertActivity$1;->a:Lcom/adbert/AdbertActivity;

    invoke-static {v0}, Lcom/adbert/AdbertActivity;->a(Lcom/adbert/AdbertActivity;)Lcom/adbert/a/a/a;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/adbert/a/a/a;->n:Z

    .line 158
    iget-object v0, p0, Lcom/adbert/AdbertActivity$1;->a:Lcom/adbert/AdbertActivity;

    invoke-virtual {v0}, Lcom/adbert/AdbertActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/adbert/AdbertActivity$1;->a:Lcom/adbert/AdbertActivity;

    invoke-static {v1}, Lcom/adbert/AdbertActivity;->a(Lcom/adbert/AdbertActivity;)Lcom/adbert/a/a/a;

    move-result-object v1

    new-instance v2, Lcom/adbert/AdbertActivity$1$1;

    invoke-direct {v2, p0}, Lcom/adbert/AdbertActivity$1$1;-><init>(Lcom/adbert/AdbertActivity$1;)V

    invoke-static {v0, v1, v2}, Lcom/adbert/a/i;->a(Landroid/content/Context;Lcom/adbert/a/a/a;Ljava/lang/Runnable;)V

    .line 166
    :cond_0
    return-void
.end method

.method public closeAdView()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/adbert/AdbertActivity$1;->a:Lcom/adbert/AdbertActivity;

    invoke-static {v0}, Lcom/adbert/AdbertActivity;->i(Lcom/adbert/AdbertActivity;)V

    .line 153
    return-void
.end method

.method public closeVideo()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/adbert/AdbertActivity$1;->a:Lcom/adbert/AdbertActivity;

    invoke-static {v0}, Lcom/adbert/AdbertActivity;->i(Lcom/adbert/AdbertActivity;)V

    .line 149
    return-void
.end method

.method public closeWeb()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/adbert/AdbertActivity$1;->a:Lcom/adbert/AdbertActivity;

    invoke-static {v0}, Lcom/adbert/AdbertActivity;->e(Lcom/adbert/AdbertActivity;)I

    move-result v0

    sget-object v1, Lcom/adbert/a/b/a;->h:Lcom/adbert/a/b/a;

    invoke-virtual {v1}, Lcom/adbert/a/b/a;->a()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/adbert/AdbertActivity$1;->finish()V

    .line 145
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/adbert/AdbertActivity$1;->a:Lcom/adbert/AdbertActivity;

    invoke-static {v0}, Lcom/adbert/AdbertActivity;->g(Lcom/adbert/AdbertActivity;)Lcom/adbert/b/c;

    move-result-object v0

    iget-object v1, p0, Lcom/adbert/AdbertActivity$1;->a:Lcom/adbert/AdbertActivity;

    invoke-static {v1}, Lcom/adbert/AdbertActivity;->f(Lcom/adbert/AdbertActivity;)Lcom/adbert/b/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adbert/b/c;->removeView(Landroid/view/View;)V

    .line 142
    iget-object v0, p0, Lcom/adbert/AdbertActivity$1;->a:Lcom/adbert/AdbertActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adbert/AdbertActivity;->a(Lcom/adbert/AdbertActivity;Lcom/adbert/b/a;)Lcom/adbert/b/a;

    .line 143
    iget-object v0, p0, Lcom/adbert/AdbertActivity$1;->a:Lcom/adbert/AdbertActivity;

    invoke-static {v0}, Lcom/adbert/AdbertActivity;->h(Lcom/adbert/AdbertActivity;)V

    goto :goto_0
.end method

.method public endingCardAction(I)V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/adbert/AdbertActivity$1;->a:Lcom/adbert/AdbertActivity;

    invoke-static {v0, p1}, Lcom/adbert/AdbertActivity;->a(Lcom/adbert/AdbertActivity;I)V

    .line 135
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/adbert/AdbertActivity$1;->a:Lcom/adbert/AdbertActivity;

    invoke-virtual {v0}, Lcom/adbert/AdbertActivity;->finish()V

    .line 131
    return-void
.end method

.method public setLogo(Landroid/view/ViewGroup;Z)V
    .locals 6

    .prologue
    .line 123
    iget-object v0, p0, Lcom/adbert/AdbertActivity$1;->a:Lcom/adbert/AdbertActivity;

    invoke-static {v0}, Lcom/adbert/AdbertActivity;->a(Lcom/adbert/AdbertActivity;)Lcom/adbert/a/a/a;

    move-result-object v0

    iget-boolean v0, v0, Lcom/adbert/a/a/a;->B:Z

    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/adbert/AdbertActivity$1;->a:Lcom/adbert/AdbertActivity;

    invoke-static {v0}, Lcom/adbert/AdbertActivity;->b(Lcom/adbert/AdbertActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adbert/AdbertActivity$1;->a:Lcom/adbert/AdbertActivity;

    invoke-static {v0}, Lcom/adbert/AdbertActivity;->c(Lcom/adbert/AdbertActivity;)F

    move-result v0

    .line 125
    :goto_0
    iget-object v1, p0, Lcom/adbert/AdbertActivity$1;->a:Lcom/adbert/AdbertActivity;

    invoke-virtual {v1}, Lcom/adbert/AdbertActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    float-to-double v2, v0

    sget-wide v4, Lcom/adbert/a/i;->e:D

    mul-double/2addr v2, v4

    double-to-int v0, v2

    invoke-static {v1, v0, p1, p2}, Lcom/adbert/a/i;->a(Landroid/content/Context;ILandroid/view/ViewGroup;Z)V

    .line 127
    :cond_0
    return-void

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/adbert/AdbertActivity$1;->a:Lcom/adbert/AdbertActivity;

    invoke-static {v0}, Lcom/adbert/AdbertActivity;->d(Lcom/adbert/AdbertActivity;)F

    move-result v0

    goto :goto_0
.end method
