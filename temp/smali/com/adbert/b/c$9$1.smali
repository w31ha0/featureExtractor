.class Lcom/adbert/b/c$9$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adbert/b/c$9;->onPrepared(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adbert/b/c$9;


# direct methods
.method constructor <init>(Lcom/adbert/b/c$9;)V
    .locals 0

    .prologue
    .line 485
    iput-object p1, p0, Lcom/adbert/b/c$9$1;->a:Lcom/adbert/b/c$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/adbert/b/c$9$1;->a:Lcom/adbert/b/c$9;

    iget-object v0, v0, Lcom/adbert/b/c$9;->a:Lcom/adbert/b/c;

    invoke-static {v0}, Lcom/adbert/b/c;->h(Lcom/adbert/b/c;)Lcom/adbert/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adbert/b/g;->start()V

    .line 490
    return-void
.end method
