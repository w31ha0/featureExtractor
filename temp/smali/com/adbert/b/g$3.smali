.class Lcom/adbert/b/g$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adbert/b/g;->setUrl(Ljava/lang/String;)V
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
    .line 79
    iput-object p1, p0, Lcom/adbert/b/g$3;->a:Lcom/adbert/b/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/adbert/b/g$3;->a:Lcom/adbert/b/g;

    invoke-static {v0}, Lcom/adbert/b/g;->a(Lcom/adbert/b/g;)Lcom/adbert/b/g$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/adbert/b/g$3;->a:Lcom/adbert/b/g;

    invoke-static {v0}, Lcom/adbert/b/g;->a(Lcom/adbert/b/g;)Lcom/adbert/b/g$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/adbert/b/g$a;->OnCompletion()V

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/adbert/b/g$3;->a:Lcom/adbert/b/g;

    invoke-static {v0}, Lcom/adbert/b/g;->b(Lcom/adbert/b/g;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/adbert/b/g$3;->a:Lcom/adbert/b/g;

    iget-object v1, v1, Lcom/adbert/b/g;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 87
    return-void
.end method
