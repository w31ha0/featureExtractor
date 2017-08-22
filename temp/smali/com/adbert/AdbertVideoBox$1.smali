.class Lcom/adbert/AdbertVideoBox$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adbert/a/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adbert/AdbertVideoBox;->loadAD()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adbert/AdbertVideoBox;


# direct methods
.method constructor <init>(Lcom/adbert/AdbertVideoBox;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/adbert/AdbertVideoBox$1;->a:Lcom/adbert/AdbertVideoBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 97
    iget-object v0, p0, Lcom/adbert/AdbertVideoBox$1;->a:Lcom/adbert/AdbertVideoBox;

    invoke-static {v0, p1}, Lcom/adbert/AdbertVideoBox;->a(Lcom/adbert/AdbertVideoBox;Ljava/lang/String;)Ljava/lang/String;

    .line 98
    iget-object v0, p0, Lcom/adbert/AdbertVideoBox$1;->a:Lcom/adbert/AdbertVideoBox;

    invoke-static {v0}, Lcom/adbert/AdbertVideoBox;->a(Lcom/adbert/AdbertVideoBox;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    move-object v6, v0

    .line 99
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v0, Lcom/adbert/a/h;

    iget-object v1, p0, Lcom/adbert/AdbertVideoBox$1;->a:Lcom/adbert/AdbertVideoBox;

    invoke-virtual {v1}, Lcom/adbert/AdbertVideoBox;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/adbert/a/h;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/adbert/AdbertVideoBox$1;->a:Lcom/adbert/AdbertVideoBox;

    invoke-static {v1}, Lcom/adbert/AdbertVideoBox;->b(Lcom/adbert/AdbertVideoBox;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/adbert/AdbertVideoBox$1;->a:Lcom/adbert/AdbertVideoBox;

    invoke-static {v2}, Lcom/adbert/AdbertVideoBox;->c(Lcom/adbert/AdbertVideoBox;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const-string v4, "native_video"

    iget-object v5, p0, Lcom/adbert/AdbertVideoBox$1;->a:Lcom/adbert/AdbertVideoBox;

    .line 100
    invoke-static {v5}, Lcom/adbert/AdbertVideoBox;->d(Lcom/adbert/AdbertVideoBox;)Ljava/lang/String;

    move-result-object v5

    .line 99
    invoke-virtual/range {v0 .. v5}, Lcom/adbert/a/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/adbert/a/b/d;->A:Lcom/adbert/a/b/d;

    iget-object v2, p0, Lcom/adbert/AdbertVideoBox$1;->a:Lcom/adbert/AdbertVideoBox;

    .line 100
    invoke-static {v2}, Lcom/adbert/AdbertVideoBox;->e(Lcom/adbert/AdbertVideoBox;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adbert/a/b/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 101
    invoke-static {}, Lcom/adbert/a/b;->a()Lcom/adbert/a/b;

    move-result-object v1

    iget-object v2, p0, Lcom/adbert/AdbertVideoBox$1;->a:Lcom/adbert/AdbertVideoBox;

    invoke-static {v2}, Lcom/adbert/AdbertVideoBox;->f(Lcom/adbert/AdbertVideoBox;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/adbert/a/b/d;->ah:Lcom/adbert/a/b/d;

    invoke-virtual {v3}, Lcom/adbert/a/b/d;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/adbert/AdbertVideoBox$1$1;

    invoke-direct {v4, p0}, Lcom/adbert/AdbertVideoBox$1$1;-><init>(Lcom/adbert/AdbertVideoBox$1;)V

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/adbert/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/adbert/a/b$c;)Lcom/adbert/a/c;

    .line 107
    return-void

    .line 98
    :cond_0
    const-string v0, "&testMode=1"

    move-object v6, v0

    goto :goto_0
.end method
