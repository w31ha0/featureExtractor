.class Lcom/netflix/msl/msg/ConsoleFilterStreamFactory$ConsoleInputStream;
.super Ljava/io/FilterInputStream;
.source "ConsoleFilterStreamFactory.java"


# direct methods
.method protected constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 46
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 52
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 53
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    .line 54
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    .line 55
    return-void
.end method

.method public read()I
    .locals 2

    .prologue
    .line 62
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    .line 63
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->write(I)V

    .line 64
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/PrintStream;->flush()V

    .line 65
    return v0
.end method

.method public read([BII)I
    .locals 2

    .prologue
    .line 73
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    .line 74
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/PrintStream;->write([BII)V

    .line 75
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/PrintStream;->flush()V

    .line 76
    return v0
.end method
