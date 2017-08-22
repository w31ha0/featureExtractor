.class Lvpadn/g$1$1;
.super Ljava/lang/Object;
.source "CordovaWebViewClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvpadn/g$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lvpadn/g$1;


# direct methods
.method constructor <init>(Lvpadn/g$1;)V
    .locals 0

    .prologue
    .line 331
    iput-object p1, p0, Lvpadn/g$1$1;->a:Lvpadn/g$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 333
    iget-object v0, p0, Lvpadn/g$1$1;->a:Lvpadn/g$1;

    iget-object v0, v0, Lvpadn/g$1;->a:Lvpadn/g;

    iget-object v0, v0, Lvpadn/g;->b:Lvpadn/f;

    const-string v1, "spinner"

    const-string v2, "stop"

    invoke-virtual {v0, v1, v2}, Lvpadn/f;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 334
    return-void
.end method
