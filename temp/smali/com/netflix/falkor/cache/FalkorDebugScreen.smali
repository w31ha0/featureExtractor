.class public Lcom/netflix/falkor/cache/FalkorDebugScreen;
.super Lcom/netflix/mediaclient/android/debug/ExternalDebugScreen;
.source "FalkorDebugScreen.java"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/debug/ExternalDebugScreen;-><init>()V

    .line 24
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 38
    return-void
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    const-string/jumbo v0, ""

    return-object v0
.end method

.method protected onMeasure(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 28
    return-void
.end method
