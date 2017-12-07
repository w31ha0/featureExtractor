.class public final La/a/a/o;
.super Ljava/lang/Object;

# interfaces
.implements La/b/j;


# static fields
.field private static b:Z


# instance fields
.field private a:La/a/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x1

    sput-boolean v2, La/a/a/o;->b:Z

    :try_start_0
    const-string v0, "mail.mime.ignoremultipartencoding"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, La/a/a/o;->b:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public constructor <init>(La/a/a/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/a/o;->a:La/a/a/b;

    return-void
.end method

.method private static a(Ljava/lang/String;La/a/a/b;)Ljava/lang/String;
    .locals 2

    sget-boolean v0, La/a/a/o;->b:Z

    if-eqz v0, :cond_0

    if-nez p0, :cond_1

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0

    :cond_1
    const-string v0, "7bit"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "8bit"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "binary"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move-object v0, p0

    goto :goto_0

    :cond_3
    invoke-interface {p1}, La/a/a/b;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    move-object v0, p0

    goto :goto_0

    :cond_4
    :try_start_0
    new-instance v1, La/a/a/k;

    invoke-direct {v1, v0}, La/a/a/k;-><init>(Ljava/lang/String;)V

    const-string v0, "multipart/*"

    invoke-virtual {v1, v0}, La/a/a/k;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "message/*"

    invoke-virtual {v1, v0}, La/a/a/k;->b(Ljava/lang/String;)Z
    :try_end_0
    .catch La/a/a/d; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_6
    move-object v0, p0

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/io/InputStream;
    .locals 3

    :try_start_0
    iget-object v0, p0, La/a/a/o;->a:La/a/a/b;

    instance-of v0, v0, La/a/a/h;

    if-eqz v0, :cond_1

    iget-object v0, p0, La/a/a/o;->a:La/a/a/b;

    check-cast v0, La/a/a/h;

    invoke-virtual {v0}, La/a/a/h;->e()Ljava/io/InputStream;

    move-result-object v0

    :goto_0
    iget-object v1, p0, La/a/a/o;->a:La/a/a/b;

    invoke-interface {v1}, La/a/a/b;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, La/a/a/o;->a:La/a/a/b;

    invoke-static {v1, v2}, La/a/a/o;->a(Ljava/lang/String;La/a/a/b;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0, v1}, La/a/a/r;->a(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    iget-object v0, p0, La/a/a/o;->a:La/a/a/b;

    instance-of v0, v0, La/a/a/t;

    if-eqz v0, :cond_2

    iget-object v0, p0, La/a/a/o;->a:La/a/a/b;

    check-cast v0, La/a/a/t;

    invoke-virtual {v0}, La/a/a/t;->f()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, La/a/o;

    const-string v1, "Unknown part"

    invoke-direct {v0, v1}, La/a/o;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch La/a/o; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, La/a/o;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, La/a/a/o;->a:La/a/a/b;

    invoke-interface {v0}, La/a/a/b;->b()Ljava/lang/String;
    :try_end_0
    .catch La/a/o; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "application/octet-stream"

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, La/a/a/o;->a:La/a/a/b;

    instance-of v0, v0, La/a/a/h;

    if-eqz v0, :cond_0

    iget-object p0, p0, La/a/a/o;->a:La/a/a/b;

    check-cast p0, La/a/a/h;

    invoke-virtual {p0}, La/a/a/h;->d()Ljava/lang/String;
    :try_end_0
    .catch La/a/o; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
