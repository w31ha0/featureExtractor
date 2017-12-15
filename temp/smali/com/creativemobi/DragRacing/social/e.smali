.class public abstract Lcom/creativemobi/DragRacing/social/e;
.super Ljava/lang/Object;
.source "FacebookActivity.java"

# interfaces
.implements Lcom/creativemobi/DragRacing/social/o;


# instance fields
.field private synthetic a:Lcom/creativemobi/DragRacing/social/FacebookActivity;


# direct methods
.method public constructor <init>(Lcom/creativemobi/DragRacing/social/FacebookActivity;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/creativemobi/DragRacing/social/e;->a:Lcom/creativemobi/DragRacing/social/FacebookActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/FileNotFoundException;)V
    .locals 2

    .prologue
    .line 144
    const-string v0, "Facebook"

    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 146
    return-void
.end method

.method public final a(Ljava/io/IOException;)V
    .locals 2

    .prologue
    .line 149
    const-string v0, "Facebook"

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 151
    return-void
.end method

.method public final a(Ljava/net/MalformedURLException;)V
    .locals 2

    .prologue
    .line 155
    const-string v0, "Facebook"

    invoke-virtual {p1}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-virtual {p1}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 157
    return-void
.end method
