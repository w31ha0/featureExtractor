.class Lvpadn/af$8;
.super Ljava/lang/Object;
.source "VponBannerController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvpadn/af;->onExpandModePressBackKey()V
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
    .line 2044
    iput-object p1, p0, Lvpadn/af$8;->a:Lvpadn/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2046
    iget-object v0, p0, Lvpadn/af$8;->a:Lvpadn/af;

    invoke-static {v0}, Lvpadn/af;->c(Lvpadn/af;)V

    .line 2047
    return-void
.end method
