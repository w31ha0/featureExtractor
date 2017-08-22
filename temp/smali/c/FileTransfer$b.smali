.class final Lc/FileTransfer$b;
.super Ljava/lang/Object;
.source "FileTransfer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/FileTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/io/File;

.field d:Lvpadn/p;

.field e:Ljava/io/InputStream;

.field f:Ljava/io/OutputStream;

.field g:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lvpadn/p;)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lc/FileTransfer$b;->a:Ljava/lang/String;

    .line 88
    iput-object p2, p0, Lc/FileTransfer$b;->b:Ljava/lang/String;

    .line 89
    iput-object p3, p0, Lc/FileTransfer$b;->d:Lvpadn/p;

    .line 90
    return-void
.end method


# virtual methods
.method a(Lvpadn/w;)V
    .locals 1

    .prologue
    .line 92
    monitor-enter p0

    .line 93
    :try_start_0
    iget-boolean v0, p0, Lc/FileTransfer$b;->g:Z

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lc/FileTransfer$b;->d:Lvpadn/p;

    invoke-virtual {v0, p1}, Lvpadn/p;->a(Lvpadn/w;)V

    .line 96
    :cond_0
    monitor-exit p0

    .line 97
    return-void

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
