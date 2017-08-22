.class Lc/App$1;
.super Ljava/lang/Object;
.source "App.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/App;->execute(Ljava/lang/String;Lorg/json/JSONArray;Lvpadn/p;)Z
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
    .line 63
    iput-object p1, p0, Lc/App$1;->a:Lc/App;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 65
    iget-object v0, p0, Lc/App$1;->a:Lc/App;

    iget-object v0, v0, Lc/App;->webView:Lvpadn/f;

    const-string v1, "spinner"

    const-string v2, "stop"

    invoke-virtual {v0, v1, v2}, Lvpadn/f;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 66
    return-void
.end method
