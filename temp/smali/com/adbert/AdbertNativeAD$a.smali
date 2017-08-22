.class Lcom/adbert/AdbertNativeAD$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adbert/AdbertNativeAD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/adbert/AdbertNativeAD;


# direct methods
.method constructor <init>(Lcom/adbert/AdbertNativeAD;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/adbert/AdbertNativeAD$a;->a:Lcom/adbert/AdbertNativeAD;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    .line 106
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 107
    iget v0, p1, Landroid/os/Message;->what:I

    sget-object v1, Lcom/adbert/a/b/a;->c:Lcom/adbert/a/b/a;

    invoke-virtual {v1}, Lcom/adbert/a/b/a;->a()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 108
    iget-object v0, p0, Lcom/adbert/AdbertNativeAD$a;->a:Lcom/adbert/AdbertNativeAD;

    invoke-static {v0}, Lcom/adbert/AdbertNativeAD;->b(Lcom/adbert/AdbertNativeAD;)V

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    sget-object v1, Lcom/adbert/a/b/a;->b:Lcom/adbert/a/b/a;

    invoke-virtual {v1}, Lcom/adbert/a/b/a;->a()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 110
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lcom/adbert/a/b/d;->e:Lcom/adbert/a/b/d;

    invoke-virtual {v1}, Lcom/adbert/a/b/d;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 111
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    sget-object v2, Lcom/adbert/a/b/d;->f:Lcom/adbert/a/b/d;

    invoke-virtual {v2}, Lcom/adbert/a/b/d;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 112
    const/16 v2, 0xc8

    if-eq v0, v2, :cond_2

    .line 113
    iget-object v0, p0, Lcom/adbert/AdbertNativeAD$a;->a:Lcom/adbert/AdbertNativeAD;

    sget-object v1, Lcom/adbert/a/b/g;->g:Lcom/adbert/a/b/g;

    invoke-virtual {v1}, Lcom/adbert/a/b/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adbert/AdbertNativeAD;->b(Lcom/adbert/AdbertNativeAD;Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 115
    iget-object v0, p0, Lcom/adbert/AdbertNativeAD$a;->a:Lcom/adbert/AdbertNativeAD;

    sget-object v1, Lcom/adbert/a/b/g;->h:Lcom/adbert/a/b/g;

    invoke-virtual {v1}, Lcom/adbert/a/b/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adbert/AdbertNativeAD;->b(Lcom/adbert/AdbertNativeAD;Ljava/lang/String;)V

    goto :goto_0

    .line 116
    :cond_3
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/adbert/AdbertNativeAD$a;->a:Lcom/adbert/AdbertNativeAD;

    new-instance v2, Lcom/adbert/a/f;

    iget-object v3, p0, Lcom/adbert/AdbertNativeAD$a;->a:Lcom/adbert/AdbertNativeAD;

    invoke-static {v3}, Lcom/adbert/AdbertNativeAD;->c(Lcom/adbert/AdbertNativeAD;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "native_normal"

    invoke-direct {v2, v3, v1, v4}, Lcom/adbert/a/f;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/adbert/a/f;->a()Lcom/adbert/a/a/b;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adbert/AdbertNativeAD;->a(Lcom/adbert/AdbertNativeAD;Lcom/adbert/a/a/b;)Lcom/adbert/a/a/b;

    .line 118
    sget-boolean v0, Lcom/adbert/a/i;->d:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/adbert/AdbertNativeAD$a;->a:Lcom/adbert/AdbertNativeAD;

    invoke-static {v0}, Lcom/adbert/AdbertNativeAD;->d(Lcom/adbert/AdbertNativeAD;)Lcom/adbert/a/a/b;

    move-result-object v0

    iget-object v0, v0, Lcom/adbert/a/a/b;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/adbert/AdbertNativeAD$a;->a:Lcom/adbert/AdbertNativeAD;

    iget-object v0, v0, Lcom/adbert/AdbertNativeAD;->a:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 119
    iget-object v0, p0, Lcom/adbert/AdbertNativeAD$a;->a:Lcom/adbert/AdbertNativeAD;

    iget-object v1, p0, Lcom/adbert/AdbertNativeAD$a;->a:Lcom/adbert/AdbertNativeAD;

    iget-object v1, v1, Lcom/adbert/AdbertNativeAD;->a:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/adbert/AdbertNativeAD;->a(Lcom/adbert/AdbertNativeAD;Landroid/view/View;)V

    .line 121
    :cond_4
    iget-object v0, p0, Lcom/adbert/AdbertNativeAD$a;->a:Lcom/adbert/AdbertNativeAD;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/adbert/AdbertNativeAD;->a(Lcom/adbert/AdbertNativeAD;Z)Z

    .line 122
    iget-object v0, p0, Lcom/adbert/AdbertNativeAD$a;->a:Lcom/adbert/AdbertNativeAD;

    const-string v1, "Success"

    invoke-static {v0, v1}, Lcom/adbert/AdbertNativeAD;->c(Lcom/adbert/AdbertNativeAD;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
