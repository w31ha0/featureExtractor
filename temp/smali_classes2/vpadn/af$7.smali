.class Lvpadn/af$7;
.super Ljava/lang/Object;
.source "VponBannerController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvpadn/af;->a(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lvpadn/af;


# direct methods
.method constructor <init>(Lvpadn/af;)V
    .locals 0

    .prologue
    .line 1686
    iput-object p1, p0, Lvpadn/af$7;->a:Lvpadn/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1688
    iget-object v0, p0, Lvpadn/af$7;->a:Lvpadn/af;

    invoke-static {v0}, Lvpadn/af;->l(Lvpadn/af;)V

    .line 1689
    iget-object v0, p0, Lvpadn/af$7;->a:Lvpadn/af;

    const-string v1, "onimpress"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lvpadn/af;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 1690
    return-void
.end method
