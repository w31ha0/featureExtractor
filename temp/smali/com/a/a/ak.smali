.class Lcom/a/a/ak;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/a/a/z;


# direct methods
.method constructor <init>(Lcom/a/a/z;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lcom/a/a/ak;->a:Lcom/a/a/z;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/a/a/ak;->a:Lcom/a/a/z;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/a/a/z;->a(Lcom/a/a/z;Z)Z

    .line 241
    return-void
.end method
