.class public Lvpadn/t;
.super Ljava/lang/Object;
.source "LegacyContext.java"

# interfaces
.implements Lvpadn/q;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private a:Lvpadn/q;


# direct methods
.method public constructor <init>(Lvpadn/q;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lvpadn/t;->a:Lvpadn/q;

    .line 41
    return-void
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 50
    const-string v0, "Deprecation Notice"

    const-string v1, "Replace ctx.getActivity() with cordova.getActivity()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v0, p0, Lvpadn/t;->a:Lvpadn/q;

    invoke-interface {v0}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 56
    const-string v0, "Deprecation Notice"

    const-string v1, "Replace ctx.getContext() with cordova.getContext()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v0, p0, Lvpadn/t;->a:Lvpadn/q;

    invoke-interface {v0}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getThreadPool()Ljava/util/concurrent/ExecutorService;
    .locals 2

    .prologue
    .line 151
    const-string v0, "Deprecation Notice"

    const-string v1, "Replace ctx.getThreadPool() with cordova.getThreadPool()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v0, p0, Lvpadn/t;->a:Lvpadn/q;

    invoke-interface {v0}, Lvpadn/q;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public onMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 62
    const-string v0, "Deprecation Notice"

    const-string v1, "Replace ctx.onMessage() with cordova.onMessage()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v0, p0, Lvpadn/t;->a:Lvpadn/q;

    invoke-interface {v0, p1, p2}, Lvpadn/q;->onMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public startActivityForResult(Lvpadn/r;Landroid/content/Intent;I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 74
    const-string v0, "Deprecation Notice"

    const-string v1, "Replace ctx.startActivityForResult() with cordova.startActivityForResult()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v0, p0, Lvpadn/t;->a:Lvpadn/q;

    invoke-interface {v0, p1, p2, p3}, Lvpadn/q;->startActivityForResult(Lvpadn/r;Landroid/content/Intent;I)V

    .line 76
    return-void
.end method
