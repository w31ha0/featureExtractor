.class Lcom/adbert/AdbertADView$12;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adbert/AdbertADView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adbert/AdbertADView;


# direct methods
.method constructor <init>(Lcom/adbert/AdbertADView;)V
    .locals 0

    .prologue
    .line 947
    iput-object p1, p0, Lcom/adbert/AdbertADView$12;->a:Lcom/adbert/AdbertADView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 950
    const-string v0, "action"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 951
    if-eqz v0, :cond_0

    .line 952
    const-string v1, "close"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 953
    const-string v0, "type"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 954
    const-string v1, "seekTo"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 955
    const-string v2, "returned"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 956
    iget-object v3, p0, Lcom/adbert/AdbertADView$12;->a:Lcom/adbert/AdbertADView;

    invoke-static {v3}, Lcom/adbert/AdbertADView;->b(Lcom/adbert/AdbertADView;)Lcom/adbert/a/a/a;

    move-result-object v3

    iput-boolean v2, v3, Lcom/adbert/a/a/a;->n:Z

    .line 957
    iget-object v2, p0, Lcom/adbert/AdbertADView$12;->a:Lcom/adbert/AdbertADView;

    invoke-static {v2, v4}, Lcom/adbert/AdbertADView;->c(Lcom/adbert/AdbertADView;Z)Z

    .line 958
    sget-object v2, Lcom/adbert/a/b/a;->i:Lcom/adbert/a/b/a;

    invoke-virtual {v2}, Lcom/adbert/a/b/a;->a()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 959
    iget-object v0, p0, Lcom/adbert/AdbertADView$12;->a:Lcom/adbert/AdbertADView;

    invoke-static {v0, v1}, Lcom/adbert/AdbertADView;->e(Lcom/adbert/AdbertADView;I)I

    .line 960
    iget-object v0, p0, Lcom/adbert/AdbertADView$12;->a:Lcom/adbert/AdbertADView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/adbert/AdbertADView;->d(Lcom/adbert/AdbertADView;I)V

    .line 984
    :cond_0
    :goto_0
    return-void

    .line 971
    :cond_1
    const-string v1, "next"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 972
    iget-object v0, p0, Lcom/adbert/AdbertADView$12;->a:Lcom/adbert/AdbertADView;

    invoke-static {v0, v4}, Lcom/adbert/AdbertADView;->c(Lcom/adbert/AdbertADView;Z)Z

    .line 976
    iget-object v0, p0, Lcom/adbert/AdbertADView$12;->a:Lcom/adbert/AdbertADView;

    invoke-static {v0}, Lcom/adbert/AdbertADView;->n(Lcom/adbert/AdbertADView;)Lcom/adbert/AdbertListener;

    move-result-object v0

    instance-of v0, v0, Lcom/adbert/a/c/b;

    if-eqz v0, :cond_0

    .line 977
    iget-object v0, p0, Lcom/adbert/AdbertADView$12;->a:Lcom/adbert/AdbertADView;

    invoke-static {v0}, Lcom/adbert/AdbertADView;->n(Lcom/adbert/AdbertADView;)Lcom/adbert/AdbertListener;

    move-result-object v0

    check-cast v0, Lcom/adbert/a/c/b;

    invoke-virtual {v0}, Lcom/adbert/a/c/b;->a()V

    goto :goto_0

    .line 979
    :cond_2
    const-string v1, "updateSeekTo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 980
    const-string v0, "seekTo"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 981
    iget-object v1, p0, Lcom/adbert/AdbertADView$12;->a:Lcom/adbert/AdbertADView;

    invoke-static {v1, v0}, Lcom/adbert/AdbertADView;->e(Lcom/adbert/AdbertADView;I)I

    goto :goto_0
.end method
