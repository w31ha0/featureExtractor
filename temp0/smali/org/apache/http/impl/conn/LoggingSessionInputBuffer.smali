.class public Lorg/apache/http/impl/conn/LoggingSessionInputBuffer;
.super Ljava/lang/Object;
.source "LoggingSessionInputBuffer.java"

# interfaces
.implements Lorg/apache/http/io/SessionInputBuffer;
.implements Lorg/apache/http/io/EofSensor;


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# instance fields
.field private final charset:Ljava/lang/String;

.field private final eofSensor:Lorg/apache/http/io/EofSensor;

.field private final in:Lorg/apache/http/io/SessionInputBuffer;

.field private final wire:Lorg/apache/http/impl/conn/Wire;


# direct methods
.method public constructor <init>(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/impl/conn/Wire;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/http/io/SessionInputBuffer;
    .param p2, "wire"    # Lorg/apache/http/impl/conn/Wire;

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/http/impl/conn/LoggingSessionInputBuffer;-><init>(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/impl/conn/Wire;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/impl/conn/Wire;Ljava/lang/String;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/http/io/SessionInputBuffer;
    .param p2, "wire"    # Lorg/apache/http/impl/conn/Wire;
    .param p3, "charset"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lorg/apache/http/impl/conn/LoggingSessionInputBuffer;->in:Lorg/apache/http/io/SessionInputBuffer;

    .line 68
    instance-of v0, p1, Lorg/apache/http/io/EofSensor;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/http/io/EofSensor;

    .end local p1    # "in":Lorg/apache/http/io/SessionInputBuffer;
    :goto_0
    iput-object p1, p0, Lorg/apache/http/impl/conn/LoggingSessionInputBuffer;->eofSensor:Lorg/apache/http/io/EofSensor;

    .line 69
    iput-object p2, p0, Lorg/apache/http/impl/conn/LoggingSessionInputBuffer;->wire:Lorg/apache/http/impl/conn/Wire;

    .line 70
    if-eqz p3, :cond_1

    .end local p3    # "charset":Ljava/lang/String;
    :goto_1
    iput-object p3, p0, Lorg/apache/http/impl/conn/LoggingSessionInputBuffer;->charset:Ljava/lang/String;

    .line 71
    return-void

    .line 68
    .restart local p1    # "in":Lorg/apache/http/io/SessionInputBuffer;
    .restart local p3    # "charset":Ljava/lang/String;
    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    .line 70
    .end local p1    # "in":Lorg/apache/http/io/SessionInputBuffer;
    :cond_1
    const-string p3, "ASCII"

    goto :goto_1
.end method


# virtual methods
.method public getMetrics()Lorg/apache/http/io/HttpTransportMetrics;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lorg/apache/http/impl/conn/LoggingSessionInputBuffer;->in:Lorg/apache/http/io/SessionInputBuffer;

    invoke-interface {v0}, Lorg/apache/http/io/SessionInputBuffer;->getMetrics()Lorg/apache/http/io/HttpTransportMetrics;

    move-result-object v0

    return-object v0
.end method

.method public isDataAvailable(I)Z
    .locals 1
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lorg/apache/http/impl/conn/LoggingSessionInputBuffer;->in:Lorg/apache/http/io/SessionInputBuffer;

    invoke-interface {v0, p1}, Lorg/apache/http/io/SessionInputBuffer;->isDataAvailable(I)Z

    move-result v0

    return v0
.end method

.method public isEof()Z
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lorg/apache/http/impl/conn/LoggingSessionInputBuffer;->eofSensor:Lorg/apache/http/io/EofSensor;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lorg/apache/http/impl/conn/LoggingSessionInputBuffer;->eofSensor:Lorg/apache/http/io/EofSensor;

    invoke-interface {v0}, Lorg/apache/http/io/EofSensor;->isEof()Z

    move-result v0

    .line 133
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    iget-object v1, p0, Lorg/apache/http/impl/conn/LoggingSessionInputBuffer;->in:Lorg/apache/http/io/SessionInputBuffer;

    invoke-interface {v1}, Lorg/apache/http/io/SessionInputBuffer;->read()I

    move-result v0

    .line 91
    .local v0, "l":I
    iget-object v1, p0, Lorg/apache/http/impl/conn/LoggingSessionInputBuffer;->wire:Lorg/apache/http/impl/conn/Wire;

    invoke-virtual {v1}, Lorg/apache/http/impl/conn/Wire;->enabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 92
    iget-object v1, p0, Lorg/apache/http/impl/conn/LoggingSessionInputBuffer;->wire:Lorg/apache/http/impl/conn/Wire;

    invoke-virtual {v1, v0}, Lorg/apache/http/impl/conn/Wire;->input(I)V

    .line 94
    :cond_0
    return v0
.end method

.method public read([B)I
    .locals 3
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    iget-object v1, p0, Lorg/apache/http/impl/conn/LoggingSessionInputBuffer;->in:Lorg/apache/http/io/SessionInputBuffer;

    invoke-interface {v1, p1}, Lorg/apache/http/io/SessionInputBuffer;->read([B)I

    move-result v0

    .line 99
    .local v0, "l":I
    iget-object v1, p0, Lorg/apache/http/impl/conn/LoggingSessionInputBuffer;->wire:Lorg/apache/http/impl/conn/Wire;

    invoke-virtual {v1}, Lorg/apache/http/impl/conn/Wire;->enabled()Z

    move-result v1

    if-eqz v1, :cond_0

    if-lez v0, :cond_0

    .line 100
    iget-object v1, p0, Lorg/apache/http/impl/conn/LoggingSessionInputBuffer;->wire:Lorg/apache/http/impl/conn/Wire;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Lorg/apache/http/impl/conn/Wire;->input([BII)V

    .line 102
    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    iget-object v1, p0, Lorg/apache/http/impl/conn/LoggingSessionInputBuffer;->in:Lorg/apache/http/io/SessionInputBuffer;

    invoke-interface {v1, p1, p2, p3}, Lorg/apache/http/io/SessionInputBuffer;->read([BII)I

    move-result v0

    .line 83
    .local v0, "l":I
    iget-object v1, p0, Lorg/apache/http/impl/conn/LoggingSessionInputBuffer;->wire:Lorg/apache/http/impl/conn/Wire;

    invoke-virtual {v1}, Lorg/apache/http/impl/conn/Wire;->enabled()Z

    move-result v1

    if-eqz v1, :cond_0

    if-lez v0, :cond_0

    .line 84
    iget-object v1, p0, Lorg/apache/http/impl/conn/LoggingSessionInputBuffer;->wire:Lorg/apache/http/impl/conn/Wire;

    invoke-virtual {v1, p1, p2, v0}, Lorg/apache/http/impl/conn/Wire;->input([BII)V

    .line 86
    :cond_0
    return v0
.end method

.method public readLine(Lorg/apache/http/util/CharArrayBuffer;)I
    .locals 6
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    iget-object v4, p0, Lorg/apache/http/impl/conn/LoggingSessionInputBuffer;->in:Lorg/apache/http/io/SessionInputBuffer;

    invoke-interface {v4, p1}, Lorg/apache/http/io/SessionInputBuffer;->readLine(Lorg/apache/http/util/CharArrayBuffer;)I

    move-result v0

    .line 116
    .local v0, "l":I
    iget-object v4, p0, Lorg/apache/http/impl/conn/LoggingSessionInputBuffer;->wire:Lorg/apache/http/impl/conn/Wire;

    invoke-virtual {v4}, Lorg/apache/http/impl/conn/Wire;->enabled()Z

    move-result v4

    if-eqz v4, :cond_0

    if-ltz v0, :cond_0

    .line 117
    invoke-virtual {p1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v4

    sub-int v1, v4, v0

    .line 118
    .local v1, "pos":I
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p1}, Lorg/apache/http/util/CharArrayBuffer;->buffer()[C

    move-result-object v4

    invoke-direct {v2, v4, v1, v0}, Ljava/lang/String;-><init>([CII)V

    .line 119
    .local v2, "s":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 120
    .local v3, "tmp":Ljava/lang/String;
    iget-object v4, p0, Lorg/apache/http/impl/conn/LoggingSessionInputBuffer;->wire:Lorg/apache/http/impl/conn/Wire;

    iget-object v5, p0, Lorg/apache/http/impl/conn/LoggingSessionInputBuffer;->charset:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/http/impl/conn/Wire;->input([B)V

    .line 122
    .end local v1    # "pos":I
    .end local v2    # "s":Ljava/lang/String;
    .end local v3    # "tmp":Ljava/lang/String;
    :cond_0
    return v0
.end method

.method public readLine()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    iget-object v2, p0, Lorg/apache/http/impl/conn/LoggingSessionInputBuffer;->in:Lorg/apache/http/io/SessionInputBuffer;

    invoke-interface {v2}, Lorg/apache/http/io/SessionInputBuffer;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "s":Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/http/impl/conn/LoggingSessionInputBuffer;->wire:Lorg/apache/http/impl/conn/Wire;

    invoke-virtual {v2}, Lorg/apache/http/impl/conn/Wire;->enabled()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 108
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, "tmp":Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/http/impl/conn/LoggingSessionInputBuffer;->wire:Lorg/apache/http/impl/conn/Wire;

    iget-object v3, p0, Lorg/apache/http/impl/conn/LoggingSessionInputBuffer;->charset:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/http/impl/conn/Wire;->input([B)V

    .line 111
    .end local v1    # "tmp":Ljava/lang/String;
    :cond_0
    return-object v0
.end method
