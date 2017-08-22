.class Lvpadn/af$b$1;
.super Ljava/lang/Object;
.source "VponBannerController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvpadn/af$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lvpadn/af$b;


# direct methods
.method constructor <init>(Lvpadn/af$b;)V
    .locals 0

    .prologue
    .line 1782
    iput-object p1, p0, Lvpadn/af$b$1;->a:Lvpadn/af$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1784
    iget-object v0, p0, Lvpadn/af$b$1;->a:Lvpadn/af$b;

    iget-object v0, v0, Lvpadn/af$b;->a:Lvpadn/af;

    iget-object v1, p0, Lvpadn/af$b$1;->a:Lvpadn/af$b;

    iget-object v1, v1, Lvpadn/af$b;->a:Lvpadn/af;

    iget-object v1, v1, Lvpadn/af;->q:Lcom/vpadn/ads/VpadnAdRequest;

    invoke-virtual {v0, v1}, Lvpadn/af;->a(Lcom/vpadn/ads/VpadnAdRequest;)V

    .line 1785
    return-void
.end method
