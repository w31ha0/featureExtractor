.class Lc/FileTransfer$5;
.super Ljava/lang/Object;
.source "FileTransfer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/FileTransfer;->c(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc/FileTransfer$b;

.field final synthetic b:Lc/FileTransfer;


# direct methods
.method constructor <init>(Lc/FileTransfer;Lc/FileTransfer$b;)V
    .locals 0

    .prologue
    .line 836
    iput-object p1, p0, Lc/FileTransfer$5;->b:Lc/FileTransfer;

    iput-object p2, p0, Lc/FileTransfer$5;->a:Lc/FileTransfer$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 838
    iget-object v1, p0, Lc/FileTransfer$5;->a:Lc/FileTransfer$b;

    monitor-enter v1

    .line 839
    :try_start_0
    iget-object v0, p0, Lc/FileTransfer$5;->a:Lc/FileTransfer$b;

    iget-object v0, v0, Lc/FileTransfer$b;->e:Ljava/io/InputStream;

    invoke-static {v0}, Lc/FileTransfer;->a(Ljava/io/Closeable;)V

    .line 840
    iget-object v0, p0, Lc/FileTransfer$5;->a:Lc/FileTransfer$b;

    iget-object v0, v0, Lc/FileTransfer$b;->f:Ljava/io/OutputStream;

    invoke-static {v0}, Lc/FileTransfer;->a(Ljava/io/Closeable;)V

    .line 841
    monitor-exit v1

    .line 842
    return-void

    .line 841
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
