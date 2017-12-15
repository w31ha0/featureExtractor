.class public final Lcom/creativemobi/engine/ah;
.super Ljava/lang/Object;
.source "MusicPlayer.java"


# static fields
.field private static a:Landroid/media/MediaPlayer;

.field private static b:Z

.field private static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x1

    sput-boolean v0, Lcom/creativemobi/engine/ah;->b:Z

    .line 12
    const-string v0, ""

    sput-object v0, Lcom/creativemobi/engine/ah;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/creativemobi/engine/ah;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/creativemobi/engine/ah;->b:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/creativemobi/engine/ah;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/creativemobi/engine/ah;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 51
    :cond_0
    return-void
.end method

.method public static b()V
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/creativemobi/engine/ah;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/creativemobi/engine/ah;->b:Z

    if-nez v0, :cond_0

    .line 55
    sget-object v0, Lcom/creativemobi/engine/ah;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 57
    :cond_0
    return-void
.end method

.method public static c()V
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/creativemobi/engine/ah;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/creativemobi/engine/ah;->b:Z

    if-nez v0, :cond_0

    .line 68
    const/4 v0, 0x1

    sput-boolean v0, Lcom/creativemobi/engine/ah;->b:Z

    .line 69
    sget-object v0, Lcom/creativemobi/engine/ah;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 71
    :cond_0
    return-void
.end method
