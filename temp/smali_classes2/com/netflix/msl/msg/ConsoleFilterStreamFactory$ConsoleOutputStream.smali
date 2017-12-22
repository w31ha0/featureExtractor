.class Lcom/netflix/msl/msg/ConsoleFilterStreamFactory$ConsoleOutputStream;
.super Ljava/io/FilterOutputStream;
.source "ConsoleFilterStreamFactory.java"


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 93
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 100
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 101
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    .line 102
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    .line 103
    return-void
.end method

.method public write(I)V
    .locals 1

    .prologue
    .line 120
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->write(I)V

    .line 121
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    .line 122
    invoke-super {p0, p1}, Ljava/io/FilterOutputStream;->write(I)V

    .line 123
    return-void
.end method

.method public write([BII)V
    .locals 1

    .prologue
    .line 110
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/PrintStream;->write([BII)V

    .line 111
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    .line 112
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterOutputStream;->write([BII)V

    .line 113
    return-void
.end method
