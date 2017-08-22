.class Lcom/adbert/b/g$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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
    .line 60
    iput-object p1, p0, Lcom/adbert/b/g$1;->a:Lcom/adbert/b/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/adbert/b/g$1;->a:Lcom/adbert/b/g;

    invoke-virtual {v0}, Lcom/adbert/b/g;->c()V

    .line 64
    iget-object v0, p0, Lcom/adbert/b/g$1;->a:Lcom/adbert/b/g;

    invoke-static {v0, p1}, Lcom/adbert/b/g;->a(Lcom/adbert/b/g;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 65
    iget-object v0, p0, Lcom/adbert/b/g$1;->a:Lcom/adbert/b/g;

    invoke-static {v0}, Lcom/adbert/b/g;->a(Lcom/adbert/b/g;)Lcom/adbert/b/g$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/adbert/b/g$1;->a:Lcom/adbert/b/g;

    invoke-static {v0}, Lcom/adbert/b/g;->a(Lcom/adbert/b/g;)Lcom/adbert/b/g$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/adbert/b/g$a;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 68
    :cond_0
    return-void
.end method
