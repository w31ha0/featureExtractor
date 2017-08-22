.class Lvpadn/f$3;
.super Ljava/lang/Object;
.source "CordovaWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvpadn/f;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lvpadn/f;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lvpadn/f;


# direct methods
.method constructor <init>(Lvpadn/f;Ljava/lang/Runnable;Lvpadn/f;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 541
    iput-object p1, p0, Lvpadn/f$3;->d:Lvpadn/f;

    iput-object p2, p0, Lvpadn/f$3;->a:Ljava/lang/Runnable;

    iput-object p3, p0, Lvpadn/f$3;->b:Lvpadn/f;

    iput-object p4, p0, Lvpadn/f$3;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 543
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lvpadn/f$3;->a:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 544
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 545
    iget-object v0, p0, Lvpadn/f$3;->b:Lvpadn/f;

    iget-object v1, p0, Lvpadn/f$3;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lvpadn/f;->c(Ljava/lang/String;)V

    .line 546
    return-void
.end method
