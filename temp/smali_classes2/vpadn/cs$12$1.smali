.class Lvpadn/cs$12$1;
.super Ljava/lang/Object;
.source "VideoManager.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvpadn/cs$12;->onPrepared(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lvpadn/cs$12;


# direct methods
.method constructor <init>(Lvpadn/cs$12;)V
    .locals 0

    .prologue
    .line 501
    iput-object p1, p0, Lvpadn/cs$12$1;->a:Lvpadn/cs$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 2

    .prologue
    .line 504
    iget-object v0, p0, Lvpadn/cs$12$1;->a:Lvpadn/cs$12;

    iget-object v0, v0, Lvpadn/cs$12;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->f(Lvpadn/cs;)Lcom/vpadn/widget/VpadnActivity;

    move-result-object v0

    new-instance v1, Lvpadn/cs$12$1$1;

    invoke-direct {v1, p0}, Lvpadn/cs$12$1$1;-><init>(Lvpadn/cs$12$1;)V

    invoke-virtual {v0, v1}, Lcom/vpadn/widget/VpadnActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 510
    return-void
.end method
