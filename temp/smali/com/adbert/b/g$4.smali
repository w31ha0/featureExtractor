.class Lcom/adbert/b/g$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adbert/b/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adbert/b/g;


# direct methods
.method constructor <init>(Lcom/adbert/b/g;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/adbert/b/g$4;->a:Lcom/adbert/b/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 95
    iget-object v0, p0, Lcom/adbert/b/g$4;->a:Lcom/adbert/b/g;

    invoke-static {v0}, Lcom/adbert/b/g;->a(Lcom/adbert/b/g;)Lcom/adbert/b/g$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/adbert/b/g$4;->a:Lcom/adbert/b/g;

    invoke-static {v0}, Lcom/adbert/b/g;->a(Lcom/adbert/b/g;)Lcom/adbert/b/g$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/adbert/b/g$a;->onSeekChange()V

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/adbert/b/g$4;->a:Lcom/adbert/b/g;

    invoke-static {v0}, Lcom/adbert/b/g;->b(Lcom/adbert/b/g;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 99
    return-void
.end method
