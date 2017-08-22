.class final Lc/FileTransfer$a;
.super Ljava/io/FilterInputStream;
.source "FileTransfer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/FileTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 109
    return-void
.end method


# virtual methods
.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 113
    iget-boolean v1, p0, Lc/FileTransfer$a;->a:Z

    if-eqz v1, :cond_0

    move v1, v0

    .line 114
    :goto_0
    if-ne v1, v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lc/FileTransfer$a;->a:Z

    .line 115
    return v1

    .line 113
    :cond_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v1

    goto :goto_0

    .line 114
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 120
    iget-boolean v1, p0, Lc/FileTransfer$a;->a:Z

    if-eqz v1, :cond_0

    move v1, v0

    .line 121
    :goto_0
    if-ne v1, v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lc/FileTransfer$a;->a:Z

    .line 122
    return v1

    .line 120
    :cond_0
    invoke-super {p0, p1}, Ljava/io/FilterInputStream;->read([B)I

    move-result v1

    goto :goto_0

    .line 121
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 127
    iget-boolean v1, p0, Lc/FileTransfer$a;->a:Z

    if-eqz v1, :cond_0

    move v1, v0

    .line 128
    :goto_0
    if-ne v1, v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lc/FileTransfer$a;->a:Z

    .line 129
    return v1

    .line 127
    :cond_0
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v1

    goto :goto_0

    .line 128
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
