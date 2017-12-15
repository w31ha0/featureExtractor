.class final Lcom/creativemobi/DragRacing/social/i;
.super Ljava/lang/Thread;
.source "AsyncFacebookRunner.java"


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Landroid/os/Bundle;

.field private synthetic c:Ljava/lang/String;

.field private synthetic d:Lcom/creativemobi/DragRacing/social/o;

.field private synthetic e:Ljava/lang/Object;

.field private synthetic f:Lcom/creativemobi/DragRacing/social/h;


# direct methods
.method constructor <init>(Lcom/creativemobi/DragRacing/social/h;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/creativemobi/DragRacing/social/o;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 249
    iput-object p1, p0, Lcom/creativemobi/DragRacing/social/i;->f:Lcom/creativemobi/DragRacing/social/h;

    iput-object p2, p0, Lcom/creativemobi/DragRacing/social/i;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/creativemobi/DragRacing/social/i;->b:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/creativemobi/DragRacing/social/i;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/creativemobi/DragRacing/social/i;->d:Lcom/creativemobi/DragRacing/social/o;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/creativemobi/DragRacing/social/i;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 252
    :try_start_0
    iget-object v0, p0, Lcom/creativemobi/DragRacing/social/i;->f:Lcom/creativemobi/DragRacing/social/h;

    iget-object v0, v0, Lcom/creativemobi/DragRacing/social/h;->a:Lcom/creativemobi/DragRacing/social/a;

    iget-object v1, p0, Lcom/creativemobi/DragRacing/social/i;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/creativemobi/DragRacing/social/i;->b:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/creativemobi/DragRacing/social/i;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/creativemobi/DragRacing/social/a;->a(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 253
    iget-object v1, p0, Lcom/creativemobi/DragRacing/social/i;->d:Lcom/creativemobi/DragRacing/social/o;

    invoke-interface {v1, v0}, Lcom/creativemobi/DragRacing/social/o;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 261
    :goto_0
    return-void

    .line 254
    :catch_0
    move-exception v0

    .line 255
    iget-object v1, p0, Lcom/creativemobi/DragRacing/social/i;->d:Lcom/creativemobi/DragRacing/social/o;

    invoke-interface {v1, v0}, Lcom/creativemobi/DragRacing/social/o;->a(Ljava/io/FileNotFoundException;)V

    goto :goto_0

    .line 256
    :catch_1
    move-exception v0

    .line 257
    iget-object v1, p0, Lcom/creativemobi/DragRacing/social/i;->d:Lcom/creativemobi/DragRacing/social/o;

    invoke-interface {v1, v0}, Lcom/creativemobi/DragRacing/social/o;->a(Ljava/net/MalformedURLException;)V

    goto :goto_0

    .line 258
    :catch_2
    move-exception v0

    .line 259
    iget-object v1, p0, Lcom/creativemobi/DragRacing/social/i;->d:Lcom/creativemobi/DragRacing/social/o;

    invoke-interface {v1, v0}, Lcom/creativemobi/DragRacing/social/o;->a(Ljava/io/IOException;)V

    goto :goto_0
.end method
