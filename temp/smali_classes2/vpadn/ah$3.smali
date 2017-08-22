.class Lvpadn/ah$3;
.super Ljava/lang/Object;
.source "VponInterstitialAdController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvpadn/ah;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lvpadn/ah;


# direct methods
.method constructor <init>(Lvpadn/ah;)V
    .locals 0

    .prologue
    .line 793
    iput-object p1, p0, Lvpadn/ah$3;->a:Lvpadn/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 795
    iget-object v0, p0, Lvpadn/ah$3;->a:Lvpadn/ah;

    invoke-static {v0}, Lvpadn/ah;->e(Lvpadn/ah;)V

    .line 796
    return-void
.end method
