.class public final Lcom/gambler/SendSMS/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;


# static fields
.field public static a:Ljava/lang/String;

.field private static b:I

.field private static e:Z


# instance fields
.field private c:Ljava/lang/String;

.field private d:I

.field private f:Lcom/gambler/SendSMS/j;

.field private g:J

.field private h:I

.field private i:Ljava/io/File;

.field private j:Landroid/media/MediaRecorder;

.field private k:Landroid/media/MediaPlayer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "/sdcard"

    sput-object v0, Lcom/gambler/SendSMS/h;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lcom/gambler/SendSMS/h;->b:I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/gambler/SendSMS/h;->e:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Recorder"

    iput-object v0, p0, Lcom/gambler/SendSMS/h;->c:Ljava/lang/String;

    iput v3, p0, Lcom/gambler/SendSMS/h;->d:I

    iput-object v2, p0, Lcom/gambler/SendSMS/h;->f:Lcom/gambler/SendSMS/j;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/gambler/SendSMS/h;->g:J

    iput v3, p0, Lcom/gambler/SendSMS/h;->h:I

    iput-object v2, p0, Lcom/gambler/SendSMS/h;->i:Ljava/io/File;

    iput-object v2, p0, Lcom/gambler/SendSMS/h;->j:Landroid/media/MediaRecorder;

    iput-object v2, p0, Lcom/gambler/SendSMS/h;->k:Landroid/media/MediaPlayer;

    return-void
.end method

.method private a(I)V
    .locals 1

    iget v0, p0, Lcom/gambler/SendSMS/h;->d:I

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/gambler/SendSMS/h;->d:I

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/gambler/SendSMS/h;->i:Ljava/io/File;

    return-object v0
.end method

.method public final a(Lcom/gambler/SendSMS/j;)V
    .locals 0

    iput-object p1, p0, Lcom/gambler/SendSMS/h;->f:Lcom/gambler/SendSMS/j;

    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/gambler/SendSMS/h;->c()V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/gambler/SendSMS/h;->i:Ljava/io/File;

    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lcom/gambler/SendSMS/h;->j:Landroid/media/MediaRecorder;

    iget-object v0, p0, Lcom/gambler/SendSMS/h;->j:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    iget-object v0, p0, Lcom/gambler/SendSMS/h;->j:Landroid/media/MediaRecorder;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    iget-object v0, p0, Lcom/gambler/SendSMS/h;->j:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    iget-object v0, p0, Lcom/gambler/SendSMS/h;->j:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/gambler/SendSMS/h;->i:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/gambler/SendSMS/h;->j:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/gambler/SendSMS/h;->j:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gambler/SendSMS/h;->g:J

    invoke-direct {p0, v2}, Lcom/gambler/SendSMS/h;->a(I)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/gambler/SendSMS/h;->j:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    iget-object v0, p0, Lcom/gambler/SendSMS/h;->j:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    iput-object v3, p0, Lcom/gambler/SendSMS/h;->j:Landroid/media/MediaRecorder;

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v0, "audio"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    iget-object v0, p0, Lcom/gambler/SendSMS/h;->j:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    iget-object v0, p0, Lcom/gambler/SendSMS/h;->j:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    iput-object v3, p0, Lcom/gambler/SendSMS/h;->j:Landroid/media/MediaRecorder;

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    invoke-virtual {p0}, Lcom/gambler/SendSMS/h;->c()V

    iget-object v0, p0, Lcom/gambler/SendSMS/h;->i:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gambler/SendSMS/h;->i:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gambler/SendSMS/h;->i:Ljava/io/File;

    const/4 v0, 0x0

    iput v0, p0, Lcom/gambler/SendSMS/h;->h:I

    return-void
.end method

.method public final c()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/gambler/SendSMS/h;->j:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gambler/SendSMS/h;->j:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    iget-object v0, p0, Lcom/gambler/SendSMS/h;->j:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    iget-object v0, p0, Lcom/gambler/SendSMS/h;->j:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    iput-object v5, p0, Lcom/gambler/SendSMS/h;->j:Landroid/media/MediaRecorder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/gambler/SendSMS/h;->g:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/gambler/SendSMS/h;->h:I

    invoke-direct {p0, v4}, Lcom/gambler/SendSMS/h;->a(I)V

    :cond_0
    iget-object v0, p0, Lcom/gambler/SendSMS/h;->k:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/gambler/SendSMS/h;->k:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lcom/gambler/SendSMS/h;->k:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iput-object v5, p0, Lcom/gambler/SendSMS/h;->k:Landroid/media/MediaPlayer;

    invoke-direct {p0, v4}, Lcom/gambler/SendSMS/h;->a(I)V

    :cond_1
    return-void
.end method

.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-virtual {p0}, Lcom/gambler/SendSMS/h;->c()V

    return-void
.end method

.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    invoke-virtual {p0}, Lcom/gambler/SendSMS/h;->c()V

    const/4 v0, 0x1

    return v0
.end method
