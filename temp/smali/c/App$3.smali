.class Lc/App$3;
.super Ljava/lang/Object;
.source "App.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/App;->backHistory()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc/App;


# direct methods
.method constructor <init>(Lc/App;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lc/App$3;->a:Lc/App;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lc/App$3;->a:Lc/App;

    iget-object v0, v0, Lc/App;->webView:Lvpadn/f;

    invoke-virtual {v0}, Lvpadn/f;->b()Z

    .line 192
    return-void
.end method
