.class public Lcom/netflix/msl/msg/ConsoleFilterStreamFactory;
.super Ljava/lang/Object;
.source "ConsoleFilterStreamFactory.java"

# interfaces
.implements Lcom/netflix/msl/msg/FilterStreamFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 131
    new-instance v0, Lcom/netflix/msl/msg/ConsoleFilterStreamFactory$ConsoleInputStream;

    invoke-direct {v0, p1}, Lcom/netflix/msl/msg/ConsoleFilterStreamFactory$ConsoleInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public getOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 139
    new-instance v0, Lcom/netflix/msl/msg/ConsoleFilterStreamFactory$ConsoleOutputStream;

    invoke-direct {v0, p1}, Lcom/netflix/msl/msg/ConsoleFilterStreamFactory$ConsoleOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method
