.class final Lcom/creativemobi/DragRacing/social/c;
.super Ljava/lang/Object;
.source "FacebookActivity.java"

# interfaces
.implements Lcom/creativemobi/DragRacing/social/d;


# instance fields
.field private synthetic a:Lcom/creativemobi/DragRacing/social/FacebookActivity;


# direct methods
.method constructor <init>(Lcom/creativemobi/DragRacing/social/FacebookActivity;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/creativemobi/DragRacing/social/c;->a:Lcom/creativemobi/DragRacing/social/FacebookActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 54
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "onCancel"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 35
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "onComplete"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 38
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 39
    const-string v1, "message"

    const-string v2, "test"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v1, "description"

    const-string v2, "test test test"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object v1, p0, Lcom/creativemobi/DragRacing/social/c;->a:Lcom/creativemobi/DragRacing/social/FacebookActivity;

    invoke-static {v1}, Lcom/creativemobi/DragRacing/social/FacebookActivity;->a(Lcom/creativemobi/DragRacing/social/FacebookActivity;)Lcom/creativemobi/DragRacing/social/a;

    move-result-object v1

    iget-object v2, p0, Lcom/creativemobi/DragRacing/social/c;->a:Lcom/creativemobi/DragRacing/social/FacebookActivity;

    const-string v3, "stream.publish"

    new-instance v4, Lcom/creativemobi/DragRacing/social/f;

    iget-object v5, p0, Lcom/creativemobi/DragRacing/social/c;->a:Lcom/creativemobi/DragRacing/social/FacebookActivity;

    invoke-direct {v4, v5}, Lcom/creativemobi/DragRacing/social/f;-><init>(Lcom/creativemobi/DragRacing/social/FacebookActivity;)V

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/creativemobi/DragRacing/social/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/creativemobi/DragRacing/social/d;)V

    .line 43
    return-void
.end method

.method public final a(Lcom/creativemobi/DragRacing/social/m;)V
    .locals 2

    .prologue
    .line 51
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "onErr"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/creativemobi/DragRacing/social/p;)V
    .locals 3

    .prologue
    .line 47
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFBErr "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/creativemobi/DragRacing/social/p;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/creativemobi/DragRacing/social/p;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/creativemobi/DragRacing/social/p;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 48
    return-void
.end method
